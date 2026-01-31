class CharacterCreationLogic:
    def __init__(self,
        state_manager,
        character_id = None,
        min_prop_value=9,
        max_prop_value=18,
        max_props_sum=75,
        default_health=20,
        constitution_threshhold=15
    ):
        self.state_manager = state_manager
        self.character_id = character_id
        self.min_prop_value = min_prop_value
        self.max_prop_value = max_prop_value
        self.max_props_sum = max_props_sum
        self.default_health = default_health
        self.constitution_threshhold = constitution_threshhold


    def get_character(self, character_id=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')

        return self.state_manager.characters_manager.get_character(c_id)


    # I hate mutation so bad...
    def dec_prop(self, character_id=None, prop=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')
        if prop is None:
            raise KeyError('Prop cannot be None')

        character = self.get_character(c_id)

        if character.get_all_properties()[prop] <= self.min_prop_value:
            return

        self.state_manager.characters_manager.modify_property(c_id, prop, -1)
        if prop == 'constitution':
            self._update_max_health(character)


    def inc_prop(self, character_id=None, prop=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')
        if prop is None:
            raise KeyError('Prop cannot be None')

        character = self.get_character(c_id)

        if self._count_all_props_sum(character) >= self.max_props_sum:
            return
        if character.get_all_properties()[prop] >= self.max_prop_value:
            return

        self.state_manager.characters_manager.modify_property(c_id, prop, 1)
        if prop == 'constitution':
            self._update_max_health(character)


    def minus_sensitive(self, character_id=None, prop=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')
        if prop is None:
            raise KeyError('Prop cannot be None')

        return getattr(self.get_character(c_id), prop) > self.min_prop_value


    def plus_sensitive(self, character_id=None, prop=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')
        if prop is None:
            raise KeyError('Prop cannot be None')

        character = self.get_character(c_id)
        return getattr(character, prop) < self.max_prop_value and \
                       self._count_all_props_sum(character) < self.max_props_sum


    def remaning_points(self, character_id=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')

        character = self.get_character(c_id)
        return self.max_props_sum - self._count_all_props_sum(character)


    def done(self, character_id=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')

        character = self.get_character(c_id)
        return self._count_all_props_sum(character) == self.max_props_sum


    def set_mage(self, character_id=None):
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')

        self.state_manager.characters_manager.set_property(c_id, 'strength', 9)
        self.state_manager.characters_manager.set_property(c_id, 'dexterity', 9)
        self.state_manager.characters_manager.set_property(c_id, 'intelligence', 16)
        self.state_manager.characters_manager.set_property(c_id, 'constitution', 9)
        self.state_manager.characters_manager.set_property(c_id, 'wisdom', 17)
        self.state_manager.characters_manager.set_property(c_id, 'charisma', 15)


    def reset_character(self, character_id=None): # TODO [snow]: why it does not worK at the screen?
        c_id = self.character_id or character_id

        if c_id is None:
            raise KeyError('Character id must be defined in logic or in method and cannot be None')

        self.state_manager.characters_manager.set_property(c_id, 'strength', 9)
        self.state_manager.characters_manager.set_property(c_id, 'dexterity', 9)
        self.state_manager.characters_manager.set_property(c_id, 'intelligence', 9)
        self.state_manager.characters_manager.set_property(c_id, 'constitution', 9)
        self.state_manager.characters_manager.set_property(c_id, 'wisdom', 9)
        self.state_manager.characters_manager.set_property(c_id, 'charisma', 9)


    def _update_max_health(self, character):
        extra_health = 0
        if character.constitution >= self.min_prop_value and \
            character.constitution < self.constitution_threshhold:
            extra_health = (character.constitution - self.min_prop_value) * 2
        if character.constitution >= self.constitution_threshhold:
            extra_health = (character.constitution - self.min_prop_value) * 2 + (character.constitution - self.constitution_threshhold) + 1

        self.state_manager.characters_manager.set_property(character.name, 'max_health', self.default_health + extra_health)


    def _count_all_props_sum(self, character):
        return character.strength + \
               character.dexterity + \
               character.intelligence + \
               character.constitution + \
               character.wisdom + \
               character.charisma
