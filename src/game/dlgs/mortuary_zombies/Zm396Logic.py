class Zm396LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34932_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


#     def r34936_action(self): # wrong, overrided
#         self.state_manager.world_manager.set_has_bandages(True)


#     def r34934_action(self): # wrong, overrided
#         self.state_manager.world_manager.set_has_bandages(True)


    def r45112_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


#     def r34932_condition(self): # wrong, overrided
#         return not self.state_manager.world_manager.get_zombie_chaotic()


#     def r34935_condition(self): # wrong, overrided
#         return self.state_manager.world_manager.get_zombie_chaotic()


    def r34937_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r34940_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r34934_condition(self):
        return not self.state_manager.world_manager.get_has_bandages_zm396()


#     def r45112_condition(self): # wrong, overrided
#         return not self.state_manager.world_manager.get_zombie_chaotic()


#     def r45113_condition(self): # wrong, overrided
#         return self.state_manager.world_manager.get_zombie_chaotic()


    def r45114_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r45115_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


class Zm396Logic(Zm396LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def r34936_action(self):
        self.state_manager.world_manager.set_has_bandages_zm396(True)
        self.state_manager.inventory_items_manager.pick_item('has_bandages')



    def r34934_action(self):
        self.state_manager.world_manager.set_has_bandages_zm396(True)
        self.state_manager.inventory_items_manager.pick_item('has_bandages')


    def get_took_zm396_bandages(self):
        return self.state_manager.world_manager.get_has_bandages_zm396()


    def r34936_condition(self):
        return not self.state_manager.world_manager.get_has_bandages_zm396()


    def r34932_condition(self):
        return not self.state_manager.world_manager.get_has_bandages_zm396() \
               and not self.state_manager.world_manager.get_zombie_chaotic()


    def r34935_condition(self):
        return not self.state_manager.world_manager.get_has_bandages_zm396() \
               and self.state_manager.world_manager.get_zombie_chaotic()


    def r45112_condition(self):
        return self.state_manager.world_manager.get_has_bandages_zm396() \
               and not self.state_manager.world_manager.get_zombie_chaotic()


    def r45113_condition(self):
        return self.state_manager.world_manager.get_has_bandages_zm396() \
               and self.state_manager.world_manager.get_zombie_chaotic()


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_zm396_times()
