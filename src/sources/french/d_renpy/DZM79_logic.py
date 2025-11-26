class Zm79Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34943_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.state_manager.world_manager.set_know_copper_earring_secret(True)


    def j64536_s3_r64279_action(self):
        self.state_manager.journal_manager.update_journal('64536')
        #$% .register('64536', 'J'ai découvert un étrange symbole en forme de crocs sur le front du zombi n°79. Cette marque m'a semblé importante, mais j'ignore pourquoi.') %$#


    def j64537_s3_r64280_action(self):
        self.state_manager.journal_manager.update_journal('64537')
        #$% .register('64537', 'J'ai découvert un étrange symbole en forme de crocs sur le front du zombi n°79. Le seul fait de le regarder m'a rappelé la vieille boucle en cuivre que j'ai trouvée dans la Salle de Préparation du sud-est ; peut-être sont-ils liés, tous les deux.') %$#


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
