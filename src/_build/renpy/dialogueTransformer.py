import re


ATTACK_REGEX = re.compile(r'ForceAttack\((.*),"(.*)"\)')
CONDITIONAL_REGEX = re.compile(r'CheckStat(GT|LT)\((.*?),(\d+),(.*?)\)')
CUTSCENE_REGEX = re.compile(r'StartCutSceneEx\("(.*)".*')
FULL_HEAL_REGEX = re.compile(r'FullHeal\((.*?)\)')
GLOBAL_INTERNAL_VISITED_REGEX = re.compile(r'(!?)Global\("Current_Area","(.*)",(\d*)\)')
GLOBAL_VISITED_REGEX = re.compile(r'(!)?Global\("([^ ]*?)_Visited",.*?,(\d)\)')
GOLD_REGEX = re.compile(r'(TakePartyGold|DestroyPartyGold|PartyGoldGT|PartyGoldLT|GiveGoldForce)\((.*?)\)')
INCREMENT_REGEX = re.compile(r'IncrementGlobal\("(.*?)",(".*?"),(.*?)\)')
INCREMENT_REGEX_ONCE = re.compile(r'IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)')
JOURNAL_REGEX = re.compile(r'JOURNAL #(\d+) \/\*(.*)\*\/')
LOCATION_REGEX = re.compile(r'SetGlobal\("Current_Area","(.*)",(\d*)\)')
PARTY_EXP_REGEX = re.compile(r'AddexperienceParty\((.*?)\)')
SOUND_REGEX = re.compile(r'(?:PlaySound|PlaySoundNotRanged)\("(.*)"\)')
STAT_REGEX = re.compile(r'PermanentStatChange\("?(.*?)"?,(.*?),(.*?),(\d+)\)')
TARGET_EXP_REGEX = re.compile(r'GiveExperience\((.*?),(.*?)\)')
TIMES_TALKED_TO_REGEX = re.compile(r'NumTimesTalkedTo(.+)?\((\d+)\)')


