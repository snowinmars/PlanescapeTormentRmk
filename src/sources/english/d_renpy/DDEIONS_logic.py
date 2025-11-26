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
        #$% .register('26087', 'I encountered the ghost of a woman named Deionarra, who prophesied that I would meet three enemies, but 'no more dangerous than myself in my full glory.' They are shades of evil, of good, and of neutrality given life and twisted by the laws of the planes. She said that I would come to a prison built of 'regrets and sorrow,' where 'the shadows themselves have gone mad.' Here, I will be asked to make a terrible sacrifice... for the matter to be laid to rest, I must 'destroy that which keeps me alive, and be immortal no longer.'') %$#


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
        #$% .register('68117', 'Deionarra warned me that past the entrance to the Fortress is a great antechamber of shadows. She said within the chamber are a series of great clocks, which she said I referred once to as the means by which I escaped the antechamber before. I'll have to keep an eye out for them and examine them if I see them.') %$#


    def j68117_s69_r63417_action(self):
        self.state_manager.journal_manager.update_journal('68117')
        #$% .register('68117', 'Deionarra warned me that past the entrance to the Fortress is a great antechamber of shadows. She said within the chamber are a series of great clocks, which she said I referred once to as the means by which I escaped the antechamber before. I'll have to keep an eye out for them and examine them if I see them.') %$#


    def r63419_action(self):
        self.state_manager.world_manager.set_has_wedding_ring(False)
        self.state_manager.world_manager.set_has_sup_ring(True)


    def j66917_s73_r66914_action(self):
        self.state_manager.journal_manager.update_journal('66917')
        #$% .register('66917', 'I don't know whether to be horrified or impressed... when I spoke to Deionarra in the vaults of the Mortuary, she told me that my deaths had given me some control over life and death; if I see a body, I can see the faint traces of life in it and coax it forth. For some reason, it will only work on people who travel with me, and only if they die in my presence... why? In traveling with me do they become linked to me somehow?') %$#


    def r66914_action(self):
        self.state_manager.gain_experience('party', 1000)
        self.state_manager.world_manager.set_deionarra_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)


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
