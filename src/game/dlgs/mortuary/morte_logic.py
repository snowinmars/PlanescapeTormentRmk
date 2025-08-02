class MorteLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r3871_action(self):
        self.gsm.set_warning(1)


    def r3874_action(self):
        self.gsm.set_warning(2)


    def r3877_action(self):
        self.gsm.set_warning(2)


    def r4339_action(self):
        self.gsm.set_warning(1)


    def r4342_action(self):
        self.gsm.set_warning(2)


    def r4345_action(self):
        self.gsm.set_warning(2)


    def r34991_action(self):
        self.gsm.set_morte_quip(True)


    def r35001_action(self):
        self.gsm.set_morte_quip(True)


    def r34993_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r45093_action(self):
        self.gsm.update_journal('39477')


    def r45103_action(self):
        self.gsm.update_journal('39477')


    def r4676_action(self):
        self.gsm.update_journal('64512')


    def r3483_action(self):
        self.gsm.update_journal('38205')


    def r4678_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -3, 'globalchaotic_vaxis_3')


    def r4679_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_4')


    def r4682_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 3, 'globallawful_vaxis_3')


    def r4687_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def r4693_action(self):
        self.gsm.update_journal('64512')


    def r4695_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -3, 'globalchaotic_vaxis_3')


    def r4699_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 3, 'globallawful_vaxis_3')


    def r35396_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35435_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r64535_action(self):
        # FadeToColor([20.0],0) Wait(1)
        self.gsm.gcm.set_property('protagonist', 'looks_like', 'zombie')
        # Wait(2) FadeFromColor([20.0],0)
        self.gsm.inc_exp_custom('party', 500)
        self.gsm.set_vaxis_global_xp(True)


    def r64534_action(self):
        # FadeToColor([20.0],0) Wait(1)
        self.gsm.gcm.set_property('protagonist', 'looks_like', 'zombie')
        # Wait(2) FadeFromColor([20.0],0)


    def r3474_action(self):
        self.gsm.update_journal('38205')


    def r6658_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', -1)


    def r6659_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', 1)


    def r35319_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35342_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', -1)


    def r35360_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', 1)


    def r35473_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35496_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', -1)


    def r35514_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', 1)


    def r6664_condition(self):
        return self.gsm.get_42_secret()


    def r35512_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35550_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35573_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', -1)


    def r35591_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', 1)


    def r35589_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35358_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35419_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', -1)


    def r35437_action(self):
        self.gsm.gcm.modify_property('protagonist', 'good', 1)


    def r6665_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12 and \
               not self.gsm.get_42_secret()


    def r35344_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35352_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35355_condition(self):
        return self.gsm.get_has_prybar()


    def r35358_condition(self):
        return not self.gsm.get_morte_skel_mort_quip()


    def r35359_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35421_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35429_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35432_condition(self):
        return self.gsm.get_has_prybar()


    def r35435_condition(self):
        return not self.gsm.get_morte_skel_mort_quip()


    def r35436_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35498_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35506_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35509_condition(self):
        return self.gsm.get_has_prybar()


    def r35512_condition(self):
        return not self.gsm.get_morte_skel_mort_quip()


    def r35513_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35575_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35583_condition(self):
        return not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35586_condition(self):
        return self.gsm.get_has_prybar()


    def r35589_condition(self):
        return not self.gsm.get_morte_skel_mort_quip()


    def r35590_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r4686_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 13


    def r64535_condition(self):
        return not self.gsm.get_vaxis_global_xp()


    def r64534_condition(self):
        return self.gsm.get_vaxis_global_xp()
