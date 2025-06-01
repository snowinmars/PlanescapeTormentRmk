def _r454_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r454_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r455_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r456_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r457_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r461_action(gsm):
    DO ~gsm.set_meet_vaxis(True) ~
def _r464_action(gsm):
    gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r465_action(gsm):
    gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r466_action(gsm):
    gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r468_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r472_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r472_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r473_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r475_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r476_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_2') ~
def _r477_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_1') gsm.inc_once_good('good_vaxis_1') ~
def _r480_action(gsm):
    DO ~gsm.set_meet_vaxis(True) ~ gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r481_action(gsm):
    DO ~gsm.set_meet_vaxis(True) ~ gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r482_action(gsm):
    DO ~gsm.set_meet_vaxis(True) ~ gsm.update_journal('64513')    # '64513': ' ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ '
def _r484_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r487_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r487_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r488_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r491_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r492_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r493_condition(gsm):
    return not gsm.get_in_party_morte()
def _r493_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_2') ~
def _r494_condition(gsm):
    return gsm.get_in_party_morte()
def _r494_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_2') ~
def _r495_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r496_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r1306_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r1306_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r1348_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r1348_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r1359_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1359_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r1360_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') return gsm.check_char_prop_lt('protagonist',12,'int')
def _r1360_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r1361_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1361_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r4362_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4363_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4364_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4364_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4365_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4365_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4368_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4370_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') return gsm.check_char_prop_lt('protagonist',12,'int')
def _r4370_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r4371_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r4371_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_1') ~
def _r4379_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4380_condition(gsm):
    return gsm.get_in_party_morte()
def _r4381_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_2') gsm.inc_once_good('good_vaxis_2') ~
def _r4385_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4386_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4387_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4387_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4388_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4388_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4391_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_2') gsm.inc_once_good('good_vaxis_2') ~
def _r4395_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4396_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4397_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4397_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4398_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4398_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4401_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4401_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4402_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4402_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4405_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4408_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4409_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4410_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4413_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4426_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4427_condition(gsm):
    return gsm.get_in_party_morte()
def _r4428_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4428_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4429_condition(gsm):
    return gsm.get_in_party_morte()
def _r4429_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4434_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_5') ~
def _r4438_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4440_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4441_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4442_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4442_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4443_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4443_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4446_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'chr') return gsm.check_char_prop_lt('protagonist',12,'int')
def _r4447_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') return gsm.check_char_prop_lt('protagonist',12,'int')
def _r4447_action(gsm):
    DO ~gsm.set_vaxis_orders(True) ~
def _r4448_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r4448_action(gsm):
    DO ~gsm.set_vaxis_orders(True) ~
def _r4452_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4454_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4455_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4456_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4456_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4457_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4457_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4469_condition(gsm):
    return not gsm.get_vaxis_leave()
def _r4469_action(gsm):
    DO ~gsm.set_vaxis_leave(True) gsm.set_has_bandages(True) gsm.set_has_bandages(True) gsm.set_has_bandages(True) gsm.set_has_embalm(True) gsm.set_has_needle(True) GiveItemCreate("Knife",Protagonist,1,0,0) AddexperienceParty(500) ~ gsm.update_journal('64517')    # '64517': ' ~Я пообщался с замаскированным шпионом, которого я должен был «сменить». Он выложил все, что он сумел собрать — преимущественно бинты и исцеляющие предметы, необходимые для его маскировки. ~ '
def _r4474_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4474_action(gsm):
    DO ~gsm.inc_once_good('good_vaxis_3') ~
def _r4475_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4476_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4477_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4477_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4478_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4478_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4482_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4483_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4484_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4484_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4485_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4485_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4672_action(gsm):
    DO ~gsm.set_strong_arm_vaxis(True) ~
def _r4489_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4489_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4490_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4490_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4494_condition(gsm):
    return gsm.get_has_keyem()
def _r4494_action(gsm):
    DO ~ gsm.set_has_keyem(False) gsm.set_vaxis_has_keyem(True) ~
def _r4496_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4496_action(gsm):
    DO ~gsm.set_vaxis_orders(False) ~
def _r4497_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4497_action(gsm):
    DO ~gsm.set_vaxis_orders(False) ~
def _r4498_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4498_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') gsm.set_vaxis_orders(False) ~
def _r4499_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4499_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') gsm.set_vaxis_orders(False) ~
def _r4502_condition(gsm):
    return gsm.get_has_keyem()
def _r4502_action(gsm):
    DO ~ gsm.set_has_keyem(False) gsm.set_vaxis_has_keyem(True) ~
def _r64520_condition(gsm):
    return gsm.get_meet_eivene()
def _r64520_action(gsm):
    gsm.update_journal('64519')    # '64519': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ '
def _r4503_condition(gsm):
    return not gsm.get_meet_eivene()
def _r4503_action(gsm):
    gsm.update_journal('64518')    # '64518': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ '
def _r4504_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_6') ~
def _r4506_condition(gsm):
    return gsm.get_meet_eivene()
def _r4506_action(gsm):
    gsm.update_journal('64519')    # '64519': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ '
def _r66150_condition(gsm):
    return not gsm.get_meet_eivene()
def _r66150_action(gsm):
    gsm.update_journal('64518')    # '64518': ' ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ '
def _r4508_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4508_action(gsm):
    DO ~gsm.set_embalm_key_quest(1) ~
def _r4509_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4509_action(gsm):
    DO ~gsm.set_embalm_key_quest(1) ~
def _r4510_condition(gsm):
    return gsm.get_embalm_key_quest() != 0
def _r4511_condition(gsm):
    return gsm.get_embalm_key_quest() != 0
def _r4519_action(gsm):
    DO ~ gsm.set_has_keyem(False) gsm.set_vaxis_has_keyem(True) gsm.set_embalm_key_quest(3) ~
def _r4521_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4521_action(gsm):
    DO ~gsm.set_embalm_key_quest(3) ~ gsm.update_journal('64521')    # '64521': ' ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ '
def _r4522_condition(gsm):
    return gsm.get_escape_mortuary()
def _r4522_action(gsm):
    DO ~gsm.set_embalm_key_quest(3) ~ gsm.update_journal('64521')    # '64521': ' ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ '
def _r64508_condition(gsm):
    return not gsm.get_escape_mortuary() return not gsm.get_vaxis_help() return gsm.get_embalm_key_quest() == 0 return gsm.get_strong_arm_vaxis()
def _r4524_condition(gsm):
    return not gsm.get_escape_mortuary() return not gsm.get_vaxis_help() return gsm.get_embalm_key_quest() == 0 return not gsm.get_strong_arm_vaxis()
def _r4525_condition(gsm):
    return gsm.get_vaxis_help()
def _r4526_condition(gsm):
    return gsm.get_vaxis_zombie_disguise() == 1 return not gsm.get_appearance()
def _r4527_condition(gsm):
    return gsm.get_vaxis_zombie_disguise() == 2 return not gsm.get_appearance()
def _r4528_condition(gsm):
    return gsm.get_vaxis_orders()
def _r4673_condition(gsm):
    return not gsm.get_meet_pharod()
def _r4530_condition(gsm):
    return not gsm.get_journal()
def _r4531_condition(gsm):
    return gsm.get_meet_dhall()
def _r4532_condition(gsm):
    return gsm.get_meet_deionarra()
def _r4533_condition(gsm):
    return gsm.get_meet_soego()
def _r4534_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4535_condition(gsm):
    return gsm.get_in_party_morte()
def _r4539_action(gsm):
    gsm.update_journal('64522')    # '64522': ' ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ '
def _r4543_action(gsm):
    gsm.update_journal('64522')    # '64522': ' ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ '
def _r4547_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4548_condition(gsm):
    return gsm.get_in_party_morte()
def _r4552_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4553_condition(gsm):
    return gsm.get_in_party_morte()
