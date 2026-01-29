class CharacterCreationLogic:
    def __init__(self,
        state_manager,
        character_id = 'protagonist_character_name',
        min_prop_value=9,
        max_prop_value=18,
        max_props_sum=75,
        default_health=20,
        health_threshhold=15
    ):
        self.state_manager = state_manager
        self.character_id = character_id
        self.min_prop_value = min_prop_value
        self.max_prop_value = max_prop_value
        self.max_props_sum = max_props_sum
        self.default_health = default_health
        self.health_threshhold = health_threshhold


    def get_character(self):
        return self.state_manager.characters_manager.get_character(self.character_id)


    def dec_prop(self, prop):
        character = self.get_character()

        if character.get_all_properties()[prop] <= self.min_prop_value:
            return

        self.state_manager.characters_manager.modify_property(self.character_id, prop, -1)
        if prop == 'constitution':
            self.update_max_health()


    def inc_prop(self, prop):
        character = self.get_character()

        if self.count_all_props_sum() >= self.max_props_sum:
            return
        if character.get_all_properties()[prop] >= self.max_prop_value:
            return

        self.state_manager.characters_manager.modify_property(self.character_id, prop, 1)
        if prop == 'constitution':
            self.update_max_health()


    def update_max_health(self):
        character = self.get_character()

        extra_health = 0
        if character.constitution >= self.min_prop_value and \
            character.constitution < self.health_threshhold:
            extra_health = (character.constitution - self.min_prop_value) * 2
        if character.constitution >= self.health_threshhold:
            extra_health = (character.constitution - self.min_prop_value) * 2 + (character.constitution - self.health_threshhold) + 1

        self.state_manager.characters_manager.set_property(self.character_id, 'max_health', self.default_health + extra_health)


    def count_all_props_sum(self):
        character = self.get_character()

        return \
            character.strength + \
            character.dexterity + \
            character.intelligence + \
            character.constitution + \
            character.wisdom + \
            character.charisma


    def strength_minus_sensitive(self):
        return self.get_character().strength > self.min_prop_value
    def strength_plus_sensitive(self):
        return self.get_character().strength < self.max_prop_value and \
               self.count_all_props_sum()    < self.max_props_sum

    def intelligence_minus_sensitive(self):
        return self.get_character().intelligence > self.min_prop_value
    def intelligence_plus_sensitive(self):
        return self.get_character().intelligence < self.max_prop_value and self.count_all_props_sum() < self.max_props_sum

    def wisdom_minus_sensitive(self):
        return self.get_character().wisdom > self.min_prop_value
    def wisdom_plus_sensitive(self):
        return self.get_character().wisdom < self.max_prop_value and self.count_all_props_sum() < self.max_props_sum

    def dexterity_minus_sensitive(self):
        return self.get_character().dexterity > self.min_prop_value
    def dexterity_plus_sensitive(self):
        return self.get_character().dexterity < self.max_prop_value and self.count_all_props_sum() < self.max_props_sum

    def constitution_minus_sensitive(self):
        return self.get_character().constitution > self.min_prop_value
    def constitution_plus_sensitive(self):
        return self.get_character().constitution < self.max_prop_value and self.count_all_props_sum() < self.max_props_sum

    def charisma_minus_sensitive(self):
        return self.get_character().charisma > self.min_prop_value
    def charisma_plus_sensitive(self):
        return self.get_character().charisma < self.max_prop_value and self.count_all_props_sum() < self.max_props_sum


    def remaning_points(self):
        return self.max_props_sum - self.count_all_props_sum()


    def done(self):
        return self.count_all_props_sum() == self.max_props_sum


    def set_mage(self):
        self.state_manager.characters_manager.set_property(self.character_id, 'strength', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'dexterity', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'intelligence', 16)
        self.state_manager.characters_manager.set_property(self.character_id, 'constitution', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'wisdom', 17)
        self.state_manager.characters_manager.set_property(self.character_id, 'charisma', 15)


    def reset_character(self): # TODO [snow]: why it does not worK?
        self.state_manager.characters_manager.set_property(self.character_id, 'strength', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'dexterity', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'intelligence', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'constitution', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'wisdom', 9)
        self.state_manager.characters_manager.set_property(self.character_id, 'charisma', 9)
