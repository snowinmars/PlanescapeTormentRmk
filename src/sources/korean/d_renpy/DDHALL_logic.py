class DhallLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r827_action(self):
        #$% SetGlobal("0202_Dhall_Face_Player","AR0202",1) %$#
        return


    def r830_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.journal_manager.update_journal('39468')
        #$%.register('39468', '나는 달에게 백시즈와 그의 변장에 대하여 말해주었다. 달은 곧 백시즈를 잡기 위해 다른 더스트맨들을 보낼 것이다. %$#')


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', '난 백시즈와 그의 정체를 더스트맨에게 밝히지 않기로 약속했다, 하지만 무슨 상관인가? 나는 달에게 백시즈와 그의 변장에 대하여 말해주었다. 달은 곧 백시즈를 잡기 위해 다른 더스트맨들을 보낼 것이다. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', '달에게 나를 아느냐고 묻자 그는 나에 대해 조금밖에 모르며 내가 과거에 함께 여행한 동료들에 대해서는 더욱 모른다고 대답했다. 그들의 시체는 시체안치소에 있는 듯하다... 아마 그들을 보면 내 기억이 되살아날지도 모른다.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', '파로드는 내 시체 다른 많은 시체와 함께 수레에 실어 이 곳에 가져온 모양이다. 그때 나는 정말 죽어 있었을까?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', '달은 파로드를 시체안치소 밖의 "벌통"이라는 곳에서 찾을 수 있을 것이라고 했다. 그는 내가 파로드를 찾으러 가는 것을 원하지 않는 듯 했다, 하지만 그건 어디까지나 그의 의견이다. 기억을 잃고 죽음으로부터 되살아난 사람은 그가 아니고 나니까. 달은 파로드를 어디서 찾을 수 있는지에 대해서는 벌통에 사는 사람들에게 물어보라고 말했다.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', '달은 내게 나와 함께 여행한 여자들 중 하나가 시체안치소1층의 기념실에 안장되었다고 말해주었다.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', '달은 자신이 내가 시체안치소로 거듭하여 돌아온다는 사실을 다른 더스트맨에게 비밀로 감추고 있는 사람이라고 내게 말했다. 그는 접수실의 서기이기 때문에 내 이 곳에 도착했을 때 보는 유일한 사람이다.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', '달은 내 육신의 상처는 내가 정신에 입은 상처에 비하면 하찮은 것이라고 말했다... 심지어 그는 내가 입은 상처들이 기억 상실과 깊은 연관이 있으며, 내가 입은 정신적인 대미지는 기억 상실보다 훨씬 더 심각할 수도 있다고 말했다. 그의 얘기는 나를 몹시 불안하게 했다. 나도 가끔씩은 *좋은* 소식을 듣고 싶다.') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall_value(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', '나는 시체안치소에서 달이라는 병든 서기를 만났다... 그는 내가 얘기를 걸기도 전에 이미 내가 기억을 잃었다는 것을 알고 있었다. 내가 기억을 잃기 전에 그를 알았었는가? 나는 답을 얻기를 원했으나 이 곳은 새로운 의문을 계속해서 던지는 것 같다.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', '나는 시체안치소에서 달이라는 병든 서기를 만났다... 그는 내가 얘기를 걸기도 전에 이미 내가 기억을 잃었다는 것을 알고 있었다. 내가 기억을 잃기 전에 그를 알았었는가? 나는 답을 얻기를 원했으나 이 곳은 새로운 의문을 계속해서 던지는 것 같다.') %$#


    def r6033_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5071_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5072_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r5073_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5074_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r6064_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r13288_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r830_condition(self):
        return not self.state_manager.world_manager.get_vaxis_lawful()


    def r831_condition(self):
        return self.state_manager.world_manager.get_vaxis_lawful()


    def r839_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r835_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_mortualy_alarmed()


    def r5058_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_mortualy_alarmed()


    def r842_condition(self):
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r843_condition(self):
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r5062_condition(self):
        return self.state_manager.world_manager.get_dhall_value() == 0


    def r854_condition(self):
        return self.state_manager.world_manager.get_vaxis_value() == 1 and \
               not self.state_manager.world_manager.get_dead_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_leave() and \
               self.state_manager.world_manager.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.locations_manager.is_visited_internal('AR0200')


    def r870_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r891_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r892_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r898_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r910_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r931_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r942_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r943_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6026_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r874_condition(self):
        return self.state_manager.world_manager.get_pharod_value() > 0


    def r948_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6027_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6066_condition(self):
        return self.state_manager.world_manager.get_pharod_value() > 0


    def r964_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r968_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r5076_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5077_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r5078_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5079_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r5081_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5082_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5083_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r6032_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()
