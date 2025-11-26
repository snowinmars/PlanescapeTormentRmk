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
        #$% .register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.') %$#


    def j64513_s2_r465_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.') %$#


    def j64513_s2_r466_action(self):
        self.state_manager.journal_manager.update_journal('64513')
        #$% .register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.') %$#


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


    def r480_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)
        self.state_manager.journal_manager.update_journal('64513')
        #$%.register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel. %$#')


    def r481_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)
        self.state_manager.journal_manager.update_journal('64513')
        #$%.register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel. %$#')


    def r482_action(self):
        self.state_manager.world_manager.set_vaxis_value(1)
        self.state_manager.journal_manager.update_journal('64513')
        #$%.register('64513', 'Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel. %$#')


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


    def r4469_action(self):
        self.state_manager.world_manager.set_vaxis_leave(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_bandages(True)
        self.state_manager.world_manager.set_has_embalm(True)
        self.state_manager.world_manager.set_has_needle(True)
        #$% GiveItemCreate("Knife",Protagonist,1,0,0) %$#
        self.state_manager.gain_experience('party', 500)
        self.state_manager.journal_manager.update_journal('64517')
        #$%.register('64517', 'Ich habe dem verkleideten Mann gesagt, daß ich dasei, um ihn "abzulösen", und er hat mir alles gegeben, was er gesammelt hatte. Das waren vor allem Bandagen und Dinge zum Heilen, die er wahrscheinlich dazu benötigte, seine Verkleidung aufrechtzuerhalten. %$#')


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
        #$% .register('64519', 'Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von dieser Staubmenschen-Balsamiererin zu holen, die ich im anderen Raum getroffen habe - Ich glaube, ihr Name war Ei-Vene. Wie sie überhaupt einen Schlüssel zum Balsamierungsraum mit diesen Klingen verwenden kann, die sie anstatt Händen hat, ist mir ein Rätsel.') %$#


    def j64518_s36_r4503_action(self):
        self.state_manager.journal_manager.update_journal('64518')
        #$% .register('64518', 'Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von einer Staubmenschenfrau zu holen, die statt Hände Klingen sowie gelbe Augen hat.') %$#


    def r4504_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_6')


    def j64519_s37_r4506_action(self):
        self.state_manager.journal_manager.update_journal('64519')
        #$% .register('64519', 'Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von dieser Staubmenschen-Balsamiererin zu holen, die ich im anderen Raum getroffen habe - Ich glaube, ihr Name war Ei-Vene. Wie sie überhaupt einen Schlüssel zum Balsamierungsraum mit diesen Klingen verwenden kann, die sie anstatt Händen hat, ist mir ein Rätsel.') %$#


    def j64518_s37_r66150_action(self):
        self.state_manager.journal_manager.update_journal('64518')
        #$% .register('64518', 'Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von einer Staubmenschenfrau zu holen, die statt Hände Klingen sowie gelbe Augen hat.') %$#


    def r4508_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)


    def r4509_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)


    def r4519_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_has_keyem(False)
        self.state_manager.world_manager.set_vaxis_has_keyem(True)
        self.state_manager.world_manager.set_embalm_key_quest(3)


    def r4521_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(3)
        self.state_manager.journal_manager.update_journal('64521')
        #$%.register('64521', 'Ich habe Vaxis seinen wertvollen Schlüssel zum Balsamierungsraum geholt. Wenn man aus dem Geruch nach Balsamierungsöl, den er absondert, schließen kann, braucht er ihn, um neue Vorräte für seine Verkleidung zu holen. %$#')


    def r4522_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(3)
        self.state_manager.journal_manager.update_journal('64521')
        #$%.register('64521', 'Ich habe Vaxis seinen wertvollen Schlüssel zum Balsamierungsraum geholt. Wenn man aus dem Geruch nach Balsamierungsöl, den er absondert, schließen kann, braucht er ihn, um neue Vorräte für seine Verkleidung zu holen. %$#')


    def j64522_s44_r4539_action(self):
        self.state_manager.journal_manager.update_journal('64522')
        #$% .register('64522', 'Es klingt so, als ob die Staubmenschen und Pharod nicht gerade die besten Freunde sind... Vaxis hat mir erzählt, daß Pharod eine Menge Leichen zur Leichenhalle bringt, und daß die Staubmenschen vermuten, daß er Leute tötet, bevor ihre Stunde geschlagen hat.') %$#


    def j64522_s45_r4543_action(self):
        self.state_manager.journal_manager.update_journal('64522')
        #$% .register('64522', 'Es klingt so, als ob die Staubmenschen und Pharod nicht gerade die besten Freunde sind... Vaxis hat mir erzählt, daß Pharod eine Menge Leichen zur Leichenhalle bringt, und daß die Staubmenschen vermuten, daß er Leute tötet, bevor ihre Stunde geschlagen hat.') %$#


    def r64527_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)
        self.state_manager.journal_manager.update_journal('64528')
        #$%.register('64528', 'Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann. Er weiß aber nicht, wo man einen verbogenen Fingerknochen finden kann. Er hat allerdings gesagt, ich solle mal das obere Stockwerk der Leichenhalle versuchen. %$#')


    def r4568_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)
        self.state_manager.journal_manager.update_journal('64529')
        #$%.register('64529', 'Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann. %$#')


    def r4569_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_help(True)
        self.state_manager.journal_manager.update_journal('64529')
        #$%.register('64529', 'Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann. %$#')


    def r4580_action(self):
        self.state_manager.world_manager.set_vaxis_exposes_soego(True)
        self.state_manager.journal_manager.update_journal('64530')
        #$%.register('64530', 'Vaxis hat so etwas darüber gesagt, daß Soego seltsam sei - Er sagt, er möge "Ratten", was auch immer DAS jetzt wieder heißen soll. Es ist schon ironisch genug, wenn Vaxis irgend jemanden beschuldigt, seltsam zu sein. %$#')


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
        #$% .register('64531', 'Dafür, daß ich ihm Nadel, Faden und Balsamierungsöl gebracht habe, hat Vaxis mich als Zombie verkleidet. Er hat mich gewarnt, daß ich die Verkleidung verrate, wenn ich renne, und daß ich nicht mit anderen reden soll, während ich die Verkleidung trage, weil Zombies nicht "reden".') %$#


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
