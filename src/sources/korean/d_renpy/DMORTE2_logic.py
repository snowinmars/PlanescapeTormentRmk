class Morte2Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r41145_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41146_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41147_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41148_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def j39516_s11_r41177_action(self):
        self.state_manager.journal_manager.update_journal('39516')
        #$% .register('39516', '내 원래 일지를 잃어버렸기 때문에 난 새로운 일지를 쓰기 시작했다. 나는 "시체안치소"란 곳에서 깨어났다. 난 내가 누구인지, 내가 이 곳에서 무엇을 하고 있는 것인지, 그리고 어떻게 이 곳에 오게 되었는지도 모른다. 내가 만난 건 모트라는 이름의 말하는 해골뿐이다... 내 상처를 살피다 그는 내 등에 문신으로 새겨진 '지시 사항'을 발견했다.  "네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다,  절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿게 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안돼. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해: 일지를 읽은 후 파로드를 찾도록 해.  내가 나에게 이 메시지를 남겼을까? 보아하니 난 이 '파로드'란 자와 내 일지를 찾아야만 할 것 같다.') %$#


    def r41251_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41255_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41258_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41263_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_2(True)


    def r41163_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12


    def r41181_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41182_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41184_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41185_condition(self):
        return self.state_manager.world_manager.get_has_bandages()


    def r41186_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41187_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41191_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41192_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41196_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41197_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41201_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41203_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41206_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41207_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41210_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41211_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41214_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41215_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41219_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41220_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41223_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41224_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41227_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41228_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41231_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41232_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41239_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12
