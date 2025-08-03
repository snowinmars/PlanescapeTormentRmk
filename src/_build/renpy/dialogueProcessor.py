import re
from dataclasses import dataclass


@dataclass(frozen=True)
class KnownSetting:
    name: str
    type: str


class DialogueProcessor:
    def __init__(self):
        self.replacements = []
        self.known_settings = {}
        self.well_known_replacements = self._build_well_known_replacements()
        self._precompile_regex_patterns()


    def _precompile_regex_patterns(self):
        self.FULL_HEAL_REGEX = re.compile(r'FullHeal\((.*?)\)')
        self.CONDITIONAL_REGEX = re.compile(r'CheckStat(GT|LT)\((.*?),(\d+),(.*?)\)')
        self.JOURNAL_REGEX = re.compile(r'JOURNAL #(\d+) \/\*(.*)\*\/')
        self.SOUND_REGEX = re.compile(r'PlaySoundNotRanged\("(.*)"\)')
        self.ATTACK_REGEX = re.compile(r'ForceAttack\((.*),"(.*)"\)')
        self.GOLD_REGEX = re.compile(r'(TakePartyGold|DestroyPartyGold|PartyGoldGT|GiveGoldForce)\((.*?)\)')
        self.TARGET_EXP_REGEX = re.compile(r'GiveExperience\((.*?),(.*?)\)')
        self.PARTY_EXP_REGEX = re.compile(r'AddexperienceParty\((.*?)\)')
        self.CUTSCENE_REGEX = re.compile(r'StartCutSceneEx\("(.*)".*')
        self.STAT_REGEX = re.compile(r'PermanentStatChange\("?(.*)"?,(.*),(.*),(\d+)\)')
        self.LOCATION_REGEX = re.compile(r'SetGlobal\("Current_Area","(.*)",(\d*)\)')
        self.SET_INTERNAL_VISITED_REGEX = re.compile(r'SetGlobal\("Current_Area","(.*)",(\d*)\)')
        self.GLOBAL_INTERNAL_VISITED_REGEX = re.compile(r'(!?)Global\("Current_Area","(.*)",(\d*)\)')
        self.GLOBAL_VISITED_REGEX = re.compile(r'(!)?Global\("(.*?)_Visited",.*?,(\d)\)')
        self.TIMES_TALKED_TO_REGEX = re.compile(r'NumTimesTalkedTo(.+)?\((\d+)\)')
        self.INCREMENT_REGEX = re.compile(r'IncrementGlobal\("(.*?)",(".*?"),(.*?)\)')
        self.INCREMENT_REGEX_ONCE = re.compile(r'IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)')


    def _name_variations(self, npc): #  hello to devs)
        return [
            npc,
            f'D{npc}',
            f'D{self._first_lower(npc)}',
            f'D{npc}1'
        ]


    def _build_well_known_replacements(self):
        # Sort replacements by length (longest first) to prevent partial replacements
        self._createTreeSettings()

        for x in self._name_variations('Morte'):
            self._createPartyNpc(x, 'morte')
        for x in self._name_variations('Annah'):
            self._createPartyNpc(x, 'annah')
        for x in self._name_variations('Ignus'):
            self._createPartyNpc(x, 'ignus')
        for x in self._name_variations('Grace'):
            self._createPartyNpc(x, 'grace')
        for x in self._name_variations('Dakkon'):
            self._createPartyNpc(x, 'dakkon')
        for x in self._name_variations('Nordom'):
            self._createPartyNpc(x, 'nordom')
        for x in self._name_variations('Vhail'):
            self._createPartyNpc(x, 'vhail')

        self._createNpcSetting('Pharod', 'pharod')
        self._createNpcSetting('Dhall', 'dhall')
        self._createNpcSetting('Deionarra', 'deionarra')
        self._createNpcSetting('Death_of_Names', 'death_of_names')
        self._createNpcSetting('Quentin', 'quentin')
        self._createNpcSetting('Vaxis', 'vaxis')
        self._createNpcSetting('Oinosian', 'oinosian')
        self._createNpcSetting('Bei', 'bei')
        self._createNpcSetting('Asonje', 'asonje')
        self._createNpcSetting('Crispy', 'crispy')
        self._createNpcSetting('EiVene', 'eivene')
        self._createNpcSetting('Soego', 'soego')
        self._createNpcSetting('Ravel', 'ravel')
        self._createNpcSetting('Aelwyn', 'aelwyn')
        self._createNpcSetting('Dustfem', 'dustfem')
        self._createNpcSetting('Dust', 'dust')
        self._createNpcSetting('Xach', 'xach')

        self._createNpcSetting(None, 's42')
        self._createNpcSetting(None, 's748')
        self._createNpcSetting(None, 's863')
        self._createNpcSetting(None, 's996')
        self._createNpcSetting(None, 's1221')
        self._createNpcSetting(None, 'zm79')
        self._createNpcSetting(None, 'zm199')
        self._createNpcSetting(None, 'zm257')
        self._createNpcSetting(None, 'zm310')
        self._createNpcSetting(None, 'zm396')
        self._createNpcSetting(None, 'zm463')
        self._createNpcSetting(None, 'zm475')
        self._createNpcSetting(None, 'zm506')
        self._createNpcSetting(None, 'zm569')
        self._createNpcSetting(None, 'zm613')
        self._createNpcSetting(None, 'zm732')
        self._createNpcSetting(None, 'zm782')
        self._createNpcSetting(None, 'zm825')
        self._createNpcSetting(None, 'zm965')
        self._createNpcSetting(None, 'zm985')
        self._createNpcSetting(None, 'zm1041')
        self._createNpcSetting(None, 'zm1094')
        self._createNpcSetting(None, 'zm1146')
        self._createNpcSetting(None, 'zm1201')
        self._createNpcSetting(None, 'zm1445')
        self._createNpcSetting(None, 'zm1508')
        self._createNpcSetting(None, 'zm1664')
        self._createNpcSetting(None, 'zf114')
        self._createNpcSetting(None, 'zf444')
        self._createNpcSetting(None, 'zf594')
        self._createNpcSetting(None, 'zf626')
        self._createNpcSetting(None, 'zf679')
        self._createNpcSetting(None, 'zf832')
        self._createNpcSetting(None, 'zf891')
        self._createNpcSetting(None, 'zf916')
        self._createNpcSetting(None, 'zf1072')
        self._createNpcSetting(None, 'zf1096')
        self._createNpcSetting(None, 'zf1148')
        self._createNpcSetting(None, 'zm79')
        self._createNpcSetting(None, 'zm199')
        self._createNpcSetting(None, 'zm257')
        self._createNpcSetting(None, 'zm310')
        self._createNpcSetting(None, 'zm396')
        self._createNpcSetting(None, 'zm463')
        self._createNpcSetting(None, 'zm475')
        self._createNpcSetting(None, 'zm506')
        self._createNpcSetting(None, 'zm569')
        self._createNpcSetting(None, 'zm613')
        self._createNpcSetting(None, 'zm732')
        self._createNpcSetting(None, 'zm782')
        self._createNpcSetting(None, 'zm825')
        self._createNpcSetting(None, 'zm965')
        self._createNpcSetting(None, 'zm985')
        self._createNpcSetting(None, 'zm1041')
        self._createNpcSetting(None, 'zm1094')
        self._createNpcSetting(None, 'zm1146')
        self._createNpcSetting(None, 'zm1201')
        self._createNpcSetting(None, 'zm1445')
        self._createNpcSetting(None, 'zm1508')
        self._createNpcSetting(None, 'zm1664')
        self._createNpcSetting(None, 'zf114')
        self._createNpcSetting(None, 'zf444')
        self._createNpcSetting(None, 'zf594')
        self._createNpcSetting(None, 'zf626')
        self._createNpcSetting(None, 'zf679')
        self._createNpcSetting(None, 'zf832')
        self._createNpcSetting(None, 'zf891')
        self._createNpcSetting(None, 'zf916')
        self._createNpcSetting(None, 'zf1072')
        self._createNpcSetting(None, 'zf1096')
        self._createNpcSetting(None, 'zf1148')
        self._createNpcSetting('DGIANTSK', 'giantsk')

        self._createInventoryItemSetting(None, 'garbage')
        self._createInventoryItemSetting('KeyPR', 'intro_key')
        self._createInventoryItemSetting('KeyPr', 'intro_key') #  ?
        self._createInventoryItemSetting('TomeBA', 'tome_ba')
        self._createInventoryItemSetting('Bandage', 'bandages')
        self._createInventoryItemSetting('CopEarC', 'copper_earring_closed')
        self._createInventoryItemSetting('CopEarO', 'copper_earring_opened')
        self._createInventoryItemSetting('Scalpel', 'scalpel')
        self._createInventoryItemSetting('Embalm', 'embalm')
        self._createInventoryItemSetting('Needle', 'needle')
        self._createInventoryItemSetting('BoneChrm', 'bone_chrm')
        self._createInventoryItemSetting('TEarring', 'tearring')
        self._createInventoryItemSetting('Logpage', 'logpage')
        self._createInventoryItemSetting('N1201', '1201_note')
        self._createInventoryItemSetting('Prybar', 'prybar')
        self._createInventoryItemSetting('Decant', 'decant')
        self._createInventoryItemSetting('Cube', 'cube')
        self._createInventoryItemSetting('KeyEm', 'keyem')
        self._createInventoryItemSetting('keymo2', 'mortuary_key')
        self._createInventoryItemSetting('ouill', 'dhall_feather')
        self._createInventoryItemSetting('fingbone', 'finger_bone')
        self._createInventoryItemSetting('dustrobe', 'dustrobe')
        self._createInventoryItemSetting('dremind', 'dremind')
        self._createInventoryItemSetting('doornote', 'mortuary_doornote')
        self._createInventoryItemSetting('drequest', 'dustman_request')
        self._createInventoryItemSetting('tasklist', 'mortuary_task_list')
        self._createInventoryItemSetting('Spike', 'spike')
        self._createInventoryItemSetting('Strap', 'strap')
        self._createInventoryItemSetting('GSKnife', 'gs_knife')
        self._createInventoryItemSetting('Rags', 'rags')
        self._createInventoryItemSetting('Clotchrm', 'clotchrm')
        self._createInventoryItemSetting('DRemind', 'dremind')

        self._createBooleanSetting(None, 'know_zm257_spirit')
        self._createBooleanSetting(None, 'know_oinosian_name')
        self._createBooleanSetting(None, 'know_bei_name')
        self._createBooleanSetting(None, 'know_asonje_name')
        self._createBooleanSetting(None, 'know_vaxis_name')
        self._createBooleanSetting(None, 'has_bandages_zm396')
        self._createBooleanSetting(None, 'vaxis_has_keyem')
        self._createBooleanSetting('Evil_Ingress_Teeth_1', 'evil_ingress_teeth_1')
        self._createBooleanSetting('Good_Ingress_Teeth_1', 'good_ingress_teeth_1')
        self._createBooleanSetting('1201_Note_Retrieved', '1201_note_retrieved')
        self._createBooleanSetting('Scars', 'read_scars')
        self._createBooleanSetting('Morte_Harlot_Quip_1', 'morte_harlot_quip_1')
        self._createBooleanSetting('506_Thread', 'has_506_thread')
        self._createBooleanSetting('Speak_with_Dead', 'can_speak_with_dead')
        self._createBooleanSetting('Speak_With_Dead', 'can_speak_with_dead')
        self._createBooleanSetting('Vaxis_Exposed', 'vaxis_exposed')
        self._createBooleanSetting('Mortuary_Walkthrough', 'mortuary_walkthrough')
        self._createBooleanSetting('Zombie_Chaotic', 'zombie_chaotic')
        self._createBooleanSetting('Death_of_Names_Dhall', 'pass_death_of_names_dhall')
        self._createBooleanSetting('Death_of_Names_Quentin', 'pass_death_of_names_quentin')
        self._createBooleanSetting('Xachariah_Name', 'know_xachariah_name')
        self._createBooleanSetting('Morte_Mortuary_Walkthrough_1','morte_mortuary_walkthrough_1'),
        self._createBooleanSetting('Morte_Mortuary_Walkthrough_2','morte_mortuary_walkthrough_2'),
        self._createBooleanSetting('Lawful_Vaxis_1', 'vaxis_lawful')
        self._createBooleanSetting('Vaxis_Leave', 'vaxis_leave')
        self._createBooleanSetting('Mortuary_Alert', 'mortualy_alarmed')
        self._createBooleanSetting('Escape_Mortuary', 'escape_mortuary')
        self._createBooleanSetting('Know_Copper_Earring_Secret', 'know_copper_earring_secret')
        self._createBooleanSetting('Know_Xixi', 'know_xixi')
        self._createBooleanSetting('Page_Taken', 'has_zm1664_page')
        self._createBooleanSetting('Morte_Quip', 'morte_quip')
        self._createBooleanSetting('EiVene_Delivery', 'eivene_delivery')
        self._createBooleanSetting('Ravel_EiVene', 'ravel_eivene')
        self._createBooleanSetting('42_Secret', '42_secret')
        self._createBooleanSetting('Vaxis_Orders', 'vaxis_orders')
        self._createBooleanSetting('Vaxis_Help', 'vaxis_help')
        self._createBooleanSetting('Strong_Arm_Vaxis', 'strong_arm_vaxis')
        self._createBooleanSetting('Journal', 'journal')
        self._createBooleanSetting('Vaxis_Zombie_XP', 'vaxis_global_xp')
        self._createBooleanSetting('Morte_Vaxis_Quip_1', 'morte_vaxis_quip_1')
        self._createBooleanSetting('Morte_Vaxis_Quip_2', 'morte_vaxis_quip_2')
        self._createBooleanSetting('Vaxis_Exposes_Soego', 'vaxis_exposes_soego')
        self._createBooleanSetting('UR_1201', 'ur_1201')
        self._createBooleanSetting('LR_1201', 'lr_1201')
        self._createBooleanSetting('LL_1201', 'll_1201')
        self._createBooleanSetting('UL_1201', 'ul_1201')
        self._createBooleanSetting('Know_Mimir', 'know_mimir')
        self._createBooleanSetting('Morte_Mimir', 'morte_mimir')
        self._createBooleanSetting('Know_Gith', 'know_gith')
        self._createBooleanSetting('Know_Lady', 'know_lady')
        self._createBooleanSetting('Morte_Skel_Mort_Quip', 'morte_skel_mort_quip')
        self._createBooleanSetting('Morte_Deionarra_Quip_1', 'morte_deionarra_quip_1')
        self._createBooleanSetting('Translate_Dabus', 'translate_dabus')
        self._createBooleanSetting('Morte_Zombie_Female_Bar_Quip','morte_zombie_female_bar_quip'),
        self._createBooleanSetting('Ingress_Teeth_Installed', 'ingress_teeth_installed')
        self._createBooleanSetting('Able', 'able')
        self._createBooleanSetting('Morte_Story', 'morte_story')
        self._createBooleanSetting('Met_Modrons', 'met_modrons')
        self._createBooleanSetting('Jumble_Reekwind', 'jumble_reekwind')
        self._createBooleanSetting('Know_Mechanus', 'know_mechanus')
        self._createBooleanSetting('Morte_Tattoo_XP', 'morte_tattoo_xp')
        self._createBooleanSetting('Morte_Talent', 'morte_talent')
        self._createBooleanSetting('Memory_Morte_Pillar', 'memory_morte_pillar')
        self._createBooleanSetting('BD_MorteStory', 'bd_morte_story')
        self._createBooleanSetting('Know_Chaosmen', 'know_chaosmen')
        self._createBooleanSetting('Join_Chaosmen', 'join_chaosmen')
        self._createBooleanSetting('Mortai_Contract', 'mortai_contract')
        self._createBooleanSetting('Coppereyes_Contract', 'coppereyes_contract')
        self._createBooleanSetting('Pillar_Musk', 'pillar_musk', 'AR1001')
        self._createBooleanSetting('Pillar_Question', 'pillar_question', 'AR1001')
        self._createBooleanSetting('Yves_Shared', 'yves_shared', 'AR0605')
        self._createBooleanSetting('Dakkon_Slave', 'dakkon_slave', 'Global')
        self._createBooleanSetting('CW_Sal_Hint', 'cw_sal_hint')
        self._createBooleanSetting('Know_Ravel', 'know_ravel')
        self._createBooleanSetting('Know_Morte_Pillar', 'know_morte_pillar')
        self._createBooleanSetting('Know_Blood_War', 'know_blood_war')
        self._createBooleanSetting('Story_Reekwind_Curse', 'story_reekwind_curse')
        self._createBooleanSetting('Seek_Word', 'seek_word')
        self._createBooleanSetting('Where_Fhjull', 'where_fhjull', 'AR1001')
        self._createBooleanSetting('Ravel_Morte', 'ravel_morte')
        self._createBooleanSetting('Morte_Warning', 'morte_warning')
        self._createBooleanSetting('Know_Ravel_Key', 'know_ravel_key')
        self._createBooleanSetting('Grace_Silver_Mimir', 'grace_silver_mimir')
        self._createBooleanSetting('Grace_Smell_Mimir', 'grace_smell_mimir')
        self._createBooleanSetting('Chaotic_Morte_1', 'chaotic_morte_1')
        self._createBooleanSetting('Lawful_Morte_1', 'lawful_morte_1')
        self._createBooleanSetting('Trans_Vanish', 'trans_vanish')
        self._createBooleanSetting('Fortress_Party_Roof', 'fortress_party_roof')
        self._createBooleanSetting('Fortress_Ignus', 'fortress_ignus')
        self._createBooleanSetting('Fortress_Ignus_Battle', 'fortress_ignus_battle')
        self._createBooleanSetting('Fortress_Vhailor', 'fortress_vhailor')
        self._createBooleanSetting('Fortress_Vhailor_Battle', 'fortress_vhailor_battle')
        self._createBooleanSetting('Fortress_Dakkon', 'fortress_dakkon')
        self._createBooleanSetting('Fortress_Annah', 'fortress_annah')
        self._createBooleanSetting('Fortress_Grace', 'fortress_grace')
        self._createBooleanSetting('Fortress_Nordom', 'fortress_nordom')
        self._createBooleanSetting('Morte_Wilder_Quip_1', 'morte_wilder_quip_1')
        self._createBooleanSetting('Morte_SDThug_Quip_1', 'morte_sdthug_quip_1')
        self._createBooleanSetting('Topple_985', 'topple_985')
        self._createBooleanSetting('Choke_Memory', 'choke_memory')
        self._createBooleanSetting('Join_Dustmen', 'join_dustmen')
        self._createBooleanSetting('Skeleton_Chaotic', 'skeleton_chaotic')
        self._createBooleanSetting('Skeleton_Examine', 'skeleton_examine')
        self._createBooleanSetting('Morte_Skel_Mort_Quip2', 'morte_skel_mort_quip2')

        self._create_integer_setting('Choke_Dustman', 'choke_dustman', [0, 1])
        self._create_integer_setting('Choke', 'choke', [0, 1])
        self._create_integer_setting('Tree_Helpers', 'tree_helpers', [0, 1], 'AR0400')
        self._create_integer_setting('Pharod_Quest', 'pharod_quest', [0, 1])
        self._create_integer_setting('Torment_Fell', 'torment_fell', [0, 1, 2])
        self._create_integer_setting('Specialist', 'specialist', [0, 1, 2, 3, 4, 5, 6])
        self._create_integer_setting('Chaotic_Malmaner_1', 'chaotic_malmaner_1', [0, 1, 2, 3])
        self._create_integer_setting('Malmaner', 'malmaner', [0, 1, 2, 3, 4, 5])
        self._create_integer_setting('Pillar ', 'pillar', [0, 1, 2]),  # with space, ye
        self._create_integer_setting('Nemelle', 'nemelle', [0, 1, 2, 3, 4])
        self._create_integer_setting('Lecture_Death', 'lecture_death', [0, 1, 2])
        self._create_integer_setting('Lecture_Ghysis', 'lecture_ghysis', [0, 1, 2])
        self._create_integer_setting('Morte_Stolen', 'morte_stolen', [0, 1, 2, 3])
        self._create_integer_setting('Qui_Sai', 'qui_sai', [0, 1, 2])
        self._create_integer_setting('Warning', 'warning', [0, 1, 2])
        self._create_integer_setting('Betray_Vaxis', 'vaxis_betrayed', [0, 1, 2])
        self._create_integer_setting('Xixi_Back', 'xixi_back', [0, 1, 2, 3])
        self._create_integer_setting('Embalm_Key_Quest', 'embalm_key_quest', [0, 1, 2, 3])
        self._create_integer_setting('1201_Note', '1201_note_quest', [0, 1, 2])
        self._create_integer_setting('Vaxis_Zombie_Disguise', 'vaxis_zombie_disguise', [0, 1, 2])
        self._create_integer_setting('BD_MORTE_MORALE', 'bd_morte_morale', [0, 1, 2, 3, 4, 5, 6, -1])
        self._create_integer_setting('BD_DAKKON_MORALE', 'bd_dakkon_morale', [0, 1, -1])
        self._create_integer_setting('Morte_Taunt', 'morte_taunt', [0, 1])
        self._create_integer_setting('Ravel_Grace', 'ravel_grace', [0, 1, 2, 3])
        self._create_integer_setting('Ravel_Annah', 'ravel_annah', [0, 1, 2, 3])
        self._create_integer_setting('Know_Marta_Work', 'know_marta_work', [0, 1, 2, 3])
        self._create_integer_setting('Morte_Quip_Regret_Portal', 'morte_quip_regret_portal', [0, 1, 2])
        self._create_integer_setting('Morte_Morale_Fortress_Portal', 'morte_morale_fortress_portal', [0, 1], 'AR0202')
        self._create_integer_setting('Fortress_Morte', 'fortress_morte', [0, 1, 2, 3, 4])
        self._create_integer_setting('Nenny', 'nenny', [0, 1, 2])
        self._create_integer_setting('Adyzoel', 'adyzoel', [0, 1, 2], 'AR0400')
        self._create_integer_setting('BariA', 'baria', [0, 1, 2], 'AR0400')
        self._create_integer_setting('Adahn', 'adahn', [0, 1, 2, 3, 4, 5])
        self._create_integer_setting('Appearance', 'appearance', [0, 1])
        self._create_integer_setting('GLOBALKnow_Dustmen', 'know_dustmen', [0, 1])

        self._add_replacement('ShowFirstTimeHelp()', '# ShowFirstTimeHelp()')
        self._add_replacement('SetGlobal("0202_Dhall_Face_Player","AR0202",1)', '# SetGlobal("0202_Dhall_Face_Player","AR0202",1)')
        self._add_replacement('ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)', 'self.gsm.set_in_party_morte(True)')
        self._add_replacement('HasItem("Bandage","ZM396")', 'return self.gsm.get_has_bandages_zm396()')
        self._add_replacement('HasItem("KeyEm","EiVene")', 'return self.gsm.get_has_keyem()')
        self._add_replacement('!HasItem("KeyEm","EiVene")', 'return not self.gsm.get_has_keyem()')
        self._add_replacement('GiveItem("KeyEm","Vaxis")', 'self.gsm.set_has_keyem(False) self.gsm.set_vaxis_has_keyem(True)')
        self._add_replacement('SetNamelessDisguise(ZOMBIE)', "self.gsm.gcm.set_property('protagonist', 'looks_like', 'zombie')")
        self._add_replacement('HPPercent(Protagonist,100)', 'return self.gsm.get_hp() == 100')
        self._add_replacement('HPPercentGT(Protagonist,49)', 'return self.gsm.get_hp() > 49')
        self._add_replacement('HPPercentLT(Protagonist,50)', 'return self.gsm.get_hp() < 50')
        self._add_replacement('HasItem("Cobble","Post")', 'HasItem("Cobble","Post")  # Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).')

        duplicates = self.findDuplicates_JohnLaRooy(map(lambda x: x[0], self.replacements))
        if (len(duplicates) > 0):
            raise Exception(f'Found {len(duplicates)} in the replacements, so the result is not determinated:\n{duplicates}')

        return sorted(self.replacements, key=lambda x: len(x[0]), reverse=True)


    def findDuplicates_JohnLaRooy(self, L):
        seen = set()
        seen2 = set()
        seen_add = seen.add
        seen2_add = seen2.add
        for item in L:
            if item in seen:
                seen2_add(item)
            else:
                seen_add(item)
        return list(seen2)


    def transform_script(self, script, target_npc):
        script = self._replace_kill_myself(script, target_npc)
        script = self._apply_well_known_replacements(script)
        script = self._apply_transformers(script, target_npc)
        return script


    def _first_lower(self, x):
        if len(x) == 0:
            return x
        else:
            return x[0].lower() + x[1:]


    def _add_setting(self, name, setting_type):
        if name not in self.known_settings:
            self.known_settings[name] = KnownSetting(name, setting_type)


    def _add_replacement(self, pattern, replacement):
        self.replacements.append((pattern, replacement))


    def _createPartyNpc(self, from_var, to_var):
        self._add_setting(f'in_party_{to_var}', 'boolean')
        self._add_setting(f'morale_{to_var}', 'integer')

        self._createNpcSetting(from_var, to_var)
        self._add_replacement(f'NearbyDialog("{from_var}")', f'return self.gsm.get_in_party_{to_var}()')
        self._add_replacement(f'!NearbyDialog("{from_var}")', f'return not self.gsm.get_in_party_{to_var}()')
        self._add_replacement(f'InParty("{from_var}")', f'return self.gsm.get_in_party_{to_var}()')
        self._add_replacement(f'!InParty("{from_var}")', f'return not self.gsm.get_in_party_{to_var}()')
        self._add_replacement(f'MoraleDec("{from_var}",1)', f'self.gsm.dec_morale_{to_var}()')
        self._add_replacement(f'MoraleInc("{from_var}",1)', f'self.gsm.inc_morale_{to_var}()')
        self._add_replacement(f'MoraleDec("{from_var}",2)', f'self.gsm.dec_morale_{to_var}(2)')
        self._add_replacement(f'MoraleInc("{from_var}",2)', f'self.gsm.inc_morale_{to_var}(2)')
        self._add_replacement(f'MoraleDec("{from_var}",3)', f'self.gsm.dec_morale_{to_var}(3)')
        self._add_replacement(f'MoraleInc("{from_var}",3)', f'self.gsm.inc_morale_{to_var}(3)')


    def _createInventoryItemSetting(
            self,
            from_var,
            to_var
        ):
        self._add_setting(f'has_{to_var}', 'boolean')

        for i in range(1, 6):  # manually add new values
            self._add_replacement(f'GiveItemCreate("{from_var}",Protagonist,{i},0,0)', f'self.gsm.set_has_{to_var}(True)')

        self._add_replacement(f'GiveItem("{from_var}",Protagonist)', f'self.gsm.set_has_{to_var}(True)')
        self._add_replacement(f'TakeItem("{from_var}",Protagonist)', f'self.gsm.set_has_{to_var}(False)')
        self._add_replacement(f'DestroyPartyItem("{from_var}",TRUE)', f'self.gsm.set_has_{to_var}(False)')
        self._add_replacement(f'TakePartyItemNum("{from_var}",1)', f'self.gsm.set_has_{to_var}(False)') #  always -1 is false
        self._add_replacement(f'PartyHasItem("{from_var}")', f'return self.gsm.get_has_{to_var}()')
        self._add_replacement(f'!PartyHasItem("{from_var}")', f'return not self.gsm.get_has_{to_var}()')


    def _create_integer_setting(self, from_var, to_var, values, env='GLOBAL'):
        self._add_setting(to_var, 'integer')

        if from_var is None:
                return

        for i in [-1, 1, 2]:  # manually add new values
            self._add_replacement(f'IncrementGlobal("{from_var}","{env}",{i})', f'self.gsm.inc_{to_var}()')

        for value in values:
            self._add_replacement(f'SetGlobal("{from_var}","{env}",{value})', f'self.gsm.set_{to_var}({value})')

        for value in values:
            self._add_replacement(f'Global("{from_var}","{env}",{value})', f'return self.gsm.get_{to_var}() == {value}')

        for value in values:
            self._add_replacement(f'!Global("{from_var}","{env}",{value})', f'return self.gsm.get_{to_var}() != {value}')

        for value in values:
            self._add_replacement(f'GlobalLT("{from_var}","{env}",{value})', f'return self.gsm.get_{to_var}() < {value}')

        for value in values:
            self._add_replacement(f'GlobalGT("{from_var}","{env}",{value})', f'return self.gsm.get_{to_var}() > {value}')


    def _createBooleanSetting(
            self,
            from_var,
            to_var,
            env = 'GLOBAL',
        ):
            self._add_setting(to_var, 'boolean')

            if from_var is None:
                return

            prefix = f'self.gsm.get_{to_var}()'
            not_prefix = f'not {prefix}'

            #  May I be wrong? I mart.
            self._add_replacement(f'SetGlobal("{from_var}","{env}",0)', f'self.gsm.set_{to_var}(False)')
            self._add_replacement(f'SetGlobal("{from_var}","{env}",1)', f'self.gsm.set_{to_var}(True)')
            self._add_replacement(f'Global("{from_var}","{env}",0)',    f'return {not_prefix}')
            self._add_replacement(f'Global("{from_var}","{env}",1)',    f'return {prefix}')
            self._add_replacement(f'GlobalGT("{from_var}","{env}",1)',  f'return false  # GlobalGT("{from_var}","{env}",1)')
            self._add_replacement(f'GlobalLT("{from_var}","{env}",0)',  f'return false  # GlobalLT("{from_var}","{env}",0)')
            self._add_replacement(f'GlobalGT("{from_var}","{env}",0)',  f'return {prefix}')
            self._add_replacement(f'GlobalLT("{from_var}","{env}",1)',  f'return {not_prefix}')
            self._add_replacement(f'!Global("{from_var}","{env}",0)',   f'return {prefix}')
            self._add_replacement(f'!Global("{from_var}","{env}",1)',   f'return {not_prefix}')
            self._add_replacement(f'!GlobalGT("{from_var}","{env}",0)', f'return {not_prefix}')
            self._add_replacement(f'!GlobalGT("{from_var}","{env}",1)', f'return true  # !GlobalGT("{from_var}","{env}",1)')
            self._add_replacement(f'!GlobalLT("{from_var}","{env}",0)', f'return true  # !GlobalLT("{from_var}","{env}",0)')
            self._add_replacement(f'!GlobalLT("{from_var}","{env}",1)', f'return {prefix}')


    def _createNpcSetting(
            self,
            from_var,
            to_var,
            env = 'GLOBAL',
        ):
            self._add_setting(f"talked_to_{to_var}_times", 'integer')
            self._add_setting(f"dead_{to_var}", 'boolean')
            self._add_setting(f"{to_var}_value", 'integer')
            self._add_setting(f"{to_var}_value", 'integer')

            if from_var is None:
                return

            for x in range(0, 5):
                self._add_replacement(f'SetGlobal("{from_var}","{env}",{x})', f'self.gsm.set_{to_var}_value({x})')
                self._add_replacement(f'Global("{from_var}","{env}",{x})',    f'return self.gsm.get_{to_var}_value() == {x}')
                self._add_replacement(f'GlobalGT("{from_var}","{env}",{x})',  f'return self.gsm.get_{to_var}_value() > {x}')
                self._add_replacement(f'GlobalLT("{from_var}","{env}",{x})',  f'return self.gsm.get_{to_var}_value() < {x}')
                self._add_replacement(f'!Global("{from_var}","{env}",{x})',   f'return self.gsm.get_{to_var}_value() != {x}')
                self._add_replacement(f'!GlobalGT("{from_var}","{env}",{x})',  f'return self.gsm.get_{to_var}_value() <= {x}')
                self._add_replacement(f'!GlobalLT("{from_var}","{env}",{x})',  f'return self.gsm.get_{to_var}_value() >= {x}')

            self._add_replacement(f'Dead("{from_var}")', f'return self.gsm.get_dead_{to_var}()')
            self._add_replacement(f'!Dead("{from_var}")', f'return not self.gsm.get_dead_{to_var}()')


    def _createTreeSettings(self):
        letters = list('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
        for letter in letters:
            # self._add_setting(f'tree_{letter.lower()}', 'boolean')
            self._createBooleanSetting(f'Tree_{letter}', f'tree_{letter.lower()}', 'AR0400')


    def _replace_kill_myself(self, script, target_npc):
        return script.replace('Kill(Myself)', f'self.gsm.set_dead_{target_npc}(True)')


    def _apply_well_known_replacements(self, script):
        for pattern, replacement in self.well_known_replacements:
            script = script.replace(pattern, replacement)
        return script


    def _apply_transformers(self, script, target_npc):
        transformers = [
            self._transform_journals,
            self._transform_conditionals,
            self._transform_alignments,
            self._transform_alignments_once,
            self._transform_sounds,
            self._transform_attacks,
            self._transform_gold,
            self._transform_target_exp,
            self._transform_party_exp,
            self._transform_stats,
            self._transform_healing,
            self._transform_cutscenes,
            self._transform_locations,
            self._transform_set_internal_visited,
            self._transform_global_internal_visited,
            self._transform_global_visited,
            self._transform_times_talked_to
        ]
        for transformer in transformers:
            script = transformer(script, target_npc)
        return script

    # Individual transformer methods

    def _transform_journals(self, script, target_npc):
        return self.JOURNAL_REGEX.sub(
            r"self.gsm.update_journal('\1')    # '\1': '\2'",
            script
        )


    def _transform_conditionals(self, script, target_npc):
        def replace_conditional(match):
            operator, character, amount, prop = match.groups()
            op_type = '>' if operator == 'GT' else '<'

            fullProp = 'UNKNOWN'
            match prop.lower():
                case 'str':
                    fullProp = 'strength'
                case 'dex':
                    fullProp = 'dexterity'
                case 'int':
                    fullProp = 'intelligence'
                case 'con':
                    fullProp = 'constitution'
                case 'wis':
                    fullProp = 'wisdom'
                case 'chr':
                    fullProp = 'charisma'

            if fullProp == 'UNKNOWN':
                print(f'Cannot match prop {prop}')

            return f"return self.gsm.gcm.get_character_property('{character.lower()}', '{fullProp}') {op_type} {amount}"

        return self.CONDITIONAL_REGEX.sub(replace_conditional, script)


    def _transform_alignments(self, script, target_npc):
        def replace_alignment(match):
            prop, env, amount, = match.groups()
            amount = int(amount)
            prop = prop.lower()

            if prop in ('good', 'evil'):
                return f"self.gsm.gcm.modify_property('protagonist', 'good', {amount})"
            elif prop in ('law', 'chaotic'):
                return f"self.gsm.gcm.modify_property('protagonist', 'law', {amount})"
            return match.group(0)

        return self.INCREMENT_REGEX.sub(replace_alignment, script)


    def _transform_alignments_once(self, script, target_npc):
        def replace_alignment_once(match):
            global_id, prop, amount, = match.groups()
            prop = prop.replace('GLOBAL', '').lower()
            amount = int(amount)

            if prop in ('good', 'evil'):
                return f"self.gsm.gcm.modify_property_once('protagonist', 'good', {amount}, '{global_id.lower()}')"
            elif prop in ('law', 'chaotic'):
                return f"self.gsm.gcm.modify_property_once('protagonist', 'law', {amount}, '{global_id.lower()}')"
            elif prop == 'know_dustmen':
                return f"self.gsm.inc_once_know_dustmen('{global_id.lower()}')"
            print(f'Unknown match {match.groups()}')
            return match.group(0)

        return self.INCREMENT_REGEX_ONCE.sub(replace_alignment_once, script)


    def _transform_sounds(self, script, target_npc):
        return self.SOUND_REGEX.sub(r'# ?.play_sound("\1")', script)


    def _transform_attacks(self, script, target_npc):
        return self.ATTACK_REGEX.sub(r'# ?.attack("\1").by("\2")', script)


    def _transform_gold(self, script, target_npc):
        def replace_gold(match):
            action, amount, = match.groups()
            amount = int(amount)

            if action == 'TakePartyGold':
                return f'self.gsm.dec_gold({amount})' if amount > 0 else f'self.gsm.inc_gold({-amount})'
            elif action == 'DestroyPartyGold':
                return f'self.gsm.dec_gold({amount})'
            elif action == 'PartyGoldGT':
                return f'return self.gsm.get_gold() > {amount}'
            elif action == 'GiveGoldForce':
                return f'self.gsm.inc_gold({amount})'
            return match.group(0)

        return self.GOLD_REGEX.sub(replace_gold, script)


    def _transform_target_exp(self, script, target_npc):
        def replace_exp(match):
            character, amount, = match.groups()
            amount = int(amount)
            return f"self.gsm.inc_exp_custom('{character.lower()}', {amount})" if amount > 0 else f"self.gsm.dec_exp_custom('{character.lower()}', {-amount})"

        return self.TARGET_EXP_REGEX.sub(replace_exp, script)


    def _transform_party_exp(self, script, target_npc):
        def replace_exp(match):
            amount, = match.groups()
            amount = int(amount)
            return f"self.gsm.inc_exp_custom('party', {amount})" if amount > 0 else f"self.gsm.dec_exp_custom('party', {-amount})"

        return self.PARTY_EXP_REGEX.sub(replace_exp, script)


    def _transform_stats(self, script, target_npc):
        def replace_exp(match):
            character, prop, operator, amount, = match.groups()
            amount = int(amount)
            op_type = '>' if operator == 'RAISE' else '<'

            fullProp = 'UNKNOWN'
            match prop.lower():
                case 'str':
                    fullProp = 'strength'
                case 'dex':
                    fullProp = 'dexterity'
                case 'int':
                    fullProp = 'intelligence'
                case 'con':
                    fullProp = 'constitution'
                case 'wis':
                    fullProp = 'wisdom'
                case 'chr':
                    fullProp = 'charisma'
                case 'maxhitpoints':
                    fullProp = 'maxHealth'

            if fullProp == 'UNKNOWN':
                print(f'Cannot match prop {prop}')

            return f"self.gsm.gcm.modify_property('{character.lower()}', '{fullProp}', {amount})"
        return self.STAT_REGEX.sub(replace_exp, script)


    def _transform_healing(self, script, target_npc):
        def replace_exp(match):
            character, = match.groups()
            return f"self.gsm.full_heal('{character.lower()}')"
        return self.FULL_HEAL_REGEX.sub(replace_exp, script)


    def _transform_cutscenes(self, script, target_npc):
        return self.CUTSCENE_REGEX.sub(r'# ?.startCutScene("\1")', script)


    def _transform_locations(self, script, target_npc):
        def replace_location(match):
            env, value = match.groups()
            return f"\n        self.gsm.glm.set_location('AR{value.zfill(4)}')"

        return self.LOCATION_REGEX.sub(replace_location, script)


    def _transform_set_internal_visited(self, script, target_npc):
        def replace_visited(match):
            env, value, = match.groups()
            is_visited = (not_op is None) == (value == '1')
            return f"\n        self.gsm.glm.set_location('AR{value.zfill(4)}')"

        return self.SET_INTERNAL_VISITED_REGEX.sub(replace_visited, script)


    def _transform_global_internal_visited(self, script, target_npc):
        def replace_visited(match):
            not_op, env, value = match.groups()
            isVisited = not not_op
            return f"return{' ' if isVisited else ' not '}self.gsm.glm.is_visited_internal_location('AR{value.zfill(4)}')"

        return self.GLOBAL_INTERNAL_VISITED_REGEX.sub(replace_visited, script)


    def _transform_global_visited(self, script, target_npc):
        def replace_visited(match):
            not_op, locationId, value = match.groups()
            isVisited = (not_op == '!') != (value == '1')
            return f"return{' ' if isVisited else ' not '}self.gsm.glm.is_visited_internal_location('{locationId}')"

        return self.GLOBAL_VISITED_REGEX.sub(replace_visited, script)


    def _transform_times_talked_to(self, script, target_npc):
        def replace_visited(match):
            operator, value = match.groups()
            op_type = 'UNKNOWN'
            match operator:
                case 'GT':
                    op_type = '>'
                case 'LT':
                    op_type = '<'
                case None:
                    op_type = '=='
            if op_type == 'UNKNOWN':
                print(f'Unknown op type {operator}')
            return f'return self.gsm.get_talked_to_{target_npc}_times() {op_type} {value}'

        return self.TIMES_TALKED_TO_REGEX.sub(replace_visited, script)


    # --------------------------
    # Formatting Utilities
    # --------------------------

    @staticmethod
    def trim_trash(text):
        text = text.replace('~', '').replace('«', '').replace('»', '').replace('...', '…').strip()
        return DialogueProcessor.replace_nested_quotes(text)


    @staticmethod
    def replace_nested_quotes(text):
        if text.count("'") < 2:
            return text
        first_idx = text.find("'")
        last_idx = text.rfind("'")
        if first_idx == last_idx:
            return text
        middle = text[first_idx+1:last_idx].replace("'", "«")
        return text[:first_idx+1] + middle.replace("'", "»") + text[last_idx:]


    @staticmethod
    def to_single_return(script):
        lines = []
        for line in script.split('\n'):
            if line.strip().startswith('def'):
                lines.append(line)
                continue

            returns = [s.strip() for s in line.split('return') if s.strip()]
            if not returns:
                lines.append(line)
                continue

            if len(returns) == 1:
                lines.append(f'        return {returns[0]}')
            else:
                all_but_last = ' and \\\n               '.join(returns[:-1])
                lines.append(f'        return {all_but_last} and \\\n               {returns[-1]}')
        return '\n'.join(lines)


    @staticmethod
    def to_single_body(script):
        return re.sub(
            r'(self\.gsm\.[a-zA-Z0-9_\.]+\([^)]*\))\s*',
            r'\1\n        ',
            script
        ).replace('        def', '\n\n    def').rstrip()


    @staticmethod
    def right_trim_lines(text):
        return '\n'.join(line.rstrip() for line in text.split('\n'))

    # --------------------------
    # Main Serialization Logic
    # --------------------------


    def serialize_states_plain(
        self,
        states,
        area,
        state_prefix
    ):
        target_npc = area[1:] if area.startswith('d') else area
        dialog_tree = []
        logic_actions = []
        logic_conditions = []
        global_response_counter = 0

        # Initialize dialog tree
        dialog_tree.extend([
            f'init 10 python:',
            f'    from dlgs.{target_npc}_logic import {target_npc.capitalize()}Logic',
            f'    {target_npc}Logic = {target_npc.capitalize()}Logic(renpy.store.global_settings_manager)',
            f'',
            f'',
            f'# ###',
            f'# Original:  DLG/{target_npc.upper()}.DLG',
            f'# ###',
            f'',
            f'',
            f'label {target_npc}_init:',
            f'    return',
            f'',
            f'',
            f'label {target_npc}_dispose:',
            f'    jump show_graphics_menu',
            f'',
        ])

        # Process each state
        for state in states:
            # State header
            from_path = 'from ' + ' '.join(
                f'{p.from_state_id}.{p.response_index}'
                for p in state.paths
            ) if state.paths else '-'

            free_comment = f' # {state.free}' if state.free else ''
            dialog_tree.append(
                f'\n# s{state.state_id} # say{state.say_id}'
                f'\nlabel {target_npc}{state_prefix}{state.state_id}:  # {from_path}{free_comment}'
            )

            # State body
            dialog_tree.append(f"    SPEAKER '{self.trim_trash(state.state_body)}'\n")

            # Handle states with no answers
            if not state.answers:
                dialog_tree.append(f'    jump {target_npc}_dispose')
                continue

            # Menu with answers
            dialog_tree.append('    menu:')

            for answer in state.answers:
                # Determine target state
                target_id = (
                    f'{target_npc}_dispose'
                    if answer.target_state_id == 'EXIT'
                    else f'{target_npc}{state_prefix}{answer.target_state_id}'
                )

                # Menu option
                menu_option = f"        '{self.trim_trash(answer.answer_body)}'"

                # Condition handling
                if answer.condition and answer.condition.strip():
                    logic_conditions.append(
                        f'    def r{answer.answer_id}_condition(self):\n        {answer.condition.strip()}\n'
                    )
                    menu_option += f' if {target_npc}Logic.r{answer.answer_id}_condition()'

                dialog_tree.append(menu_option + ':')
                dialog_tree.append(f'            # r{global_response_counter} # reply{answer.answer_id}')

                # Action handling
                if answer.action and answer.action.strip():
                    logic_actions.append(
                        f'    def r{answer.answer_id}_action(self):\n        {answer.action.strip()}\n'
                    )
                    dialog_tree.append(f'            $ {target_npc}Logic.r{answer.answer_id}_action()')

                # Exit handling
                # if answer.target_state_id == 'EXIT':
                #     dialog_tree.append('            $ _dispose()')

                # Jump to next state
                dialog_tree.append(f'            jump {target_id}\n')

                global_response_counter += 1

        # Format logic sections
        logic_actions_str = '\n\n'.join(logic_actions)
        logic_conditions_str = '\n\n'.join(logic_conditions)

        # Apply transformations to logic code
        transformed_actions = self.to_single_body(
            self.transform_script(logic_actions_str, target_npc)
        )
        transformed_conditions = self.to_single_return(
            self.transform_script(logic_conditions_str, target_npc)
        )

        # Combine logic sections
        logic_code = f'class {target_npc.capitalize()}Logic:\n    def __init__(self, gsm):\n        self.gsm = gsm\n\n\n'
        if transformed_actions.strip():
            logic_code += f'{self.right_trim_lines(transformed_actions)}\n\n\n'
        if transformed_conditions.strip():
            logic_code += f'{self.right_trim_lines(transformed_conditions)}'

        # Format dialog tree
        dialog_tree_str = self.right_trim_lines('\n'.join(dialog_tree))

        return dialog_tree_str, logic_code.strip()