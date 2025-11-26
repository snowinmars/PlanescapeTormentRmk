class DeionarraLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r701_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r699_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r9616_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r705_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r707_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)


    def r708_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)


    def r709_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)


    def r712_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_1')


    def r700_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)


    def r702_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_2')


    def r747_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)


    def r1313_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)


    def r13255_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r803_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r6085_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r13256_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r780_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -2, 'globalevil_deionarra_3')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -2, 'globalchaotic_deionarra_3')


    def r6093_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 2, 'globalgood_deionarra_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 2, 'globallawful_deionarra_1')


    def r805_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -2, 'globalevil_deionarra_3')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -2, 'globalchaotic_deionarra_3')


    def r808_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 2, 'globalgood_deionarra_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 2, 'globallawful_deionarra_1')


    def r786_action(self):
        self.state_manager.world_manager.set_prophecy(True)


    def r6081_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r6082_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r13257_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def j26087_s29_r810_action(self):
        self.state_manager.journal_manager.update_journal('26087')
        #$% .register('26087', '나는 데이오나라라는 이름의 여자 유령을 만났다. 그녀는 내가 세 적을 만날 것이나, '절정에 이르른 나 자신보다 위험하지는 않을 것'이라고 예언했다. 그들은 다원 우주의 법칙에 의해 삶을 부여받고 왜곡된 악, 선, 그리고 중립성의 그림자들이다. 그녀는 내가 그림자들 자신들이 미쳐버린 '후회와 슬픔'으로 만들어진 감옥에 다다르게 될 것이라고 말했다. 그 곳에서 나는 엄청난 희생을 치르게 될 것이라고 한다... 만사를 종결시키기 위해서 나는 '내 생명을 유지시켜주는 것을 파괴'하여 더 이상 불사신이 아닌 존재가 돼야만 한다.') %$#


    def r6129_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_4')


    def r6131_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_4')


    def r6132_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_4')


    def r6133_action(self):
        self.state_manager.world_manager.set_deionarra_value(1)


    def r6095_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_4')


    def r6097_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_4')


    def r6100_action(self):
        self.state_manager.world_manager.set_deionarra_curse(True)


    def r6101_action(self):
        self.state_manager.world_manager.set_deionarra_curse(True)


    def r6148_action(self):
        self.state_manager.world_manager.set_deionarra_portal(True)
        self.state_manager.gain_experience('party', 500)


    def r6154_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r6155_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r13258_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r63371_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1203cd11') %$#
        return


    def r64594_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1203cd21') %$#
        return


    def r63373_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 3, 'globallawful_deionarra_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_deionarra_2')
        #$% SetAnimState(Myself,ANIM_MIMESTAND) %$#


    def r63374_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -3, 'globalchaotic_deionarra_5')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_5')


    def r63376_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_6')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -2, 'globalevil_deionarra_6')


    def r63377_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_deionarra_3')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_deionarra_3')


    def r63380_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_deionarra_7')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_deionarra_7')


    def r63381_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_deionarra_4')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_deionarra_4')


    def r63382_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 2, 'globallawful_deionarra_5')


    def r63384_action(self):
        self.state_manager.world_manager.set_deionarra_forgives(True)


    def r63388_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(True)
        #$% StartCutSceneMode() %$#
        self.state_manager.world_manager.set_cd_int_1(True)
        #$% ?.start_cut_scene('1200cut1') %$#


    def r63391_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(True)
        #$% StartCutSceneMode() %$#
        self.state_manager.world_manager.set_cd_int_1(True)
        #$% ?.start_cut_scene('1200cut1') %$#


    def j68117_s68_r63415_action(self):
        self.state_manager.journal_manager.update_journal('68117')
        #$% .register('68117', '데이오나라는 내게 요새 입구를 지나면 그림자들의 거대한 대기실이 있다고 경고했다. 그녀는 그 방 안에는 일련의 거대한 시계들이 있으며, 과거에 내가 그녀에게 그것들을 이용해 대기실을 탈출했다고 언급한 적이 있다고 말했다. 나는 그것들을 유심히 찾아보고, 만약 발견하면 세심하게 조사해야겠다.') %$#


    def j68117_s69_r63417_action(self):
        self.state_manager.journal_manager.update_journal('68117')
        #$% .register('68117', '데이오나라는 내게 요새 입구를 지나면 그림자들의 거대한 대기실이 있다고 경고했다. 그녀는 그 방 안에는 일련의 거대한 시계들이 있으며, 과거에 내가 그녀에게 그것들을 이용해 대기실을 탈출했다고 언급한 적이 있다고 말했다. 나는 그것들을 유심히 찾아보고, 만약 발견하면 세심하게 조사해야겠다.') %$#


    def r63419_action(self):
        self.state_manager.world_manager.set_has_wedding_ring(False)
        self.state_manager.world_manager.set_has_sup_ring(True)


    def r66914_action(self):
        self.state_manager.gain_experience('party', 1000)
        self.state_manager.world_manager.set_deionarra_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.journal_manager.update_journal('66917')
        #$%.register('66917', '나는 충격을 받아야 할지 아니면 감탄을 해야 할지 모르겠다. 내가 시체안치소에 데이오나라와 얘기를 나누었을 때, 그녀는 내게 죽음을 여러 번 체험한 일이 나로 하여금 삶과 죽음을 어느 정도 지배할 수 있는 힘을 지니게 했다고 말해주었다. 시체를 보게 되면 나는 그것에 남은 희미한 삶의 잔재를 감지하고 그것을 조작할 수가 있다. 어떤 이유에선지 이 능력은 나와 함께 여행하는 자에게만 효과가 있으며, 그것도 내가 보는 앞에서 죽었을 경우에만 효과가 있다. 왜 그럴까? 나와 함께 여행을 함으로서 그들은 나와 어떤 연관을 지니게 되는가? %$#')


    def r701_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r699_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r9616_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r708_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r709_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r713_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r714_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r1308_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6080_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r767_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1309_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r718_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r719_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r721_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1310_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1311_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r764_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r723_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r724_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r1312_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6084_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r747_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r1313_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r13255_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r731_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r732_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r1314_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6127_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r737_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r738_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r768_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r1315_condition(self):
        return self.state_manager.world_manager.get_deionarra_curse()


    def r6107_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6128_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r742_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1316_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r746_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r792_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r790_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1318_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r755_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1319_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r803_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r6085_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r13256_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r778_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r813_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1320_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6081_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r6082_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r13257_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r797_condition(self):
        return self.state_manager.world_manager.get_deionarra_raise_dead()


    def r66911_condition(self):
        return not self.state_manager.world_manager.get_deionarra_raise_dead()


    def r798_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1321_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r801_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r802_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r1322_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1323_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r816_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1324_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r820_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1325_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r823_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r1326_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6129_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r6131_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 11


    def r6132_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r6112_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6113_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6114_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6115_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6117_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6118_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6119_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6120_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6139_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r6140_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6141_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6145_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6146_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6147_condition(self):
        return self.state_manager.world_manager.get_deionarra_portal()


    def r6148_condition(self):
        return not self.state_manager.world_manager.get_deionarra_portal()


    def r6150_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 10


    def r6152_condition(self):
        return not self.state_manager.world_manager.get_prophecy()


    def r6153_condition(self):
        return self.state_manager.world_manager.get_prophecy()


    def r6154_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r6155_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r13258_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r63367_condition(self):
        return self.state_manager.world_manager.get_fortress_party() > 1 and \
               self.state_manager.world_manager.get_fortress_ignus() != 1 and \
               self.state_manager.world_manager.get_fortress_vhailor() != 1


    def r63368_condition(self):
        return self.state_manager.world_manager.get_fortress_party() > 1 and \
               self.state_manager.world_manager.get_fortress_ignus() != 1 and \
               self.state_manager.world_manager.get_fortress_vhailor() != 1


    def r63369_condition(self):
        return self.state_manager.world_manager.get_deionarra_death_truth() > 0


    def r63371_condition(self):
        return self.state_manager.world_manager.get_deionarra_forgives()


    def r64594_condition(self):
        return not self.state_manager.world_manager.get_deionarra_forgives()


    def r63394_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r63395_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r63397_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r63398_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r63401_condition(self):
        return self.state_manager.world_manager.get_know_shadow_player_connection()


    def r63402_condition(self):
        return not self.state_manager.world_manager.get_know_shadow_player_connection()


    def r63406_condition(self):
        return self.state_manager.world_manager.get_fortress_party() > 2


    def r63407_condition(self):
        return self.state_manager.world_manager.get_fortress_party() == 2


    def r63408_condition(self):
        return self.state_manager.world_manager.get_fortress_party() == 1 and \
               self.state_manager.world_manager.get_deionarra_value() > 0


    def r63409_condition(self):
        return self.state_manager.world_manager.get_fortress_party() == 1 and \
               self.state_manager.world_manager.get_deionarra_value() == 0


    def r63413_condition(self):
        return self.state_manager.world_manager.get_fortress_party() > 2


    def r63414_condition(self):
        return self.state_manager.world_manager.get_fortress_party() == 2


    def r63415_condition(self):
        return self.state_manager.world_manager.get_fortress_party() == 1


    def r63419_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0 and \
               self.state_manager.world_manager.get_has_wedding_ring()


    def r63420_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r63421_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r63423_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0
