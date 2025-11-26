class Zm79Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34943_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.state_manager.world_manager.set_know_copper_earring_secret(True)


    def j64536_s3_r64279_action(self):
        self.state_manager.journal_manager.update_journal('64536')
        #$% .register('64536', '나는 좀비 #79의 이마에서 송곳니가 달린 원  모양의 기묘한 심벌을 발견했다. 어쩐지 그 문양은 중요한 것이라는 생각이 드나 그 이유는 모르겠다.') %$#


    def j64537_s3_r64280_action(self):
        self.state_manager.journal_manager.update_journal('64537')
        #$% .register('64537', '나는 좀비 #79의 이마에서 송곳니가 달린 원  모양의 기묘한 심벌을 발견했다. 그 심벌을 보니 남동쪽 준비실에서 발견한 고대의 구리 귀걸이 생각이 났다. 아무 둘은 서로 무슨 연관이 있는지도 모르겠다.') %$#


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