class DialogueTransformer:
    def __init__(self):
        self._replacements = {}
        return


    def set_replacements(self, replacements):
        self._replacements = replacements


    def transform_script(self, script, target_npc):
        script = self._replace_kill_myself(script, target_npc)
        script = self._apply_replacements(script)
        script = self._apply_transformers(script, target_npc)
        return script


    def _replace_kill_myself(self, script, target_npc):
        return script.replace('Kill(Myself)', f'self.state_manager.world_manager.set_dead_{target_npc}(True)')


    def _apply_replacements(self, script):
        sorted_replacements = sorted(self._replacements.items(), key=lambda x: len(x[0]), reverse=True) # Sort replacements by length (longest first) to prevent partial replacements

        for pattern, replacement in sorted_replacements:
            script = script.replace(pattern, replacement)

        return script


    def _apply_transformers(self, script, target_npc):
        transformers = [
            self._transform_integer_once,
            self._transform_integer,
            self._transform_attacks,
            self._transform_conditionals,
            self._transform_cutscenes,
            self._transform_full_heal,
            self._transform_gain_experience,
            self._transform_gain_party_experience,
            self._transform_global_internal_visited,
            self._transform_global_visited,
            self._transform_gold,
            self._transform_locations,
            self._transform_modify_property,
            self._transform_play_sound,
            self._transform_talked_to_x_times,
            self._transform_update_journal,
        ]
        for transformer in transformers:
            script = transformer(script, target_npc)
        return script


    def _transform_integer_once(self, script, target_npc):
        def rule(match):
            global_id, prop, amount, = match.groups()
            exmanded_global_id = _expand_global_id(global_id)
            expanded_prop = _expand_prop(prop)
            exanded_amount = _expand_amount(amount)

            if expanded_prop in ('good', 'evil'):
                return f"self.state_manager.characters_manager.modify_property_once('protagonist', 'good', {exanded_amount}, '{global_id.lower()}')"
            elif expanded_prop in ('law', 'chaotic'):
                return f"self.state_manager.characters_manager.modify_property_once('protagonist', 'law', {exanded_amount}, '{global_id.lower()}')"
            elif expanded_prop == 'know_dustmen':
                return f"self.state_manager.world_manager.inc_once_know_dustmen('{global_id.lower()}')"
            elif expanded_prop == 'morte_mimir':
                return f"self.state_manager.world_manager.inc_once_morte_mimir('{global_id.lower()}')"

            raise Exception(f'Unknown match {INCREMENT_REGEX_ONCE}\n  {match.groups()}')

        return INCREMENT_REGEX_ONCE.sub(rule, script)


    def _transform_integer(self, script, target_npc):
        def rule(match):
            prop, env, amount, = match.groups()
            expanded_prop = _expand_prop(prop)
            exanded_amount = _expand_amount(amount)

            if expanded_prop in ('good', 'evil'):
                return f"self.state_manager.characters_manager.modify_property('protagonist', 'good', {exanded_amount})"
            elif expanded_prop in ('law', 'chaotic'):
                return f"self.state_manager.characters_manager.modify_property('protagonist', 'law', {exanded_amount})"

            raise Exception(f'Unknown match {INCREMENT_REGEX}\n  {match.groups()}')

        return INCREMENT_REGEX.sub(rule, script)


    def _transform_attacks(self, script, target_npc):
        def rule(match):
            whom, who, = match.groups()

            return f"#$% ?.attack('{whom}').by('{who}') %$#"
        return ATTACK_REGEX.sub(rule, script)


    def _transform_conditionals(self, script, target_npc):
        def rule(match):
            operator, character, amount, prop, = match.groups()
            expanded_operator = _expand_operator(operator)
            expanded_character = _expand_character(character)
            expanded_prop = _expand_prop(prop)
            exanded_amount = _expand_amount(amount)

            return f"return self.state_manager.characters_manager.get_property('{expanded_character}', '{expanded_prop}') {expanded_operator} {exanded_amount}"

        return CONDITIONAL_REGEX.sub(rule, script)


    def _transform_cutscenes(self, script, target_npc):
        def rule(match):
            id, = match.groups()

            return f"#$% ?.start_cut_scene('{id}') %$#"

        return CUTSCENE_REGEX.sub(rule, script)


    def _transform_full_heal(self, script, target_npc):
        def rule(match):
            character, = match.groups()
            expanded_character = _expand_character(character)

            return f"self.state_manager.characters_manager.full_heal('{expanded_character}')"

        return FULL_HEAL_REGEX.sub(rule, script)


    def _transform_gain_experience(self, script, target_npc):
        def rule(match):
            character, amount, = match.groups()
            expanded_character = _expand_character(character)
            exanded_amount = _expand_amount(amount)

            if exanded_amount > 0:
                return f"self.state_manager.gain_experience('{expanded_character}', {exanded_amount})"

            raise Exception(f'Unknown match {TARGET_EXP_REGEX}\n  {match.groups()}')

        return TARGET_EXP_REGEX.sub(rule, script)


    def _transform_gain_party_experience(self, script, target_npc):
        def rule(match):
            amount, = match.groups()
            exanded_amount = _expand_amount(amount)

            if exanded_amount > 0:
                return f"self.state_manager.gain_experience('party', {exanded_amount})"

            raise Exception(f'Unknown match {PARTY_EXP_REGEX}\n  {match.groups()}')

        return PARTY_EXP_REGEX.sub(rule, script)


    def _transform_global_internal_visited(self, script, target_npc):
        def replace_visited(match):
            no, env, location = match.groups()
            expanded_location = _expand_location(location)

            return f"return{' not ' if no else ' '}self.state_manager.locations_manager.is_visited_internal('AR{expanded_location}')"

        return GLOBAL_INTERNAL_VISITED_REGEX.sub(replace_visited, script)


    def _transform_global_visited(self, script, target_npc):
        def replace_visited(match):
            not_op, location, value = match.groups()
            no = (not_op == '!') != (value == '0')

            return f"return{' not ' if no else ' '}self.state_manager.locations_manager.is_visited_internal('{location}')"

        return GLOBAL_VISITED_REGEX.sub(replace_visited, script)


    def _transform_gold(self, script, target_npc):
        def rule(match):
            action, amount, = match.groups()
            expanded_action = _expand_gold_action(action)
            expanded_amount = _expand_amount(amount)

            if expanded_action == 'takepartygold':
                return f'self.state_manager.world_manager.dec_gold({expanded_amount})'
            elif expanded_action == 'destroypartygold':
                return f'self.state_manager.world_manager.dec_gold({expanded_amount})'
            elif expanded_action == 'partygoldgt':
                return f'return self.state_manager.world_manager.get_gold() > {expanded_amount}'
            elif expanded_action == 'partygoldlt':
                return f'return self.state_manager.world_manager.get_gold() < {expanded_amount}'
            elif expanded_action == 'givegoldforce':
                return f'self.state_manager.world_manager.inc_gold({expanded_amount})'

            raise Exception(f'Unknown match {GOLD_REGEX}\n  {match.groups()}')

        return GOLD_REGEX.sub(rule, script)


    def _transform_locations(self, script, target_npc):
        def replace_location(match):
            env, location, = match.groups()
            expanded_location = _expand_location(location)

            return f"\n        self.state_manager.locations_manager.set_location('AR{expanded_location}')"

        return LOCATION_REGEX.sub(replace_location, script)


    def _transform_modify_property(self, script, target_npc):
        def rule(match):
            character, prop, operator, amount, = match.groups()
            expanded_character = _expand_character(character)
            expanded_prop = _expand_prop(prop)
            exanded_amount = _expand_amount(amount)

            return f"self.state_manager.characters_manager.modify_property('{expanded_character}', '{expanded_prop}', {exanded_amount})"

        return STAT_REGEX.sub(rule, script)


    def _transform_play_sound(self, script, target_npc):
        def rule(match):
            id, = match.groups()

            return f"#$% ?.play_sound('{id}') %$#"
        return SOUND_REGEX.sub(rule, script)


    def _transform_talked_to_x_times(self, script, target_npc):
        def replace_visited(match):
            operator, amount = match.groups()
            expanded_amount = _expand_amount(amount)
            expanded_operator = _expand_operator(operator)

            return f'return self.state_manager.world_manager.get_talked_to_{target_npc}_times() {expanded_operator} {expanded_amount}'

        return TIMES_TALKED_TO_REGEX.sub(replace_visited, script)


    def _transform_update_journal(self, script, target_npc):
        def rule(match):
            note_id, note_text, = match.groups()

            return f"self.state_manager.journal_manager.update_journal('{note_id}')    #$% .register('{note_id}', '{note_text.replace(' ~', '').replace('~ ', '').strip()} %$#')"

        return JOURNAL_REGEX.sub(rule, script)


