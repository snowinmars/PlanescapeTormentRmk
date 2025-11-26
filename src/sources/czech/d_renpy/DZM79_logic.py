class Zm79Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34943_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.state_manager.world_manager.set_know_copper_earring_secret(True)


    def j64536_s3_r64279_action(self):
        self.state_manager.journal_manager.update_journal('64536')
        #$% .register('64536', 'Na čele zombie #79 jsem našel zvláštní uzubený kruhový symbol. Nevím proč, ale z nějakého důvodu mě značka přišla důležitá.') %$#


    def j64537_s3_r64280_action(self):
        self.state_manager.journal_manager.update_journal('64537')
        #$% .register('64537', 'Na čele zombie #79 jsem našel zvláštní uzubený kruhový symbol. Jak jsem se díval na symbol, připomnělo mi to starobylou měděnou náušnici, kterou jsem našel v jihovýchodní Preparovací místnosti -- možná jsou nějak spojeny.') %$#


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
