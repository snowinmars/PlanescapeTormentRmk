class EiveneLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r3418_action(self):
        #$% FaceObject(Protagonist) %$#
        return


    def r3422_action(self):
        self.state_manager.world_manager.set_eivene_value(1)


    def j37701_s5_r3424_action(self):
        self.state_manager.journal_manager.update_journal('37701')
        #$% .register('37701', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 나는 이미 두 가지를 모두 가지고 있었기 때문에 그녀에게 주었다.') %$#


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', '나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.') %$#


    def r3491_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)


    def j38199_s12_r3449_action(self):
        self.state_manager.journal_manager.update_journal('38199')
        #$% .register('38199', '내가 에이-빈에게 향료와 실을 가져다준 후, 그녀는 내 상처를 꿰매고 내 몸에 향료를 발라주었다. 이상하게도 난 더 건강해진 것 같다는 느낌이 들었다.') %$#


    def r3449_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'max_health', 1)
        self.state_manager.characters_manager.full_heal('protagonist')
        self.state_manager.world_manager.set_ravel_eivene(1)


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j61612_s15_r3459_action(self):
        self.state_manager.journal_manager.update_journal('61612')
        #$% .register('61612', '에이-빈이 그녀의 갈고리 손톱으로 시체를 꿰매는 것을 보고 있자니 기묘한 기억이 떠올랐다... 매우 오래 전에 시체에 비슷한 시술을 한 적이 있다는 사실을 기억해냈다. 단, 그 때 나는 시체에서 물건을 꺼내는 대신 시체의 가슴속에 뭔가를 집어 넣었다. 나중에 되찾기 위해 그 곳에 집어 넣었다는 생각이 들었다. 기억 속에서 내가 팔을 포개 놓자 시체도 그대로 따라 했다... 시체의 머리 가죽에는 "42"라는 번호가 적혀 있었다.') %$#


    def r3459_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        return


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return


    def j38202_s17_r3469_action(self):
        self.state_manager.journal_manager.update_journal('38202')
        #$% .register('38202', '나는 에이-빈에게 실과 바늘, 그리고 향료를 가져다 주었다. 그녀는 별로 고마운 눈치가 아니었다.') %$#


    def r3469_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def r3470_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j38203_s18_r3494_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', '나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', '나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', '나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', '내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', '내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다.') %$#


    def r3501_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def r63478_action(self):
        self.state_manager.gain_experience('protagonist', 250)
        self.state_manager.world_manager.set_42_secret(True)


    def r3412_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3413_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3414_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3415_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3424_condition(self):
        return self.state_manager.world_manager.get_has_embalm() and \
               self.state_manager.world_manager.get_has_needle()


    def r3425_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3426_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3427_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3428_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3440_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3441_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3442_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3443_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3452_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3453_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3456_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3457_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r3459_condition(self):
        return not self.state_manager.world_manager.get_42_secret()


    def r3463_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r4351_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()


    def r3469_condition(self):
        return self.state_manager.world_manager.get_has_embalm() and \
               self.state_manager.world_manager.get_has_needle()


    def r3470_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3497_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r3494_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3495_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3501_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3502_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r4354_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r4355_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()


    def r63478_condition(self):
        return not self.state_manager.world_manager.get_42_secret()


    def r63479_condition(self):
        return self.state_manager.world_manager.get_42_secret()


    def r63482_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r63481_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()
