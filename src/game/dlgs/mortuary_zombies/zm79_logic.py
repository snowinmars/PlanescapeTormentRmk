class Zm79LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34943_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.state_manager.world_manager.set_know_copper_earring_secret(True)


    def j64536_s3_r64279_action(self):
        self.state_manager.journal_manager.update_journal('64536')
        #$% .register('64536', 'На лбу зомби #79 я обнаружил странный зубчатый круг. По каким-то причинам этот знак кажется мне важным, однако я не знаю, почему.') %$#


    def j64537_s3_r64280_action(self):
        self.state_manager.journal_manager.update_journal('64537')
        #$% .register('64537', 'На лбу зомби #79 я обнаружил странный зубчатый круг. Символ по виду напоминает старую медную сережку, которую я нашел в юго-восточной препараторской — возможно, они как-то связаны между собой.') %$#


    def r34946_condition(self):
        return not self.state_manager.world_manager.get_know_copper_earring_secret()


    def r34947_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r34948_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r64279_condition(self):
        return not self.state_manager.world_manager.get_has_copper_earring_closed()


    def r64280_condition(self):
        return self.state_manager.world_manager.get_has_copper_earring_closed()


class Zm79Logic(Zm79LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
