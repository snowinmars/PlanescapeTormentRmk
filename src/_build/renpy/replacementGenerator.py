class ReplacementGenerator:
    def __init__(self):
        self.known_settings = {}
        self._replacements = []

    def add_setting(self, name, setting_type) -> None:
        if name not in self.known_settings:
            self.known_settings[name] = KnownSetting(name, setting_type)

    def add_replacement(self, pattern, replacement) -> None:
        self._replacements.append((pattern, replacement))


    def _setting(
        self,
        from_var,
        to_var,
        env = 'GLOBAL',
        meet_and_dead = False
    ) -> None:
        suffixes = []
        if meet_and_dead:
            suffixes.extend([f"meet_{to_var}", f"dead_{to_var}"])
            self.add_setting(f"talked_to_{to_var}_times()", 'integer')
        else:
            suffixes.append(to_var)

        for suffix in suffixes:
            self.add_setting(suffix, 'boolean')
            prefix = f'gsm.get_{suffix}()'
            not_prefix = f'not {prefix}'

            #  May I be wrong? I mart.
            self.add_replacement(f'SetGlobal("{from_var}","{env}",0)', f'gsm.set_{suffix}(False)')
            self.add_replacement(f'SetGlobal("{from_var}","{env}",1)', f'gsm.set_{suffix}(True)')
            self.add_replacement(f'Global("{from_var}","{env}",0)', f'return {not_prefix}')
            self.add_replacement(f'Global("{from_var}","{env}",1)', f'return {prefix}')
            self.add_replacement(f'GlobalGT("{from_var}","{env}",1)', f'return false  # GlobalGT("{from_var}","{env}",1)')
            self.add_replacement(f'GlobalLT("{from_var}","{env}",0)', f'return false  # GlobalLT("{from_var}","{env}",0)')
            self.add_replacement(f'GlobalGT("{from_var}","{env}",0)', f'return {prefix}')
            self.add_replacement(f'GlobalLT("{from_var}","{env}",1)', f'return {not_prefix}')
            self.add_replacement(f'!Global("{from_var}","{env}",0)', f'return {prefix}')
            self.add_replacement(f'!Global("{from_var}","{env}",1)', f'return {not_prefix}')
            self.add_replacement(f'!GlobalGT("{from_var}","{env}",0)', f'return {not_prefix}')
            self.add_replacement(f'!GlobalGT("{from_var}","{env}",1)', f'return true  # !GlobalGT("{from_var}","{env}",1)')
            self.add_replacement(f'!GlobalLT("{from_var}","{env}",0)', f'return true  # !GlobalLT("{from_var}","{env}",0)')
            self.add_replacement(f'!GlobalLT("{from_var}","{env}",1)', f'return {prefix}')

        if meet_and_dead:
            self.add_replacement(f'Dead("{from_var}")', f'return gsm.get_dead_{to_var}()')
            self.add_replacement(f'!Dead("{from_var}")', f'return not gsm.get_dead_{to_var}()')
