class DvaxisLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r454_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r461_action(self):
        self.gsm.set_meet_vaxis(True)


    def r464_action(self):
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r465_action(self):
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r466_action(self):
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r472_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r473_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r475_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r476_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_2')


    def r477_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_1')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_1')


    def r480_action(self):
        self.gsm.set_meet_vaxis(True)
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r481_action(self):
        self.gsm.set_meet_vaxis(True)
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r482_action(self):
        self.gsm.set_meet_vaxis(True)
        self.gsm.update_journal('64513')
        # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '


    def r487_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r488_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r493_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_2')


    def r494_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_2')


    def r1306_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r1348_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r1359_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r1360_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r1361_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4364_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4365_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4370_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4371_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_1')


    def r4381_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def r4387_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4388_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4391_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def r4397_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4398_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4401_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4402_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4405_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4408_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4413_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4428_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4429_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4434_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_5')


    def r4442_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4443_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4447_action(self):
        self.gsm.set_vaxis_orders(True)


    def r4448_action(self):
        self.gsm.set_vaxis_orders(True)


    def r4456_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4457_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4469_action(self):
        self.gsm.set_vaxis_leave(True)
        self.gsm.set_has_bandages(True)
        self.gsm.set_has_bandages(True)
        self.gsm.set_has_bandages(True)
        self.gsm.set_has_embalm(True)
        self.gsm.set_has_needle(True)
        GiveItemCreate("Knife",Protagonist,1,0,0) self.gsm.inc_exp_custom('party', 500)
        self.gsm.update_journal('64517')
        # '64517': ' ~Я пообщался с замаскированным шпионом, которого я должен был «сменить». Он выложил все, что он сумел собрать — преимущественно бинты и исцеляющие предметы, необходимые для его маскировки. ~ '


    def r4474_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_3')


    def r4477_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4478_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4484_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4485_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4672_action(self):
        self.gsm.set_strong_arm_vaxis(True)


    def r4489_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4490_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4494_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_has_keyem(False)
        self.gsm.set_vaxis_has_keyem(True)


    def r4496_action(self):
        self.gsm.set_vaxis_orders(False)


    def r4497_action(self):
        self.gsm.set_vaxis_orders(False)


    def r4498_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')
        self.gsm.set_vaxis_orders(False)


    def r4499_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')
        self.gsm.set_vaxis_orders(False)


    def r4502_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_has_keyem(False)
        self.gsm.set_vaxis_has_keyem(True)


    def r64520_action(self):
        self.gsm.update_journal('64519')
        # '64519': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ '


    def r4503_action(self):
        self.gsm.update_journal('64518')
        # '64518': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ '


    def r4504_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_6')


    def r4506_action(self):
        self.gsm.update_journal('64519')
        # '64519': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ '


    def r66150_action(self):
        self.gsm.update_journal('64518')
        # '64518': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ '


    def r4508_action(self):
        self.gsm.set_embalm_key_quest(1)


    def r4509_action(self):
        self.gsm.set_embalm_key_quest(1)


    def r4519_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_has_keyem(False)
        self.gsm.set_vaxis_has_keyem(True)
        self.gsm.set_embalm_key_quest(3)


    def r4521_action(self):
        self.gsm.set_embalm_key_quest(3)
        self.gsm.update_journal('64521')
        # '64521': ' ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ '


    def r4522_action(self):
        self.gsm.set_embalm_key_quest(3)
        self.gsm.update_journal('64521')
        # '64521': ' ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ '


    def r4539_action(self):
        self.gsm.update_journal('64522')
        # '64522': ' ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ '


    def r4543_action(self):
        self.gsm.update_journal('64522')
        # '64522': ' ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ '


    def r64527_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_help(True)
        self.gsm.update_journal('64528')
        # '64528': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». Он не знает, где можно найти кость согнутого пальца, но, тем не менее, он посоветовал мне поискать на верхнем этаже Морга. ~ '


    def r4568_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_help(True)
        self.gsm.update_journal('64529')
        # '64529': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ '


    def r4569_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_help(True)
        self.gsm.update_journal('64529')
        # '64529': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ '


    def r4580_action(self):
        self.gsm.set_vaxis_exposes_soego(True)
        self.gsm.update_journal('64530')
        # '64530': ' ~Ваксис как-то странно отозвался о Соэго — сказал, что тот похож на «крысу», что бы ЭТО ни значило. Довольно иронично, что Ваксис обвиняет кого-то в странностях.~ '


    def r4592_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_has_keyem(False)


    def r4593_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_has_keyem(False)


    def r4620_action(self):
        self.gsm.set_vaxis_zombie_disguise(2)
        DestroyPartyItem("Embalm",FALSE) DestroyPartyItem("Needle",FALSE)


    def r4621_action(self):
        self.gsm.set_vaxis_zombie_disguise(1)


    def r4622_action(self):
        self.gsm.set_vaxis_zombie_disguise(1)


    def r4623_action(self):
        self.gsm.set_vaxis_zombie_disguise(1)


    def r4625_action(self):
        self.gsm.set_vaxis_zombie_disguise(1)


    def r4628_action(self):
        self.gsm.set_vaxis_zombie_disguise(1)


    def r4630_action(self):
        FadeToColor([20.0],0) Wait(1) self.gsm.set_looks_like("zombie")
        Wait(2) FadeFromColor([20.0],0) self.gsm.inc_exp_custom('party', 500)
        self.gsm.set_vaxis_global_xp(True)


    def r4631_action(self):
        self.gsm.set_morte_vaxis_quip_1(True)


    def r4632_action(self):
        FadeToColor([20.0],0) Wait(1) self.gsm.set_looks_like("zombie")
        Wait(2) FadeFromColor([20.0],0)


    def r64533_action(self):
        FadeToColor([20.0],0) Wait(1) self.gsm.set_looks_like("zombie")
        Wait(2) FadeFromColor([20.0],0)


    def r4635_action(self):
        self.gsm.set_morte_vaxis_quip_2(True)


    def r4638_action(self):
        self.gsm.update_journal('64531')
        # '64531': ' ~В обмен на иголку, нитку и бальзамирующую жидкость Ваксис замаскировал меня под зомби. Он предупредил меня, что бег может разрушить маскировку, и что я не должен ни с кем разговаривать, будучи замаскированным. Зомби ведь «не разговаривают». ~ '


    def r4645_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4651_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_vaxis_1')


    def r4661_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4666_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4669_action(self):
        Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r454_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r455_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r456_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r457_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r468_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r472_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r484_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r487_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r491_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r492_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r493_condition(self):
        return not self.gsm.get_in_party_morte()


    def r494_condition(self):
        return self.gsm.get_in_party_morte()


    def r495_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r496_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r1306_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r1348_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r1359_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r1360_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 11 and \
               self.gsm.gcm.get_character_property('protagonist', 'intelligence') < 12


    def r1361_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r4362_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4363_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4364_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4365_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4368_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r4370_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 11 and \
               self.gsm.gcm.get_character_property('protagonist', 'intelligence') < 12


    def r4371_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r4379_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4380_condition(self):
        return self.gsm.get_in_party_morte()


    def r4385_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4386_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4387_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4388_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4395_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4396_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4397_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4398_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4401_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4402_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4409_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4410_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4426_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4427_condition(self):
        return self.gsm.get_in_party_morte()


    def r4428_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4429_condition(self):
        return self.gsm.get_in_party_morte()


    def r4438_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r4440_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4441_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4442_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4443_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4446_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 12 and \
               self.gsm.gcm.get_character_property('protagonist', 'intelligence') < 12


    def r4447_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 11 and \
               self.gsm.gcm.get_character_property('protagonist', 'intelligence') < 12


    def r4448_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r4452_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r4454_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4455_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4456_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4457_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4469_condition(self):
        return not self.gsm.get_vaxis_leave()


    def r4474_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4475_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4476_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4477_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4478_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4482_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4483_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4484_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4485_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4489_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4490_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4494_condition(self):
        return self.gsm.get_has_keyem()


    def r4496_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4497_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4498_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') < 12


    def r4499_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'strength') > 11


    def r4502_condition(self):
        return self.gsm.get_has_keyem()


    def r64520_condition(self):
        return self.gsm.get_meet_eivene()


    def r4503_condition(self):
        return not self.gsm.get_meet_eivene()


    def r4506_condition(self):
        return self.gsm.get_meet_eivene()


    def r66150_condition(self):
        return not self.gsm.get_meet_eivene()


    def r4508_condition(self):
        return self.gsm.get_embalm_key_quest() == 0


    def r4509_condition(self):
        return self.gsm.get_embalm_key_quest() == 0


    def r4510_condition(self):
        return self.gsm.get_embalm_key_quest() != 0


    def r4511_condition(self):
        return self.gsm.get_embalm_key_quest() != 0


    def r4521_condition(self):
        return not self.gsm.get_escape_mortuary()


    def r4522_condition(self):
        return self.gsm.get_escape_mortuary()


    def r64508_condition(self):
        return not self.gsm.get_escape_mortuary() and \
               not self.gsm.get_vaxis_help() and \
               self.gsm.get_embalm_key_quest() == 0 and \
               self.gsm.get_strong_arm_vaxis()


    def r4524_condition(self):
        return not self.gsm.get_escape_mortuary() and \
               not self.gsm.get_vaxis_help() and \
               self.gsm.get_embalm_key_quest() == 0 and \
               not self.gsm.get_strong_arm_vaxis()


    def r4525_condition(self):
        return self.gsm.get_vaxis_help()


    def r4526_condition(self):
        return self.gsm.get_vaxis_zombie_disguise() == 1 and \
               not self.gsm.get_appearance()


    def r4527_condition(self):
        return self.gsm.get_vaxis_zombie_disguise() == 2 and \
               not self.gsm.get_appearance()


    def r4528_condition(self):
        return self.gsm.get_vaxis_orders()


    def r4673_condition(self):
        return not self.gsm.get_meet_pharod()


    def r4530_condition(self):
        return not self.gsm.get_journal()


    def r4531_condition(self):
        return self.gsm.get_meet_dhall()


    def r4532_condition(self):
        return self.gsm.get_meet_deionarra()


    def r4533_condition(self):
        return self.gsm.get_meet_soego()


    def r4534_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4535_condition(self):
        return self.gsm.get_in_party_morte()


    def r4547_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4548_condition(self):
        return self.gsm.get_in_party_morte()


    def r4552_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4553_condition(self):
        return self.gsm.get_in_party_morte()


    def r4564_condition(self):
        return not self.gsm.get_strong_arm_vaxis() and \
               self.gsm.get_embalm_key_quest() == 0 and \
               not self.gsm.get_vaxis_orders()


    def r64509_condition(self):
        return not self.gsm.get_strong_arm_vaxis() and \
               self.gsm.get_embalm_key_quest() > 2 and \
               not self.gsm.get_vaxis_orders()


    def r64510_condition(self):
        return self.gsm.get_strong_arm_vaxis() and \
               not self.gsm.get_vaxis_orders()


    def r64511_condition(self):
        return self.gsm.get_vaxis_orders()


    def r64527_condition(self):
        return not self.gsm.get_has_bone_chrm()


    def r4568_condition(self):
        return self.gsm.get_has_bone_chrm()


    def r4569_condition(self):
        return self.gsm.get_has_bone_chrm()


    def r4586_condition(self):
        return self.gsm.get_embalm_key_quest() == 1


    def r4587_condition(self):
        return self.gsm.get_embalm_key_quest() == 2


    def r4588_condition(self):
        return self.gsm.get_embalm_key_quest() != 1 and \
               self.gsm.get_embalm_key_quest() != 2 and \
               not self.gsm.get_vaxis_orders()


    def r4589_condition(self):
        return self.gsm.get_embalm_key_quest() != 1 and \
               self.gsm.get_embalm_key_quest() != 2 and \
               self.gsm.get_vaxis_orders()


    def r4592_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               self.gsm.get_has_keyem()


    def r4593_condition(self):
        return self.gsm.get_embalm_key_quest() == 2 and \
               self.gsm.get_has_keyem()


    def r4594_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               not self.gsm.get_has_keyem()


    def r4599_condition(self):
        return self.gsm.get_embalm_key_quest() == 0


    def r4600_condition(self):
        return self.gsm.get_embalm_key_quest() > 0


    def r4604_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_appearance()


    def r4609_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_appearance()


    def r4610_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 10


    def r4611_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 10


    def r4612_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 9


    def r4613_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 9


    def r4615_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_appearance()


    def r4616_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4617_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4618_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4674_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4620_condition(self):
        return self.gsm.get_has_embalm() and \
               self.gsm.get_has_needle()


    def r4630_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_vaxis_global_xp()


    def r4631_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_vaxis_quip_1()


    def r4632_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_vaxis_quip_1()


    def r64533_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_vaxis_global_xp()


    def r4634_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4635_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_vaxis_quip_2()


    def r4636_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_vaxis_quip_2()


    def r4656_condition(self):
        return not self.gsm.get_vaxis_help()


    def r64532_condition(self):
        return self.gsm.get_vaxis_help()


    def r4664_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4665_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11