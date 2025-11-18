class Zm1146LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6521_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r6524_action(self):
        self.state_manager.world_manager.set_crispy_value(1)


    def r9415_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_crispy_1')


    def r9426_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_crispy_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_crispy_1')


    def r6521_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r6522_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r6523_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r6524_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r9434_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


class Zm1146Logic(Zm1146LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