def _expand_character(char):
    if char.lower() == 'player1':
        return 'protagonist'
    return char.lower()


def _expand_operator(operator):
    if operator is None:
        return '=='

    match operator.lower():
        case 'gt':
            return '>'
        case 'raise':
            return '>'
        case 'lt':
            return '<'

    raise Exception(f'Cannot match operator {operator}')


def _expand_prop(prop):
    match prop.lower():
        case 'good':
            return 'good'
        case 'globalgood':
            return 'good'
        case 'evil':
            return 'evil'
        case 'law':
            return 'law'
        case 'globallaw':
            return 'law'
        case 'chaotic':
            return 'chaotic'
        case 'str':
            return 'strength'
        case 'dex':
            return 'dexterity'
        case 'int':
            return 'intelligence'
        case 'con':
            return 'constitution'
        case 'wis':
            return 'wisdom'
        case 'chr':
            return 'charisma'
        case 'globalknow_dustmen':
            return 'know_dustmen'
        case 'maxhitpoints':
            return 'max_health'
        case 'globalmorte_mimir':
            return 'morte_mimir'

    raise Exception(f'Cannot match prop {prop}')


def _expand_amount(amount):
    return int(amount)


def _expand_global_id(global_id):
    return global_id.lower()


def _expand_gold_action(action):
    return action.lower()

def _expand_location(location):
    return location.zfill(4)