def _r4564_condition(gsm):
    return not gsm.get_strong_arm_vaxis() return gsm.get_embalm_key_quest() == 0 return not gsm.get_vaxis_orders()
def _r64509_condition(gsm):
    return not gsm.get_strong_arm_vaxis() return gsm.get_embalm_key_quest() > 2 return not gsm.get_vaxis_orders()
def _r64510_condition(gsm):
    return gsm.get_strong_arm_vaxis() return not gsm.get_vaxis_orders()
def _r64511_condition(gsm):
    return gsm.get_vaxis_orders()
def _r64527_condition(gsm):
    return not gsm.get_has_bone_chrm()
def _r64527_action(gsm):
    DO ~ gsm.set_vaxis_help(True) ~ gsm.update_journal('64528')    # '64528': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». Он не знает, где можно найти кость согнутого пальца, но, тем не менее, он посоветовал мне поискать на верхнем этаже Морга. ~ '
def _r4568_condition(gsm):
    return gsm.get_has_bone_chrm()
def _r4568_action(gsm):
    DO ~ gsm.set_vaxis_help(True) ~ gsm.update_journal('64529')    # '64529': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ '
def _r4569_condition(gsm):
    return gsm.get_has_bone_chrm()
def _r4569_action(gsm):
    DO ~ gsm.set_vaxis_help(True) ~ gsm.update_journal('64529')    # '64529': ' ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ '
def _r4580_action(gsm):
    DO ~gsm.set_vaxis_exposes_soego(True) ~ gsm.update_journal('64530')    # '64530': ' ~Ваксис как-то странно отозвался о Соэго — сказал, что тот похож на «крысу», что бы ЭТО ни значило. Довольно иронично, что Ваксис обвиняет кого-то в странностях.~ '
def _r4586_condition(gsm):
    return gsm.get_embalm_key_quest() == 1
def _r4587_condition(gsm):
    return gsm.get_embalm_key_quest() == 2
def _r4588_condition(gsm):
    return gsm.get_embalm_key_quest() != 1 return gsm.get_embalm_key_quest() != 2 return not gsm.get_vaxis_orders()
def _r4589_condition(gsm):
    return gsm.get_embalm_key_quest() != 1 return gsm.get_embalm_key_quest() != 2 return gsm.get_vaxis_orders()
def _r4592_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return gsm.get_has_keyem()
def _r4592_action(gsm):
    DO ~ gsm.set_has_keyem(False) ~
def _r4593_condition(gsm):
    return gsm.get_embalm_key_quest() == 2 return gsm.get_has_keyem()
def _r4593_action(gsm):
    DO ~ gsm.set_has_keyem(False) ~
def _r4594_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return not gsm.get_has_keyem()
def _r4599_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4600_condition(gsm):
    return gsm.get_embalm_key_quest() > 0
def _r4604_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') return not gsm.get_appearance()
def _r4609_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') return not gsm.get_appearance()
def _r4610_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',10,'chr')
def _r4611_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',10,'chr')
def _r4612_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',9,'chr')
def _r4613_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',9,'chr')
def _r4615_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') return not gsm.get_appearance()
def _r4616_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'chr')
def _r4617_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'chr')
def _r4618_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'chr')
def _r4674_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'chr')
def _r4620_condition(gsm):
    return gsm.get_has_embalm() return gsm.get_has_needle()
def _r4620_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(2) DestroyPartyItem("Embalm",FALSE) DestroyPartyItem("Needle",FALSE) ~
def _r4621_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(1) ~
def _r4622_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(1) ~
def _r4623_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(1) ~
def _r4625_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(1) ~
def _r4628_action(gsm):
    DO ~gsm.set_vaxis_zombie_disguise(1) ~
def _r4630_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_vaxis_global_xp()
def _r4630_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(1) gsm.set_looks_like("zombie") Wait(2) FadeFromColor([20.0],0) AddexperienceParty(500) gsm.set_vaxis_global_xp(True) ~
def _r4631_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_vaxis_quip_1()
def _r4631_action(gsm):
    DO ~gsm.set_morte_vaxis_quip_1(True) ~
def _r4632_condition(gsm):
    return gsm.get_in_party_morte() return gsm.get_morte_vaxis_quip_1()
def _r4632_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(1) gsm.set_looks_like("zombie") Wait(2) FadeFromColor([20.0],0) ~
def _r64533_condition(gsm):
    return not gsm.get_in_party_morte() return gsm.get_vaxis_global_xp()
def _r64533_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(1) gsm.set_looks_like("zombie") Wait(2) FadeFromColor([20.0],0) ~
def _r4634_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4635_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_vaxis_quip_2()
def _r4635_action(gsm):
    DO ~gsm.set_morte_vaxis_quip_2(True) ~
def _r4636_condition(gsm):
    return gsm.get_in_party_morte() return gsm.get_morte_vaxis_quip_2()
def _r4638_action(gsm):
    gsm.update_journal('64531')    # '64531': ' ~В обмен на иголку, нитку и бальзамирующую жидкость Ваксис замаскировал меня под зомби. Он предупредил меня, что бег может разрушить маскировку, и что я не должен ни с кем разговаривать, будучи замаскированным. Зомби ведь «не разговаривают». ~ '
def _r4645_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4651_action(gsm):
    DO ~gsm.dec_once_good('evil_vaxis_1') ~
def _r4656_condition(gsm):
    return not gsm.get_vaxis_help()
def _r64532_condition(gsm):
    return gsm.get_vaxis_help()
