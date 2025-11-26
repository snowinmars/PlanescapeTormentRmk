class VaxisLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r454_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r461_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)


    def j64513_s2_r464_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def j64513_s2_r465_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def j64513_s2_r466_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def r472_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r473_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r475_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r476_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_2')


    def r477_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_1')


    def j64513_s5_r480_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def r480_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)


    def j64513_s5_r481_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def r481_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)


    def j64513_s5_r482_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', '시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다.') %$#


    def r482_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)


    def r487_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r488_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r493_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_2')


    def r494_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_2')


    def r1306_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r1348_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r1359_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r1360_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r1361_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4364_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4365_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4370_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4371_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4381_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def r4387_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4388_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4391_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def r4397_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4398_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4401_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4402_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4405_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4408_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4413_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4428_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4429_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4434_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_5')


    def r4442_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4443_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4447_action(self):
        self.state_manager.world_manager.set_vaxis_orders(True)


    def r4448_action(self):
        self.state_manager.world_manager.set_vaxis_orders(True)


    def r4456_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4457_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def j64517_s30_r4469_action(self):
        self.state_manager.journal_manager.update_journal('64517')
        #$% .register('64517', '나는 변장한 스파이에게 그와 교대하러 왔다고 말했다. 그러자 그는 자신이 모은 물건들을 모두 넘겼는데, 그것들은 주로 붕대와 다른 치료용 아이템들이었다. 아마 변장을 유지하기 위해 필요로 했던 것 같다.') %$#


    def r4469_action(self):
        self.state_manager.world_manager.set_vaxis_leave(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_embalm(True)
        self.state_manager.world_manager.set_has_needle(True)
        #$% GiveItemCreate("Knife",Protagonist,1,0,0) %$#
        self.state_manager.gain_experience('party', 500)


    def r4474_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_3')


    def r4477_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4478_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4484_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4485_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4672_action(self):
        self.state_manager.world_manager.set_strong_arm_vaxis(True)


    def r4489_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4490_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4494_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)
        self.state_manager.world_manager.set_vaxis_has_keyem(True)


    def r4496_action(self):
        self.state_manager.world_manager.set_vaxis_orders(False)


    def r4497_action(self):
        self.state_manager.world_manager.set_vaxis_orders(False)


    def r4498_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')
        self.state_manager.world_manager.set_vaxis_orders(False)


    def r4499_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')
        self.state_manager.world_manager.set_vaxis_orders(False)


    def r4502_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)
        self.state_manager.world_manager.set_vaxis_has_keyem(True)


    def j64519_s36_r64520_action(self):
        self.state_manager.journal_manager.update_journal('64519')
        #$% .register('64519', '"좀비"의 도움을 받는 대신 나는 그를 위해 다른 방에서 만난 적이 있는 에이-빈이라는 이름의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. 칼날이 달린 그런 손으로 어떻게 처리실 열쇠를 사용할 수가 있는지 나로선 정말 모르겠다.') %$#


    def j64518_s36_r4503_action(self):
        self.state_manager.journal_manager.update_journal('64518')
        #$% .register('64518', '"좀비"의 도움을 받는 대신 나는 그를 위해 손에 칼날이 달린 노란 눈의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다.') %$#


    def r4504_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_6')


    def j64519_s37_r4506_action(self):
        self.state_manager.journal_manager.update_journal('64519')
        #$% .register('64519', '"좀비"의 도움을 받는 대신 나는 그를 위해 다른 방에서 만난 적이 있는 에이-빈이라는 이름의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. 칼날이 달린 그런 손으로 어떻게 처리실 열쇠를 사용할 수가 있는지 나로선 정말 모르겠다.') %$#


    def j64518_s37_r66150_action(self):
        self.state_manager.journal_manager.update_journal('64518')
        #$% .register('64518', '"좀비"의 도움을 받는 대신 나는 그를 위해 손에 칼날이 달린 노란 눈의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다.') %$#


    def r4508_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)


    def r4509_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)


    def r4519_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)
        self.state_manager.world_manager.set_vaxis_has_keyem(True)
        self.state_manager.world_manager.set_embalm_key_quest(3)


    def j64521_s42_r4521_action(self):
        self.state_manager.journal_manager.update_journal('64521')
        #$% .register('64521', '나는 백시즈에게 그가 그토록 간절히 원하는 처리실 열쇠를 갖다 주었다. 그의 몸에서 향료 냄새가 사라지려고 하는 것으로 미루어볼 때, 그는 변장을 유지하는 데 필요한 물품을 얻기 위해 그 열쇠를 원한 것 같다.') %$#


    def r4521_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(3)


    def j64521_s42_r4522_action(self):
        self.state_manager.journal_manager.update_journal('64521')
        #$% .register('64521', '나는 백시즈에게 그가 그토록 간절히 원하는 처리실 열쇠를 갖다 주었다. 그의 몸에서 향료 냄새가 사라지려고 하는 것으로 미루어볼 때, 그는 변장을 유지하는 데 필요한 물품을 얻기 위해 그 열쇠를 원한 것 같다.') %$#


    def r4522_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(3)


    def j64522_s44_r4539_action(self):
        self.state_manager.journal_manager.update_journal('64522')
        #$% .register('64522', '더스트맨과 파로드는 별로 좋은 사이가 아닌 듯하다... 백시즈는 내게 파로드가 시체안치소로 많은 수의 시체를 가져오고 있으며, 더스트맨은 파로드가 아직 죽을 때가 되지 않은 사람들을 죽이고 있는 것은 아닌가 의심하고 있다고 말해주었다.') %$#


    def j64522_s45_r4543_action(self):
        self.state_manager.journal_manager.update_journal('64522')
        #$% .register('64522', '더스트맨과 파로드는 별로 좋은 사이가 아닌 듯하다... 백시즈는 내게 파로드가 시체안치소로 많은 수의 시체를 가져오고 있으며, 더스트맨은 파로드가 아직 죽을 때가 되지 않은 사람들을 죽이고 있는 것은 아닌가 의심하고 있다고 말해주었다.') %$#


    def j64528_s51_r64527_action(self):
        self.state_manager.journal_manager.update_journal('64528')
        #$% .register('64528', '백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다. 그는 굽은 손가락뼈가 어디 있는지 알지 못하나, 내게 시체안치소 3층을 찾아보라고 권했다.') %$#


    def r64527_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)


    def j64529_s51_r4568_action(self):
        self.state_manager.journal_manager.update_journal('64529')
        #$% .register('64529', '백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다.') %$#


    def r4568_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)


    def j64529_s51_r4569_action(self):
        self.state_manager.journal_manager.update_journal('64529')
        #$% .register('64529', '백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다.') %$#


    def r4569_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)


    def j64530_s55_r4580_action(self):
        self.state_manager.journal_manager.update_journal('64530')
        #$% .register('64530', '백시즈는 소에고가 좀 이상하다고 말했다. 그가 "쥐"를 좋아한다나... 아무튼 그런 얘기였다. 백시즈가 남보고 이상하다는 것은 정말 아이러니가 아닐 수 없다.') %$#


    def r4580_action(self):
        self.state_manager.world_manager.set_vaxis_exposes_soego(True)


    def r4592_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)


    def r4593_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)


    def r4620_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)


    def r4621_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)


    def r4622_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)


    def r4623_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)


    def r4625_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)


    def r4628_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)


    def r4630_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$#
        self.state_manager.characters_manager.set_property('protagonist', 'looks_like', 'zombie')
        #$% Wait(2) %$#
        #$% FadeFromColor([20.0],0) %$#
        self.state_manager.gain_experience('party', 500)
        self.state_manager.world_manager.set_vaxis_global_xp(True)


    def r4631_action(self):
        self.state_manager.world_manager.set_morte_vaxis_quip_1(True)


    def r4632_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$#
        self.state_manager.characters_manager.set_property('protagonist', 'looks_like', 'zombie')
        #$% Wait(2) %$#
        #$% FadeFromColor([20.0],0) %$#


    def r64533_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$#
        self.state_manager.characters_manager.set_property('protagonist', 'looks_like', 'zombie')
        #$% Wait(2) %$#
        #$% FadeFromColor([20.0],0) %$#


    def r4635_action(self):
        self.state_manager.world_manager.set_morte_vaxis_quip_2(True)


    def j64531_s67_r4638_action(self):
        self.state_manager.journal_manager.update_journal('64531')
        #$% .register('64531', '얼마간의 바늘과 실, 그리고 향료와 교환으로 백시즈는 나를 좀비로 변장시켜 주었다. 그는 달리면 변장이 벗겨질 것이며, 좀비는 "말'을 하지 않기 때문에 변장 중에는 말을 하지 말라고 내게 주의를 주었다.') %$#


    def r4645_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4651_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4661_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4666_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r4669_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r454_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r455_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r456_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r457_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r468_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r472_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r484_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r487_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r491_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r492_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r493_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r494_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r495_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r496_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r1306_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r1348_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r1359_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r1360_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r1361_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r4362_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4363_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4364_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4365_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4368_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r4370_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r4371_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r4379_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4380_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4385_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4386_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4387_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4388_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4395_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4396_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4397_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4398_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4401_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4402_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4409_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4410_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4426_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4427_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4428_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4429_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4438_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r4440_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4441_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4442_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4443_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4446_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r4447_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r4448_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r4452_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r4454_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4455_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4456_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4457_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4469_condition(self):
        return not self.state_manager.world_manager.get_vaxis_leave()


    def r4474_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4475_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4476_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4477_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4478_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4482_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4483_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4484_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4485_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4489_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4490_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4494_condition(self):
        return self.state_manager.world_manager.get_has_keyem()


    def r4496_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4497_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r4498_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') < 12


    def r4499_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'strength') > 11


    def r4502_condition(self):
        return self.state_manager.world_manager.get_has_keyem()


    def r64520_condition(self):
        return self.state_manager.world_manager.get_eivene_value() == 1


    def r4503_condition(self):
        return self.state_manager.world_manager.get_eivene_value() == 0


    def r4506_condition(self):
        return self.state_manager.world_manager.get_eivene_value() == 1


    def r66150_condition(self):
        return self.state_manager.world_manager.get_eivene_value() == 0


    def r4508_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 0


    def r4509_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 0


    def r4510_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() != 0


    def r4511_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() != 0


    def r4521_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary()


    def r4522_condition(self):
        return self.state_manager.world_manager.get_escape_mortuary()


    def r64508_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.world_manager.get_vaxis_help() and \
               self.state_manager.world_manager.get_embalm_key_quest() == 0 and \
               self.state_manager.world_manager.get_strong_arm_vaxis()


    def r4524_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.world_manager.get_vaxis_help() and \
               self.state_manager.world_manager.get_embalm_key_quest() == 0 and \
               not self.state_manager.world_manager.get_strong_arm_vaxis()


    def r4525_condition(self):
        return self.state_manager.world_manager.get_vaxis_help()


    def r4526_condition(self):
        return self.state_manager.world_manager.get_vaxis_zombie_disguise() == 1 and \
               self.state_manager.world_manager.get_appearance() != 1


    def r4527_condition(self):
        return self.state_manager.world_manager.get_vaxis_zombie_disguise() == 2 and \
               self.state_manager.world_manager.get_appearance() != 1


    def r4528_condition(self):
        return self.state_manager.world_manager.get_vaxis_orders()


    def r4673_condition(self):
        return self.state_manager.world_manager.get_pharod_value() < 1


    def r4530_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r4531_condition(self):
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r4532_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r4533_condition(self):
        return self.state_manager.world_manager.get_soego_value() > 0


    def r4534_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4535_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4547_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4548_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4552_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4553_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r4564_condition(self):
        return not self.state_manager.world_manager.get_strong_arm_vaxis() and \
               self.state_manager.world_manager.get_embalm_key_quest() == 0 and \
               not self.state_manager.world_manager.get_vaxis_orders()


    def r64509_condition(self):
        return not self.state_manager.world_manager.get_strong_arm_vaxis() and \
               self.state_manager.world_manager.get_embalm_key_quest() > 2 and \
               not self.state_manager.world_manager.get_vaxis_orders()


    def r64510_condition(self):
        return self.state_manager.world_manager.get_strong_arm_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_orders()


    def r64511_condition(self):
        return self.state_manager.world_manager.get_vaxis_orders()


    def r64527_condition(self):
        return not self.state_manager.world_manager.get_has_bone_chrm()


    def r4568_condition(self):
        return self.state_manager.world_manager.get_has_bone_chrm()


    def r4569_condition(self):
        return self.state_manager.world_manager.get_has_bone_chrm()


    def r4586_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1


    def r4587_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 2


    def r4588_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() != 1 and \
               self.state_manager.world_manager.get_embalm_key_quest() != 2 and \
               not self.state_manager.world_manager.get_vaxis_orders()


    def r4589_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() != 1 and \
               self.state_manager.world_manager.get_embalm_key_quest() != 2 and \
               self.state_manager.world_manager.get_vaxis_orders()


    def r4592_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r4593_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 2 and \
               self.state_manager.world_manager.get_has_keyem()


    def r4594_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r4599_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 0


    def r4600_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() > 0


    def r4604_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_appearance() != 1


    def r4609_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_appearance() != 1


    def r4610_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 10


    def r4611_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 10


    def r4612_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 9


    def r4613_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 9


    def r4615_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_appearance() != 1


    def r4616_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 13


    def r4617_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 13


    def r4618_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 12


    def r4674_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 12


    def r4620_condition(self):
        return self.state_manager.world_manager.get_has_embalm() and \
               self.state_manager.world_manager.get_has_needle()


    def r4630_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_vaxis_global_xp()


    def r4631_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_vaxis_quip_1()


    def r4632_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_vaxis_quip_1()


    def r64533_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_vaxis_global_xp()


    def r4634_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4635_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_vaxis_quip_2()


    def r4636_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_vaxis_quip_2()


    def r4656_condition(self):
        return not self.state_manager.world_manager.get_vaxis_help()


    def r64532_condition(self):
        return self.state_manager.world_manager.get_vaxis_help()


    def r4664_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r4665_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11
