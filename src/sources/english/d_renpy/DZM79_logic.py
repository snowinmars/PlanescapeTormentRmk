class Zm79Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34943_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.state_manager.world_manager.set_know_copper_earring_secret(True)


    def j64536_s3_r64279_action(self):
        self.state_manager.journal_manager.update_journal('64536')
        #$% .register('64536', 'Found a strange fanged circular symbol on the forehead of Zombie #79. For some reason, the mark struck me as important, but I don't know why.') %$#


    def j64537_s3_r64280_action(self):
        self.state_manager.journal_manager.update_journal('64537')
        #$% .register('64537', 'Found a strange fanged circular symbol on the forehead of Zombie #79. Just looking at the symbol reminded me of the ancient copper earring I got from the Southeast Preparation Room - perhaps the two are connected.') %$#


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
