class S42Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def s42_init(self):
        self.gsm.glm.set_location('mortuary_f3r8')
        self.gsm.inc_talked_to_s42_times()


    def r6613_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalskeleton_chaotic')


    def r6614_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r6617_action(self):
        self.gsm.set_skeleton_examine(True)


    def r6618_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r6629_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r6632_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r6635_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r6640_action(self):
        self.gsm.set_dead_s42(True)


    def r6642_action(self):
        self.gsm.set_dead_s42(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r6645_action(self):
        self.gsm.inc_exp_custom('party', 250)


    def r6650_action(self):
        self.gsm.set_skeleton_examine(True)


    def r6652_action(self):
        self.gsm.inc_exp_custom('party', 250)


    def r58984_action(self):
        self.gsm.set_has_gs_knife(True)
        self.gsm.set_has_rags(True)
        self.gsm.set_has_clotchrm(True)
        self.gsm.set_has_clotchrm(True)
        self.gsm.inc_gold(99)


    def r6612_condition(self):
        return self.gsm.get_42_secret()


    def r6614_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r6615_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r6616_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r6618_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r6619_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2()


    def r6620_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine()


    def r6621_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip()


    def r6622_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6623_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6624_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r6625_condition(self):
        return self.gsm.get_42_secret()


    def r6626_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12 and \
               not self.gsm.get_42_secret()


    def r6629_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6630_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6631_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r63495_condition(self):
        return self.gsm.get_42_secret()


    def r6632_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r6633_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2()


    def r6634_condition(self):
        return not self.gsm.get_in_party_morte()


    def r6635_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6636_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r6637_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r6643_condition(self):
        return not self.gsm.get_42_secret()


    def r6644_condition(self):
        return self.gsm.get_42_secret()


    def r6648_condition(self):
        return not self.gsm.get_in_party_morte()


    def r6649_condition(self):
        return self.gsm.get_in_party_morte()


    def r6653_condition(self):
        return self.gsm.get_42_secret()


    def r6654_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12 and \
               not self.gsm.get_42_secret()