def _r4661_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4664_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4665_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4666_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~
def _r4669_action(gsm):
    DO ~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DVAXIS.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say453') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DVAXIS.D_s5', 'r', 'reply454').with_condition(lambda: _r454_condition(gsm)).with_action(lambda: _r454_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DVAXIS.D_s5', 'r', 'reply455').with_condition(lambda: _r455_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DVAXIS.D_s5', 'r', 'reply456').with_condition(lambda: _r456_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DVAXIS.D_s1', 'r', 'reply457').with_condition(lambda: _r457_condition(gsm)) \
        .response("Было приятно поболтать с тобой. Прощай.", 'DVAXIS.D_s5', 'r', 'reply458') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply459').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s1', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Довольно странно, но твоя способность не работает с этим трупом.", 's1', 'say460') \
    .with_responses() \
        .response("Ткнуть его в глаз.", 'DVAXIS.D_s2', 'r', 'reply461').with_action(lambda: _r461_action(gsm)) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply462').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s2', '# from 1.0') \
    .with_npc_lines() \
        .line(SPEAKER, "После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.", 's2', 'say463') \
    .with_responses() \
        .response("Ты не зомби! Кто ты?", 'DVAXIS.D_s6', 'r', 'reply464').with_action(lambda: _r464_action(gsm)) \
        .response("Зачем ты замаскировался под зомби?", 'DVAXIS.D_s6', 'r', 'reply465').with_action(lambda: _r465_action(gsm)) \
        .response("Уйти. Быстро.", 'DVAXIS.D_s3', 'r', 'reply466').with_action(lambda: _r466_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s3', '# from 2.2 5.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты уже почти отвернулся, как зомби начинает что-то бормотать… кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно. Фто ТЫ? Фто тее нао?", 's3', 'say467') \
    .with_responses() \
        .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s7', 'r', 'reply468').with_condition(lambda: _r468_condition(gsm)) \
        .response("Кто ты?", 'DVAXIS.D_s7', 'r', 'reply469') \
        .response("Рассказывай, кто ты такой, или я позову стражу.", 'DVAXIS.D_s7', 'r', 'reply470') \
        .response("Ложь: Чего… Я искал тебя.", 'DVAXIS.D_s24', 'r', 'reply472').with_condition(lambda: _r472_condition(gsm)).with_action(lambda: _r472_action(gsm)) \
        .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s7', 'r', 'reply473').with_action(lambda: _r473_action(gsm)) \
        .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r', 'reply474') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s4', '# from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание: Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым, — он прикладывает палец к губам. — Фффф. После этого он проводит пальцем по горлу. Или ты уфнефь нафегда. ПОЯЛ мея?", 's4', 'say471') \
    .with_responses() \
        .response("Ты пытаешься меня ЗАПУГАТЬ? Ну все… готовься к смерти.", EXIT, 'r', 'reply475').with_action(lambda: _r475_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ложь: Я даже и *не думал* ничего говорить тленным о тебе.", EXIT, 'r', 'reply476').with_action(lambda: _r476_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Правда: Обещаю, что я ничего не скажу о тебе тленным.", EXIT, 'r', 'reply477').with_action(lambda: _r477_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Как хочешь. У тебя свои дела, у меня — свои.", EXIT, 'r', 'reply478').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s5', '# from 0.0 0.1 0.2 0.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби от неожиданности моргает при твоем обращении. А? Фто?", 's5', 'say479') \
    .with_responses() \
        .response("Ты не зомби! Кто ты?", 'DVAXIS.D_s6', 'r', 'reply480').with_action(lambda: _r480_action(gsm)) \
        .response("Зачем ты замаскировался под зомби?", 'DVAXIS.D_s6', 'r', 'reply481').with_action(lambda: _r481_action(gsm)) \
        .response("Уйти. Быстро.", 'DVAXIS.D_s3', 'r', 'reply482').with_action(lambda: _r482_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s6', '# from 2.0 2.1 5.0 5.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы. Фто ТЫ? Фего тее нао?", 's6', 'say483') \
    .with_responses() \
        .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s7', 'r', 'reply484').with_condition(lambda: _r484_condition(gsm)) \
        .response("Кто ты?", 'DVAXIS.D_s7', 'r', 'reply485') \
        .response("Рассказывай, кто ты такой, или я позову стражу.", 'DVAXIS.D_s7', 'r', 'reply486') \
        .response("Ложь: Чего… Я искал тебя.", 'DVAXIS.D_s24', 'r', 'reply487').with_condition(lambda: _r487_condition(gsm)).with_action(lambda: _r487_action(gsm)) \
        .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s7', 'r', 'reply488').with_action(lambda: _r488_action(gsm)) \
        .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r', 'reply489') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s7', '# from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится. Фто ты фдефь делаефь? — его глаза недоверчиво сужаются. — Фпионифь за Мертфяками?", 's7', 'say490') \
    .with_responses() \
        .response("Нет. Я пытаюсь сбежать отсюда.", 'DVAXIS.D_s12', 'r', 'reply491').with_condition(lambda: _r491_condition(gsm)) \
        .response("Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?", 'DVAXIS.D_s31', 'r', 'reply492').with_condition(lambda: _r492_condition(gsm)) \
        .response("Ложь: Да, я шпионю здесь за… трухлявыми.", 'DVAXIS.D_s8', 'r', 'reply493').with_condition(lambda: _r493_condition(gsm)).with_action(lambda: _r493_action(gsm)) \
        .response("Ложь: Да, я шпионю здесь за… трухлявыми.", 'DVAXIS.D_s9', 'r', 'reply494').with_condition(lambda: _r494_condition(gsm)).with_action(lambda: _r494_action(gsm)) \
        .response("Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.", 'DVAXIS.D_s21', 'r', 'reply495').with_condition(lambda: _r495_condition(gsm)) \
        .response("Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.", 'DVAXIS.D_s17', 'r', 'reply496').with_condition(lambda: _r496_condition(gsm)) \
        .response("Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply1306').with_condition(lambda: _r1306_condition(gsm)).with_action(lambda: _r1306_action(gsm)) \
        .response("Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply1348').with_condition(lambda: _r1348_condition(gsm)).with_action(lambda: _r1348_action(gsm)) \
        .response("Я должен идти. Прощай.", 'DVAXIS.D_s4', 'r', 'reply1349') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s8', '# from 7.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Он изучает тебя более пристально. Ты фпион? Ты иф яфейки?", 's8', 'say1350') \
    .with_responses() \
        .response("А?", 'DVAXIS.D_s10', 'r', 'reply4671') \
        .response("Яфейки?", 'DVAXIS.D_s10', 'r', 'reply1352') \
        .response("Ложь: Да… Я искал тебя. И очень рад, что нашел.", 'DVAXIS.D_s24', 'r', 'reply1359').with_condition(lambda: _r1359_condition(gsm)).with_action(lambda: _r1359_action(gsm)) \
        .response("Ложь: Да… но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?", 'DVAXIS.D_s28', 'r', 'reply1360').with_condition(lambda: _r1360_condition(gsm)).with_action(lambda: _r1360_action(gsm)) \
        .response("Ложь: Да… но я не могу говорить об этом сейчас. Что ты делаешь здесь?", 'DVAXIS.D_s28', 'r', 'reply1361').with_condition(lambda: _r1361_condition(gsm)).with_action(lambda: _r1361_action(gsm)) \
        .response("Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.", 'DVAXIS.D_s4', 'r', 'reply1362') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s9', '# from 7.3 // Check EXTENDS ~DMORTE~ : 85') \
    .with_npc_lines() \
        .line(SPEAKER, "Он изучает тебя более пристально. Ты фпион? Ты иф яфейки?", 's9', 'say1363') \
    .with_responses() \
        .response("А?", EXIT, 'r', 'reply4359').with_action(lambda: _dispose()) \
        .response("Яфейки?", EXIT, 'r', 'reply4360').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s10', '# from 8.0 8.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Хмурясь, он шипит на тебя. Ты не фпион! — он гонит тебя прочь. — Профь! Профь!", 's10', 'say4361') \
    .with_responses() \
        .response("Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r', 'reply4362').with_condition(lambda: _r4362_condition(gsm)) \
        .response("Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r', 'reply4363').with_condition(lambda: _r4363_condition(gsm)) \
        .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply4364').with_condition(lambda: _r4364_condition(gsm)).with_action(lambda: _r4364_action(gsm)) \
        .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4365').with_condition(lambda: _r4365_condition(gsm)).with_action(lambda: _r4365_action(gsm)) \
        .response("Ну хорошо, хорошо… Я ухожу.", 'DVAXIS.D_s4', 'r', 'reply4367') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s11', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.", 's11', 'say4366') \
    .with_responses() \
        .response("Ты поможешь мне выбраться отсюда?", 'DVAXIS.D_s12', 'r', 'reply4368').with_condition(lambda: _r4368_condition(gsm)) \
        .response("Так что же ты делаешь здесь?", 'DVAXIS.D_s28', 'r', 'reply4369') \
        .response("Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?", 'DVAXIS.D_s28', 'r', 'reply4370').with_condition(lambda: _r4370_condition(gsm)).with_action(lambda: _r4370_action(gsm)) \
        .response("Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить. Что ты здесь делаешь?", 'DVAXIS.D_s28', 'r', 'reply4371').with_condition(lambda: _r4371_condition(gsm)).with_action(lambda: _r4371_action(gsm)) \
        .response("Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.", 'DVAXIS.D_s4', 'r', 'reply4372') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s12', '# from 7.0 11.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби выглядит заинтересованным. Пвоулемы? Фево ты натвовил?", 's12', 'say4373') \
    .with_responses() \
        .response("Я очнулся на одной из плит на верхнем этаже.", 'DVAXIS.D_s13', 'r', 'reply4374') \
        .response("Каким-то образом я… оказался здесь запертым. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r', 'reply4375') \
        .response("Поговорим об этом в другой раз.", 'DVAXIS.D_s4', 'r', 'reply4376') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s13', '# from 12.0 // Check EXTENDS ~DMORTE~ : 87') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби смотрит на тебя как на умалишенного. Ты фпятил?", 's13', 'say4377') \
    .with_responses() \
        .response("Да, я фпятил. Я окончательно фпятил.", 'DVAXIS.D_s14', 'r', 'reply4378') \
        .response("Фпятил? Что это значит?", 'DVAXIS.D_s16', 'r', 'reply4379').with_condition(lambda: _r4379_condition(gsm)) \
        .response("Фпятил? Что это значит?", EXIT, 'r', 'reply4380').with_condition(lambda: _r4380_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже.", 'DVAXIS.D_s14', 'r', 'reply4381').with_action(lambda: _r4381_action(gsm)) \
        .response("Э-э, нет… На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r', 'reply4382') \
        .response("Забудь о нашем разговоре. Мне нужно идти.", 'DVAXIS.D_s4', 'r', 'reply4383') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s14', '# from 13.0 13.3 15.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. Ты фпятил! Профь от мея!", 's14', 'say4384') \
    .with_responses() \
        .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r', 'reply4385').with_condition(lambda: _r4385_condition(gsm)) \
        .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r', 'reply4386').with_condition(lambda: _r4386_condition(gsm)) \
        .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply4387').with_condition(lambda: _r4387_condition(gsm)).with_action(lambda: _r4387_action(gsm)) \
        .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4388').with_condition(lambda: _r4388_condition(gsm)).with_action(lambda: _r4388_action(gsm)) \
        .response("Ну ладно, ладно… прощай.", 'DVAXIS.D_s4', 'r', 'reply4389') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s15', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Фальшивый зомби недоверчиво смотрит на вас обоих.", 's15', 'say4390') \
    .with_responses() \
        .response("Это правда — я очнулся на одной из здешних плит.", 'DVAXIS.D_s14', 'r', 'reply4391').with_action(lambda: _r4391_action(gsm)) \
        .response("Э-э, прошу прощения… На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r', 'reply4392') \
        .response("Неважно. Мне нужно идти.", 'DVAXIS.D_s4', 'r', 'reply4393') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s16', '# from 13.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. Пуфтогоовый! Приурок! Профь от мея, пей! Профь!", 's16', 'say4394') \
    .with_responses() \
        .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r', 'reply4395').with_condition(lambda: _r4395_condition(gsm)) \
        .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r', 'reply4396').with_condition(lambda: _r4396_condition(gsm)) \
        .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply4397').with_condition(lambda: _r4397_condition(gsm)).with_action(lambda: _r4397_action(gsm)) \
        .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4398').with_condition(lambda: _r4398_condition(gsm)).with_action(lambda: _r4398_action(gsm)) \
        .response("Ну хорошо, хорошо… Я ухожу.", 'DVAXIS.D_s4', 'r', 'reply4399') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s17', '# from 7.5 10.1 14.1 16.1 25.3 27.3') \
    .with_npc_lines() \
        .line(SPEAKER, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.", 's17', 'say4400') \
    .with_responses() \
        .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s18', 'r', 'reply4401').with_condition(lambda: _r4401_condition(gsm)).with_action(lambda: _r4401_action(gsm)) \
        .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4402').with_condition(lambda: _r4402_condition(gsm)).with_action(lambda: _r4402_action(gsm)) \
        .response("Тогда гори в аду. Я ухожу.", 'DVAXIS.D_s4', 'r', 'reply4403') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s18', '# from 17.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби превращаются в щелочки, он шипит на тебя: Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.", 's18', 'say4404') \
    .with_responses() \
        .response("Я рискну. Готовься к смерти.", EXIT, 'r', 'reply4405').with_action(lambda: _r4405_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r', 'reply4406') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s19', '# from 7.6 10.2 14.2 16.2 25.4 27.4') \
    .with_npc_lines() \
        .line(SPEAKER, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.", 's19', 'say4407') \
    .with_responses() \
        .response("Я рискну. Готовься к смерти.", EXIT, 'r', 'reply4408').with_action(lambda: _r4408_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Что, если я раскрою твою маскировку перед стражей?", 'DVAXIS.D_s21', 'r', 'reply4409').with_condition(lambda: _r4409_condition(gsm)) \
        .response("Что, если я раскрою твою маскировку перед стражей?", 'DVAXIS.D_s20', 'r', 'reply4410').with_condition(lambda: _r4410_condition(gsm)) \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r', 'reply4411') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s20', '# from 19.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби превращаются в щелочки, он шипит на тебя: Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.", 's20', 'say4412') \
    .with_responses() \
        .response("Это был твой последний шанс, труп. Готовься к смерти.", EXIT, 'r', 'reply4413').with_action(lambda: _r4413_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*.", 'DVAXIS.D_s4', 'r', 'reply4414') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s21', '# from 7.4 10.0 14.0 16.0 19.1 25.2 27.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа. Не-не-не! Не наа фвать фтражу! — он явно напуган. — Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе.", 's21', 'say4415') \
    .with_responses() \
        .response("Шпионишь? Для кого?", 'DVAXIS.D_s23', 'r', 'reply4416') \
        .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4417') \
        .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r', 'reply4418') \
        .response("Это все, что я хотел узнать. Прощай, *зомби*.", EXIT, 'r', 'reply4419').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s22', '# from 7.7 10.3 14.3 16.3 17.1 25.5 27.5') \
    .with_npc_lines() \
        .line(SPEAKER, "Не-не-не! Не твогаи мея! Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа. Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе.", 's22', 'say4420') \
    .with_responses() \
        .response("Шпионишь? Для кого?", 'DVAXIS.D_s23', 'r', 'reply4421') \
        .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4422') \
        .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r', 'reply4423') \
        .response("Это все, что я хотел знать. А теперь прочь с дороги, *зомби*.", EXIT, 'r', 'reply4424').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s23', '# from 21.0 22.0 // Check EXTENDS ~DMORTE~ : 89') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби в страхе умолкает, ничего не желая говорить.", 's23', 'say4425') \
    .with_responses() \
        .response("Ну же, для кого ты следишь за этим местом?", 'DVAXIS.D_s70', 'r', 'reply4426').with_condition(lambda: _r4426_condition(gsm)) \
        .response("Ну же, для кого ты следишь за этим местом?", EXIT, 'r', 'reply4427').with_condition(lambda: _r4427_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.", 'DVAXIS.D_s70', 'r', 'reply4428').with_condition(lambda: _r4428_condition(gsm)).with_action(lambda: _r4428_action(gsm)) \
        .response("Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.", EXIT, 'r', 'reply4429').with_condition(lambda: _r4429_condition(gsm)).with_action(lambda: _r4429_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4430') \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4431') \
        .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, 'r', 'reply4432').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s24', '# from 3.3 6.3 8.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Иффефь мея? Вафем? — он искоса смотрит на тебя. — У тея соофение двя мея?", 's24', 'say4433') \
    .with_responses() \
        .response("Ложь: Да, у меня есть сообщение для тебя.", 'DVAXIS.D_s26', 'r', 'reply4434').with_action(lambda: _r4434_action(gsm)) \
        .response("Сообщение от кого?", 'DVAXIS.D_s27', 'r', 'reply4435') \
        .response("Нет, у меня нет сообщений.", 'DVAXIS.D_s25', 'r', 'reply4436') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s25', '# from 24.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Яростно шепчет. Тада фео тее *надо*, пей?!", 's25', 'say4437') \
    .with_responses() \
        .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s31', 'r', 'reply4438').with_condition(lambda: _r4438_condition(gsm)) \
        .response("Мне нужны кое-какие сведения…", 'DVAXIS.D_s43', 'r', 'reply4439') \
        .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r', 'reply4440').with_condition(lambda: _r4440_condition(gsm)) \
        .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r', 'reply4441').with_condition(lambda: _r4441_condition(gsm)) \
        .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply4442').with_condition(lambda: _r4442_condition(gsm)).with_action(lambda: _r4442_action(gsm)) \
        .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4443').with_condition(lambda: _r4443_condition(gsm)).with_action(lambda: _r4443_action(gsm)) \
        .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r', 'reply4444') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s26', '# from 24.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Какое фоофение?", 's26', 'say4445') \
    .with_responses() \
        .response("Ты должен сообщить мне свое задание.", 'DVAXIS.D_s28', 'r', 'reply4446').with_condition(lambda: _r4446_condition(gsm)) \
        .response("Ложь: У меня к тебе новые распоряжения.", 'DVAXIS.D_s30', 'r', 'reply4447').with_condition(lambda: _r4447_condition(gsm)).with_action(lambda: _r4447_action(gsm)) \
        .response("Ложь: У меня… к тебе новые распоряжения.", 'DVAXIS.D_s30', 'r', 'reply4448').with_condition(lambda: _r4448_condition(gsm)).with_action(lambda: _r4448_action(gsm)) \
        .response("Извини, у меня нет сообщений.", 'DVAXIS.D_s27', 'r', 'reply4449') \
        .response("Неважно. Извини за беспокойство. Прощай.", 'DVAXIS.D_s27', 'r', 'reply4450') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s27', '# from 24.1 26.3 26.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Его глаза в ярости сужаются. Ты не фьяфной. Фто ты?", 's27', 'say4451') \
    .with_responses() \
        .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s31', 'r', 'reply4452').with_condition(lambda: _r4452_condition(gsm)) \
        .response("Мне нужны кое-какие сведения…", 'DVAXIS.D_s43', 'r', 'reply4453') \
        .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r', 'reply4454').with_condition(lambda: _r4454_condition(gsm)) \
        .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r', 'reply4455').with_condition(lambda: _r4455_condition(gsm)) \
        .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r', 'reply4456').with_condition(lambda: _r4456_condition(gsm)).with_action(lambda: _r4456_action(gsm)) \
        .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r', 'reply4457').with_condition(lambda: _r4457_condition(gsm)).with_action(lambda: _r4457_action(gsm)) \
        .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r', 'reply4458') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s28', '# from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5') \
    .with_npc_lines() \
        .line(SPEAKER, "Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе.", 's28', 'say4459') \
    .with_responses() \
        .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4460') \
        .response("Понятно. Я хотел спросить у тебя еще кое-что…", 'DVAXIS.D_s43', 'r', 'reply4461') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply4462').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s29', '# from 21.1 22.1 23.4 28.0 70.1 71.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают, — его глаза деловито сужаются. — Буу дальфе фледить.", 's29', 'say4463') \
    .with_responses() \
        .response("Понятно. Я хотел спросить у тебя еще кое-что…", 'DVAXIS.D_s43', 'r', 'reply4464') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply4465').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s30', '# from 26.1 26.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Он сужает глаза, будто пытаясь тебя вычислить. Какие вафповявения?", 's30', 'say4466') \
    .with_responses() \
        .response("Доложи свою миссию.", 'DVAXIS.D_s28', 'r', 'reply4467') \
        .response("Мне нужно найти выход, через который можно уйти незамеченным.", 'DVAXIS.D_s49', 'r', 'reply4468') \
        .response("Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место.", 'DVAXIS.D_s72', 'r', 'reply4469').with_condition(lambda: _r4469_condition(gsm)).with_action(lambda: _r4469_action(gsm)) \
        .response("Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться.", 'DVAXIS.D_s35', 'r', 'reply4470') \
        .response("Твои распоряжения будут переданы в свое время. Я вернусь.", EXIT, 'r', 'reply4471').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s31', '# from 7.1 12.1 13.4 15.1 25.0 27.0 50.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он на секунду умолкает, затем медленно, будто бы понимающе кивает. Пофеу я доувен помоать тее?", 's31', 'say4472') \
    .with_responses() \
        .response("Потому что мне нужна твоя помощь.", 'DVAXIS.D_s32', 'r', 'reply4473') \
        .response("Мы можем помочь друг другу. Что ты хочешь взамен?", 'DVAXIS.D_s35', 'r', 'reply4474').with_condition(lambda: _r4474_condition(gsm)).with_action(lambda: _r4474_action(gsm)) \
        .response("Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.", 'DVAXIS.D_s33', 'r', 'reply4475').with_condition(lambda: _r4475_condition(gsm)) \
        .response("Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.", 'DVAXIS.D_s34', 'r', 'reply4476').with_condition(lambda: _r4476_condition(gsm)) \
        .response("Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?", 'DVAXIS.D_s75', 'r', 'reply4477').with_condition(lambda: _r4477_condition(gsm)).with_action(lambda: _r4477_action(gsm)) \
        .response("Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?", 'DVAXIS.D_s33', 'r', 'reply4478').with_condition(lambda: _r4478_condition(gsm)).with_action(lambda: _r4478_action(gsm)) \
        .response("Забудь о нашей встрече. Я должен идти. Прощай.", 'DVAXIS.D_s4', 'r', 'reply4479') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s32', '# from 31.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби едва усмехается. Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу.", 's32', 'say4480') \
    .with_responses() \
        .response("Что тебе надо?", 'DVAXIS.D_s35', 'r', 'reply4481') \
        .response("Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?", 'DVAXIS.D_s33', 'r', 'reply4482').with_condition(lambda: _r4482_condition(gsm)) \
        .response("Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?", 'DVAXIS.D_s34', 'r', 'reply4483').with_condition(lambda: _r4483_condition(gsm)) \
        .response("Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?", 'DVAXIS.D_s75', 'r', 'reply4484').with_condition(lambda: _r4484_condition(gsm)).with_action(lambda: _r4484_action(gsm)) \
        .response("Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?", 'DVAXIS.D_s33', 'r', 'reply4485').with_condition(lambda: _r4485_condition(gsm)).with_action(lambda: _r4485_action(gsm)) \
        .response("Неинтересно. Прощай.", 'DVAXIS.D_s4', 'r', 'reply4486') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s33', '# from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого. Хм-м. Ты мовефь убевать фееф поуталы.", 's33', 'say4487') \
    .with_responses() \
        .response("Порталы?", 'DVAXIS.D_s50', 'r', 'reply4672').with_action(lambda: _r4672_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s34', '# from 31.3 32.2 35.3') \
    .with_npc_lines() \
        .line(SPEAKER, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.", 's34', 'say4491') \
    .with_responses() \
        .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s74', 'r', 'reply4489').with_condition(lambda: _r4489_condition(gsm)).with_action(lambda: _r4489_action(gsm)) \
        .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s33', 'r', 'reply4490').with_condition(lambda: _r4490_condition(gsm)).with_action(lambda: _r4490_action(gsm)) \
        .response("Тогда гори в аду. Я ухожу.", 'DVAXIS.D_s4', 'r', 'reply4492') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s35', '# from 30.3 31.1 32.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе.", 's35', 'say4493') \
    .with_responses() \
        .response("Ты имеешь в виду этот ключ?", 'DVAXIS.D_s42', 'r', 'reply4494').with_condition(lambda: _r4494_condition(gsm)).with_action(lambda: _r4494_action(gsm)) \
        .response("Хорошо. Где этот ключ?", 'DVAXIS.D_s36', 'r', 'reply4495') \
        .response("У меня нет времени на это. Помоги мне сбежать, или я позову стражу.", 'DVAXIS.D_s33', 'r', 'reply4496').with_condition(lambda: _r4496_condition(gsm)).with_action(lambda: _r4496_action(gsm)) \
        .response("У меня нет времени на это. Помоги мне сбежать, или я позову стражу.", 'DVAXIS.D_s34', 'r', 'reply4497').with_condition(lambda: _r4497_condition(gsm)).with_action(lambda: _r4497_action(gsm)) \
        .response("Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.", 'DVAXIS.D_s75', 'r', 'reply4498').with_condition(lambda: _r4498_condition(gsm)).with_action(lambda: _r4498_action(gsm)) \
        .response("Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.", 'DVAXIS.D_s33', 'r', 'reply4499').with_condition(lambda: _r4499_condition(gsm)).with_action(lambda: _r4499_action(gsm)) \
        .response("Нет, спасибо. Может быть, в другой раз.", 'DVAXIS.D_s4', 'r', 'reply4500') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s36', '# from 35.1 58.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Он у твуфьявой, — он показывает на свои глаза. — У нее воутые глафифи… Затем он делает движение руками, похожее на стрижку ножницами. Лефвия на пайфах.", 's36', 'say4501') \
    .with_responses() \
        .response("Я уже с ней встречался. Вот ключ.", 'DVAXIS.D_s42', 'r', 'reply4502').with_condition(lambda: _r4502_condition(gsm)).with_action(lambda: _r4502_action(gsm)) \
        .response("Тленная… с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди… я скоро вернусь с ключом.", 'DVAXIS.D_s38', 'r', 'reply64520').with_condition(lambda: _r64520_condition(gsm)).with_action(lambda: _r64520_action(gsm)) \
        .response("Тленная… с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом.", 'DVAXIS.D_s38', 'r', 'reply4503').with_condition(lambda: _r4503_condition(gsm)).with_action(lambda: _r4503_action(gsm)) \
        .response("Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?", 'DVAXIS.D_s37', 'r', 'reply4504').with_action(lambda: _r4504_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s37', '# from 36.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби моргает. Кажется, он тебя не понял.", 's37', 'say4505') \
    .with_responses() \
        .response("Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.", 'DVAXIS.D_s38', 'r', 'reply4506').with_condition(lambda: _r4506_condition(gsm)).with_action(lambda: _r4506_action(gsm)) \
        .response("Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.", 'DVAXIS.D_s38', 'r', 'reply66150').with_condition(lambda: _r66150_condition(gsm)).with_action(lambda: _r66150_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s38', '# from 36.1 36.2 37.0 37.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби косо на тебя смотрит. Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать.", 's38', 'say4507') \
    .with_responses() \
        .response("Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?", EXIT, 'r', 'reply4508').with_condition(lambda: _r4508_condition(gsm)).with_action(lambda: _r4508_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Я еще вернусь.", EXIT, 'r', 'reply4509').with_condition(lambda: _r4509_condition(gsm)).with_action(lambda: _r4509_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?", EXIT, 'r', 'reply4510').with_condition(lambda: _r4510_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я еще вернусь.", EXIT, 'r', 'reply4511').with_condition(lambda: _r4511_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s39', '# from 43.12 // Check EXTENDS ~DMORTE~ : 93') \
    .with_npc_lines() \
        .line(SPEAKER, "Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые.", 's39', 'say4512') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s40', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Я фду тея фдефь. Найди кьюч, — зомби улыбается мертвецким оскалом. — Потом я помоу тее.", 's40', 'say4514') \
    .with_responses() \
        .response("Если я найду его, то принесу.", EXIT, 'r', 'reply4515').with_action(lambda: _dispose()) \
        .response("Тогда забудь об этом.", EXIT, 'r', 'reply4516').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s41', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби расширяются, он протягивает руку и прищелкивает пальцами. Дай его мие.", 's41', 'say4517') \
    .with_responses() \
        .response("Секундочку. Я хочу кое-что взамен.", EXIT, 'r', 'reply4518').with_action(lambda: _dispose()) \
        .response("На, бери.", EXIT, 'r', 'reply4519').with_action(lambda: _r4519_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s42', '# from 35.0 36.0 58.0 58.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая. Хорофо… хорофо.", 's42', 'say4520') \
    .with_responses() \
        .response("А теперь… Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r', 'reply4521').with_condition(lambda: _r4521_condition(gsm)).with_action(lambda: _r4521_action(gsm)) \
        .response("А теперь… Есть кое-что, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4522').with_condition(lambda: _r4522_condition(gsm)).with_action(lambda: _r4522_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s43', '# from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Фто ты хофефь уфнать?", 's43', 'say4523') \
    .with_responses() \
        .response("Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r', 'reply64508').with_condition(lambda: _r64508_condition(gsm)) \
        .response("Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r', 'reply4524').with_condition(lambda: _r4524_condition(gsm)) \
        .response("Еще раз — где тот портал, о котором ты говорил?", 'DVAXIS.D_s52', 'r', 'reply4525').with_condition(lambda: _r4525_condition(gsm)) \
        .response("Ты можешь замаскировать меня под зомби?", 'DVAXIS.D_s63', 'r', 'reply4526').with_condition(lambda: _r4526_condition(gsm)) \
        .response("Ты можешь еще раз замаскировать меня под зомби?", 'DVAXIS.D_s63', 'r', 'reply4527').with_condition(lambda: _r4527_condition(gsm)) \
        .response("Что ты здесь делаешь?", 'DVAXIS.D_s28', 'r', 'reply4528').with_condition(lambda: _r4528_condition(gsm)) \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DVAXIS.D_s44', 'r', 'reply4673').with_condition(lambda: _r4673_condition(gsm)) \
        .response("Я потерял дневник. Тебе ничего такого не попадалось?", 'DVAXIS.D_s47', 'r', 'reply4530').with_condition(lambda: _r4530_condition(gsm)) \
        .response("Что ты можешь сказать о Дхолле?", 'DVAXIS.D_s53', 'r', 'reply4531').with_condition(lambda: _r4531_condition(gsm)) \
        .response("Что ты можешь сказать о Дейонарре?", 'DVAXIS.D_s54', 'r', 'reply4532').with_condition(lambda: _r4532_condition(gsm)) \
        .response("Что ты можешь сказать о Соэго?", 'DVAXIS.D_s55', 'r', 'reply4533').with_condition(lambda: _r4533_condition(gsm)) \
        .response("Как ты приобрел такой внешний вид?", 'DVAXIS.D_s60', 'r', 'reply4534').with_condition(lambda: _r4534_condition(gsm)) \
        .response("Как ты приобрел такой внешний вид?", 'DVAXIS.D_s39', 'r', 'reply4535').with_condition(lambda: _r4535_condition(gsm)) \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4536').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s44', '# from 43.6') \
    .with_npc_lines() \
        .line(SPEAKER, "Фа-ОД? — нахмурившись, зомби напряженно думает. — Я… фвыфал, фто он фиет де-то ф Уле, — он качает головой. — Нефнаю где, — он снова хмурится. — Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода.", 's44', 'say4537') \
    .with_responses() \
        .response("Улей?", 'DVAXIS.D_s45', 'r', 'reply4538') \
        .response("А почему тленные не любят Фарода?", 'DVAXIS.D_s46', 'r', 'reply4539').with_action(lambda: _r4539_action(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4540') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4541').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s45', '# from 44.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Твуффобы фнауви.", 's45', 'say4542') \
    .with_responses() \
        .response("А почему тленные не любят Фарода?", 'DVAXIS.D_s46', 'r', 'reply4543').with_action(lambda: _r4543_action(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4544') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4545').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s46', '# from 44.1 45.0 // Check EXTENDS ~DMORTE~ : 91') \
    .with_npc_lines() \
        .line(SPEAKER, "Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых.", 's46', 'say4546') \
    .with_responses() \
        .response("Э-э… что?", 'DVAXIS.D_s48', 'r', 'reply4547').with_condition(lambda: _r4547_condition(gsm)) \
        .response("Э-э… что?", EXIT, 'r', 'reply4548').with_condition(lambda: _r4548_condition(gsm)).with_action(lambda: _dispose()) \
        .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4549') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4550').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s47', '# from 43.7 // Check EXTENDS ~DMORTE~ : 92') \
    .with_npc_lines() \
        .line(SPEAKER, "Ненают. Какой-то пей обфифтил тея?", 's47', 'say4551') \
    .with_responses() \
        .response("Э-э… что?", 'DVAXIS.D_s48', 'r', 'reply4552').with_condition(lambda: _r4552_condition(gsm)) \
        .response("Э-э… что?", EXIT, 'r', 'reply4553').with_condition(lambda: _r4553_condition(gsm)).with_action(lambda: _dispose()) \
        .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4554') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4555').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s48', '# from 46.0 47.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.", 's48', 'say4556') \
    .with_responses() \
        .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4557') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4558').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s49', '# from 30.1 42.0 43.0 43.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби ворчит. Ты мовешь убевафь феев поуталы, — он взмахивает руками. — Пуф.", 's49', 'say4559') \
    .with_responses() \
        .response("Порталы? Что за порталы?", 'DVAXIS.D_s50', 'r', 'reply4560') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s50', '# from 33.0 49.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Поуталы… — зомби окидывает широким жестом пространство вокруг себя. — Поуталы вефде.", 's50', 'say4563') \
    .with_responses() \
        .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s31', 'r', 'reply4564').with_condition(lambda: _r4564_condition(gsm)) \
        .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r', 'reply64509').with_condition(lambda: _r64509_condition(gsm)) \
        .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r', 'reply64510').with_condition(lambda: _r64510_condition(gsm)) \
        .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r', 'reply64511').with_condition(lambda: _r64511_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s51', '# from 50.1 50.2 50.3 72.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби кивает. Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал… Тее нувна кофть паица, фогнутоо в кьюк… — он поднимает указательный палец и сгибает его в крюк. — Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод, — он энергично кивает. — Там ты мовефь ОДОФНУТЬ.", 's51', 'say4567') \
    .with_responses() \
        .response("Кость согнутого пальца? А где можно найти ее?", 'DVAXIS.D_s77', 'r', 'reply64527').with_condition(lambda: _r64527_condition(gsm)).with_action(lambda: _r64527_action(gsm)) \
        .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r', 'reply4568').with_condition(lambda: _r4568_condition(gsm)).with_action(lambda: _r4568_action(gsm)) \
        .response("Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю.", EXIT, 'r', 'reply4569').with_condition(lambda: _r4569_condition(gsm)).with_action(lambda: _r4569_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s52', '# from 43.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Фуфай! Фапомиай! — в голосе зомби слышна раздраженность. — Арка, пеувый этаж, феверо-фападная коуната… — он поднимает указательный палец и сгибает его. — Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ.", 's52', 'say4570') \
    .with_responses() \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4571') \
        .response("Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил.", EXIT, 'r', 'reply4572').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s53', '# from 43.8') \
    .with_npc_lines() \
        .line(SPEAKER, "Пифец, — пожимает плечами. — Фтарый. Вовтый.", 's53', 'say4573') \
    .with_responses() \
        .response("Полагаю, добавить больше нечего. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r', 'reply4574') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4575').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s54', '# from 43.9') \
    .with_npc_lines() \
        .line(SPEAKER, "Э? — хмурится. — Фто она?", 's54', 'say4576') \
    .with_responses() \
        .response("Забудь. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r', 'reply4577') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4578').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s55', '# from 43.10') \
    .with_npc_lines() \
        .line(SPEAKER, "Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?", 's55', 'say4579') \
    .with_responses() \
        .response("Что ты знаешь о нем?", 'DVAXIS.D_s56', 'r', 'reply4580').with_action(lambda: _r4580_action(gsm)) \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4581').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s56', '# from 55.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Фтвааный. Не твуфявый, не анавфифт. Гуава двугие… — пожимает плечами. — Как у квыфы. Фтванно.", 's56', 'say4582') \
    .with_responses() \
        .response("Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r', 'reply4583') \
        .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4584').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s57', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.", 's57', 'say4585') \
    .with_responses() \
        .response("Приветствую.", 'DVAXIS.D_s58', 'r', 'reply4586').with_condition(lambda: _r4586_condition(gsm)) \
        .response("Приветствую.", 'DVAXIS.D_s58', 'r', 'reply4587').with_condition(lambda: _r4587_condition(gsm)) \
        .response("Приветствую.", 'DVAXIS.D_s59', 'r', 'reply4588').with_condition(lambda: _r4588_condition(gsm)) \
        .response("Приветствую.", 'DVAXIS.D_s58', 'r', 'reply4589').with_condition(lambda: _r4589_condition(gsm)) \
        .response("Оставить его в покое.", EXIT, 'r', 'reply4590').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s58', '# from 57.0 57.1 57.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе: Фто?", 's58', 'say4591') \
    .with_responses() \
        .response("Вот ключ к бальзамационной комнате, который ты хотел.", 'DVAXIS.D_s42', 'r', 'reply4592').with_condition(lambda: _r4592_condition(gsm)).with_action(lambda: _r4592_action(gsm)) \
        .response("Вот ключ к бальзамационной комнате, который ты хотел.", 'DVAXIS.D_s42', 'r', 'reply4593').with_condition(lambda: _r4593_condition(gsm)).with_action(lambda: _r4593_action(gsm)) \
        .response("Еще раз — где тот ключ, о котором ты говорил?", 'DVAXIS.D_s36', 'r', 'reply4594').with_condition(lambda: _r4594_condition(gsm)) \
        .response("У меня есть несколько вопросов к тебе…", 'DVAXIS.D_s43', 'r', 'reply4595') \
        .response("Неважно.", EXIT, 'r', 'reply4596').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s59', '# from 57.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя. Ухои! Вон!", 's59', 'say4597') \
    .with_responses() \
        .response("Нет. Сначала у меня несколько вопросов к тебе…", 'DVAXIS.D_s43', 'r', 'reply4598') \
        .response("Тогда неважно.", 'DVAXIS.D_s4', 'r', 'reply4599').with_condition(lambda: _r4599_condition(gsm)) \
        .response("Тогда неважно.", EXIT, 'r', 'reply4600').with_condition(lambda: _r4600_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s60', '# from 43.11') \
    .with_npc_lines() \
        .line(SPEAKER, "Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые.", 's60', 'say4601') \
    .with_responses() \
        .response("Ага, уж кто тупой, так это они. Это точно.", 'DVAXIS.D_s61', 'r', 'reply4602') \
        .response("Это не больно?", 'DVAXIS.D_s62', 'r', 'reply4603') \
        .response("Довольно неплохая маскировка. Скажи… а ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r', 'reply4604').with_condition(lambda: _r4604_condition(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4605') \
        .response("Мне нужно идти. Прощай.", EXIT, 'r', 'reply4606').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s61', '# from 60.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби определенно не понял сарказма, энергично кивая словам. Тупие твуфявые. Ив мея ХОВОФЫЙ фомби.", 's61', 'say4607') \
    .with_responses() \
        .response("Это не больно?", 'DVAXIS.D_s62', 'r', 'reply4608') \
        .response("Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r', 'reply4609').with_condition(lambda: _r4609_condition(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s64', 'r', 'reply4610').with_condition(lambda: _r4610_condition(gsm)) \
        .response("Мне нужно идти. Прощай.", 'DVAXIS.D_s64', 'r', 'reply4611').with_condition(lambda: _r4611_condition(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4612').with_condition(lambda: _r4612_condition(gsm)) \
        .response("Мне нужно идти. Прощай.", EXIT, 'r', 'reply4613').with_condition(lambda: _r4613_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s62', '# from 60.1 61.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он смотрит на твои шрамы. А как ты думаефь? По мие, нет, не офень, — бьет себя по груди. — Я КИЕПКИЙ.", 's62', 'say4614') \
    .with_responses() \
        .response("Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r', 'reply4615').with_condition(lambda: _r4615_condition(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s64', 'r', 'reply4616').with_condition(lambda: _r4616_condition(gsm)) \
        .response("Мне нужно идти. Прощай.", 'DVAXIS.D_s64', 'r', 'reply4617').with_condition(lambda: _r4617_condition(gsm)) \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4618').with_condition(lambda: _r4618_condition(gsm)) \
        .response("Мне нужно идти. Прощай.", EXIT, 'r', 'reply4674').with_condition(lambda: _r4674_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s63', '# from 43.3 43.4 60.2 61.1 62.0 64.1 64.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает. Уху. Мие нуна банка баифама, — показывает на шрамы на твоей груди. — И игоука ф ниткой.", 's63', 'say4619') \
    .with_responses() \
        .response("На, бери.", 'DVAXIS.D_s65', 'r', 'reply4620').with_condition(lambda: _r4620_condition(gsm)).with_action(lambda: _r4620_action(gsm)) \
        .response("Я подумаю над этим. У меня есть еще несколько вопросов…", 'DVAXIS.D_s43', 'r', 'reply4621').with_action(lambda: _r4621_action(gsm)) \
        .response("Может, быть в другой раз, спасибо… Прощай.", EXIT, 'r', 'reply4622').with_action(lambda: _r4622_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бальзамирующая жидкость и нитка? Пойду, поищу их.", EXIT, 'r', 'reply4623').with_action(lambda: _r4623_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s64', '# from 61.2 61.3 62.1 62.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Странным взглядом он осматривает тебя с ног до головы. Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка.", 's64', 'say4624') \
    .with_responses() \
        .response("Спасибо. У меня есть другие вопросы к тебе…", 'DVAXIS.D_s43', 'r', 'reply4625').with_action(lambda: _r4625_action(gsm)) \
        .response("Конечно. Ты сможешь сделать это?", 'DVAXIS.D_s63', 'r', 'reply4626') \
        .response("Почему бы и нет? Я и так чувствую себя ходячим мертвецом.", 'DVAXIS.D_s63', 'r', 'reply4627') \
        .response("Нет… нет… так тоже неплохо. Прощай.", EXIT, 'r', 'reply4628').with_action(lambda: _r4628_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s65', '# from 63.0 // Check EXTENDS ~DMORTE~ : 94') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби берет у тебя предметы и приступает к работе…", 's65', 'say4629') \
    .with_responses() \
        .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r', 'reply4630').with_condition(lambda: _r4630_condition(gsm)).with_action(lambda: _r4630_action(gsm)) \
        .response("Попробовать не двигаться.", EXIT, 'r', 'reply4631').with_condition(lambda: _r4631_condition(gsm)).with_action(lambda: _r4631_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r', 'reply4632').with_condition(lambda: _r4632_condition(gsm)).with_action(lambda: _r4632_action(gsm)) \
        .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r', 'reply64533').with_condition(lambda: _r64533_condition(gsm)).with_action(lambda: _r64533_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s66', '# from 65.0 65.2 65.3 // Check EXTENDS ~DMORTE~ : 95') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов. Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.", 's66', 'say4633') \
    .with_responses() \
        .response("Ммм-ммф-ммм… Фпафибо.", 'DVAXIS.D_s67', 'r', 'reply4634').with_condition(lambda: _r4634_condition(gsm)) \
        .response("Ммм-ммф-ммм… Фпафибо.", EXIT, 'r', 'reply4635').with_condition(lambda: _r4635_condition(gsm)).with_action(lambda: _r4635_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ммм-ммф-ммм… Фпафибо.", 'DVAXIS.D_s67', 'r', 'reply4636').with_condition(lambda: _r4636_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s67', '# from 66.0 66.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби держит тебя за руку. Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно.", 's67', 'say4637') \
    .with_responses() \
        .response("Ммф… ммм. Я… понимаю.", 'DVAXIS.D_s68', 'r', 'reply4638').with_action(lambda: _r4638_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s68', '# from 67.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби хмурится. Мафкирофка не деужится доуго… бальфам выфыхает, фвы рвутфя, — он жмет плечами. — Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку.", 's68', 'say4639') \
    .with_responses() \
        .response("Снова кивнуть, уйти.", EXIT, 'r', 'reply4640').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s69', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби хмурится. Фде-то я тея виел. Мы не виелифь раньфе?", 's69', 'say4641') \
    .with_responses() \
        .response("Может быть. Где ты меня видел?", EXIT, 'r', 'reply4642').with_action(lambda: _dispose()) \
        .response("X.", EXIT, 'r', 'reply4643').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s70', '# from 23.0 23.2 71.0 71.1') \
    .with_npc_lines() \
        .line(SPEAKER, "К твоему удивлению, зомби отступается от тебя… Он начинает со страхом озираться.", 's70', 'say4644') \
    .with_responses() \
        .response("Не хочешь говорить? Тогда приготовься кричать.", EXIT, 'r', 'reply4645').with_action(lambda: _r4645_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4646') \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4647') \
        .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, 'r', 'reply4648').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s71', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби смотрит на вас обоих с явной опаской, продолжая молчать… но что-то в его выражении говорит тебе, что предположение Морта верно.", 's71', 'say4649') \
    .with_responses() \
        .response("Значит, анархисты? Так за кем вы тут следите?", 'DVAXIS.D_s70', 'r', 'reply4650') \
        .response("Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше.", 'DVAXIS.D_s70', 'r', 'reply4651').with_action(lambda: _r4651_action(gsm)) \
        .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r', 'reply4652') \
        .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r', 'reply4653') \
        .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, 'r', 'reply4654').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s72', '# from 30.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике. Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета. Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит: Вот Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска. Я фкоро уйду.", 's72', 'say4655') \
    .with_responses() \
        .response("Уйдешь? Как?", 'DVAXIS.D_s51', 'r', 'reply4656').with_condition(lambda: _r4656_condition(gsm)) \
        .response("Отлично. Прощай, Ваксис.", EXIT, 'r', 'reply64532').with_condition(lambda: _r64532_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s73', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби ворчит: Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания, — он кивает. — Удафи.", 's73', 'say4658') \
    .with_responses() \
        .response("Э-э… Ладно.", EXIT, 'r', 'reply4659').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s74', '# from 34.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби превращаются в щелочки, он шипит на тебя: Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.", 's74', 'say4660') \
    .with_responses() \
        .response("Это был твой последний шанс. Готовься к смерти.", EXIT, 'r', 'reply4661').with_action(lambda: _r4661_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*!", 'DVAXIS.D_s4', 'r', 'reply4662') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s75', '# from 31.4 32.3 35.4') \
    .with_npc_lines() \
        .line(SPEAKER, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.", 's75', 'say4663') \
    .with_responses() \
        .response("А что, если я раскрою твою маскировку страже?", 'DVAXIS.D_s33', 'r', 'reply4664').with_condition(lambda: _r4664_condition(gsm)) \
        .response("А что, если я раскрою твою маскировку страже?", 'DVAXIS.D_s76', 'r', 'reply4665').with_condition(lambda: _r4665_condition(gsm)) \
        .response("Я рискну. Готовься к смерти.", EXIT, 'r', 'reply4666').with_action(lambda: _r4666_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r', 'reply4667') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s76', '# from 75.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза зомби превращаются в щелочки, он шипит на тебя: Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.", 's76', 'say4668') \
    .with_responses() \
        .response("Это был твой последний шанс, труп. Готовься к смерти.", EXIT, 'r', 'reply4669').with_action(lambda: _r4669_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r', 'reply4670') \
    .push(manager)

DialogStateBuilder().state('DVAXIS.D_s77', '# from 51.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он пожимает плечами. Доувен быть де-то фдефь… Ифи на фкладах навеуху. Мовет быть, там.", 's77', 'say64523') \
    .with_responses() \
        .response("Хорошо. У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r', 'reply64524') \
        .response("Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно.", EXIT, 'r', 'reply64525').with_action(lambda: _dispose()) \
    .push(manager)