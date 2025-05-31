def _r17833_action(gsm):
    DO ~GiveItem("KeyPR",Protagonist) gsm.set_in_party_morte(True) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r1006_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1015_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1019_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1088_action(gsm):
    DO ~SetGlobal("Scars","GLOBAL",1) ~
def _r1050_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'int')
def _r1051_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1079_action(gsm):
    DO ~gsm.set_in_party_morte(True) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r1077_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1083_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1095_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1120_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1125_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1130_condition(gsm):
    Global("Scars","GLOBAL",1)
def _r1845_action(gsm):
    DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1) ~
def _r1846_action(gsm):
    DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1) ~
def _r1847_action(gsm):
    DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1) ~
def _r2080_action(gsm):
    DO ~SetGlobal("Know_Mimir","GLOBAL",1) SetGlobal("Morte_Mimir","GLOBAL",1) ~
def _r9029_condition(gsm):
    Global("Know_Gith","GLOBAL",0)
def _r9029_action(gsm):
    DO ~SetGlobal("Know_Gith","GLOBAL",1) ~
def _r9030_condition(gsm):
    Global("Know_Gith","GLOBAL",1)
def _r2603_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r2602_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r2605_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r6952_condition(gsm):
    Global("Know_Lady","GLOBAL",0)
def _r6952_action(gsm):
    DO ~SetGlobal("Know_Lady","GLOBAL",1) ~
def _r6953_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r6954_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r3474_action(gsm):
    gsm.update_journal('38205')    # '38205': ' ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ '
def _r3483_action(gsm):
    gsm.update_journal('38205')    # '38205': ' ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ '
def _r3871_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",1) ~
def _r3874_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r3877_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r3965_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r3966_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r3969_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_lt('protagonist',13,'str')
def _r3970_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_gt('protagonist',12,'str')
def _r3971_condition(gsm):
    PartyHasItem("Prybar")
def _r3972_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",0)
def _r3972_action(gsm):
    DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~
def _r3973_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",1)
def _r3988_action(gsm):
    DO ~gsm.dec_once_law('chaotic_skeleton_mort_1') ~
def _r4023_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis')
def _r4024_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r4027_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis')
def _r4028_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r4029_action(gsm):
    DO ~gsm.inc_once_good('good_giant_skel_mort_1') ~
def _r4031_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis')
def _r4032_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r4034_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis')
def _r4144_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",1) ~
def _r4145_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",1) ~
def _r4142_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r4143_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r4140_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r4339_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",1) ~
def _r4342_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r4345_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r4676_action(gsm):
    gsm.update_journal('64512')    # '64512': ' ~Недавно я повстречал замаскировавшегося под зомби мужчину из анархистов, фракции, которая отрицает авторитеты и низвергает все, что хоть издали напоминает «устоявшийся институт». ~ '
def _r4678_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_3', 3) ~
def _r4679_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_4') ~
def _r4682_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_3', 3) ~
def _r4686_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',13,'int')
def _r4687_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_2') gsm.inc_once_good('good_vaxis_2') ~
def _r4693_action(gsm):
    gsm.update_journal('64512')    # '64512': ' ~Недавно я повстречал замаскировавшегося под зомби мужчину из анархистов, фракции, которая отрицает авторитеты и низвергает все, что хоть издали напоминает «устоявшийся институт». ~ '
def _r4695_action(gsm):
    DO ~gsm.dec_once_law('chaotic_vaxis_3', 3) ~
def _r4699_action(gsm):
    DO ~gsm.inc_once_law('lawful_vaxis_3', 3) ~
def _r64535_condition(gsm):
    Global("Vaxis_Zombie_XP","GLOBAL",0)
def _r64535_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(1) SetNamelessDisguise(ZOMBIE) Wait(2) FadeFromColor([20.0],0) AddexperienceParty(500) SetGlobal("Vaxis_Zombie_XP","GLOBAL",1) ~
def _r64534_condition(gsm):
    Global("Vaxis_Zombie_XP","GLOBAL",1)
def _r64534_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(1) SetNamelessDisguise(ZOMBIE) Wait(2) FadeFromColor([20.0],0) ~
def _r5030_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",1) ~
def _r5033_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r5036_action(gsm):
    DO ~SetGlobal("Warning","GLOBAL",2) ~
def _r6075_action(gsm):
    DO ~SetGlobal("Morte_Deionarra_Quip_1","GLOBAL",1) ~
def _r6325_condition(gsm):
    HasItem("Cobble","Post")
def _r6326_condition(gsm):
    !HasItem("Cobble","Post")
def _r6327_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int') return gsm.check_char_prop_lt('protagonist',12,'wis')
def _r6328_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'wis')
def _r6329_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'int') return gsm.check_char_prop_lt('protagonist',12,'wis')
def _r6330_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r6658_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r6659_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r6664_condition(gsm):
    return gsm.get_42_Secret()
def _r6665_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis') return not gsm.get_42_Secret()
def _r6957_action(gsm):
    DO ~SetGlobal("Translate_Dabus","GLOBAL",0) ~
def _r7056_condition(gsm):
    return gsm.get_morte_quip()
def _r7056_action(gsm):
    DO ~SetGlobal("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) ~
def _r7057_condition(gsm):
    return not gsm.get_morte_quip()
def _r7057_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r7058_condition(gsm):
    return not gsm.get_morte_quip()
def _r7058_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r7483_action(gsm):
    DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1) ~
def _r7485_action(gsm):
    DO ~IncrementGlobal("Morte_Taunt","GLOBAL",1) ~
def _r11977_action(gsm):
    DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1) gsm.dec_once_law('chaotic_ingress_teeth_2') gsm.dec_once_good('evil_ingress_teeth_1') ~
def _r11980_action(gsm):
    DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1) gsm.dec_once_law('chaotic_ingress_teeth_2') gsm.dec_once_good('evil_ingress_teeth_1') ~
def _r11982_action(gsm):
    DO ~MoraleDec("Morte",1) ~
def _r11983_action(gsm):
    DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1) ~
def _r11985_condition(gsm):
    Global("Evil_Ingress_Teeth_1","GLOBAL",1)
def _r11986_condition(gsm):
    Global("Good_Ingress_Teeth_1","GLOBAL",1)
def _r11988_condition(gsm):
    Global("Good_Ingress_Teeth_1","GLOBAL",1)
def _r11989_condition(gsm):
    Global("Evil_Ingress_Teeth_1","GLOBAL",1)
def _r11990_condition(gsm):
    Global("Good_Ingress_Teeth_1","GLOBAL",1)
def _r11991_condition(gsm):
    Global("Evil_Ingress_Teeth_1","GLOBAL",1)
def _r12554_action(gsm):
    DO ~MoraleDec("Morte",2) Enemy() Attack(Protagonist) ChangeAIScript("MDKTNO",DEFAULT) ForceAttack(Protagonist,Myself) ~
def _r12555_action(gsm):
    DO ~Enemy() Attack(Protagonist) ChangeAIScript("MDKTNO",DEFAULT) ForceAttack(Protagonist,Myself) ~
def _r12556_action(gsm):
    DO ~SetGlobal("BariA","AR0400",2) ~
def _r12855_condition(gsm):
    Global("Know_Mimir","GLOBAL",0)
def _r12855_action(gsm):
    DO ~SetGlobal("Know_Mimir","GLOBAL",1) ~
def _r12858_condition(gsm):
    Global("Know_Mimir","GLOBAL",0)
def _r12858_action(gsm):
    DO ~SetGlobal("Know_Mimir","GLOBAL",1) ~
def _r12860_action(gsm):
    DO ~SetGlobal("Morte_Mimir","GLOBAL",1) ~
def _r12861_action(gsm):
    DO ~SetGlobal("Morte_Mimir","GLOBAL",1) ~
def _r13774_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",0)
def _r13774_action(gsm):
    DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1) SetGlobal("Know_Chaosmen","GLOBAL",1) ~
def _r13775_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",1)
def _r13775_action(gsm):
    DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1) ~
def _r13776_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",1)
def _r13776_action(gsm):
    DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1) ~
def _r13986_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",0)
def _r13986_action(gsm):
    DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1) SetGlobal("Know_Chaosmen","GLOBAL",1) ~
def _r13987_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",1)
def _r13987_action(gsm):
    DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1) ~
def _r13988_condition(gsm):
    Global("Know_Chaosmen","GLOBAL",1)
def _r13988_action(gsm):
    DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1) ~
def _r13989_condition(gsm):
    Global("Join_Chaosmen","GLOBAL",0)
def _r14275_condition(gsm):
    Global("Mortai_Contract","GLOBAL",1) GlobalGT("Coppereyes_Contract","GLOBAL",0)
def _r14276_condition(gsm):
    Global("Mortai_Contract","GLOBAL",1) Global("Coppereyes_Contract","GLOBAL",0)
def _r14277_condition(gsm):
    Global("Mortai_Contract","GLOBAL",0) GlobalGT("Coppereyes_Contract","GLOBAL",0)
def _r14278_condition(gsm):
    Global("Mortai_Contract","GLOBAL",0) Global("Coppereyes_Contract","GLOBAL",0)
def _r15492_action(gsm):
    DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1) ~
def _r65537_condition(gsm):
    GlobalGT("Morte_Mimir","GLOBAL",1)
def _r15495_action(gsm):
    DO ~SetGlobal("Adyzoel","AR0400",2) ~
def _r16881_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis')
def _r16882_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r16882_action(gsm):
    DO ~IncrementGlobal("Tree_Helpers","AR0400",1) ~
def _r16884_condition(gsm):
    NearbyDialog("DAnnah") Global("Tree_A","AR0400",0)
def _r16884_action(gsm):
    DO ~SetGlobal("Tree_A","AR0400",1) ~
def _r16885_condition(gsm):
    NearbyDialog("DIgnus") Global("Tree_I","AR0400",0)
def _r16885_action(gsm):
    DO ~SetGlobal("Tree_I","AR0400",1) ~
def _r16886_condition(gsm):
    NearbyDialog("DGrace") Global("Tree_G","AR0400",0)
def _r16886_action(gsm):
    DO ~SetGlobal("Tree_G","AR0400",1) ~
def _r16887_condition(gsm):
    NearbyDialog("DDakkon") Global("Tree_D","AR0400",0)
def _r16887_action(gsm):
    DO ~SetGlobal("Tree_D","AR0400",1) ~
def _r16888_condition(gsm):
    NearbyDialog("DDakkon") Global("Tree_D","AR0400",0) Global("Dakkon_Slave","Global",1)
def _r16888_action(gsm):
    DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("Tree_D","AR0400",1) ~
def _r16889_condition(gsm):
    NearbyDialog("DNordom") Global("Tree_N","AR0400",0)
def _r16889_action(gsm):
    DO ~SetGlobal("Tree_N","AR0400",1) ~
def _r16890_condition(gsm):
    NearbyDialog("DVhail") Global("Tree_V","AR0400",0)
def _r16890_action(gsm):
    DO ~SetGlobal("Tree_V","AR0400",1) ~
def _r16893_condition(gsm):
    return gsm.get_in_party_morte() Global("Tree_M","AR0400",0)
def _r16893_action(gsm):
    DO ~SetGlobal("Tree_M","AR0400",1) ~
def _r16894_condition(gsm):
    NearbyDialog("DAnnah") Global("Tree_A","AR0400",0)
def _r16894_action(gsm):
    DO ~SetGlobal("Tree_A","AR0400",1) ~
def _r16895_condition(gsm):
    NearbyDialog("DIgnus") Global("Tree_I","AR0400",0)
def _r16895_action(gsm):
    DO ~SetGlobal("Tree_I","AR0400",1) ~
def _r16896_condition(gsm):
    NearbyDialog("DGrace") Global("Tree_G","AR0400",0)
def _r16896_action(gsm):
    DO ~SetGlobal("Tree_G","AR0400",1) ~
def _r16897_condition(gsm):
    NearbyDialog("DDakkon") Global("Tree_D","AR0400",0)
def _r16897_action(gsm):
    DO ~SetGlobal("Tree_D","AR0400",1) ~
def _r16898_condition(gsm):
    NearbyDialog("DDakkon") Global("Tree_D","AR0400",0) Global("Dakkon_Slave","Global",1)
def _r16898_action(gsm):
    DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("Tree_D","AR0400",1) ~
def _r16899_condition(gsm):
    NearbyDialog("DVhail") Global("Tree_V","AR0400",0)
def _r16899_action(gsm):
    DO ~SetGlobal("Tree_V","AR0400",1) ~
def _r17583_condition(gsm):
    NearbyDialog("DAnnah")
def _r17584_condition(gsm):
    PartyGoldGT(39)
def _r17584_action(gsm):
    DO ~TakePartyGold(40) ~
def _r17585_condition(gsm):
    PartyGoldGT(39)
def _r17586_condition(gsm):
    PartyGoldGT(39)
def _r17587_condition(gsm):
    PartyGoldLT(40)
def _r17588_condition(gsm):
    PartyGoldLT(40)
def _r18802_action(gsm):
    DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1) ~
def _r18578_action(gsm):
    DO ~gsm.inc_once_law('lawful_yellow_1') ~
def _r18808_action(gsm):
    DO ~gsm.inc_once_good('good_yellow_1') ~
def _r18820_condition(gsm):
    PartyGoldGT(4)
def _r18820_action(gsm):
    DO ~TakePartyGold(5) ~
def _r18821_condition(gsm):
    PartyGoldGT(49)
def _r18821_action(gsm):
    DO ~TakePartyGold(50) ~
def _r18822_condition(gsm):
    PartyGoldGT(99)
def _r18822_action(gsm):
    DO ~TakePartyGold(100) ~
def _r18823_condition(gsm):
    PartyGoldGT(499)
def _r18823_action(gsm):
    DO ~TakePartyGold(500) ~
def _r18824_condition(gsm):
    PartyGoldLT(5)
def _r18829_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r18830_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'int')
def _r18830_action(gsm):
    DO ~DestroyPartyGold(5) ~
def _r18833_condition(gsm):
    PartyGoldGT(4)
def _r18833_action(gsm):
    DO ~TakePartyGold(5) ~
def _r18834_condition(gsm):
    PartyGoldGT(9)
def _r18834_action(gsm):
    DO ~TakePartyGold(10) ~
def _r18835_condition(gsm):
    PartyGoldGT(49)
def _r18835_action(gsm):
    DO ~TakePartyGold(50) gsm.inc_once_good('good_yellow_2') ~
def _r18836_condition(gsm):
    PartyGoldGT(99)
def _r18836_action(gsm):
    DO ~TakePartyGold(100) gsm.inc_once_good('good_yellow_2') ~
def _r19668_condition(gsm):
    Global("Speak_With_Dead","GLOBAL",0)
def _r19669_condition(gsm):
    Global("Speak_With_Dead","GLOBAL",1)
def _r19670_condition(gsm):
    Global("Speak_With_Dead","GLOBAL",0)
def _r19671_condition(gsm):
    Global("Speak_With_Dead","GLOBAL",1)
def _r20612_condition(gsm):
    GlobalLT("Know_Marta_Work","GLOBAL",3)
def _r20612_action(gsm):
    DO ~SetGlobal("Know_Marta_Work","GLOBAL",3) ~ gsm.update_journal('20538')    # '20538': ' ~Похоже, что Марта-швея занимается тем, что обрабатывает трупы, которые ей дают: вырывает их зубы, распарывает швы, обыскивает их снаружи и внутри в поисках любых ценностей, а затем зашивает.~ '
def _r20613_condition(gsm):
    GlobalGT("Know_Marta_Work","GLOBAL",2)
def _r20613_action(gsm):
    gsm.update_journal('20538')    # '20538': ' ~Похоже, что Марта-швея занимается тем, что обрабатывает трупы, которые ей дают: вырывает их зубы, распарывает швы, обыскивает их снаружи и внутри в поисках любых ценностей, а затем зашивает.~ '
def _r24697_condition(gsm):
    Global("Know_Lady","GLOBAL",0)
def _r24697_action(gsm):
    DO ~SetGlobal("Know_Lady","GLOBAL",1) ~
def _r24698_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r24699_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r24700_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'wis') return gsm.check_char_prop_gt('protagonist',12,'int')
def _r24701_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r22850_action(gsm):
    DO ~gsm.dec_once_law('chaotic_cube_3') ~
def _r22853_action(gsm):
    DO ~gsm.dec_once_law('chaotic_cube_4') ~
def _r22856_action(gsm):
    DO ~gsm.dec_once_law('chaotic_cube_5') ~
def _r24904_action(gsm):
    DO ~gsm.set_in_party_morte(True) ~
def _r24905_action(gsm):
    DO ~gsm.set_in_party_morte(True) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r24925_action(gsm):
    DO ~gsm.inc_once_good('good_morte_1') ~
def _r24932_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ gsm.update_journal('24933')    # '24933': ' ~Я начал записывать происходящее со мной, чтобы прочистить голову, в надежде на то, что я смогу разобраться в том, что происходит. Я очнулся в месте под названием «Морг»... действительно похоже на морг. Я не знаю, кто я, что я здесь делаю и как я сюда попал. Первый, на кого я наткнулся, очнувшись, был тараторящий череп по имени Морт. Он сказал, что мы заперты и что у одного из ковыляющих по комнате трупов должен быть ключ. Он предложил мне поискать на полках скальпель, а потом тыкать им в мертвецов, пока те не «умрут».~ '
def _r66902_condition(gsm):
    GlobalGT("Morte_Mimir","GLOBAL",1)
def _r25967_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',14,'int')
def _r27316_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int')
def _r65536_condition(gsm):
    GlobalGT("Morte_Mimir","GLOBAL",1)
def _r27916_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',14,'int')
def _r28041_action(gsm):
    DO ~TakePartyGold(10) ~
def _r28042_action(gsm):
    DO ~TakePartyGold(10) ~
def _r28038_condition(gsm):
    Global("Malmaner","GLOBAL",3) !Global("Chaotic_Malmaner_1","GLOBAL",1)
def _r28038_action(gsm):
    DO ~TakePartyGold(30) ~
def _r28039_condition(gsm):
    Global("Malmaner","GLOBAL",3) !Global("Chaotic_Malmaner_1","GLOBAL",1)
def _r28039_action(gsm):
    DO ~TakePartyGold(30) ~
def _r28040_condition(gsm):
    Global("Malmaner","GLOBAL",3) Global("Chaotic_Malmaner_1","GLOBAL",1)
def _r28040_action(gsm):
    DO ~TakePartyGold(50) ~
def _r28044_condition(gsm):
    Global("Malmaner","GLOBAL",3) Global("Chaotic_Malmaner_1","GLOBAL",1)
def _r28044_action(gsm):
    DO ~TakePartyGold(50) ~
def _r28045_condition(gsm):
    Global("Malmaner","GLOBAL",5) !Global("Chaotic_Malmaner_1","GLOBAL",3)
def _r28045_action(gsm):
    DO ~TakePartyGold(50) ~
def _r28046_condition(gsm):
    Global("Malmaner","GLOBAL",5) !Global("Chaotic_Malmaner_1","GLOBAL",3)
def _r28046_action(gsm):
    DO ~TakePartyGold(50) ~
def _r28047_condition(gsm):
    Global("Malmaner","GLOBAL",5) Global("Chaotic_Malmaner_1","GLOBAL",3)
def _r28047_action(gsm):
    DO ~TakePartyGold(80) ~
def _r28048_condition(gsm):
    Global("Malmaner","GLOBAL",5) Global("Chaotic_Malmaner_1","GLOBAL",3)
def _r28048_action(gsm):
    DO ~TakePartyGold(80) ~
def _r28743_action(gsm):
    DO ~SetGlobal("Morte_Stolen","GLOBAL",3) ~
def _r28744_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',14,'chr')
def _r28744_action(gsm):
    DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2) SetGlobal("Morte_Stolen","GLOBAL",3) ~
def _r28745_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',15,'chr')
def _r28745_action(gsm):
    DO ~SetGlobal("Morte_Stolen","GLOBAL",3) ~
def _r28967_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',14,'int')
def _r28968_condition(gsm):
    Global("CW_Sal_Hint","GLOBAL",1)
def _r28968_action(gsm):
    DO ~SetGlobal("Qui_Sai","GLOBAL",2) ~
def _r28971_condition(gsm):
    Global("CW_Sal_Hint","GLOBAL",1)
def _r28971_action(gsm):
    DO ~SetGlobal("Qui_Sai","GLOBAL",2) ~
def _r28975_condition(gsm):
    Global("CW_Sal_Hint","GLOBAL",1)
def _r28975_action(gsm):
    DO ~SetGlobal("Qui_Sai","GLOBAL",2) ~
def _r28976_action(gsm):
    DO ~SetGlobal("Qui_Sai","GLOBAL",2) ~
def _r28980_condition(gsm):
    Global("Know_Ravel","GLOBAL",1)
def _r30822_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',9,'int')
def _r30823_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',8,'int')
def _r30824_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',8,'int')
def _r30825_condition(gsm):
    GlobalGT("Able","GLOBAL",0)
def _r30826_condition(gsm):
    Global("Able","GLOBAL",0)
def _r30826_action(gsm):
    DO ~SetGlobal("Able","GLOBAL",1) ~
def _r31567_action(gsm):
    DO ~OpenDoor("Statue") Kill(Protagonist) ~
def _r32370_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32375_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32380_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32385_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32390_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32395_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32400_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r32405_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r33076_action(gsm):
    DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2) ~
def _r33959_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r33963_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r33966_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r65541_condition(gsm):
    Global("Morte_Talent","GLOBAL",0)
def _r65542_condition(gsm):
    Global("Morte_Talent","GLOBAL",1)
def _r65543_condition(gsm):
    Global("Morte_Tattoo_XP","GLOBAL",1)
def _r65545_condition(gsm):
    Global("Know_Mimir","GLOBAL",1) Global("Morte_Story","GLOBAL",0)
def _r65546_condition(gsm):
    Global("Morte_Story","GLOBAL",1)
def _r65547_condition(gsm):
    Global("Know_Morte_Pillar","GLOBAL",1)
def _r65548_condition(gsm):
    GlobalGT("Know_Blood_War","GLOBAL",0)
def _r65549_condition(gsm):
    GlobalGT("Know_Ravel","GLOBAL",0) Global("Ravel","GLOBAL",0)
def _r34991_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35001_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r34993_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35023_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35033_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35025_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35055_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35065_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35057_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35087_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35097_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35089_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35119_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35129_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35121_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35151_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35161_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35153_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35183_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35193_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35185_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35215_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35225_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35217_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35247_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35257_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35249_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35279_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35289_action(gsm):
    DO ~gsm.set_morte_quip(True) ~
def _r35281_action(gsm):
    DO ~gsm.dec_once_law('morte_zombie_1') ~
def _r35319_action(gsm):
    DO ~gsm.dec_once_law('chaotic_skeleton_mort_1') ~
def _r35342_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r35360_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r35344_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_lt('protagonist',13,'str')
def _r35352_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_gt('protagonist',12,'str')
def _r35355_condition(gsm):
    PartyHasItem("Prybar")
def _r35358_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",0)
def _r35358_action(gsm):
    DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~
def _r35359_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",1)
def _r35396_action(gsm):
    DO ~gsm.dec_once_law('chaotic_skeleton_mort_1') ~
def _r35419_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r35437_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r35421_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_lt('protagonist',13,'str')
def _r35429_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_gt('protagonist',12,'str')
def _r35432_condition(gsm):
    PartyHasItem("Prybar")
def _r35435_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",0)
def _r35435_action(gsm):
    DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~
def _r35436_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",1)
def _r35473_action(gsm):
    DO ~gsm.dec_once_law('chaotic_skeleton_mort_1') ~
def _r35496_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r35514_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r35498_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_lt('protagonist',13,'str')
def _r35506_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_gt('protagonist',12,'str')
def _r35509_condition(gsm):
    PartyHasItem("Prybar")
def _r35512_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",0)
def _r35512_action(gsm):
    DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~
def _r35513_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",1)
def _r35550_action(gsm):
    DO ~gsm.dec_once_law('chaotic_skeleton_mort_1') ~
def _r35573_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",-1) ~
def _r35591_action(gsm):
    DO ~IncrementGlobal("Good","GLOBAL",1) ~
def _r35575_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_lt('protagonist',13,'str')
def _r35583_condition(gsm):
    !PartyHasItem("Prybar") return gsm.check_char_prop_gt('protagonist',12,'str')
def _r35586_condition(gsm):
    PartyHasItem("Prybar")
def _r35589_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",0)
def _r35589_action(gsm):
    DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~
def _r35590_condition(gsm):
    Global("Morte_Skel_Mort_Quip","GLOBAL",1)
def _r39716_action(gsm):
    DO ~SetGlobal("Yves_Shared","AR0605",1) ~
def _r39719_action(gsm):
    DO ~SetGlobal("Yves_Shared","AR0605",1) ~
def _r39721_action(gsm):
    DO ~SetGlobal("Yves_Shared","AR0605",1) ~
def _r39722_action(gsm):
    DO ~SetGlobal("Yves_Shared","AR0605",1) ~
def _r40069_condition(gsm):
    return not gsm.get_in_party_morte() HPPercent(Protagonist,100)
def _r40070_condition(gsm):
    return not gsm.get_in_party_morte() HPPercentGT(Protagonist,49)
def _r40071_condition(gsm):
    return not gsm.get_in_party_morte() HPPercentLT(Protagonist,50)
def _r40077_condition(gsm):
    Global("Nenny","GLOBAL",2)
def _r40078_condition(gsm):
    Global("Nenny","GLOBAL",2)
def _r40079_condition(gsm):
    Global("Nenny","GLOBAL",1)
def _r40080_condition(gsm):
    Global("Nenny","GLOBAL",1)
def _r40848_action(gsm):
    DO ~SetGlobal("Met_Modrons","GLOBAL",1) ~
def _r40852_action(gsm):
    DO ~SetGlobal("Met_Modrons","GLOBAL",1) ~
def _r40856_action(gsm):
    DO ~SetGlobal("Met_Modrons","GLOBAL",1) ~
def _r41837_action(gsm):
    gsm.update_journal('39516')    # '39516': ' ~Мой предыдущий дневник пропал, так что я завел новый. Я очнулся в месте под названием «Морг». Я не знаю, кто я, что я здесь делаю и даже как я сюда попал. Единственного, кого я здесь пока встретил, — говорящий без умолку череп по имени Морт... Когда он осматривал мои раны, он нашел «указания», вытатуированные на моей спине:  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».  Мог ли сам себе оставить это сообщение? Судя по всему, мне придется найти этого «Фарода» и свой дневник.~ '
def _r41842_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41843_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41845_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41846_condition(gsm):
    PartyHasItem("Bandage")
def _r41847_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41848_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41852_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41853_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41857_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41858_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41862_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41863_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41867_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41868_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41871_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41872_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41875_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41876_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41880_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41881_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41884_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41885_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41888_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41889_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41892_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41893_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41900_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int')
def _r41911_action(gsm):
    DO ~gsm.set_morte_mortuary_walkthrough_2(True) ~
def _r41921_condition(gsm):
    Global("Story_Reekwind_Curse","GLOBAL",1) Global("Jumble_Reekwind","GLOBAL",0)
def _r41921_action(gsm):
    DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1) ~ gsm.update_journal('67862')    # '67862': ' ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ '
def _r67864_condition(gsm):
    Global("Jumble_Reekwind","GLOBAL",1)
def _r43909_condition(gsm):
    PartyHasItem("Decant") Global("Seek_Word","GLOBAL",1)
def _r43910_condition(gsm):
    Global("Aelwyn","GLOBAL",2) !Dead("Aelwyn")
def _r43910_action(gsm):
    DO ~SetGlobal("Nemelle","GLOBAL",3) SetGlobal("Aelwyn","GLOBAL",4) ~ gsm.update_journal('39490')    # '39490': ' ~Я сказал подруге Немель, Эльвин, что она ее ищет. Она вознаградила меня волшебным поцелуем, который увеличил мой максимум очков жизни на три.~ '
def _r43911_condition(gsm):
    GlobalLT("Aelwyn","GLOBAL",2)
def _r43917_condition(gsm):
    PartyHasItem("Decant") Global("Seek_Word","GLOBAL",1)
def _r43918_condition(gsm):
    Global("Aelwyn","GLOBAL",2) !Dead("Aelwyn")
def _r43918_action(gsm):
    DO ~SetGlobal("Nemelle","GLOBAL",3) SetGlobal("Aelwyn","GLOBAL",4) ~ gsm.update_journal('39490')    # '39490': ' ~Я сказал подруге Немель, Эльвин, что она ее ищет. Она вознаградила меня волшебным поцелуем, который увеличил мой максимум очков жизни на три.~ '
def _r43919_condition(gsm):
    GlobalLT("Aelwyn","GLOBAL",2)
def _r45029_action(gsm):
    DO ~SetGlobal("Lecture_Death","GLOBAL",2) ~
def _r45093_action(gsm):
    gsm.update_journal('39477')    # '39477': ' ~Морт что-то сказал про какое-то «правило трех». По-видимому, некоторые верят в то, что все на свете происходит по три, придавая глубокий смысл числам.~ '
def _r45103_action(gsm):
    gsm.update_journal('39477')    # '39477': ' ~Морт что-то сказал про какое-то «правило трех». По-видимому, некоторые верят в то, что все на свете происходит по три, придавая глубокий смысл числам.~ '
def _r50166_action(gsm):
    DO ~SetGlobal("Translate_Dabus","GLOBAL",0) ~
def _r50325_condition(gsm):
    Global("Know_Lady","GLOBAL",0)
def _r50325_action(gsm):
    DO ~SetGlobal("Know_Lady","GLOBAL",1) ~
def _r50328_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r50329_condition(gsm):
    Global("Know_Lady","GLOBAL",1)
def _r50416_action(gsm):
    DO ~MoraleDec("Morte",1) ~
def _r52577_condition(gsm):
    NearbyDialog("Dgrace")
def _r52577_action(gsm):
    DO ~SetGlobal("Ravel_Grace","GLOBAL",2) ~
def _r52578_condition(gsm):
    !NearbyDialog("DGrace") NearbyDialog("DAnnah")
def _r52578_action(gsm):
    DO ~SetGlobal("Ravel_Annah","GLOBAL",2) ~
def _r52579_condition(gsm):
    !NearbyDialog("DGrace") !NearbyDialog("DAnnah")
def _r53625_condition(gsm):
    Global("Morte_Story","GLOBAL",1)
def _r53625_action(gsm):
    DO ~MoraleDec("Morte",1) ~
def _r53627_condition(gsm):
    Global("Morte_Story","GLOBAL",0)
def _r53629_action(gsm):
    DO ~SetGlobal("Morte_Story","GLOBAL",1) ~ gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
def _r53630_action(gsm):
    DO ~MoraleDec("Morte",1) SetGlobal("Morte_Story","GLOBAL",1) ~ gsm.update_journal('53661')    # '53661': ' ~Оказывается, Морт появился из такой себе Колонной Черепов, горы живых отрубленных голов, находящейся на Авернусе, первом слое Баатора. Она состоит из голов тех, чья ложь привела к смерти других.~ '
def _r53662_condition(gsm):
    NearbyDialog("Dannah")
def _r53663_condition(gsm):
    !NearbyDialog("Dannah")
def _r54105_condition(gsm):
    !NearbyDialog("DDakkon")
def _r53795_action(gsm):
    DO ~MoraleDec("Morte",1) ~
def _r53801_action(gsm):
    DO ~MoraleDec("Morte",1) ~
def _r53807_action(gsm):
    gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
def _r53825_condition(gsm):
    NearbyDialog("Dgrace")
def _r53825_action(gsm):
    DO ~SetGlobal("Pillar_Musk","AR1001",1) ~
def _r53826_condition(gsm):
    NearbyDialog("Dannah") !NearbyDialog("Dgrace")
def _r53826_action(gsm):
    DO ~SetGlobal("Pillar_Musk","AR1001",1) ~
def _r53827_condition(gsm):
    !NearbyDialog("Dgrace") !NearbyDialog("Dannah")
def _r53832_condition(gsm):
    Global("Specialist","GLOBAL",4)
def _r53833_condition(gsm):
    Global("Specialist","GLOBAL",5)
def _r53834_condition(gsm):
    Global("Specialist","GLOBAL",6)
def _r53835_condition(gsm):
    !Global("Specialist","GLOBAL",4) !Global("Specialist","GLOBAL",5) !Global("Specialist","GLOBAL",6)
def _r53836_condition(gsm):
    Global("Where_Fhjull","AR1001",0)
def _r53837_condition(gsm):
    Global("Where_Fhjull","AR1001",1) PartyHasItem("Cube")
def _r53838_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") NearbyDialog("Dgrace")
def _r53839_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") NearbyDialog("Dannah")
def _r53840_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") !NearbyDialog("Dannah")
def _r53841_action(gsm):
    DO ~SetGlobal("Pillar_Question","AR1001",0) ~
def _r53843_action(gsm):
    DO ~gsm.dec_once_good('evil_pillar_2') SetGlobal("Pillar ","GLOBAL",2) StartCutSceneMode() StartCutSceneEx("1001Cut1",FALSE) ~
def _r53844_condition(gsm):
    Global("Where_Fhjull","AR1001",0)
def _r53863_condition(gsm):
    Global("Where_Fhjull","AR1001",1) PartyHasItem("Cube")
def _r53864_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") NearbyDialog("Dgrace")
def _r53865_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") NearbyDialog("Dannah")
def _r53866_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") !NearbyDialog("Dannah")
def _r53867_action(gsm):
    DO ~SetGlobal("Pillar_Question","AR1001",0) ~
def _r53850_action(gsm):
    DO ~gsm.dec_once_good('evil_pillar_2') SetGlobal("Pillar ","GLOBAL",2) StartCutSceneMode() StartCutSceneEx("1001Cut1",FALSE) ~
def _r53851_condition(gsm):
    Global("Where_Fhjull","AR1001",0)
def _r53852_condition(gsm):
    Global("Where_Fhjull","AR1001",1) PartyHasItem("Cube")
def _r53853_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") NearbyDialog("Dgrace")
def _r53854_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") NearbyDialog("Dannah")
def _r53855_condition(gsm):
    Global("Where_Fhjull","AR1001",1) !PartyHasItem("Cube") !NearbyDialog("Dgrace") !NearbyDialog("Dannah")
def _r53856_action(gsm):
    DO ~SetGlobal("Pillar_Question","AR1001",0) ~
def _r54160_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54165_condition(gsm):
    !NearbyDialog("DDakkon")
def _r54166_condition(gsm):
    NearbyDialog("DDakkon") return gsm.check_char_prop_gt('protagonist',13,'wis')
def _r54167_condition(gsm):
    NearbyDialog("DDakkon") return gsm.check_char_prop_lt('protagonist',14,'wis')
def _r54172_condition(gsm):
    !NearbyDialog("DDakkon")
def _r54173_condition(gsm):
    NearbyDialog("DDakkon") return gsm.check_char_prop_gt('protagonist',13,'wis')
def _r54174_condition(gsm):
    NearbyDialog("DDakkon") return gsm.check_char_prop_lt('protagonist',14,'wis')
def _r54179_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54180_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54180_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54189_condition(gsm):
    InParty("Morte")
def _r54190_condition(gsm):
    !InParty("Morte")
def _r54191_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54192_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54192_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54194_condition(gsm):
    InParty("Morte")
def _r54195_condition(gsm):
    !InParty("Morte")
def _r54196_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54197_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54197_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54200_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54201_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54201_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54204_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54205_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54205_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54207_condition(gsm):
    InParty("Morte")
def _r54208_condition(gsm):
    !InParty("Morte")
def _r54209_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54210_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54210_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54213_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54214_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54214_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54217_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54218_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54218_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54220_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'int') NearbyDialog("Ddakkon")
def _r54221_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'int') !NearbyDialog("Ddakkon") GlobalGT("Dakkon","GLOBAL",0)
def _r54223_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'int') !NearbyDialog("Ddakkon") Global("Dakkon","GLOBAL",0)
def _r54226_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54227_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54227_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54230_condition(gsm):
    return gsm.get_meet_deionarra()
def _r54231_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r54232_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54233_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54233_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54235_condition(gsm):
    return gsm.get_meet_deionarra()
def _r54236_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r54237_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54238_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54238_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54241_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54242_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54242_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54244_action(gsm):
    DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2) ~
def _r54245_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54246_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54246_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54250_condition(gsm):
    GlobalGT("BD_MORTE_MORALE","GLOBAL",5)
def _r54252_condition(gsm):
    GlobalLT("BD_MORTE_MORALE","GLOBAL",6)
def _r54255_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54262_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54262_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54264_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'wis')
def _r54266_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54267_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54267_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54269_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'wis')
def _r54271_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54272_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54272_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54275_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) InParty("Morte")
def _r54276_condition(gsm):
    GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1) !InParty("Morte")
def _r54276_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54278_condition(gsm):
    InParty("Morte") Global("Morte_Morale_Fortress_Portal","AR0202",0)
def _r54278_action(gsm):
    DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1) SetGlobal("Morte_Morale_Fortress_Portal","AR0202",1) ~
def _r54279_condition(gsm):
    InParty("Morte")
def _r54280_condition(gsm):
    !InParty("Morte")
def _r54280_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54282_condition(gsm):
    GlobalGT("Ravel_Grace","GLOBAL",0) GlobalGT("Ravel_Morte","GLOBAL",0) GlobalLT("Torment_Fell","GLOBAL",2) NearbyDialog("Dgrace")
def _r54283_condition(gsm):
    GlobalGT("Ravel_Grace","GLOBAL",0) GlobalGT("Ravel_Morte","GLOBAL",0) Global("Torment_Fell","GLOBAL",2) NearbyDialog("Dgrace")
def _r54284_condition(gsm):
    GlobalGT("Ravel_Morte","GLOBAL",0) GlobalLT("Torment_Fell","GLOBAL",2) !NearbyDialog("Dgrace")
def _r54285_condition(gsm):
    GlobalGT("Ravel_Morte","GLOBAL",0) Global("Torment_Fell","GLOBAL",2) !NearbyDialog("Dgrace")
def _r54286_condition(gsm):
    Global("Ravel_Morte","GLOBAL",0)
def _r54832_condition(gsm):
    InParty("Morte")
def _r54833_condition(gsm):
    !InParty("Morte")
def _r54833_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54835_condition(gsm):
    InParty("Morte")
def _r54836_condition(gsm):
    !InParty("Morte")
def _r54836_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r54838_condition(gsm):
    InParty("Morte")
def _r54839_condition(gsm):
    !InParty("Morte")
def _r54839_action(gsm):
    DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) ~
def _r55849_condition(gsm):
    !NearbyDialog("DGrace")
def _r55850_condition(gsm):
    !NearbyDialog("DGrace")
def _r55875_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',15,'int')
def _r55902_action(gsm):
    DO ~gsm.dec_once_law('chaotic_nordom_5') ~
def _r55925_action(gsm):
    DO ~SetGlobal("Know_Mechanus","GLOBAL",1) ~
def _r55931_action(gsm):
    DO ~gsm.inc_once_law('lawful_nordom_2', 2) ~
def _r55941_action(gsm):
    DO ~gsm.dec_once_law('chaotic_nordom_4', 2) ~
def _r61411_condition(gsm):
    PartyGoldGT(499)
def _r61412_condition(gsm):
    PartyGoldLT(500)
def _r61414_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65554_condition(gsm):
    Global("Morte_Warning","GLOBAL",1)
def _r65558_condition(gsm):
    return not gsm.get_meet_pharod()
def _r65559_condition(gsm):
    return gsm.get_meet_pharod()
def _r65566_condition(gsm):
    Global("Morte_Warning","GLOBAL",1)
def _r65565_condition(gsm):
    Global("Journal","GLOBAL",0)
def _r65569_condition(gsm):
    Global("Morte_Tattoo_XP","GLOBAL",0)
def _r65569_action(gsm):
    DO ~SetGlobal("Morte_Tattoo_XP","GLOBAL",1) AddexperienceParty(1000) ~ gsm.update_journal('65573')    # '65573': ' ~Я напрямую спросил Морта насчет дополнительной строки на моей спине, которую он «забыл» мне прочитать. Он заявил, что это не имеет никакого смысла, поэтому он и не прочел. Я уверен, что он лжет, но пока мне непонятно почему. ~ '
def _r65570_condition(gsm):
    Global("Morte_Tattoo_XP","GLOBAL",1)
def _r65613_condition(gsm):
    GlobalGT("Morte_Stolen","GLOBAL",2)
def _r65621_action(gsm):
    DO ~SetGlobal("Morte_Talent","GLOBAL",1) ~ gsm.update_journal('65625')    # '65625': ' ~Морт сказал мне, что у него есть особенный «талант» выводить из себя людей, который называется «Поток Проклятий». Очевидно, во время своей жизни и смерти он выучил столько оскорблений, что теперь знает, как провоцировать людей на нападение. В приступе злости их легко ударить, а им — труднее ударить тебя. Кроме того, они забывают обо всем, кроме того, чтобы догнать Морта и надавать ему тумаков. Похоже, это очень пригодится, если я повстречаю какого-нибудь чародея. Фактически этот талант не является магией, поэтому он может подействовать на любую тварь, которая зачитывает заклинания. Думаю, чем больше проклятий услышит Морт от людей, которых я встречу, тем лучше будет становиться эта возможность. ~ '
def _r65622_condition(gsm):
    GlobalGT("Morte_Stolen","GLOBAL",2)
def _r65627_condition(gsm):
    GlobalGT("Morte_Stolen","GLOBAL",2)
def _r65631_action(gsm):
    gsm.update_journal('65637')    # '65637': ' ~Морт сказал мне, что пока они был на полке Лотара, у него появилась новая способность под названием «Толпа Черепов». Похоже, он может несколько раз в день призывать некоторых друзей, с которыми познакомился у Лотара. Они будут атаковать выбранного Мортом противника, кусая его, а затем убегая прочь. Наносимый ими урон зависит от уровня опытности Морта.~ '
def _r65639_condition(gsm):
    return not gsm.get_meet_pharod()
def _r65640_condition(gsm):
    return gsm.get_meet_pharod() Global("Pharod_Quest","GLOBAL",1)
def _r65641_condition(gsm):
    GlobalGT("Pharod_Quest","GLOBAL",1) !Global("AR0401_Visited","GLOBAL",1)
def _r65642_condition(gsm):
    Global("AR0401_Visited","GLOBAL",1) Global("AR0500_Visited","GLOBAL",0)
def _r65643_condition(gsm):
    Global("AR0500_Visited","GLOBAL",1) Global("Know_Ravel","GLOBAL",0)
def _r65644_condition(gsm):
    Global("Know_Ravel","GLOBAL",1) Global("Know_Ravel_Key","GLOBAL",0)
def _r65645_condition(gsm):
    Global("Know_Ravel","GLOBAL",1) GlobalGT("Know_Ravel_Key","GLOBAL",0) Global("AR0610_Visited","GLOBAL",0)
def _r65646_condition(gsm):
    Global("AR0610_Visited","GLOBAL",1) Global("AR0700_Visited","GLOBAL",0)
def _r65647_condition(gsm):
    Global("AR0700_Visited","GLOBAL",1)
def _r65666_condition(gsm):
    Global("AR0601_Visited","GLOBAL",0)
def _r65666_action(gsm):
    gsm.update_journal('65669')    # '65669': ' ~Морт посоветовал мне заглянуть в Городской Фестхолл в Чиновничьем районе и попробовать разузнать побольше о ночной ведьме Равель.~ '
def _r65674_condition(gsm):
    Global("Know_Ravel_Key","GLOBAL",1)
def _r65674_action(gsm):
    gsm.update_journal('65678')    # '65678': ' ~Морт подкинул мысль, что кто-нибудь в Чиновничьем районе может знать, где достать кусочек Равель. Если мы никого не найдем, можно проверить Фестхолл и тамошние камни переживаний. Если и *там* ничего не выйдет, всегда можно наведаться к проституткам... Вот уж предстоит набегаться и наговориться.~ '
def _r65693_condition(gsm):
    return not gsm.get_meet_pharod()
def _r65700_condition(gsm):
    Global("Grace_Silver_Mimir","GLOBAL",1)
def _r65708_condition(gsm):
    Global("Grace_Smell_Mimir","GLOBAL",1)
def _r65709_condition(gsm):
    Global("Morte_Tattoo_XP","GLOBAL",1)
def _r65710_action(gsm):
    gsm.update_journal('65712')    # '65712': ' ~Я прямо спросил Морта о его заявлении, что он — мимир, но не сумел загнать его в угол. Думаю, мне нужно его подловить на лжи, чтобы вывести на чистую воду. ~ '
def _r65711_action(gsm):
    gsm.update_journal('65712')    # '65712': ' ~Я прямо спросил Морта о его заявлении, что он — мимир, но не сумел загнать его в угол. Думаю, мне нужно его подловить на лжи, чтобы вывести на чистую воду. ~ '
def _r65718_condition(gsm):
    Global("Grace_Smell_Mimir","GLOBAL",1) Global("AR1000_Visited","GLOBAL",0)
def _r65719_condition(gsm):
    Global("Grace_Smell_Mimir","GLOBAL",1) Global("AR1000_Visited","GLOBAL",1)
def _r65731_action(gsm):
    DO ~SetGlobal("Morte_Story","GLOBAL",1) ~
def _r65733_action(gsm):
    DO ~AddexperienceParty(12000) ~
def _r65738_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',13,'wis')
def _r65739_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65740_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65743_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65744_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65747_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65748_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65750_condition(gsm):
    Global("Chaotic_Morte_1","GLOBAL",0)
def _r65750_action(gsm):
    DO ~gsm.inc_once_law('lawful_morte_1') ~
def _r65751_condition(gsm):
    Global("Lawful_Morte_1","GLOBAL",0)
def _r65751_action(gsm):
    DO ~gsm.dec_once_law('chaotic_morte_1') gsm.dec_once_good('evil_morte_1') ~
def _r65753_action(gsm):
    gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
def _r65754_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65755_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65758_action(gsm):
    DO ~PlaySoundNotRanged("SPTR_01") FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65759_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65760_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65763_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65766_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65769_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65772_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65774_condition(gsm):
    Global("Memory_Morte_Pillar","GLOBAL",0)
def _r65774_action(gsm):
    DO ~SetGlobal("Memory_Morte_Pillar","GLOBAL",1) GiveExperience(Protagonist,12000) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65775_condition(gsm):
    Global("Memory_Morte_Pillar","GLOBAL",1)
def _r65775_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65778_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65779_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65781_action(gsm):
    DO ~PlaySoundNotRanged("SPTR_01") FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65782_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65783_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65786_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65787_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65789_action(gsm):
    DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~
def _r65790_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65791_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65794_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65795_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65798_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65799_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65801_condition(gsm):
    Global("Know_Morte_Pillar","GLOBAL",0)
def _r65802_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65803_condition(gsm):
    GlobalGT("Know_Morte_Pillar","GLOBAL",0)
def _r65821_action(gsm):
    DO ~AddexperienceParty(12000) MoraleInc("Morte",3) PermanentStatChange("Morte",STR,RAISE,4) PermanentStatChange("Morte",DEX,RAISE,2) PermanentStatChange("Morte",CON,RAISE,2) SetGlobal("BD_MorteStory","GLOBAL",1) ~ gsm.update_journal('65825')    # '65825': ' ~Я выяснил, почему Морт оставался со мной все это время... Все из-за того, что он испытывал чувство вины за то, что убил меня однажды, когда был жив. Встретившись со своей виной лицом к лицу, он сбросил с себя весь этот груз и, в конце концов, стал сильнее.~ '
def _r66347_condition(gsm):
    Global("Morte_Talent","GLOBAL",0)
def _r66348_condition(gsm):
    Global("Morte_Talent","GLOBAL",1)
def _r66349_condition(gsm):
    Global("Morte_Tattoo_XP","GLOBAL",1)
def _r66351_condition(gsm):
    Global("Know_Mimir","GLOBAL",1) Global("Morte_Story","GLOBAL",0)
def _r66352_condition(gsm):
    Global("Morte_Story","GLOBAL",1)
def _r66353_condition(gsm):
    Global("Know_Morte_Pillar","GLOBAL",1)
def _r66354_condition(gsm):
    GlobalGT("Know_Blood_War","GLOBAL",0)
def _r66355_condition(gsm):
    GlobalGT("Know_Ravel","GLOBAL",0) Global("Ravel","GLOBAL",0)
def _r68176_action(gsm):
    DO ~SetGlobal("Fortress_Morte","GLOBAL",4) JoinPartyEx(TRUE) ~
def _r68178_condition(gsm):
    Global("Trans_Vanish","GLOBAL",0) GlobalGT("Fortress_Party_Roof","GLOBAL",1)
def _r68189_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) GlobalGT("Fortress_Dakkon","GLOBAL",0)
def _r68189_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204d0",FALSE) ~
def _r68190_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) GlobalGT("Fortress_Annah","GLOBAL",0)
def _r68190_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204a0",FALSE) ~
def _r68191_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) GlobalGT("Fortress_Grace","GLOBAL",0)
def _r68191_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204g0",FALSE) ~
def _r68192_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",0)
def _r68192_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204i0",FALSE) ~
def _r68193_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",0)
def _r68193_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204v0",FALSE) ~
def _r68194_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) Global("Fortress_Vhailor","GLOBAL",0) GlobalGT("Fortress_Nordom","GLOBAL",0)
def _r68194_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204n0",FALSE) ~
def _r68239_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) Global("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0)
def _r68239_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204tr",FALSE) ~
def _r68438_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",1) Global("Fortress_Nordom","GLOBAL",0)
def _r68438_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204tr",FALSE) ~
def _r68439_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",1) Global("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0)
def _r68439_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204tr",FALSE) ~
def _r68446_condition(gsm):
    Global("Trans_Vanish","GLOBAL",1) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",1) GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",0)
def _r68446_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204v0",FALSE) ~
def _r68503_condition(gsm):
    Global("Trans_Vanish","GLOBAL",0) Global("Fortress_Party_Roof","GLOBAL",1)
def _r68175_condition(gsm):
    GlobalGT("Fortress_Annah","GLOBAL",0)
def _r68175_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204a0",FALSE) ~
def _r68179_condition(gsm):
    GlobalGT("Fortress_Dakkon","GLOBAL",0)
def _r68179_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204d0",FALSE) ~
def _r68180_condition(gsm):
    GlobalGT("Fortress_Grace","GLOBAL",0)
def _r68180_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204g0",FALSE) ~
def _r68181_condition(gsm):
    GlobalGT("Fortress_Nordom","GLOBAL",0)
def _r68181_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204n0",FALSE) ~
def _r68182_condition(gsm):
    GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",0)
def _r68182_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204i0",FALSE) ~
def _r68183_condition(gsm):
    GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",0)
def _r68183_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204v0",FALSE) ~
def _r68319_condition(gsm):
    GlobalGT("Fortress_Annah","GLOBAL",0)
def _r68319_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204a0",FALSE) ~
def _r68320_condition(gsm):
    GlobalGT("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68320_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204d0",FALSE) ~
def _r68321_condition(gsm):
    GlobalGT("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68321_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204g0",FALSE) ~
def _r68322_condition(gsm):
    GlobalGT("Fortress_Nordom","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68322_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204n0",FALSE) ~
def _r68323_condition(gsm):
    GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68323_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204i0",FALSE) ~
def _r68324_condition(gsm):
    GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68324_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204v0",FALSE) ~
def _r68325_condition(gsm):
    Global("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Ignus","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0)
def _r68325_action(gsm):
    DO ~QuitGame(FINALE,0,0) ~
def _r68490_condition(gsm):
    GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",0) GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",1)
def _r68490_action(gsm):
    DO ~StartCutSceneMode() StartCutSceneEx("1204v0",FALSE) ~
def _r68491_condition(gsm):
    GlobalGT("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Vhailor_Battle","GLOBAL",1) Global("Fortress_Ignus","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0)
def _r68491_action(gsm):
    DO ~QuitGame(FINALE,0,0) ~
def _r68492_condition(gsm):
    GlobalGT("Fortress_Ignus","GLOBAL",0) Global("Fortress_Ignus_Battle","GLOBAL",1) Global("Fortress_Vhailor","GLOBAL",0) Global("Fortress_Grace","GLOBAL",0) Global("Fortress_Dakkon","GLOBAL",0) Global("Fortress_Annah","GLOBAL",0) Global("Fortress_Nordom","GLOBAL",0)
def _r68492_action(gsm):
    DO ~QuitGame(FINALE,0,0) ~

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DMORTE.D_s0', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба.", 's0', 'say986') \
    .with_responses() \
        .response("Кто ты?", 'DMORTE.D_s1', 'r', 'reply987') \
        .response("Не обращать внимания на говорящий череп и изучить комнату.", EXIT, 'r', 'reply989').with_action(lambda: _dispose()) \
        .response("Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.", EXIT, 'r', 'reply988').with_action(lambda: _dispose()) \
        .response("Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО.", EXIT, 'r', 'reply17833').with_action(lambda: _r17833_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s1', '# from 0.0 29.0 31.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я? — возмущается череп. — Может, *ты* начнешь, паршивец? Кто ты?", 's1', 'say990') \
    .with_responses() \
        .response("Я… не знаю.", 'DMORTE.D_s2', 'r', 'reply992') \
        .response("Я не знаю… Не могу вспомнить.", 'DMORTE.D_s3', 'r', 'reply995') \
        .response("Я первый спросил тебя, череп.", 'DMORTE.D_s4', 'r', 'reply993') \
        .response("Не обращать внимания на череп и изучить комнату.", EXIT, 'r', 'reply991').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s2', '# from 1.0 4.0 5.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты не знаешь, кто ты такой, а? *Мог* бы просто сказать: 'забей, пень'. Что ж, ладно… бестолочью притворяешься. Проверяешь, есть ли мне до этого дело. Я Морт. Приветствую, добро пожаловать и далее по списку.", 's2', 'say997') \
    .with_responses() \
        .response("Где я, Морт?", 'DMORTE.D_s6', 'r', 'reply998') \
        .response("Ты знаешь, как мне отсюда выбраться?", 'DMORTE.D_s21', 'r', 'reply1006').with_condition(lambda: _r1006_condition(gsm)) \
        .response("Как я попал сюда?", 'DMORTE.D_s20', 'r', 'reply1080') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1087').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s3', '# from 1.1 4.1 5.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты *не помнишь*? Нелегкая выдалась у тебя ночка. Надеюсь, никого не покалечил… Меня зовут Морт. Приветствую, добро пожаловать и далее по списку, — он делает паузу. — Слушай, я просто *обязан* спросить: ты случайно не один из тех чувствующих, которые занимаются членовредительством, или это кто-то другой подарил тебе эти шрамы?", 's3', 'say999') \
    .with_responses() \
        .response("Чувствующие?", 'DMORTE.D_s12', 'r', 'reply1000') \
        .response("Шрамы?", 'DMORTE.D_s13', 'r', 'reply1001') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1002').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s4', '# from 1.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, а я спросил тебя вторым. Как тебя звать?", 's4', 'say1003') \
    .with_responses() \
        .response("Я… не знаю.", 'DMORTE.D_s2', 'r', 'reply1004') \
        .response("Я не знаю… Не могу вспомнить.", 'DMORTE.D_s3', 'r', 'reply1005') \
        .response("Ты первый, череп.", 'DMORTE.D_s5', 'r', 'reply1007') \
        .response("Не обращать внимания на череп и изучить комнату.", EXIT, 'r', 'reply994').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s5', '# from 4.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да ты натянут как струна. Ладно, ладно… Пускай *я* буде хорошим парнем… я, Морт. Морт Зубоскал. Итак, какому имени не посчастливилось иметь такого владельца как ты?", 's5', 'say1008') \
    .with_responses() \
        .response("Я… не знаю.", 'DMORTE.D_s2', 'r', 'reply1009') \
        .response("Я не знаю… Я ничего не могу вспомнить.", 'DMORTE.D_s3', 'r', 'reply1010') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1011').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s6', '# from 2.0 29.1 31.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты находишься в дыре под названием Морг… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's6', 'say1012') \
    .with_responses() \
        .response("Морг? Я умер?", 'DMORTE.D_s7', 'r', 'reply1013') \
        .response("Как мне выбраться отсюда?", 'DMORTE.D_s21', 'r', 'reply1015').with_condition(lambda: _r1015_condition(gsm)) \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1085').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s7', '# from 6.0 9.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, насчет этого не знаю… Но Морг — самое подходящее место для покойников, которое только можно найти в этом городишке. Всякие пни тащат сюда мертвецов, хоронят их, сжигают, а если тебе *конкретно* повезло, тебя возвращают к жизни в качестве раба. Не лучшее место на планах. На твоем месте я бы разыскал ближайший выход и помахал этому месту ручкой.", 's7', 'say1014') \
    .with_responses() \
        .response("Прошу прощения… Морг? Что это за место?", 'DMORTE.D_s10', 'r', 'reply1016') \
        .response("Возвращают к жизни в качестве раба?", 'DMORTE.D_s9', 'r', 'reply1017') \
        .response("Но почему я тогда могу ходить?", 'DMORTE.D_s11', 'r', 'reply1018') \
        .response("Говоришь, люди тащат сюда мертвецов? Это так я сюда попал?", 'DMORTE.D_s8', 'r', 'reply1019').with_condition(lambda: _r1019_condition(gsm)) \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1020').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s8', '# from 7.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Пауза. Ага, наверно. Может, какой-нибудь бездельник спутал тебя со жмуриком и подкинул тебя сюда. То, как ты строишь из себя трупака, и *меня* бы одурачило… может, тебе лучше найти того пня, который притащил тебя сюда, и его расспросить, а? — Морт кивает. — Неплохо соображаешь, как для недавнего мертвеца… рад видеть, что твоя черепушка все еще на месте.", 's8', 'say1021') \
    .with_responses() \
        .response("Зачем кому-то понадобилось тащить меня сюда?", 'DMORTE.D_s14', 'r', 'reply1029') \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1030') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1137').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s9', '# from 7.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, это очаровательная жизнь… если не учитывать, что тебя без конца натирают формальдегида и пришиваю тебе отвалившиеся конечности, это можно считать раем.", 's9', 'say1022') \
    .with_responses() \
        .response("Разве я должен здесь быть? Я мертв?", 'DMORTE.D_s7', 'r', 'reply1113') \
        .response("Как я выгляжу? Насколько плохи мои шрамы?", 'DMORTE.D_s13', 'r', 'reply1114') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1115') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1116').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s10', '# from 7.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э-э-э… как я уже сказал, в Морге. С тобой все в порядке, шеф? Ты что-то неважно выглядишь.", 's10', 'say1023') \
    .with_responses() \
        .response("Разве я должен здесь быть? Я мертв?", 'DMORTE.D_s16', 'r', 'reply1109') \
        .response("*Как* я выгляжу? Насколько плохи мои шрамы?", 'DMORTE.D_s13', 'r', 'reply1110') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1111') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1112').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s11', '# from 7.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, зрелище того, как ты сползаешь с плиты, было жуть как странно. Ты выглядишь так, будто тебе уже пора просить счет за выпивку, если ты понял, о чем я.", 's11', 'say1024') \
    .with_responses() \
        .response("Может, я умер? И поэтому я здесь?", 'DMORTE.D_s16', 'r', 'reply1133') \
        .response("Насколько плохо я выгляжу?", 'DMORTE.D_s13', 'r', 'reply1134') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1135') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1136').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s12', '# from 3.0 33.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не знаешь, кто такие чувствующие? О, да ты, похоже, рассчитываешь услышать что-то особенное! Ну, они — кучка рубак, которые хотят перепробовать все, что могут предоставить им планы, включая… ладно, пока о них забудем. Что насчет этих шрамов?", 's12', 'say1025') \
    .with_responses() \
        .response("Шрамы?", 'DMORTE.D_s13', 'r', 'reply1027') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1028') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1143').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s13', '# from 3.1 9.1 10.1 11.1 12.0 33.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Это как будто какой-нибудь рубака решил разрисовать тебя ножом. Ты весь в шрамах… даже на спине, не считая… — делает паузу. — Скажем так: пень, у тебя на спине целая галерея наколок. Тут что-то написано…", 's13', 'say1026') \
    .with_responses() \
        .response("Что там написано?", 'DMORTE.D_s34', 'r', 'reply1088').with_action(lambda: _r1088_action(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1089') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1090').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s14', '# from 8.0 29.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Некоторые люди в этом городишке собирают жмуриков с улиц и продают их здесь за звенелки. Не очень-то хороший способ сводить концы с концами, но если ты живешь отстойнике всех планов, то выбор у тебя не так уж велик.", 's14', 'say1031') \
    .with_responses() \
        .response("Звенелки? Какие еще 'звенелки'?", 'DMORTE.D_s15', 'r', 'reply1032') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1033') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1142').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s15', '# from 14.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э-э… деньги. Звенелки — это деньги. Разве там, откуда ты, их нету?", 's15', 'say1034') \
    .with_responses() \
        .response("Я не могу вспомнить, откуда я.", 'DMORTE.D_s19', 'r', 'reply1035') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1036') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1138').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s16', '# from 10.0 11.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Он умолкает. Не знаю. Ты *болтаешь* со мной… Здешние ходячие мертвецы обычно так не делают. Как мне кажется, трухлявые допустили ошибку и ты не был мертвым. Ты случайно не помнишь, чтобы подписывал какой-то контракт? То есть, обычно они заполняют кучу документов, прежде чем вытащить кого-нибудь из книги мертвых.", 's16', 'say1037') \
    .with_responses() \
        .response("Э… контракт? Нет, не помню, чтобы подписывал контракт. Я… почти ничего не помню.", 'DMORTE.D_s32', 'r', 'reply1038') \
        .response("Книга мертвых?", 'DMORTE.D_s17', 'r', 'reply1039') \
        .response("Документов?", 'DMORTE.D_s18', 'r', 'reply1040') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1041') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1150').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s17', '# from 16.1 18.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну да, 'книга мертвых'. Знаешь про такую? А может и не знаешь. Слушай, забудь про 'книгу мертвых'. Ты живой, значит, тебя в ней нет.", 's17', 'say1042') \
    .with_responses() \
        .response("Что это за документ… контракт… о котором ты говорил?", 'DMORTE.D_s18', 'r', 'reply1151') \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1152') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1153').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s18', '# from 16.2 17.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, от этого так и хочется ломать кирпичи? Сигил вращается благодаря законам, и нельзя даже облегчиться, не подписав пару контрактов.", 's18', 'say1043') \
    .with_responses() \
        .response("Что ты там говорил насчет книги мертвых?", 'DMORTE.D_s17', 'r', 'reply1154') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1155') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1156').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s19', '# from 15.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Во имя богов и их матерей, ты что, *вообще* не в курсе? Ты хоть представляешь, откуда ты? Наверно, у народа бестолочей пропал их царь. Ты что, показал какому-нибудь богу кукиш, или всегда был таким недалеким?", 's19', 'say1044') \
    .with_responses() \
        .response("Я не знаю… Я ничего не могу вспомнить.", 'DMORTE.D_s32', 'r', 'reply1139') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1140') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1141').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s20', '# from 2.2 31.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, я без зеленого понятия. А вот ты точно набил руку, изображая из себя мертвеца. Пока ты здесь лежал, я не заметил, чтобы ты моргал или дышал… ничего. Ты что, напился? Что произошло?", 's20', 'say1045') \
    .with_responses() \
        .response("Я не знаю… Я ничего не могу вспомнить.", 'DMORTE.D_s32', 'r', 'reply1097') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1098') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1099').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s21', '# from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Что ж, вот *это* хороший вопрос. Для тебя, шеф, часы снова начали тикать. Тебя найдут тленные и попытаются исправить 'проблему' с твоим воскрешением, засунув тебя в крематорий. Если и дальше будешь изображать труп, ты так или иначе попадешь в крематорий. Значит, выбор, как у модрона? Что делать?", 's21', 'say1046') \
    .with_responses() \
        .response("Тленные?", 'DMORTE.D_s30', 'r', 'reply1047') \
        .response("Я… сбегу.", 'DMORTE.D_s22', 'r', 'reply1048') \
        .response("Я все объясню этим… тленным.", 'DMORTE.D_s25', 'r', 'reply1049') \
        .response("Что мне делать?", 'DMORTE.D_s23', 'r', 'reply1050').with_condition(lambda: _r1050_condition(gsm)) \
        .response("Почему бы тебе не сказать? Похоже, у тебя уже заготовлен ответ.", 'DMORTE.D_s23', 'r', 'reply1051').with_condition(lambda: _r1051_condition(gsm)) \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1081').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s22', '# from 21.1')\
    .with_npc_lines() \
        .line(SPEAKER, "О, *отличная* идея, шеф! Почему *я* до этого не додумался? И как же ты сбежишь? Даю подсказку: нужно небольшое сотрудничество.", 's22', 'say1052') \
    .with_responses() \
        .response("Ты меня заинтересовал. Продолжай.", 'DMORTE.D_s23', 'r', 'reply1053') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1054') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1145').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s23', '# from 21.3 21.4 22.0 26.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Как мне кажется, тебе явно нужно отсюда выбираться. Что до меня, то я могу позволить себе подождать. Единственное, то угрожает *мне*, — это смерть от скуки. Мы могли бы протянуть друг другу руку помощи.", 's23', 'say1055') \
    .with_responses() \
        .response("Продолжай…", 'DMORTE.D_s24', 'r', 'reply1058') \
        .response("У тебя нет рук. Как *ты* можешь мне помочь?", 'DMORTE.D_s24', 'r', 'reply1059') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1060') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1146').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s24', '# from 23.0 23.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Может, ты так и не считаешь, но я мог бы помочь выбраться тебе, а ты — мне. У меня нет рук, так что я в слегка затруднительном положении. У тебя недостача в черепушке, а вот у меня много опыта и знаний, как вывести тебя из этой хибары. Будем сотрудничать — оба выберемся *наружу*. По рукам, пень?", 's24', 'say1061') \
    .with_responses() \
        .response("По рукам.", 'DMORTE.D_s28', 'r', 'reply1057') \
        .response("По рукам. У меня есть дурное предчувствие, что нам судьбой предрешено путешествовать вместе, Морт.", 'DMORTE.D_s27', 'r', 'reply1062') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1063') \
        .response("Нет уж, спасибо. От твоей трескотни голова раскалывается. Я сам найду выход.", EXIT, 'r', 'reply1147').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s25', '# from 21.2')\
    .with_npc_lines() \
        .line(SPEAKER, "О, *отличная* мысль, шеф! Почему *я* до этого не додумался? — его тон становится насмешливым. — 'Кстати, сэр Тленный, я тут умер и очнулся на плите в вашем маленьком Морге. Вы мне не поможете?' Они тебе 'помогут', куда уж там. Поглядят на тебя пару секунд, потом позовут стражу и закинут тебя в персональную топку.", 's25', 'say1064') \
    .with_responses() \
        .response("Звучит, как какие-то крайности… Зачем им это делать?", 'DMORTE.D_s26', 'r', 'reply1065') \
        .response("Что ж, стража у них должна быть чертовски крутой, чтобы взять меня.", 'DMORTE.D_s26', 'r', 'reply1066') \
        .response("Забудь об этом. У меня есть несколько вопросов…", 'DMORTE.D_s31', 'r', 'reply1067') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1149').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s26', '# from 25.0 25.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Просто поверь мне… Неважно, насколько крутым ты себя считаешь и что ты им скажешь, — они тебя схватят. Ты не настолько силен, чтобы пробиться через стены гробницы или пережить жар стихийного плана огня. Пробуждение из мертвых — не лучшая затея, пока вокруг столько стражи. Не будь идиотом.", 's26', 'say1068') \
    .with_responses() \
        .response("И каков твой план?..", 'DMORTE.D_s23', 'r', 'reply1069') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1070') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1148').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s27', '# from 24.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Судьба может присесть на алебарду — мне-то какое дело. Слушай, шеф. Обрати внимание на то, как часто слова 'плохой' и 'судьба' встречаются в одном и том же предложении, и тебе откроется одна из тайн жизни. Лучше всего сказать судьбе завернуться в остролистник: *всегда* есть другой вариант, который судьба не показывает.", 's27', 'say1071') \
    .with_responses() \
        .response("Буду иметь в виду.", 'DMORTE.D_s28', 'r', 'reply1073') \
        .response("Хватит болтовни. Так какой у тебя план?", 'DMORTE.D_s28', 'r', 'reply1074') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s28', '# from 24.0 27.0 27.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну хорошо… а теперь вперед, сваливаем отсюда. Двери выхода заперты, так что нам понадобится ключ. Есть шанс, что он у одного из ходячих трупов в этой комнате.", 's28', 'say1072') \
    .with_responses() \
        .response("Ходячих трупов?", 'DMORTE.D_s240', 'r', 'reply1079').with_action(lambda: _r1079_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s29', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "О, значит, *теперь* тебе снова захотелось поговорить с Мортом, а?", 's29', 'say996') \
    .with_responses() \
        .response("Кто ты?", 'DMORTE.D_s1', 'r', 'reply1075') \
        .response("Где я?", 'DMORTE.D_s6', 'r', 'reply1076') \
        .response("Ты знаешь, как мне отсюда выбраться?", 'DMORTE.D_s21', 'r', 'reply1077').with_condition(lambda: _r1077_condition(gsm)) \
        .response("Как я попал сюда?", 'DMORTE.D_s14', 'r', 'reply1078') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1086').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s30', '# from 21.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Трухлявые? Они смотрят за этим местом. Ты их не пропустишь… Они питают особую тягу к черному цвету и окоченевшему выражению лица. Они зовут себя 'тленными' и притворяются фракцией, но они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Держись от них подальше.", 's30', 'say1082') \
    .with_responses() \
        .response("И как мне выбраться отсюда?", 'DMORTE.D_s21', 'r', 'reply1083').with_condition(lambda: _r1083_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1084') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1144').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s31', '# from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да? И *какие* же вопросы?", 's31', 'say1091') \
    .with_responses() \
        .response("Кто ты?", 'DMORTE.D_s1', 'r', 'reply1092') \
        .response("Где я?", 'DMORTE.D_s6', 'r', 'reply1093') \
        .response("Как я попал сюда?", 'DMORTE.D_s20', 'r', 'reply1094') \
        .response("Как мне выбраться отсюда?", 'DMORTE.D_s21', 'r', 'reply1095').with_condition(lambda: _r1095_condition(gsm)) \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1096').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s32', '# from 16.0 19.0 20.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты что *ничего* не помнишь? Брось, да это же куча танаррьего дерьма. Ты серьезно?", 's32', 'say1100') \
    .with_responses() \
        .response("Да.", 'DMORTE.D_s33', 'r', 'reply1101') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1102') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1103').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s33', '# from 32.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Во имя всех богов и их матерей… Э-э, шеф, скорее всего, твои воспоминания просто погрузились глубоко в твою черепушку. Если повезет, они скоро всплывут, поверь мне. Должно быть, нелегкая у тебя ночка выдалась. Надеюсь, ты никого не покалечил и не повздорил со стражей… Кстати говоря, ты случайно не один из тех чувствующих, которые занимаются членовредительством, или это кто-то другой подарил тебе эти шрамы?", 's33', 'say1104') \
    .with_responses() \
        .response("Чувствующих?", 'DMORTE.D_s12', 'r', 'reply1105') \
        .response("Шрамы?", 'DMORTE.D_s13', 'r', 'reply1106') \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1107') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1108').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s34', '# from 13.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Похоже на указания… — Морт прочищает горло. — Посмотрим… начинается с…  ЗАМЕТКА: Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо сосредоточиться. Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых.  Не потеряй этот клочок кожи ИЛИ дневник, иначе мы снова окажемся в Стиксе, понятно? И поверь мне, что бы ты не делал, НЕ ГОВОРИ никому, КТО ты, ЧТО случилось с тобой или ОТКУДА ты пришел, иначе ты окажешься на полпути в крематорий.", 's34', 'say1117') \
    .with_responses() \
        .response("Неудивительно, что моя спина болит. Ты знаешь кого-нибудь с именем Фарод?", 'DMORTE.D_s36', 'r', 'reply1118') \
        .response("Ты не видел при мне дневника, когда я там лежал?", 'DMORTE.D_s35', 'r', 'reply1119') \
        .response("Ты знаешь, как мне отсюда выбраться?", 'DMORTE.D_s21', 'r', 'reply1120').with_condition(lambda: _r1120_condition(gsm)) \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1121') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1122').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s35', '# from 34.1 36.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет… тебя обобрали догола, когда доставили сюда. Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле.", 's35', 'say1123') \
    .with_responses() \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DMORTE.D_s36', 'r', 'reply1124') \
        .response("Как мне выбраться отсюда?", 'DMORTE.D_s21', 'r', 'reply1125').with_condition(lambda: _r1125_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1126') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1127').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s36', '# from 34.0 35.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет, не знаю. С другой стороны, я вообще мало кого знаю. В общем, кто-нибудь да знает, как добраться до этого Фарода… то есть, как только мы выберемся отсюда.", 's36', 'say1128') \
    .with_responses() \
        .response("При мне не было дневника, когда я там лежал?", 'DMORTE.D_s35', 'r', 'reply1129') \
        .response("Как мне выбраться отсюда?", 'DMORTE.D_s21', 'r', 'reply1130').with_condition(lambda: _r1130_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s31', 'r', 'reply1131') \
        .response("Не обращать внимания на Морта и изучить комнату.", EXIT, 'r', 'reply1132').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s37', '# from - // Check EXTENDS ~DHARLOTN~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Вот это удача! Кажется, то, что мы ищем, мы в твоем скромном убежище, красавица.", 's37', 'say1818') \
    .with_responses() \
        .response("На самом деле, я потерял дневник.", EXIT, 'r', 'reply1820').with_action(lambda: _dispose()) \
        .response("Может, ты поможешь мне найти то, что я потерял, красавица.", EXIT, 'r', 'reply1819').with_action(lambda: _dispose()) \
        .response("Я ничего не терял, но у меня есть несколько вопросов…", EXIT, 'r', 'reply1821').with_action(lambda: _dispose()) \
        .response("Я должен идти. Прощай.", EXIT, 'r', 'reply1822').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s38', '# from - // Check EXTENDS ~DHARLOTN~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ты не можешь одолжить мне немного звенелок… э-э… у меня этого так давно не было.", 's38', 'say1844') \
    .with_responses() \
        .response("Э… полагаю, это никому *не повредит*…", EXIT, 'r', 'reply1845').with_action(lambda: _r1845_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Я даже не хочу спрашивать, как ты намереваешься это совершить.", EXIT, 'r', 'reply1846').with_action(lambda: _r1846_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Послушай, Морт… вообще-то, нам нужно идти. Прощай, красавица.", EXIT, 'r', 'reply1847').with_action(lambda: _r1847_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s39', '# from - // Check EXTENDS ~DANNAH~ : 5')\
    .with_npc_lines() \
        .line(SPEAKER, "Она имеет в виду деньги.", 's39', 'say2000') \
    .with_responses() \
        .response("О.", EXIT, 'r', 'reply2001').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s40', '# from - // Check EXTENDS ~DANNAH~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "Это же очевидно, что ни ты, ни твой хвост не продаются. Ты бы все равно на них не прожила.", 's40', 'say2048') \
    .with_responses() \
        .response("Э…", EXIT, 'r', 'reply2049').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s41', '# from - // Check EXTENDS ~DANNAH~ : 17')\
    .with_npc_lines() \
        .line(SPEAKER, "Она — тифлинг, шеф. В них есть немного демонической крови, из-за которой они становятся немного подозрительными и бдительными… симпатичный хвостик, кстати. Жаль только, что он приделан к такому уродливому телу.", 's41', 'say2067') \
    .with_responses() \
        .response("Ого, а…", EXIT, 'r', 'reply2068').with_action(lambda: _dispose()) \
        .response("Эй, неплохо сказано, Морт.", EXIT, 'r', 'reply2069').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s42', '# from - // Check EXTENDS ~DANNAH~ : 14')\
    .with_npc_lines() \
        .line(SPEAKER, "Что же ты не *пытаешься* расколоть мою челюсть? Только и дело, что слышу пустую болтовню от всяких отбросов Улья! Давай, попробуй! Я тебе ноги откушу!", 's42', 'say2074') \
    .with_responses() \
        .response("Хватит!", EXIT, 'r', 'reply2076').with_action(lambda: _dispose()) \
        .response("Хватит! Мы уходим.", EXIT, 'r', 'reply2075').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s43', '# from - // Check EXTENDS ~DANNAH~ : 21')\
    .with_npc_lines() \
        .line(SPEAKER, "Мимир — это говорящая энциклопедия. Это я, шеф.", 's43', 'say2079') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply2080').with_action(lambda: _r2080_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s44', '# from - // Check EXTENDS ~DGITH~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Бросай это дело, шеф. Говорить с гитом — все равно что из остролистника варенье делать. Пойдем.", 's44', 'say2348') \
    .with_responses() \
        .response("Это гит?", 'DMORTE.D_s135', 'r', 'reply9029').with_condition(lambda: _r9029_condition(gsm)).with_action(lambda: _r9029_action(gsm)) \
        .response("Это гит?", 'DMORTE.D_s135', 'r', 'reply9030').with_condition(lambda: _r9030_condition(gsm)) \
        .response("Я пока еще не готов уйти. Сначала я задам ему пару вопросов…", EXIT, 'r', 'reply9031').with_action(lambda: _dispose()) \
        .response("Оставить гита в покое.", EXIT, 'r', 'reply9032').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s45', '# from - // Check EXTENDS ~DGITH~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Не стоит утруждать себя пустыми разговорами со старым Незнание-это-Счастье. Пошли отсюда, шеф.", 's45', 'say2354') \
    .with_responses() \
        .response("Я пока еще не готов уйти. Сначала я задам ему пару вопросов…", EXIT, 'r', 'reply9033').with_action(lambda: _dispose()) \
        .response("Оставить гита в покое.", EXIT, 'r', 'reply9034').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s46', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's46', 'say2601') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s47', 'r', 'reply2603').with_action(lambda: _r2603_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s47', 'r', 'reply2602').with_action(lambda: _r2602_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s47', '# from 46.0 46.1 121.1 121.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's47', 'say2604') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s49', 'r', 'reply2605').with_action(lambda: _r2605_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s48', 'r', 'reply2606') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s48', 'r', 'reply2607') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply2608').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s48', '# from 47.1 47.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's48', 'say2609') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply2610').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s49', '# from 47.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's49', 'say2611') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply2612').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s50', '# from - // Check EXTENDS ~DTEST~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Что? Что такое? Это девчонка досаждает тебе?", 's50', 'say2709') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s51', '# from - // Check EXTENDS ~DTEST~ : 0')\
    .with_npc_lines() \
        .line(SPEAKER, "Верю. Наверное, будет лучше, если он вернется в основное меню и избавит меня от этого.", 's51', 'say2711') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s52', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, силы небесные! Чертов дабус.", 's52', 'say2782') \
    .with_responses() \
        .response("Что не так?", 'DMORTE.D_s53', 'r', 'reply2783') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s53', '# from 52.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.", 's53', 'say2788') \
    .with_responses() \
        .response("Что за 'дабус'?", 'DMORTE.D_s54', 'r', 'reply2791') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s54', '# from 53.0 // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.", 's54', 'say2789') \
    .with_responses() \
        .response("'Леди Боли'? Кто это?", 'DMORTE.D_s113', 'r', 'reply6952').with_condition(lambda: _r6952_condition(gsm)).with_action(lambda: _r6952_action(gsm)) \
        .response("Что ты можешь рассказать о Леди Боли?", 'DMORTE.D_s113', 'r', 'reply6953').with_condition(lambda: _r6953_condition(gsm)) \
        .response("Понятно.", EXIT, 'r', 'reply6954').with_condition(lambda: _r6954_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s55', '# from - // Check EXTENDS ~DEIVENE~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?", 's55', 'say3473') \
    .with_responses() \
        .response("Что не так с ее руками?", 'DMORTE.D_s56', 'r', 'reply3474').with_action(lambda: _r3474_action(gsm)) \
        .response("Прикоснуться к женщине, привлечь ее внимание.", EXIT, 'r', 'reply3475').with_action(lambda: _dispose()) \
        .response("Оставить ее в покое.", EXIT, 'r', 'reply3476').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s56', '# from 55.0 // Check EXTENDS ~DEIVENE~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.", 's56', 'say3477') \
    .with_responses() \
        .response("Прикоснуться к женщине, привлечь ее внимание.", EXIT, 'r', 'reply3478').with_action(lambda: _dispose()) \
        .response("Оставить ее в покое.", EXIT, 'r', 'reply3479').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s57', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?", 's57', 'say3480') \
    .with_responses() \
        .response("Что не так с ее руками?", 'DMORTE.D_s58', 'r', 'reply3483').with_action(lambda: _r3483_action(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply3484').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s58', '# from 57.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.", 's58', 'say3481') \
    .with_responses() \
        .response("Уйти.", EXIT, 'r', 'reply3482').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s59', '# from - // Check EXTENDS ~DEIVENE~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, у тебя новая подруга, шеф. Может, вас оставить наедине на часок, или?..", 's59', 'say3487') \
    .with_responses() \
        .response("Замолкни, Морт.", EXIT, 'r', 'reply3488').with_action(lambda: _dispose()) \
        .response("Продолжать строить из себя зомби.", EXIT, 'r', 'reply3489').with_action(lambda: _dispose()) \
        .response("Оттолкнуть женщину.", EXIT, 'r', 'reply3490').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s60', '# from - // Check EXTENDS ~DEIVENE~ : 14')\
    .with_npc_lines() \
        .line(SPEAKER, "Это второй случай в моей жизни, когда я счастлив, что у меня нет носа.", 's60', 'say3492') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s61', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Эй! Что ты делаешь?", 's61', 'say3870') \
    .with_responses() \
        .response("Я *хотел* поговорить с этим парнем. Проблемы?", 'DMORTE.D_s62', 'r', 'reply3871').with_action(lambda: _r3871_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply3872').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s62', '# from 61.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.", 's62', 'say3873') \
    .with_responses() \
        .response("Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.", 'DMORTE.D_s64', 'r', 'reply3874').with_action(lambda: _r3874_action(gsm)) \
        .response("Согласен. Идем.", EXIT, 'r', 'reply3875').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s63', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Ты оглох, что ли? Ты что творишь?", 's63', 'say3876') \
    .with_responses() \
        .response("Слушай, я хочу поговорить с этим парнем. Проблемы?", 'DMORTE.D_s64', 'r', 'reply3877').with_action(lambda: _r3877_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply3878').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s64', '# from 62.0 63.0 // Check EXTENDS ~DDUST~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда *не слушай* меня больше — тебя похоронят.", 's64', 'say3879') \
    .with_responses() \
        .response("Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.", EXIT, 'r', 'reply3880').with_action(lambda: _dispose()) \
        .response("А, ты прав. Забудь об этом. Идем.", EXIT, 'r', 'reply3881').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s65', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's65', 'say3964') \
    .with_responses() \
        .response("И что?", 'DMORTE.D_s66', 'r', 'reply3965').with_action(lambda: _r3965_action(gsm)) \
        .response("О… Я не хотел ему навредить.", 'DMORTE.D_s66', 'r', 'reply3966').with_action(lambda: _r3966_action(gsm)) \
        .response("Ну, тогда ладно. Может, в другой раз.", 'DMORTE.D_s66', 'r', 'reply3967') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s66', '# from 65.0 65.1 65.2 // Check EXTENDS ~DSKELW~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.", 's66', 'say3968') \
    .with_responses() \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply3969').with_condition(lambda: _r3969_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply3970').with_condition(lambda: _r3970_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply3971').with_condition(lambda: _r3971_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, может быть, в другой раз.", 'DMORTE.D_s67', 'r', 'reply3972').with_condition(lambda: _r3972_condition(gsm)).with_action(lambda: _r3972_action(gsm)) \
        .response("Неважно, может быть, в другой раз.", EXIT, 'r', 'reply3973').with_condition(lambda: _r3973_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s67', '# from 66.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's67', 'say3974') \
    .with_responses() \
        .response("Седобородый?", 'DMORTE.D_s68', 'r', 'reply3975') \
        .response("Не думаю, что он имеет что-то против.", 'DMORTE.D_s69', 'r', 'reply3976') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s70', 'r', 'reply3977') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s68', '# from 67.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.", 's68', 'say3978') \
    .with_responses() \
        .response("Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?", 'DMORTE.D_s69', 'r', 'reply3979') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s70', 'r', 'reply3980') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s69', '# from 67.1 68.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.", 's69', 'say3981') \
    .with_responses() \
        .response("А ты, значит, нет?", 'DMORTE.D_s70', 'r', 'reply3982') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply3983').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s70', '# from 67.2 68.1 69.0 127.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.", 's70', 'say3984') \
    .with_responses() \
        .response("Да? Зато у *меня* все при себе.", 'DMORTE.D_s71', 'r', 'reply3985') \
        .response("Идем.", EXIT, 'r', 'reply3986').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s71', '# from 70.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.", 's71', 'say3987') \
    .with_responses() \
        .response("Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.", 'DMORTE.D_s72', 'r', 'reply3988').with_action(lambda: _r3988_action(gsm)) \
        .response("Идем.", EXIT, 'r', 'reply3989').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s72', '# from 71.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Помощь тебе в побеге из препараторской только что теперь добавлена в мой растущий список сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.", 's72', 'say3990') \
    .with_responses() \
        .response("Очень приятно это слышать. Идем.", EXIT, 'r', 'reply3991').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s73', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт скалит зубы.", 's73', 'say4018') \
    .with_responses() \
        .response("Ну, так да или?..", 'DMORTE.D_s74', 'r', 'reply4019') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s74', '# from 73.0 // Check EXTENDS ~DGIANTSK~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Ой… извини. Морт подлетает к голове скелета, смотрит на нее, затем спускается вниз, попутно изучая доспехи и клинок. О да. Да, думаю, такое подойдет.", 's74', 'say4020') \
    .with_responses() \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4023').with_condition(lambda: _r4023_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4024').with_condition(lambda: _r4024_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ну не знаю. Оно такое здоровое, вряд ли ты сможешь с таким управиться.", 'DMORTE.D_s75', 'r', 'reply4025') \
        .response("Я думаю, лучше оставить его в покое.", 'DMORTE.D_s75', 'r', 'reply4026') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s75', '# from 74.2 74.3 // Check EXTENDS ~DGIANTSK~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "А какого тогда Баатора ты СПРАШИВАЕШЬ меня? Практикуешься в навыках жестокости? — Морт негодующе раскачивается. — И это после всего, что я сделал для тебя…", 's75', 'say4021') \
    .with_responses() \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4027').with_condition(lambda: _r4027_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4028').with_condition(lambda: _r4028_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я думаю о твоей безопасности, Морт. Я опасаюсь, что присоединив твою голову к этому, причиню какой-нибудь вред тебе.", 'DMORTE.D_s76', 'r', 'reply4029').with_action(lambda: _r4029_action(gsm)) \
        .response("Все же я думаю, что лучше оставить его в покое. Идем отсюда.", EXIT, 'r', 'reply4030').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s76', '# from 75.2 // Check EXTENDS ~DGIANTSK~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт уставился на тебя. Мы что теперь, ЖЕНАТЫ? Что это за бред — 'я не хочу причинить тебе вред'? — Морт выразительно на тебя смотрит. — Если ты ПО-НАСТОЯЩЕМУ обо мне заботишься, то найди способ закрепить мою голову на теле гигантского скелета.", 's76', 'say4022') \
    .with_responses() \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4031').with_condition(lambda: _r4031_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Хорошо… секунду, я вытащу из него голову.", EXIT, 'r', 'reply4032').with_condition(lambda: _r4032_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Извини, я не так сильно о тебе забочусь. Идем.", EXIT, 'r', 'reply4033').with_action(lambda: _dispose()) \
        .response("Я говорю, оставь его в покое. А теперь идем отсюда.", EXIT, 'r', 'reply4034').with_condition(lambda: _r4034_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s77', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Эй! Что ты делаешь?", 's77', 'say4134') \
    .with_responses() \
        .response("Я *хотел* поговорить с этим парнем. Проблемы?", 'DMORTE.D_s78', 'r', 'reply4144').with_action(lambda: _r4144_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply4145').with_action(lambda: _r4145_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s78', '# from 77.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.", 's78', 'say4135') \
    .with_responses() \
        .response("Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.", 'DMORTE.D_s80', 'r', 'reply4142').with_action(lambda: _r4142_action(gsm)) \
        .response("Согласен. Идем.", EXIT, 'r', 'reply4143').with_action(lambda: _r4143_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s79', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Ты оглох, что ли? Ты что творишь?", 's79', 'say4136') \
    .with_responses() \
        .response("Слушай, я хочу поговорить с этим парнем. Проблемы?", 'DMORTE.D_s80', 'r', 'reply4140').with_action(lambda: _r4140_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply4141').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s80', '# from 78.0 79.0 // Check EXTENDS ~DDUSTGU~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда *не слушай* меня больше — тебя похоронят.", 's80', 'say4137') \
    .with_responses() \
        .response("Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.", EXIT, 'r', 'reply4138').with_action(lambda: _dispose()) \
        .response("А, ты прав. Забудь об этом. Идем.", EXIT, 'r', 'reply4139').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s81', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Эй! Что ты делаешь?", 's81', 'say4338') \
    .with_responses() \
        .response("Я *хотел* поговорить с этой дамочкой. Проблемы?", 'DMORTE.D_s82', 'r', 'reply4339').with_action(lambda: _r4339_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply4340').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s82', '# from 81.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.", 's82', 'say4341') \
    .with_responses() \
        .response("Спасибо за совет, но *все еще* хочу поговорить с этой дамочкой.", 'DMORTE.D_s84', 'r', 'reply4342').with_action(lambda: _r4342_action(gsm)) \
        .response("Согласен. Идем.", EXIT, 'r', 'reply4343').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s83', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Ты оглох, что ли? Ты что творишь?", 's83', 'say4344') \
    .with_responses() \
        .response("Слушай, я хочу поговорить с этой дамочкой. Проблемы?", 'DMORTE.D_s84', 'r', 'reply4345').with_action(lambda: _r4345_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply4346').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s84', '# from 82.0 83.0 // Check EXTENDS ~DDUSTFEM~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда *не слушай* меня больше — тебя похоронят.", 's84', 'say4347') \
    .with_responses() \
        .response("Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.", EXIT, 'r', 'reply4348').with_action(lambda: _dispose()) \
        .response("А, ты прав. Забудь об этом. Идем.", EXIT, 'r', 'reply4349').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s85', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепотом вклинивается в разговор. О силы… этот пень — *анархист*. Строить из себя зомби — это первое, что может взбрести в их пустые головы.", 's85', 'say4675') \
    .with_responses() \
        .response("Анархист?", 'DMORTE.D_s86', 'r', 'reply4676').with_action(lambda: _r4676_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s86', '# from 85.0 // Check EXTENDS ~DVAXIS~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Анархисты… это такая фракция… Похоже, Морт еле сдерживает поток оскорблений, но затем замечает, что зомби смотрит на вас обоих, внимательно слушая. …они, э, хотят *освободить* всех от оков правительства. Свергнуть старый порядок, чтобы установить новый — без никаких порядков.", 's86', 'say4677') \
    .with_responses() \
        .response("Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.", EXIT, 'r', 'reply4678').with_action(lambda: _r4678_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ложь: Похоже на благородное стремление. Любой анархист, посвятивший себя столь высокой цели, *определенно* является мне другом.", EXIT, 'r', 'reply4679').with_action(lambda: _r4679_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Это все довольно… противоречиво.", EXIT, 'r', 'reply4680').with_action(lambda: _dispose()) \
        .response("Это одна из самых идиотских вещей, которую я когда-либо слышал.", EXIT, 'r', 'reply4681').with_action(lambda: _dispose()) \
        .response("Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.", EXIT, 'r', 'reply4682').with_action(lambda: _r4682_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s87', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепотом: Он интересуется, не спятил ли ты, не слетел с катушек, не выжил из ума… и я, кстати, тоже. А теперь выкинь это 'Я очнулся из мертвых' из своего лексикона, хорошо?! Ты ставишь меня в глупое положение.", 's87', 'say4683') \
    .with_responses() \
        .response("Я смущаю ТЕБЯ?", 'DMORTE.D_s88', 'r', 'reply4684') \
        .response("Я просто хотел узнать, о чем этот… труп… говорит. Ясно?", 'DMORTE.D_s88', 'r', 'reply4685') \
        .response("Не моя вина, что никто в этом сумасшедшем… 'чокнутом'… месте не говорит нормально… или хотя бы не ВЫГЛЯДИТ так.", 'DMORTE.D_s88', 'r', 'reply4686').with_condition(lambda: _r4686_condition(gsm)) \
        .response("Слушай, я НЕ хочу лгать этому парню. Лучше говорить с ним напрямую.", 'DMORTE.D_s88', 'r', 'reply4687').with_action(lambda: _r4687_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s88', '# from 87.0 87.1 87.2 87.3 // Check EXTENDS ~DVAXIS~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт вздыхает. Слушай, шеф… ты должен понимать свою ситуацию. Ты не сможешь разгуливать, рассказывая всем одну только ПРАВДУ. Мы не должны делать себя целями ловца кроликов, ясно?", 's88', 'say4688') \
    .with_responses() \
        .response("Ловец кроликов? Цели? Что это… а, неважно.", EXIT, 'r', 'reply4689').with_action(lambda: _dispose()) \
        .response("Замолкни, Морт.", EXIT, 'r', 'reply4690').with_action(lambda: _dispose()) \
        .response("Я… я запомню это. Мне нужно поговорить с этим 'зомби'.", EXIT, 'r', 'reply4691').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s89', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Погоди… — говорит Морт удивленно. — Да этот пень — *анархист*. Ха. Строить из себя зомби — это первое, что может взбрести в их пустые головы.", 's89', 'say4692') \
    .with_responses() \
        .response("Анархист?", 'DMORTE.D_s90', 'r', 'reply4693').with_action(lambda: _r4693_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s90', '# from 89.0 // Check EXTENDS ~DVAXIS~ : 71')\
    .with_npc_lines() \
        .line(SPEAKER, "Анархисты — это фракция, которая тратит свое время на слежку за представителями власти и на поиски способов низвергнуть все, от чего несет порядком или контролем, — Морт фыркает. — Анархисты считают, что каждый пень на планах должен быть свободен и счастлив искать свою собственную 'правду', как только правительство будет сожжено дотла. Они хотят основать новый порядок, в котором не будет никакого порядка.", 's90', 'say4694') \
    .with_responses() \
        .response("Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.", EXIT, 'r', 'reply4695').with_action(lambda: _r4695_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Это все довольно… противоречиво.", EXIT, 'r', 'reply4696').with_action(lambda: _dispose()) \
        .response("Это одна из самых идиотских вещей, которую я когда-либо слышал.", EXIT, 'r', 'reply4697').with_action(lambda: _dispose()) \
        .response("Как хочешь.", EXIT, 'r', 'reply4698').with_action(lambda: _dispose()) \
        .response("Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.", EXIT, 'r', 'reply4699').with_action(lambda: _r4699_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s91', '# from - // Check EXTENDS ~DVAXIS~ : 43')\
    .with_npc_lines() \
        .line(SPEAKER, "Он говорит, что этот Фарод продал очень много жмуриков… трупов… тленным. Ну, сборщики занимаются этим — находят тела мертвых и продают их тленным. Похоже, этот Фарод запродал так много жмуриков, что трухлявые начали подозревать, что он записывает жителей Улья в книгу мертвых раньше положенного срока… ну, ты понял, просто убивает их.", 's91', 'say4700') \
    .with_responses() \
        .response("Понятно. Я хотел бы знать кое-что еще…", EXIT, 'r', 'reply4701').with_action(lambda: _dispose()) \
        .response("Да этот Фарод просто святой. Возможно, позже у меня будут другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4702').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s92', '# from - // Check EXTENDS ~DVAXIS~ : 43')\
    .with_npc_lines() \
        .line(SPEAKER, "Он хочет знать, не обокрал ли кто тебя. Наверно, интересуется, что случилось.", 's92', 'say4703') \
    .with_responses() \
        .response("Понятно. Я хотел бы знать кое-что еще…", EXIT, 'r', 'reply4704').with_action(lambda: _dispose()) \
        .response("Да, я жду не дождусь поймать этого вора. Слушай, возможно, позже у меня будут другие вопросы. Никуда не уходи.", EXIT, 'r', 'reply4705').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s93', '# from - // Check EXTENDS ~DVAXIS~ : 61')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, уж кто тупые, так это *они*. Это точно.", 's93', 'say4706') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s94', '# from - // Check EXTENDS ~DVAXIS~ : 66')\
    .with_npc_lines() \
        .line(SPEAKER, "Не могу поверить, что ты делаешь это. Ты, что, СОВСЕМ спятил?", 's94', 'say4708') \
    .with_responses() \
        .response("Бред, как по мне…", EXIT, 'r', 'reply64535').with_condition(lambda: _r64535_condition(gsm)).with_action(lambda: _r64535_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бред, как по мне…", EXIT, 'r', 'reply64534').with_condition(lambda: _r64534_condition(gsm)).with_action(lambda: _r64534_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s95', '# from - // Check EXTENDS ~DVAXIS~ : 67')\
    .with_npc_lines() \
        .line(SPEAKER, "А нельзя ли ему зашить рот потуже?", 's95', 'say4710') \
    .with_responses() \
        .response("Замоокни, Моот…", EXIT, 'r', 'reply4711').with_action(lambda: _dispose()) \
        .response("Ммм-ХММФ!", EXIT, 'r', 'reply4712').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s96', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Эй! Что ты делаешь?", 's96', 'say5029') \
    .with_responses() \
        .response("Я *хотел* поговорить с этим парнем. Проблемы?", 'DMORTE.D_s97', 'r', 'reply5030').with_action(lambda: _r5030_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply5031').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s97', '# from 96.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.", 's97', 'say5032') \
    .with_responses() \
        .response("Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.", 'DMORTE.D_s99', 'r', 'reply5033').with_action(lambda: _r5033_action(gsm)) \
        .response("Согласен. Идем.", EXIT, 'r', 'reply5034').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s98', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Ты оглох, что ли? Ты что творишь?", 's98', 'say5035') \
    .with_responses() \
        .response("Слушай, я хочу поговорить с этим парнем. Проблемы?", 'DMORTE.D_s99', 'r', 'reply5036').with_action(lambda: _r5036_action(gsm)) \
        .response("Ничего. Идем.", EXIT, 'r', 'reply5037').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s99', '# from 97.0 98.0 // Check EXTENDS ~DSOEGO~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда *не слушай* меня больше — тебя похоронят.", 's99', 'say5038') \
    .with_responses() \
        .response("Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.", EXIT, 'r', 'reply5039').with_action(lambda: _dispose()) \
        .response("А, ты прав. Забудь об этом. Идем.", EXIT, 'r', 'reply5040').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s100', '# from - // Check EXTENDS ~DSOEGO~ : 21')\
    .with_npc_lines() \
        .line(SPEAKER, "Что ты *наделал*? Если ты хочешь убить его, сделай это!", 's100', 'say5041') \
    .with_responses() \
        .response("Я это и *хотел*! Я свернул ему шею! Он не должен теперь шевелиться!", EXIT, 'r', 'reply5042').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s101', '# from - // Check EXTENDS ~DSOEGO~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "По крайней мере он *ходить* умеет, — Морт фыркает. — Радость о полета пропадает в тот момент, когда мне хочется кого-то пнуть.", 's101', 'say5043') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s102', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф! Ты что творишь?!", 's102', 'say5049') \
    .with_responses() \
        .response("Я хотел поговорить с этим писарем. Он может кое-что знать о том, как я попал сюда.", 'DMORTE.D_s103', 'r', 'reply5050') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s103', '# from 102.0 // Check EXTENDS ~DDHALL~ : 0')\
    .with_npc_lines() \
        .line(SPEAKER, "Послушай, трясти черепушкой с трухлявыми — это ПОСЛЕДНЯЯ мысль, которая должна…", 's103', 'say5052') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s104', '# from - // Check EXTENDS ~DDHALL~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "И мы *тем более* не должны болтать с больными трухляками. Давай, пошли отсюда. Чем быстрее мы свалим отсюда, тем лучш…", 's104', 'say5053') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s105', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ты как, вернулся? Ты вроде как завис.", 's105', 'say6071') \
    .with_responses() \
        .response("Нет, я в порядке. Ты знаешь, что это был за дух?", 'DMORTE.D_s106', 'r', 'reply6075').with_action(lambda: _r6075_action(gsm)) \
        .response("Я в порядке. Идем.", EXIT, 'r', 'reply6076').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s106', '# from 105.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э? Дух?", 's106', 'say6072') \
    .with_responses() \
        .response("Ну, призрак, с котором я разговаривал. Призрак женщины.", 'DMORTE.D_s107', 'r', 'reply6077') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s107', '# from 106.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты тряс своей черепушкой с какой-то женщиной? Где? — Морт недоуменно оглядывается. — А как она выглядела?", 's107', 'say6073') \
    .with_responses() \
        .response("Она была прямо над могилой. Разве ты ее не видел?", 'DMORTE.D_s108', 'r', 'reply6078') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s108', '# from 107.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… нет, просто ты ненадолго завис и стоял как вкопанный. Я уж стал бояться, что ты снова свихнешься и набросишься на меня.", 's108', 'say6074') \
    .with_responses() \
        .response("Нет, я в порядке… кажется. Идем.", EXIT, 'r', 'reply6079').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s109', '# from - // Check EXTENDS ~DPOST~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Это напоминает мне одну мою работенку. Кажется, он смущен. Ну, только… без махания руками.", 's109', 'say6324') \
    .with_responses() \
        .response("Осмотреть труп.", EXIT, 'r', 'reply6325').with_condition(lambda: _r6325_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Осмотреть труп.", EXIT, 'r', 'reply6326').with_condition(lambda: _r6326_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Хм-м. Интересно, это сработает с другими записками?..", EXIT, 'r', 'reply6327').with_condition(lambda: _r6327_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Хм-м. Интересно, это сработает с другими записками?..", EXIT, 'r', 'reply6328').with_condition(lambda: _r6328_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Осмотреть другие записки.", EXIT, 'r', 'reply6329').with_condition(lambda: _r6329_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Использовать на трупе свою способность История костей.", EXIT, 'r', 'reply6330').with_condition(lambda: _r6330_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6331').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s110', '# from - // Check EXTENDS ~DS42~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's110', 'say6609') \
    .with_responses() \
        .response("И что?", EXIT, 'r', 'reply6658').with_action(lambda: _r6658_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("О… Я не хотел ему навредить.", EXIT, 'r', 'reply6659').with_action(lambda: _r6659_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ну, тогда ладно. Может, в другой раз.", EXIT, 'r', 'reply6660').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s111', '# from - // Check EXTENDS ~DS42~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's111', 'say6610') \
    .with_responses() \
        .response("Седобородый?", EXIT, 'r', 'reply6661').with_action(lambda: _dispose()) \
        .response("Не думаю, что он имеет что-то против.", EXIT, 'r', 'reply6662').with_action(lambda: _dispose()) \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", EXIT, 'r', 'reply6663').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s112', '# from - // Check EXTENDS ~DS42~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Может, уже хватит? У него руки сейчас отвалятся.", 's112', 'say6611') \
    .with_responses() \
        .response("Скрестить свои руки.", EXIT, 'r', 'reply6664').with_condition(lambda: _r6664_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Подстроиться под движения скелета… посмотреть, что получится.", EXIT, 'r', 'reply6665').with_condition(lambda: _r6665_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Э…", EXIT, 'r', 'reply6666').with_action(lambda: _dispose()) \
        .response("Оставить скелета в покое.", EXIT, 'r', 'reply6667').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s113', '# from 54.0 54.1 // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.", 's113', 'say6771') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply2784').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s114', '# from - // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.", 's114', 'say6784') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply6955').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s115', '# from - // Check EXTENDS ~DANNAH~ : 43')\
    .with_npc_lines() \
        .line(SPEAKER, "Ха, да *есть* у них имена. Я уверен в этом.", 's115', 'say6786') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s116', '# from - // Check EXTENDS ~DDABUS~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Вот *ты* и скажи, бесовка.", 's116', 'say6790') \
    .with_responses() \
        .response("Хватит, Морт. Анна, ты можешь задать ему другие вопросы?", EXIT, 'r', 'reply6956').with_action(lambda: _dispose()) \
        .response("Забудь. Уходим отсюда.", EXIT, 'r', 'reply6957').with_action(lambda: _r6957_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s117', '# from - // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.", 's117', 'say6794') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply6958').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s118', '# from - // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.", 's118', 'say6797') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply6959').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s119', '# from - // Check EXTENDS ~DDABUS~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.", 's119', 'say6800') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply6960').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s120', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Отвернувшись, ты замечаешь, что Морт уставился на тебя. А? А?", 's120', 'say7040') \
    .with_responses() \
        .response("Что такое?", 'DMORTE.D_s121', 'r', 'reply7055') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s121', '# from 120.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты *видел*, как эта мертвая красотка меня осматривала? — зубы Морта стучат в предвкушении. — Она ищет какого-то счастливчика-рубаку, который согреет ее уютненький гробик.", 's121', 'say7041') \
    .with_responses() \
        .response("*Пожалуйста*, только не начинай.", 'DMORTE.D_s122', 'r', 'reply7056').with_condition(lambda: _r7056_condition(gsm)).with_action(lambda: _r7056_action(gsm)) \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s47', 'r', 'reply7057').with_condition(lambda: _r7057_condition(gsm)).with_action(lambda: _r7057_action(gsm)) \
        .response("Что, ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s47', 'r', 'reply7058').with_condition(lambda: _r7058_condition(gsm)).with_action(lambda: _r7058_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s122', '# from 121.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт игнорирует тебя, становясь задумчивым. Вообще-то я не возражаю против внимания к себе… просто мне больше нравится, когда за мной видят нечто большее, чем просто череп, понимаешь? У меня есть чувства, которые доминируют над моими животными инстинктами. Я хочу уважения, а не просто ночного летания по мавзолею.", 's122', 'say7042') \
    .with_responses() \
        .response("Продолжай в том же духе, и *я* отправлю тебя куда-нибудь полетать.", 'DMORTE.D_s123', 'r', 'reply7059') \
        .response("Морт, *ты* — череп. Для всех ты только череп. Смирись с этим.", 'DMORTE.D_s124', 'r', 'reply7060') \
        .response("Понимаю. А теперь идем отсюда, хорошо?", EXIT, 'r', 'reply7061').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s123', '# from 122.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ого, шеф… Морт немного отлетает, чтобы ты не смог до него дотянуться. Женщинам больше нравятся любовники, а не бойцы.", 's123', 'say7043') \
    .with_responses() \
        .response("Ты, наверное, *последний* из всех, от кого я хотел бы слушать советы по части романтики.", 'DMORTE.D_s126', 'r', 'reply7062') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply7063').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s124', '# from 122.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, я просто череп, но у меня большое сердце.", 's124', 'say7044') \
    .with_responses() \
        .response("Вообще-то, у тебя его *тоже* нет.", 'DMORTE.D_s125', 'r', 'reply7064') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply7065').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s125', '# from 124.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тебе наплевать на мою жизнь, мои мечты и чаяния?! Отлично, ну и пусть. У меня нет сердца, зато у меня есть *душа*.", 's125', 'say7045') \
    .with_responses() \
        .response("Ну, вообще-то, я могу поспорить на что угодно, что… а, забудь. Идем.", EXIT, 'r', 'reply7066').with_action(lambda: _dispose()) \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply7067').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s126', '# from 123.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Будь у тебя хоть половина того здравого смысла, с которым ты умер, ты бы понял, — голос Морта становится жутко самодовольным. — Что касается летописей любви, отмечу, что все они были написаны мной.", 's126', 'say7046') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply7068').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s127', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Этот слишком чистый… на нем почти не осталось мяса. К тому же, я никогда не смогу очистить кости от этой побелки.", 's127', 'say7071') \
    .with_responses() \
        .response("Не знаю, если он — 'слишком чистый'… то тебе стоит изучить значение слова чистота.", 'DMORTE.D_s70', 'r', 'reply7076') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply7077').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s128', '# from - // Check EXTENDS ~DHIVEF1~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Точно!", 's128', 'say7130') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s129', '# from - // Check EXTENDS ~DHARLOTN~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Мимир — это говорящая энциклопедия. Это я, шеф.", 's129', 'say7187') \
    .with_responses() \
        .response("Понятно. Ладно, не парься насчет этого, Морт. Если поглядеть на нее, то я скорее спасаю тебя от второй смерти.", EXIT, 'r', 'reply7483').with_action(lambda: _r7483_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Просто уходим отсюда. Прощай, красавица.", EXIT, 'r', 'reply7484').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s130', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт, словно загипнотизированный, очарованно слушает поток оскорблений, изливающийся изо рта проститутки. После этой словесной лавины Морт несколько мгновений молчит, затем поворачивается к тебе. Ого, шеф. Есть несколько новых ругательств в моем старом добром арсенале. Он поворачивается назад к переводящей дыхание проститутке. И я тебя тоже люблю. [MRT387]", 's130', 'say7188') \
    .with_responses() \
        .response("Уйти.", EXIT, 'r', 'reply7485').with_action(lambda: _r7485_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s131', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ого, шеф. Морт встревает прежде, чем ты заговариваешь с существом. Лучше захлопнись. Тебе не следует трясти своей черепушкой с нечистью на улице. Пойдем.", 's131', 'say7775') \
    .with_responses() \
        .response("Я хочу задать ему несколько вопросов…", 'DMORTE.D_s132', 'r', 'reply7776') \
        .response("Оставить существо в покое.", EXIT, 'r', 'reply7777').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s132', '# from 131.0 // Check EXTENDS ~ABISHAB~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет, не хочешь. Морт украдкой смотрит на существо, затем поворачивается назад, понижая голос до шепота. Они очень обидчивы. Давай уйдем отсюда.", 's132', 'say7778') \
    .with_responses() \
        .response("Я все же рискну.", EXIT, 'r', 'reply7779').with_action(lambda: _dispose()) \
        .response("Оставить существо в покое.", EXIT, 'r', 'reply7780').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s133', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Видя, что ты собираешься заговорить с существом, Морт шумно вздыхает.", 's133', 'say7805') \
    .with_responses() \
        .response("Да?", 'DMORTE.D_s134', 'r', 'reply7806') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s134', '# from 133.0 // Check EXTENDS ~ABISHAB~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "А, нет, ничего… жизнь — лучший учитель, знаешь ли, — он кивает на существо. — Давай, продолжай.", 's134', 'say7807') \
    .with_responses() \
        .response("Я так и сделаю.", EXIT, 'r', 'reply7808').with_action(lambda: _dispose()) \
        .response("Ладно, неважно. Идем.", EXIT, 'r', 'reply7809').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s135', '# from 44.0 44.1 // Check EXTENDS ~DGITH~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, 'гит'… Морт оглядывается на гита, который все еще смотрит на тебя. Поговорим об этом в другой раз.", 's135', 'say2349') \
    .with_responses() \
        .response("Я пока еще не готов уйти. Сначала я задам ему пару вопросов…", EXIT, 'r', 'reply9035').with_action(lambda: _dispose()) \
        .response("Оставить гита в покое.", EXIT, 'r', 'reply9036').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s136', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Брось, шеф… ты убьешь бедолагу, прежде чем тебе удастся его разбудить!", 's136', 'say9860') \
    .with_responses() \
        .response("Ты прав, Морт. Идем.", EXIT, 'r', 'reply9882').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s137', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подлетает. О чем речь, шеф?", 's137', 'say11946') \
    .with_responses() \
        .response("Видишь эти зубы?", 'DMORTE.D_s138', 'r', 'reply11974') \
        .response("Ничего, неважно.", EXIT, 'r', 'reply11975').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s138', '# from 137.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт глядит на твою ладонь. Ух-х-х. Кажется, его покоробило. Вот уж мелкие уродцы, а?", 's138', 'say11947') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s139', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Задвинься, — Морт вздрагивает. — А ты бы хотел, чтобы они оказались в *тебе*?", 's139', 'say11948') \
    .with_responses() \
        .response("Ладно тебе, Морт, кажется, ты им нравишься. Посмотри, как они на тебя смотрят.", 'DMORTE.D_s140', 'r', 'reply11976') \
        .response("Схватить Морта, сунуть зубы ему в рот.", 'DMORTE.D_s141', 'r', 'reply11977').with_action(lambda: _r11977_action(gsm)) \
        .response("Тогда неважно.", EXIT, 'r', 'reply11978').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s140', '# from 139.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Лучше этим мелким засранцам не приближаться ко мне, иначе я… — Морт умолкает. — Знаешь, я понятия не имею, чем угрожать зубам.", 's140', 'say11949') \
    .with_responses() \
        .response("Осмотреть зубы.", EXIT, 'r', 'reply11979').with_action(lambda: _dispose()) \
        .response("Схватить Морта, сунуть зубы ему в рот.", 'DMORTE.D_s141', 'r', 'reply11980').with_action(lambda: _r11980_action(gsm)) \
        .response("Тогда неважно.", EXIT, 'r', 'reply11981').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s141', '# from 139.1 140.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Схватка длится не долго. Ты ловишь Морта в захват — единственное движение, которое ты можешь сделать — и, пока он, кусаясь, пытается освободиться, зубы спрыгивают с твоей руки и налетают на его челюсть. Морт воет, а зубы Ингресс быстро выкорчевывают его старые зубы и прыгают в открывшиеся полости.", 's141', 'say11950') \
    .with_responses() \
        .response("Ну вот, Морт. Ведь было не так плохо?", 'DMORTE.D_s143', 'r', 'reply11982').with_action(lambda: _r11982_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s142', '# from 149.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт продолжает выть. Зубы начинают обустраиваться и пускать корни с жутким хрустом.", 's142', 'say11951') \
    .with_responses() \
        .response("Морт? С тобой все в порядке?", 'DMORTE.D_s143', 'r', 'reply11983').with_action(lambda: _r11983_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s143', '# from 141.0 142.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, Морт тебя не слышит… Он продолжает выть, затем вдруг начинает клацать зубами. Ему удается трижды сильно клацнуть, прежде чем верхние зубы сцепляются с нижними и не дают ему открыть рот.", 's143', 'say11952') \
    .with_responses() \
        .response("Ух ты.", 'DMORTE.D_s144', 'r', 'reply11984') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s144', '# from 143.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт что-то тебе бормочет, его глаза широко раскрыты.", 's144', 'say11953') \
    .with_responses() \
        .response("Значит… они тебе нравятся?", 'DMORTE.D_s145', 'r', 'reply11985').with_condition(lambda: _r11985_condition(gsm)) \
        .response("Морт, ты в порядке?", 'DMORTE.D_s150', 'r', 'reply11986').with_condition(lambda: _r11986_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s145', '# from 144.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Внезапно зубы расцепляются, и Морт делает глубокий вздох. Я *убью* тебя за это, — говорит он. — Это было нечестно.", 's145', 'say11954') \
    .with_responses() \
        .response("Как они тебе?", 'DMORTE.D_s146', 'r', 'reply11987') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s146', '# from 145.0 150.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт пробует двигать челюстью. Странно. Но неплохо, — внезапно зубы превращаются в клыки. — О-о-о! Они меняются! Они превращаются в нормальные зубы, потом в клики, потом обратно… Думаю, они мне понравятся.", 's146', 'say11955') \
    .with_responses() \
        .response("Извини, Морт. Я не желал тебе зла.", 'DMORTE.D_s147', 'r', 'reply11988').with_condition(lambda: _r11988_condition(gsm)) \
        .response("Вот видишь? Разве я не был прав?", 'DMORTE.D_s147', 'r', 'reply11989').with_condition(lambda: _r11989_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s147', '# from 146.0 146.1')\
    .with_npc_lines() \
        .line(SPEAKER, "О, я все еще зол на тебя, — отвечает Морт. Он ухмыляется, его зубы снова превращаются в клыки. Погоди мне.", 's147', 'say11956') \
    .with_responses() \
        .response("Э… месть еще никому не помогала, Морт… Э, пошли.", EXIT, 'r', 'reply11990').with_condition(lambda: _r11990_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Поблагодаришь меня позже. Вот увидишь.", EXIT, 'r', 'reply11991').with_condition(lambda: _r11991_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s148', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Что там? Морт подлетает ближе и смотрит тебе на ладонь. Эй… Кажется, они что-то замышляют, так ведь?", 's148', 'say11957') \
    .with_responses() \
        .response("Точно замышляют, так…", 'DMORTE.D_s149', 'r', 'reply11992') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s149', '# from 148.0')\
    .with_npc_lines() \
        .line(SPEAKER, "То, что происходит дальше, трудно описать… и больно смотреть. Не успеваешь ты закрыть ладонь, как зубы спрыгивают с твоей руки и налетают на его челюсть. Морт воет, а зубы Ингресс быстро выкорчевывают его старые зубы и прыгают в открывшиеся полости.", 's149', 'say11958') \
    .with_responses() \
        .response("Морт!", 'DMORTE.D_s142', 'r', 'reply11993') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s150', '# from 144.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Внезапно зубы расцепляются, и Морт делает глубокий вздох. Я *убью* тебя за это! Ты все спланировал! Я знаю!", 's150', 'say11959') \
    .with_responses() \
        .response("Слушай, я этого не хотел… Я даже предупредил тебя. Э… как они тебе?", 'DMORTE.D_s146', 'r', 'reply11994') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s151', '# from - // Check EXTENDS ~DTEGARIN~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепчет тебе: Босс, не нравится мне это. Они не должны здесь находиться. На Кровавой войне небожители так просто нечисти отпуска не дают. Им что-то *нужно*. Будь осторожен. Тем временем Тегарин продолжает отвечать своему спутнику…", 's151', 'say12389') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s152', '# from - // Check EXTENDS ~DAETHEL~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, я более чем уверен, что эти пни — не самые большие шишки. Мне кажется, что они сбежали и теперь ищут какой-нибудь способ повысить свой статус в Бааторе. Тебе не стоит разговаривать с ними, шеф… непонятно, в какую игру они играют, а тебя они могут поджарить… буквально.", 's152', 'say12449') \
    .with_responses() \
        .response("Хорошо, Морт. Я задам еще парочку вопросов этим двум…", EXIT, 'r', 'reply12450').with_action(lambda: _dispose()) \
        .response("Хорошо, Морт. С этими я закончил.", EXIT, 'r', 'reply12451').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s153', '# from - // Check EXTENDS ~DBARIA~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подлетает поближе и шепчет тебе на ухо: Он *прав*, шеф… Не знаю, что вас так взбесило…", 's153', 'say12466') \
    .with_responses() \
        .response("Хорошо… Я только хотел задать вопрос…", EXIT, 'r', 'reply12553').with_action(lambda: _dispose()) \
        .response("Умолкни, ноющий череп! А ты, козлик, сдохни…", EXIT, 'r', 'reply12554').with_action(lambda: _r12554_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Э, нет… это все *ты*, и ты об этом пожалеешь…", EXIT, 'r', 'reply12555').with_action(lambda: _r12555_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда забудь об этом. Прощай.", EXIT, 'r', 'reply12556').with_action(lambda: _r12556_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s154', '# from - // Check EXTENDS ~DBARIA~ : 20')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, да! То что надо!", 's154', 'say12467') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s155', '# from - // Check EXTENDS ~DCREED~ : 30')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт пытается отстраниться под общим взглядом. Что? Что? Тебе кажется, что будь у него губы, то он бы сейчас невинно посвистывал.", 's155', 'say12621') \
    .with_responses() \
        .response("Ты можешь это объяснить, Морт?", 'DMORTE.D_s156', 'r', 'reply12854') \
        .response("Что такое 'мимир'?", 'DMORTE.D_s157', 'r', 'reply12855').with_condition(lambda: _r12855_condition(gsm)).with_action(lambda: _r12855_action(gsm)) \
        .response("Не обращай на него внимания… Ты можешь ответить на мои вопросы?", EXIT, 'r', 'reply12856').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s156', '# from 155.0 // Check EXTENDS ~DCREED~ : 32')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, я скажу, что мы должны выслушать этого мужчину. Правильно? Морт поворачивается к ловцу крыс и окидывает его тяжелым взглядом.", 's156', 'say12622') \
    .with_responses() \
        .response("Нет… давай лучше выслушаем, что скажешь ты, Морт.", 'DMORTE.D_s158', 'r', 'reply12857') \
        .response("Секунду… что такое 'мимир'?", 'DMORTE.D_s157', 'r', 'reply12858').with_condition(lambda: _r12858_condition(gsm)).with_action(lambda: _r12858_action(gsm)) \
        .response("Повернуться к ловцу крыс.", EXIT, 'r', 'reply12859').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s157', '# from 155.1 156.1 // Check EXTENDS ~DCREED~ : 59')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт смущенно закатывает глаза. Это… говорящая энциклопедия. Не то, чтобы я этим гордился. А теперь давай выслушаем этого приятеля, хорошо?", 's157', 'say12623') \
    .with_responses() \
        .response("Хорошо.", EXIT, 'r', 'reply12860').with_action(lambda: _r12860_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Нет, я выслушал достаточно. Прощай, крысолов.", EXIT, 'r', 'reply12861').with_action(lambda: _r12861_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s158', '# from 156.0 // Check EXTENDS ~DCREED~ : 59')\
    .with_npc_lines() \
        .line(SPEAKER, "Да ладно, шеф… зачем мне тебя отвлекать? Я сказал тебе все полезное, что знаю *сам*. Пусть лучше этот пень выскажется по этой теме.", 's158', 'say12624') \
    .with_responses() \
        .response("Хорошо.", EXIT, 'r', 'reply12862').with_action(lambda: _dispose()) \
        .response("Неважно. Пошли… Прощай, крысолов.", EXIT, 'r', 'reply12863').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s159', '# from - // Check EXTENDS ~DCREED~ : 40')\
    .with_npc_lines() \
        .line(SPEAKER, "Точно, шеф! То, что надо!", 's159', 'say12625') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s160', '# from - // Check EXTENDS ~DCREED~ : 59')\
    .with_npc_lines() \
        .line(SPEAKER, "Умереть, шеф… умереть.", 's160', 'say12626') \
    .with_responses() \
        .response("А вот ты достаточно дружелюбен, крысолов…", EXIT, 'r', 'reply12864').with_action(lambda: _dispose()) \
        .response("Понятно. Еще вопрос…", EXIT, 'r', 'reply12865').with_action(lambda: _dispose()) \
        .response("Спасибо за информацию. Прощай.", EXIT, 'r', 'reply12866').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s161', '# from - // Check EXTENDS ~DCREED~ : 59')\
    .with_npc_lines() \
        .line(SPEAKER, "Умереть, шеф… умереть.", 's161', 'say12627') \
    .with_responses() \
        .response("А… Что ты говорил о людях, которые платят за крыс?", EXIT, 'r', 'reply12867').with_action(lambda: _dispose()) \
        .response("Понятно Я хотел бы узнать о кое-чем еще…", EXIT, 'r', 'reply12868').with_action(lambda: _dispose()) \
        .response("Понятно. Прощай.", EXIT, 'r', 'reply12869').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s162', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, вот уж у кого шарики за ролики заехали, — Морт закатывает глаза. — Бессмысленно общаться с хаоситеками, шеф. Они все из ума выжили.", 's162', 'say13748') \
    .with_responses() \
        .response("Хаоситеки?", 'DMORTE.D_s163', 'r', 'reply13774').with_condition(lambda: _r13774_condition(gsm)).with_action(lambda: _r13774_action(gsm)) \
        .response("Еще раз, кто такие хаоситеки?", 'DMORTE.D_s163', 'r', 'reply13775').with_condition(lambda: _r13775_condition(gsm)).with_action(lambda: _r13775_action(gsm)) \
        .response("Я думал, что смогу что-нибудь у него узнать. Ладно, пойдем отсюда.", EXIT, 'r', 'reply13776').with_condition(lambda: _r13776_condition(gsm)).with_action(lambda: _r13776_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s163', '# from 162.0 162.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Они типа 'фракция', у которой нет никаких правил… кроме того, чтобы не держать у себя в голове одну мысль слишком долго. Иногда их еще называют хаоситами. Полагаю, нет нужды объяснять почему.", 's163', 'say13749') \
    .with_responses() \
        .response("А как тогда к ним приходят люди?", 'DMORTE.D_s164', 'r', 'reply13777') \
        .response("Понятно. Идем.", EXIT, 'r', 'reply13778').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s164', '# from 163.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Они просто привлекают новых людей, словно мух… наверное, тех, кто и так уже достаточно спятил или хаотичен. Не думаю, что у них есть для этого вербовщики… хотя наверняка на их счет ничего нельзя сказать.", 's164', 'say13750') \
    .with_responses() \
        .response("Понятно. Спасибо за информацию.", EXIT, 'r', 'reply13779').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s165', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, вот уж у кого шарики за ролики заехали, — Морт закатывает глаза. — Бессмысленно общаться с хаоситеками, шеф. Они все из ума выжили.", 's165', 'say13828') \
    .with_responses() \
        .response("Хаоситеки?", 'DMORTE.D_s166', 'r', 'reply13986').with_condition(lambda: _r13986_condition(gsm)).with_action(lambda: _r13986_action(gsm)) \
        .response("Еще раз, кто такие хаоситеки?", 'DMORTE.D_s166', 'r', 'reply13987').with_condition(lambda: _r13987_condition(gsm)).with_action(lambda: _r13987_action(gsm)) \
        .response("Я думал, что смогу что-нибудь у него узнать. Ладно, пойдем отсюда.", EXIT, 'r', 'reply13988').with_condition(lambda: _r13988_condition(gsm)).with_action(lambda: _r13988_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s166', '# from 165.0 165.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Они типа 'фракция', у которой нет никаких правил… кроме того, чтобы не держать у себя в голове одну мысль слишком долго. Иногда их еще называют хаоситами. Полагаю, нет нужды объяснять почему.", 's166', 'say13829') \
    .with_responses() \
        .response("А как тогда к ним приходят люди?", 'DMORTE.D_s167', 'r', 'reply13989').with_condition(lambda: _r13989_condition(gsm)) \
        .response("Понятно. Тогда пойдем.", EXIT, 'r', 'reply13990').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s167', '# from 166.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Они просто привлекают новых людей, словно мух… наверное, тех, кто и так уже достаточно спятил или хаотичен. Не думаю, что у них есть для этого вербовщики… хотя наверняка на их счет ничего нельзя сказать.", 's167', 'say13830') \
    .with_responses() \
        .response("Понятно. Спасибо за информацию.", EXIT, 'r', 'reply13991').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s168', '# from - // Check EXTENDS ~DAWAIT~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Ладно, шеф… — шепчет тебе Морт. — Идем. Этот трухлявенький скоро станет удобрением.", 's168', 'say14075') \
    .with_responses() \
        .response("Похоже на то. Пойдем отсюда.", EXIT, 'r', 'reply14275').with_condition(lambda: _r14275_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Похоже на то. Пойдем отсюда.", EXIT, 'r', 'reply14276').with_condition(lambda: _r14276_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Похоже на то. Пойдем отсюда.", EXIT, 'r', 'reply14277').with_condition(lambda: _r14277_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Похоже на то. Пойдем отсюда.", EXIT, 'r', 'reply14278').with_condition(lambda: _r14278_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s169', '# from - // Check EXTENDS ~DADYZOEL~ : 19')\
    .with_npc_lines() \
        .line(SPEAKER, "Порви этого лощеного щеголя, босс! Покажи ему, как это делается!", 's169', 'say15339') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s170', '# from - // Check EXTENDS ~DADYZOEL~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, отвечай на вопросы!", 's170', 'say15340') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s171', '# from - // Check EXTENDS ~DADYZOEL~ : 20')\
    .with_npc_lines() \
        .line(SPEAKER, "Ставлю десять медяков на того здоровенного парня в шрамах! Морт подлетает поближе и шепчет: То есть, на тебя, шеф. Не подведи нас.", 's171', 'say15341') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s172', '# from - // Check EXTENDS ~DADYZOEL~ : 19')\
    .with_npc_lines() \
        .line(SPEAKER, "Ладно, шеф, на этот раз ты его достал! Дерись грязно!", 's172', 'say15342') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s173', '# from - // Check EXTENDS ~DADYZOEL~ : 32')\
    .with_npc_lines() \
        .line(SPEAKER, "Это уж точно, ты, высокомерный надушенный буржуй с сахарной задницей… ты его слышал!", 's173', 'say15343') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s174', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Кто *я* такой? Ха! Я мог бы стать твоим отцом, но какая-то обезьяна меня обошла!", 's174', 'say15344') \
    .with_responses() \
        .response("Морт, помолчи.", 'DMORTE.D_s175', 'r', 'reply15490') \
        .response("Позволить Морту продолжить.", 'DMORTE.D_s175', 'r', 'reply15491') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s175', '# from 174.0 174.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Что-то не так, принцесса? Разучилась говорить? Лучше подбери свою упавшую челюсть, пока что-нибудь в горло не залетело! Все верно, ты меня слышала! Забирай свой лифчик с рюшечками и прячься под юбку к мамке! И передай ей от меня привет!", 's175', 'say15345') \
    .with_responses() \
        .response("Морт, *сейчас же* заткнись.", 'DMORTE.D_s176', 'r', 'reply15492').with_action(lambda: _r15492_action(gsm)) \
        .response("Позволить Морту продолжить.", 'DMORTE.D_s177', 'r', 'reply15493') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s176', '# from 175.0 // Check EXTENDS ~DADYZOEL~ : 33')\
    .with_npc_lines() \
        .line(SPEAKER, "А? О… прости, шеф. Просто такие, как он, выводят меня из себя…", 's176', 'say15346') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s177', '# from 175.1 // Check EXTENDS ~DADYZOEL~ : 33')\
    .with_npc_lines() \
        .line(SPEAKER, "А что, если б я не знал, я бы сказал…", 's177', 'say15347') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s178', '# from - // Check EXTENDS ~DADYZOEL~ : 35')\
    .with_npc_lines() \
        .line(SPEAKER, "Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!", 's178', 'say15348') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s179', '# from - // Check EXTENDS ~DADYZOEL~ : 36')\
    .with_npc_lines() \
        .line(SPEAKER, "Это, э… что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда.", 's179', 'say15349') \
    .with_responses() \
        .response("Но ты ведь НЕ мимир, Морт…", EXIT, 'r', 'reply65537').with_condition(lambda: _r65537_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s180', '# from - // Check EXTENDS ~DADYZOEL~ : 19')\
    .with_npc_lines() \
        .line(SPEAKER, "Брось, шеф… ты же не собираешься спустить ему это с рук? Давай-ка выпорем этого жеманного шалопая! Я займусь его глазами, пока ты будешь выколачивать из него дурь!", 's180', 'say15350') \
    .with_responses() \
        .response("Ты прав… давай с ним разберемся.", EXIT, 'r', 'reply15494').with_action(lambda: _dispose()) \
        .response("Не в этот раз, Морт. Пошли.", EXIT, 'r', 'reply15495').with_action(lambda: _r15495_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s181', '# from 185.0 // Check EXTENDS ~DMFTREE~ : 28')\
    .with_npc_lines() \
        .line(SPEAKER, "А? А, да, шеф, конечно — как скажешь.", 's181', 'say16613') \
    .with_responses() \
        .response("Спасибо. У меня есть вопросы, Скорбящий…", EXIT, 'r', 'reply16881').with_condition(lambda: _r16881_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я серьезно, Морт. Приложишь в этом усилия?", 'DMORTE.D_s182', 'r', 'reply16882').with_condition(lambda: _r16882_condition(gsm)).with_action(lambda: _r16882_action(gsm)) \
        .response("Спасибо, Морт. Прощай, Скорбящий-по-деревьям.", EXIT, 'r', 'reply16883').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s182', '# from 181.1 // Check EXTENDS ~DMFTREE~ : 28')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт некоторое время молча на тебя смотрит, а затем кивает. Да, я смогу. Если это настолько важно для тебя, я сделаю это.", 's182', 'say16614') \
    .with_responses() \
        .response("Спасибо. Анна? А ты?", EXIT, 'r', 'reply16884').with_condition(lambda: _r16884_condition(gsm)).with_action(lambda: _r16884_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Игнус?", EXIT, 'r', 'reply16885').with_condition(lambda: _r16885_condition(gsm)).with_action(lambda: _r16885_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Грация, ты не могла бы в этом помочь?", EXIT, 'r', 'reply16886').with_condition(lambda: _r16886_condition(gsm)).with_action(lambda: _r16886_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Даккон, ты поможешь этому человеку?", EXIT, 'r', 'reply16887').with_condition(lambda: _r16887_condition(gsm)).with_action(lambda: _r16887_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Даккон, помоги этому человеку.", EXIT, 'r', 'reply16888').with_condition(lambda: _r16888_condition(gsm)).with_action(lambda: _r16888_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Нордом, как ты думаешь, ты сможешь помочь?", EXIT, 'r', 'reply16889').with_condition(lambda: _r16889_condition(gsm)).with_action(lambda: _r16889_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. Вейлор, ты сможешь помочь?", EXIT, 'r', 'reply16890').with_condition(lambda: _r16890_condition(gsm)).with_action(lambda: _r16890_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо. У меня есть вопросы, Скорбящий…", EXIT, 'r', 'reply16891').with_action(lambda: _dispose()) \
        .response("Спасибо, Морт. Прощай, Скорбящий-по-деревьям.", EXIT, 'r', 'reply16892').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s183', '# from - // Check EXTENDS ~DNORDOM~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, я *вообще* не представляю, что из этого может получиться. Этот знаток сделан из камня, шеф. Эти малютки просто не справятся с ним.", 's183', 'say16615') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s184', '# from - // Check EXTENDS ~DNORDOM~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Ого, вот оно как оборачивается. Не могу *поверить*, что ты вообще тратишь на это время, босс!", 's184', 'say16616') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s185', '# from - // Check EXTENDS ~DMFTREE~ : 28')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, шеф, я повидал много причудливых штуковин… Но он поразил мой разум только тем, что это вообще *возможно*.", 's185', 'say16617') \
    .with_responses() \
        .response("Спасибо тебе, Нордом. Морт? Что думаешь насчет этого?", 'DMORTE.D_s181', 'r', 'reply16893').with_condition(lambda: _r16893_condition(gsm)).with_action(lambda: _r16893_action(gsm)) \
        .response("Спасибо тебе, Нордом. Анна? А ты?", EXIT, 'r', 'reply16894').with_condition(lambda: _r16894_condition(gsm)).with_action(lambda: _r16894_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. Игнус?", EXIT, 'r', 'reply16895').with_condition(lambda: _r16895_condition(gsm)).with_action(lambda: _r16895_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. Грация, ты не могла бы в этом помочь?", EXIT, 'r', 'reply16896').with_condition(lambda: _r16896_condition(gsm)).with_action(lambda: _r16896_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. Даккон, ты поможешь этому человеку?", EXIT, 'r', 'reply16897').with_condition(lambda: _r16897_condition(gsm)).with_action(lambda: _r16897_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. Даккон, помоги этому человеку.", EXIT, 'r', 'reply16898').with_condition(lambda: _r16898_condition(gsm)).with_action(lambda: _r16898_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. Вейлор, ты сможешь помочь?", EXIT, 'r', 'reply16899').with_condition(lambda: _r16899_condition(gsm)).with_action(lambda: _r16899_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Спасибо тебе, Нордом. У меня есть несколько вопросов, Скорбящий…", EXIT, 'r', 'reply16900').with_action(lambda: _dispose()) \
        .response("Я благодарен тебе, Нордом. Прощай, Скорбящий-по-деревьям.", EXIT, 'r', 'reply16901').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s186', '# from - // Check EXTENDS ~DIGNUS~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "О! Я не могу на это смотреть!", 's186', 'say16618') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s187', '# from - // Check EXTENDS ~D300MER5~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Почему бы и нет, босс? Будет весело пнуть его, если будет поганое настроение, верно? Хм-м… Ладно, по крайней мере, я могу пнуть от твоего имени. А еще хочется взглянуть на пятидесятифутовый прыжок от уголька!", 's187', 'say17533') \
    .with_responses() \
        .response("Что думаешь, Анна?", EXIT, 'r', 'reply17583').with_condition(lambda: _r17583_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я возьму одного, торговец.", EXIT, 'r', 'reply17584').with_condition(lambda: _r17584_condition(gsm)).with_action(lambda: _r17584_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Лучше не разбрасываться медяками. У меня есть несколько вопросов, торговец…", EXIT, 'r', 'reply17585').with_condition(lambda: _r17585_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Лучше я поберегу свои медяки, торговец. Прощай.", EXIT, 'r', 'reply17586').with_condition(lambda: _r17586_condition(gsm)).with_action(lambda: _dispose()) \
        .response("У меня не хватает денег, торговец, но у меня есть несколько вопросов…", EXIT, 'r', 'reply17587').with_condition(lambda: _r17587_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, торговец, мне все равно не хватает монет. Прощай.", EXIT, 'r', 'reply17588').with_condition(lambda: _r17588_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s188', '# from - // Check EXTENDS ~DCOLYLFN~ : 14')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт поворачивается к жителю Улья. Отвали.", 's188', 'say18801') \
    .with_responses() \
        .response("Этот череп ты не получишь.", EXIT, 'r', 'reply18802').with_action(lambda: _r18802_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Это не твой череп.", EXIT, 'r', 'reply18803').with_action(lambda: _dispose()) \
        .response("Правда: Вперед, забирай череп.", EXIT, 'r', 'reply18804').with_action(lambda: _dispose()) \
        .response("Напасть на него, как только он потеряет бдительность: Вперед, забирай череп.", EXIT, 'r', 'reply18805').with_action(lambda: _dispose()) \
        .response("Правда: Если тебе удастся доказать, что череп твой, я отдам его тебе. Так будет честно.", EXIT, 'r', 'reply18578').with_action(lambda: _r18578_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Кто ты?", EXIT, 'r', 'reply18807').with_action(lambda: _dispose()) \
        .response("Я куплю у тебя череп. Пойдет?", EXIT, 'r', 'reply18808').with_action(lambda: _r18808_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s189', '# from - // Check EXTENDS ~DCOLYLFN~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт держит в зубах один из его пальцев, словно это какая-то жуткая сигара. Удерживая палец, он проговаривает: Еще раз тронешь — и твоя рука присоединится к пальцу, пень.", 's189', 'say18809') \
    .with_responses() \
        .response("Морт! Верни ему палец.", 'DMORTE.D_s190', 'r', 'reply18810') \
        .response("Не повезло тебе. Сгинь, полукровка.", EXIT, 'r', 'reply18811').with_action(lambda: _dispose()) \
        .response("Это будет тебе хорошим уроком. Прощай.", EXIT, 'r', 'reply18812').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s190', '# from 189.0 // Check EXTENDS ~DCOLYLFN~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт выплевывает в него палец. Тот отскакивает от его груди и падает на землю.", 's190', 'say18813') \
    .with_responses() \
        .response("Не повезло тебе. Сгинь, полукровка.", EXIT, 'r', 'reply18814').with_action(lambda: _dispose()) \
        .response("Это будет тебе хорошим уроком. Прощай.", EXIT, 'r', 'reply18815').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s191', '# from - // Check EXTENDS ~DCOLYLFN~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подлетает и перехватывает тебя: Шеф, ничего не давай этому отребью.", 's191', 'say18816') \
    .with_responses() \
        .response("Я…", EXIT, 'r', 'reply18817').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s192', '# from - // Check EXTENDS ~DCOLYLFN~ : 16')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт поворачивается к нему: Я не с тобой разговаривал, жопоголовый. Когда я к тебе обращусь, ты это поймешь: я буду хрюкать и фыркать, чтобы ты меня понял.", 's192', 'say18818') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s193', '# from - // Check EXTENDS ~DCOLYLFN~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, *не надо*.", 's193', 'say18819') \
    .with_responses() \
        .response("Дать ему пять медяков.", EXIT, 'r', 'reply18820').with_condition(lambda: _r18820_condition(gsm)).with_action(lambda: _r18820_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему пятьдесят медяков.", EXIT, 'r', 'reply18821').with_condition(lambda: _r18821_condition(gsm)).with_action(lambda: _r18821_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему сто медяков.", EXIT, 'r', 'reply18822').with_condition(lambda: _r18822_condition(gsm)).with_action(lambda: _r18822_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему пятьсот медяков.", EXIT, 'r', 'reply18823').with_condition(lambda: _r18823_condition(gsm)).with_action(lambda: _r18823_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("У меня нет ни одной монеты.", EXIT, 'r', 'reply18824').with_condition(lambda: _r18824_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Забудь мое предложение. Это не твой череп, и ты его не получишь.", EXIT, 'r', 'reply18825').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s194', '# from - // Check EXTENDS ~DCOLYLFN~ : 41')\
    .with_npc_lines() \
        .line(SPEAKER, "Я летаю с самым большим болваном во всей мультивселенной.", 's194', 'say18826') \
    .with_responses() \
        .response("… и что, Желтопалый? Еще раз обчищу тебя — и *что*?", EXIT, 'r', 'reply18827').with_action(lambda: _dispose()) \
        .response("Теперь, когда все утряслось, Желтопалый, у меня есть несколько вопросов…", EXIT, 'r', 'reply18828').with_action(lambda: _dispose()) \
        .response("Прощай, Желтопалый.", EXIT, 'r', 'reply18829').with_condition(lambda: _r18829_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Прощай, Желтопалый.", EXIT, 'r', 'reply18830').with_condition(lambda: _r18830_condition(gsm)).with_action(lambda: _r18830_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s195', '# from - // Check EXTENDS ~DCOLYLFN~ : 52')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф! Брось!", 's195', 'say18831') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s196', '# from - // Check EXTENDS ~DCOLYLFN~ : 61')\
    .with_npc_lines() \
        .line(SPEAKER, "Если смотреть с моей позиции, так она никого не балует.", 's196', 'say18832') \
    .with_responses() \
        .response("Дать ему пять медяков.", EXIT, 'r', 'reply18833').with_condition(lambda: _r18833_condition(gsm)).with_action(lambda: _r18833_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему десять медяков.", EXIT, 'r', 'reply18834').with_condition(lambda: _r18834_condition(gsm)).with_action(lambda: _r18834_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему пятьдесят медяков.", EXIT, 'r', 'reply18835').with_condition(lambda: _r18835_condition(gsm)).with_action(lambda: _r18835_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Дать ему сто медяков.", EXIT, 'r', 'reply18836').with_condition(lambda: _r18836_condition(gsm)).with_action(lambda: _r18836_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Беру свои слова обратно. Уходи и больше мне не попадайся.", EXIT, 'r', 'reply18837').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s197', '# from - // Check EXTENDS ~DOJO~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Привет, здоровячок! Как поживает твой дружок в стене?", 's197', 'say19031') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s198', '# from - // Check EXTENDS ~DOJO~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт склоняет голову. Как скажешь, босс.", 's198', 'say19032') \
    .with_responses() \
        .response("Хорошо. Охо, у меня есть другие вопросы.", EXIT, 'r', 'reply19033').with_action(lambda: _dispose()) \
        .response("Хорошо. Идем.", EXIT, 'r', 'reply19034').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s199', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ух ты, шеф… ну что за красотка? Мало где встретишь такую милашку, как эта, знаешь ли.", 's199', 'say19551') \
    .with_responses() \
        .response("Гниющие трупы не выглядят для меня привлекательными, Морт. Даже женские трупы.", 'DMORTE.D_s200', 'r', 'reply19666') \
        .response("Ну, наверно, если не обращать внимания на 'вонючее разлагающееся мясо в трупных червях', то…", 'DMORTE.D_s201', 'r', 'reply19667') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s200', '# from 199.0 // Check EXTENDS ~DZOMCITF~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт закатывает глаза. Ха! Однажды ты поймешь, о чем я говорю.", 's200', 'say19552') \
    .with_responses() \
        .response("Не обращать на него внимания, поздороваться с зомби.", EXIT, 'r', 'reply19668').with_condition(lambda: _r19668_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Не обращать на него внимания, поздороваться с зомби.", EXIT, 'r', 'reply19669').with_condition(lambda: _r19669_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s201', '# from 199.1 // Check EXTENDS ~DZOMCITF~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, видишь ли, это я… эй! — Морт поворачивается к тебе. — Ты что, издеваешься надо мной?", 's201', 'say19553') \
    .with_responses() \
        .response("Не обращать на него внимания, поздороваться с зомби.", EXIT, 'r', 'reply19670').with_condition(lambda: _r19670_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Не обращать на него внимания, поздороваться с зомби.", EXIT, 'r', 'reply19671').with_condition(lambda: _r19671_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s202', '# from - // Check EXTENDS ~DGHOCITM~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… даже не знаю, захочешь ли ты говорить с этой… тварью.", 's202', 'say19681') \
    .with_responses() \
        .response("Почему нет, Морт?", 'DMORTE.D_s203', 'r', 'reply19691') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply19692').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, поздороваться с упырем.", EXIT, 'r', 'reply19693').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s203', '# from 202.0 // Check EXTENDS ~DGHOCITM~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Когда-то они были людьми… Они, или их предки, ели трупы, и вот во что они превратились. Довольно таки мерзкая вещь, шеф… На самом деле, они больше похожи на животных. *Опасных* животных.", 's203', 'say19682') \
    .with_responses() \
        .response("Ладно. Идем.", EXIT, 'r', 'reply19694').with_action(lambda: _dispose()) \
        .response("Я все равно с ним поговорю.", EXIT, 'r', 'reply19695').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s204', '# from - // Check EXTENDS ~DGHOCITF~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… даже не знаю, захочешь ли ты говорить с этой… тварью.", 's204', 'say19702') \
    .with_responses() \
        .response("Морт, ты меня удивляешь… Это нежить женского пола. Обычно этого для тебя достаточно.", 'DMORTE.D_s206', 'r', 'reply19713') \
        .response("Почему нет, Морт?", 'DMORTE.D_s205', 'r', 'reply19714') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply19715').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, поздороваться с упырем.", EXIT, 'r', 'reply19716').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s205', '# from 204.1 206.0 // Check EXTENDS ~DGHOCITF~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Когда-то они были людьми… Они, или их предки, ели трупы, и вот во что они превратились. Довольно таки мерзкая вещь, шеф… На самом деле, они больше похожи на животных. *Опасных* животных.", 's205', 'say19703') \
    .with_responses() \
        .response("Ладно. Идем.", EXIT, 'r', 'reply19717').with_action(lambda: _dispose()) \
        .response("Я все равно с ней поговорю.", EXIT, 'r', 'reply19718').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s206', '# from 204.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Это не то же самое, шеф…", 's206', 'say19704') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s207', '# from - // Check EXTENDS ~DMARTA~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Она же слепая и почти глухая.", 's207', 'say20469') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s208', '# from - // Check EXTENDS ~DMARTA~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Мне кажется, она имеет в виду органы. Надеюсь, что она имеет в виду органы.", 's208', 'say20470') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s209', '# from - // Check EXTENDS ~DMARTA~ : 16')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт поворачивается к Марте. Да, 'штучки', — он поворачивается к тебе. — Все дело в смысле слов.", 's209', 'say20471') \
    .with_responses() \
        .response("Марта, зачем ты достаешь из трупов зубы и швы?", EXIT, 'r', 'reply20612').with_condition(lambda: _r20612_condition(gsm)).with_action(lambda: _r20612_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Марта, зачем ты достаешь из трупов зубы и швы?", EXIT, 'r', 'reply20613').with_condition(lambda: _r20613_condition(gsm)).with_action(lambda: _r20613_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Э… ладно. Мне нужно идти, Марта. Прощай.", EXIT, 'r', 'reply20614').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s210', '# from - // Check EXTENDS ~DMARTA~ : 24')\
    .with_npc_lines() \
        .line(SPEAKER, "Я *не собираюсь* на это смотреть.", 's210', 'say20472') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s211', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, силы небесные!.. Чертов дабус.", 's211', 'say21602') \
    .with_responses() \
        .response("Что не так?", 'DMORTE.D_s212', 'r', 'reply24695') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s212', '# from 211.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.", 's212', 'say21603') \
    .with_responses() \
        .response("Что за 'дабус'?", 'DMORTE.D_s213', 'r', 'reply24696') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s213', '# from 212.0 // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.", 's213', 'say21604') \
    .with_responses() \
        .response("'Леди Боли'? Кто это?", 'DMORTE.D_s214', 'r', 'reply24697').with_condition(lambda: _r24697_condition(gsm)).with_action(lambda: _r24697_action(gsm)) \
        .response("Что ты можешь рассказать о Леди Боли?", 'DMORTE.D_s214', 'r', 'reply24698').with_condition(lambda: _r24698_condition(gsm)) \
        .response("Понятно.", EXIT, 'r', 'reply24699').with_condition(lambda: _r24699_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s214', '# from 213.0 213.1 // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.", 's214', 'say21605') \
    .with_responses() \
        .response("Э-э… постой-ка. Ты сказал, что дабусы парят, верно? А этот ходит по земле.", 'DMORTE.D_s215', 'r', 'reply24700').with_condition(lambda: _r24700_condition(gsm)) \
        .response("Э-э… постой-ка. Ты сказал, что дабусы парят, верно? А этот ходит по земле.", 'DMORTE.D_s215', 'r', 'reply24701').with_condition(lambda: _r24701_condition(gsm)) \
        .response("Понятно.", EXIT, 'r', 'reply24702').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s215', '# from 214.0 214.1 // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт, едва взглянув на дабуса, смотрит теперь во все глаза. Ага! Я знал, что вы, козлиные морды, умеете ходить! Я знал это! Морт ликующе возвращается к тебе. Ха! Должно быть, этот не такой уж отрешенный, чтобы парить над землей.", 's215', 'say21606') \
    .with_responses() \
        .response("Может быть…", EXIT, 'r', 'reply24703').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s216', '# from - // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.", 's216', 'say21607') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply24704').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s217', '# from - // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.", 's217', 'say21608') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply24705').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s218', '# from - // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.", 's218', 'say21609') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply24706').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s219', '# from - // Check EXTENDS ~DFELL~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.", 's219', 'say21610') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply24707').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s220', '# from - // Check EXTENDS ~DSOEGO~ : 83')\
    .with_npc_lines() \
        .line(SPEAKER, "Да вы просто хотите их убить. Для тленных чувства являются угрозой.", 's220', 'say22061') \
    .with_responses() \
        .response("У меня есть другие вопросы…", EXIT, 'r', 'reply22062').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply22063').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s221', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Глядя на тебя, Морт качает головой.", 's221', 'say22849') \
    .with_responses() \
        .response("Что такое, куб-герой? 'Морт — глупый череп'? Но как же, разве это не так, куб-герой?", 'DMORTE.D_s222', 'r', 'reply22850').with_action(lambda: _r22850_action(gsm)) \
        .response("Отложить куб.", EXIT, 'r', 'reply22851').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s222', '# from 221.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Он не говорил этого!", 's222', 'say22852') \
    .with_responses() \
        .response("Нет, говорил! Он только что это сказал!", 'DMORTE.D_s223', 'r', 'reply22853').with_action(lambda: _r22853_action(gsm)) \
        .response("Отложить куб.", EXIT, 'r', 'reply22854').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s223', '# from 222.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт?!.. А ну дай его сюда!", 's223', 'say22855') \
    .with_responses() \
        .response("Нет, он мой. Да и все равно он хочет играть только со мной. Разве не так, куб-герой? Да, именно так!", 'DMORTE.D_s224', 'r', 'reply22856').with_action(lambda: _r22856_action(gsm)) \
        .response("Отложить куб.", EXIT, 'r', 'reply22857').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s224', '# from 223.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я. Просто. Хочу. Подержать. Его. На. Секундочку.", 's224', 'say22858') \
    .with_responses() \
        .response("Но у тебя все равно нет рук.", 'DMORTE.D_s225', 'r', 'reply22859') \
        .response("Отложить куб.", EXIT, 'r', 'reply22860').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s225', '# from 224.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я подержу его ЗУБАМИ.", 's225', 'say22861') \
    .with_responses() \
        .response("Нет, наверное, я просто его отложу.", 'DMORTE.D_s226', 'r', 'reply22862') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s226', '# from 225.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я разнесу этот мордонский куб на куски. [MRT251]", 's226', 'say22863') \
    .with_responses() \
        .response("Ты что-то слышал, куб-герой? Нет? Я тоже!", EXIT, 'r', 'reply22864').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s227', '# from - // Check EXTENDS ~DCRADDO~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Ооооох! Морт восхищенно щелкает зубами, выслушивая умопостроения Крэддока… кажется, ты даже слышишь, как внутри своего черепа он делает пометки. [MRT387]", 's227', 'say22892') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s228', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, босс, меня уже начинало тошнить от его… постоянных… пауз… так что хорошо… что он… уже заткнулся.", 's228', 'say24174') \
    .with_responses() \
        .response("Очень смешно, Морт. Пошли.", EXIT, 'r', 'reply24175').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s229', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Босс, а что мы будем делать с бесконечным запасом воды? Где пожар, а?", 's229', 'say24176') \
    .with_responses() \
        .response("Позже он может пригодиться, Морт. Пошли.", EXIT, 'r', 'reply24177').with_action(lambda: _dispose()) \
        .response("Так будет правильно, Морт.", 'DMORTE.D_s230', 'r', 'reply24178') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s230', '# from 229.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Так будет правильно? Если ты не забыл, босс, у нас самих есть чем заняться! Хотя что бы ты там не решил — ты тут главный. Тьфу…", 's230', 'say24179') \
    .with_responses() \
        .response("Спасибо за одобрение, Морт. Пошли.", EXIT, 'r', 'reply24180').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s231', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф… Ты в порядке? Я думал, что ты дал дуба.", 's231', 'say24903') \
    .with_responses() \
        .response("Чт?.. Ты кто?", 'DMORTE.D_s232', 'r', 'reply24904').with_action(lambda: _r24904_action(gsm)) \
        .response("Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся и присоединился ко мне НЕМЕДЛЕННО.", EXIT, 'r', 'reply24905').with_action(lambda: _r24905_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s232', '# from 231.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… кто я? А как насчет *тебя* для начала? Кто ты?", 's232', 'say24906') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE.D_s233', 'r', 'reply24907') \
        .response("Я *первый* спросил тебя, череп.", 'DMORTE.D_s234', 'r', 'reply24908') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s233', '# from 232.0 234.0 235.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты не можешь вспомнить свое *имя*? Хе. Что ж, в следующий раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт.", 's233', 'say24909') \
    .with_responses() \
        .response("Заперт?", 'DMORTE.D_s236', 'r', 'reply24910') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s234', '# from 232.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, а я спросил тебя *вторым*. Как твое имя?", 's234', 'say24911') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE.D_s233', 'r', 'reply24912') \
        .response("Ты первый, череп. В последний раз спрашиваю.", 'DMORTE.D_s235', 'r', 'reply24913') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s235', '# from 234.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Пф-ф… да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Зовут Мортом. А кто ты?", 's235', 'say24914') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE.D_s233', 'r', 'reply24915') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s236', '# from 233.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.", 's236', 'say24916') \
    .with_responses() \
        .response("Мы заперты… где? Что это за место?", 'DMORTE.D_s237', 'r', 'reply24917') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s237', '# from 236.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's237', 'say24918') \
    .with_responses() \
        .response("Морг? Постой… я умер?", 'DMORTE.D_s238', 'r', 'reply24919') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s238', '# from 237.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не похоже. Хотя на тебе куча шрамов… выглядит так, словно какой-то пень изрисовал тебя всего ножом. Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу.", 's238', 'say24920') \
    .with_responses() \
        .response("И как мы выберемся отсюда?", 'DMORTE.D_s239', 'r', 'reply24921') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s239', '# from 238.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, если все двери заперты, значит, нам понадобится ключ. Есть шанс, что он есть у одного из ходячих трупов в этой комнате.", 's239', 'say24922') \
    .with_responses() \
        .response("Ходячих трупов?", 'DMORTE.D_s240', 'r', 'reply24923') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s240', '# from 28.0 239.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы. Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.", 's240', 'say24924') \
    .with_responses() \
        .response("А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа.", 'DMORTE.D_s241', 'r', 'reply24925').with_action(lambda: _r24925_action(gsm)) \
        .response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ?", 'DMORTE.D_s242', 'r', 'reply24926') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s241', '# from 240.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ. Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу.", 's241', 'say24927') \
    .with_responses() \
        .response("Ну хорошо… Я собью одного из них и заберу ключ.", 'DMORTE.D_s242', 'r', 'reply24928') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s242', '# from 240.1 241.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Хорошо, но перед этим неплохо бы вооружиться. Кажется, здесь где-то на полках есть скальпель.", 's242', 'say24929') \
    .with_responses() \
        .response("Ладно, я поищу его.", 'DMORTE.D_s243', 'r', 'reply24930') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s243', '# from 242.0')\
    .with_npc_lines() \
        .line(SPEAKER, "И последнее: эти трупы медлительны, но их удар — все равно что поцелуй тарана. Если они начнут доставать тебя, помни, что ты можешь БЕГАТЬ, а они — нет. Используй это, чтобы держаться на дистанции, если тебе нужно восстановиться.", 's243', 'say24931') \
    .with_responses() \
        .response("Хорошо. Спасибо за совет.", EXIT, 'r', 'reply24932').with_action(lambda: _r24932_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s244', '# from - // Check EXTENDS ~DCWRUSHF~ : 27')\
    .with_npc_lines() \
        .line(SPEAKER, "Это типа говорящей энциклопедии, шеф. На самом деле, мне не хочется об этом говорить.", 's244', 'say25962') \
    .with_responses() \
        .response("Но ты ведь НЕ мимир, Морт…", EXIT, 'r', 'reply66902').with_condition(lambda: _r66902_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s245', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт, многозначительно водя бровями, направляется к женщине. А еще я могу…", 's245', 'say25964') \
    .with_responses() \
        .response("Хватит, Морт.", 'DMORTE.D_s246', 'r', 'reply25965') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s246', '# from 245.0 // Check EXTENDS ~DCWRUSHF~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да. Хорошо, — Морт закатывает глаза и начинает ворчать. — Тогда уж лучше быть *мертвым*…", 's246', 'say25966') \
    .with_responses() \
        .response("Постой… ты сказала 'разговаривает сам'? А разве обычно они не разговаривают?", EXIT, 'r', 'reply25967').with_condition(lambda: _r25967_condition(gsm)).with_action(lambda: _dispose()) \
        .response("У меня есть несколько вопросов к этой женщине…", EXIT, 'r', 'reply25968').with_action(lambda: _dispose()) \
        .response("Оставить женщину в покое.", EXIT, 'r', 'reply25969').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s247', '# from - // Check EXTENDS ~DCWRUSHF~ : 29')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт перебивает ее: Понимаешь, шеф, есть много признаков *качественного* мимира. Некоторые — например, я — намного лучше других. Более… э-э… 'самосознательные', говоря научным языком.", 's247', 'say25970') \
    .with_responses() \
        .response("Хм-м.", EXIT, 'r', 'reply25971').with_action(lambda: _dispose()) \
        .response("Понятно.", EXIT, 'r', 'reply25972').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s248', '# from - // Check EXTENDS ~DCWRUSHF~ : 27')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Я всего лишь пытаюсь немного развлечься, шеф!", 's248', 'say25973') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s249', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Небольшой совет, шеф: теперь я бы вел себя потише. Не нужно больше вписывать трупы в книгу мертвых без необходимости… особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей.", 's249', 'say27285') \
    .with_responses() \
        .response("Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?", 'DMORTE.D_s250', 'r', 'reply27303') \
        .response("Эти трупы… откуда они все берутся?", 'DMORTE.D_s252', 'r', 'reply27304') \
        .response("Почему тебя так заботят женские тела?", 'DMORTE.D_s253', 'r', 'reply27305') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE.D_s257', 'r', 'reply27306') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s250', '# from 249.0 252.0 256.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's250', 'say27286') \
    .with_responses() \
        .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE.D_s251', 'r', 'reply27307') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s251', '# from 250.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's251', 'say27287') \
    .with_responses() \
        .response("Эти трупы, которых я видел здесь… откуда они все берутся?", 'DMORTE.D_s252', 'r', 'reply27308') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE.D_s253', 'r', 'reply27309') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE.D_s257', 'r', 'reply27310') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s252', '# from 249.1 251.0 256.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's252', 'say27288') \
    .with_responses() \
        .response("Просвети меня… *кто* такие эти смотрители?", 'DMORTE.D_s250', 'r', 'reply27311') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE.D_s253', 'r', 'reply27312') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE.D_s257', 'r', 'reply27313') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s253', '# from 249.2 251.1 252.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's253', 'say27289') \
    .with_responses() \
        .response("Последний шанс? Погоди… о *чем* это ты толкуешь?", 'DMORTE.D_s254', 'r', 'reply27314') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s254', '# from 253.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's254', 'say27290') \
    .with_responses() \
        .response("Нет… не очень, если честно.", 'DMORTE.D_s255', 'r', 'reply27315') \
        .response("Ты это не серьезно.", 'DMORTE.D_s255', 'r', 'reply27316').with_condition(lambda: _r27316_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s255', '# from 254.0 254.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* по крайней мере один раз умирали: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.", 's255', 'say27291') \
    .with_responses() \
        .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE.D_s256', 'r', 'reply27317') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s256', '# from 255.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's256', 'say27292') \
    .with_responses() \
        .response("Еще раз, кто эти смотрители?", 'DMORTE.D_s250', 'r', 'reply27318') \
        .response("Но откуда берутся все эти трупы?", 'DMORTE.D_s252', 'r', 'reply27319') \
        .response("Ладно… Я попробую это запомнить.", 'DMORTE.D_s257', 'r', 'reply27320') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s257', '# from 249.3 251.2 252.2 256.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Послушай, шеф. Ты еще не отошел от свидания со смертью, поэтому у меня для тебя есть два небольших совета. Во-первых, если у тебя возникнет вопрос — *спроси* меня, хорошо?", 's257', 'say27293') \
    .with_responses() \
        .response("Хорошо… если у меня возникнут вопросы, я спрошу у тебя.", 'DMORTE.D_s258', 'r', 'reply27321') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s258', '# from 257.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Во-вторых, если ты хоть *наполовину* такой забывчивый, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.", 's258', 'say27294') \
    .with_responses() \
        .response("Как в дневнике?", 'DMORTE.D_s259', 'r', 'reply27322') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s259', '# from 258.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, как в дневнике. Если начнешь забывать важные вещи, вроде того, где ты находишься, открой его и освежи свою память. Понятно?", 's259', 'say27295') \
    .with_responses() \
        .response("Ладно… Уяснил. Идем.", EXIT, 'r', 'reply27323').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s260', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "На одной из тех полок должен быть скальпель. Я бы на твоем месте нашел его до того, как начал бодаться с местными трупаками.", 's260', 'say27296') \
    .with_responses() \
        .response("Ладно… Я поищу.", EXIT, 'r', 'reply27324').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s261', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами… и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.", 's261', 'say27297') \
    .with_responses() \
        .response("А, может, ты мне *поможешь*, Морт?", 'DMORTE.D_s262', 'r', 'reply27325') \
        .response("Хорошо.", EXIT, 'r', 'reply27326').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s262', '# from 261.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту.", 's262', 'say27298') \
    .with_responses() \
        .response("Я имел ввиду помощь в нападении на *трупов*.", 'DMORTE.D_s263', 'r', 'reply27327') \
        .response("Ну ладно.", EXIT, 'r', 'reply27328').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s263', '# from 262.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я? Я романтик, а не солдат. Я только под ногами буду путаться.", 's263', 'say27299') \
    .with_responses() \
        .response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель.", 'DMORTE.D_s264', 'r', 'reply27329') \
        .response("Ну ладно.", EXIT, 'r', 'reply27330').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s264', '# from 263.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… без проблем. Я помогу тебе.", 's264', 'say27300') \
    .with_responses() \
        .response("Рад, что мы друг друга понимаем. За дело.", EXIT, 'r', 'reply27331').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s265', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, похоже, ты позаботился о правильном трупе. Теперь надо найти ключ. Он должен быть на его теле. Как только мы его получим, мы сможем выбраться отсюда.", 's265', 'say27301') \
    .with_responses() \
        .response("Хорошо.", EXIT, 'r', 'reply27332').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s266', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.", 's266', 'say27302') \
    .with_responses() \
        .response("Тогда я перепробую все двери.", EXIT, 'r', 'reply27333').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s267', '# from - // Check EXTENDS ~DCWCAFEF~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шипит в твое ухо: Законник-крючкотвор.", 's267', 'say27911') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s268', '# from - // Check EXTENDS ~DCWCAFEF~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Это типа говорящей энциклопедии, шеф. На самом деле, мне не хочется об этом говорить.", 's268', 'say27912') \
    .with_responses() \
        .response("Но ты ведь НЕ мимир, Морт…", EXIT, 'r', 'reply65536').with_condition(lambda: _r65536_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s269', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт, многозначительно водя бровями, направляется к женщине. А еще я могу…", 's269', 'say27913') \
    .with_responses() \
        .response("Хватит, Морт.", 'DMORTE.D_s270', 'r', 'reply27914') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s270', '# from 269.0 // Check EXTENDS ~DCWCAFEF~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да. Хорошо, — Морт закатывает глаза и начинает ворчать. — Тогда уж лучше быть *мертвым*…", 's270', 'say27915') \
    .with_responses() \
        .response("Постой… ты сказала 'разговаривает сам'? А разве обычно они не разговаривают?", EXIT, 'r', 'reply27916').with_condition(lambda: _r27916_condition(gsm)).with_action(lambda: _dispose()) \
        .response("У меня есть несколько вопросов к этой женщине…", EXIT, 'r', 'reply27917').with_action(lambda: _dispose()) \
        .response("Оставить женщину в покое.", EXIT, 'r', 'reply27918').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s271', '# from - // Check EXTENDS ~DCWCAFEF~ : 52')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт перебивает ее: Понимаешь, шеф, есть много признаков *качественного* мимира. Некоторые — например, я — намного лучше других. Более… э-э… 'самосознательные', говоря научным языком.", 's271', 'say27919') \
    .with_responses() \
        .response("Хм-м.", EXIT, 'r', 'reply27920').with_action(lambda: _dispose()) \
        .response("Понятно.", EXIT, 'r', 'reply27921').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s272', '# from - // Check EXTENDS ~DCWCAFEF~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Я всего лишь пытаюсь немного развлечься, шеф!", 's272', 'say27922') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s273', '# from - // Check EXTENDS ~DMALMANR~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт одобрительно кивает. Эй, а этот парень не так уж плох.", 's273', 'say28036') \
    .with_responses() \
        .response("Ладно, вот… забирай свои деньги, Малманер.", EXIT, 'r', 'reply28041').with_action(lambda: _r28041_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бросить Малманеру десять медных монет.", EXIT, 'r', 'reply28042').with_action(lambda: _r28042_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Правда? Будем считать, что я этого не слышал, Морт. Пошли.", EXIT, 'r', 'reply28043').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s274', '# from - // Check EXTENDS ~DMALMANR~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт одобрительно кивает. Эй, а этот парень не так уж плох.", 's274', 'say28037') \
    .with_responses() \
        .response("Ладно, вот… забирай свои деньги, Малманер.", EXIT, 'r', 'reply28038').with_condition(lambda: _r28038_condition(gsm)).with_action(lambda: _r28038_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бросить Малманеру тридцать медных монет.", EXIT, 'r', 'reply28039').with_condition(lambda: _r28039_condition(gsm)).with_action(lambda: _r28039_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ладно, вот… забирай свои деньги, Малманер.", EXIT, 'r', 'reply28040').with_condition(lambda: _r28040_condition(gsm)).with_action(lambda: _r28040_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бросить Малманеру пятьдесят медных монет.", EXIT, 'r', 'reply28044').with_condition(lambda: _r28044_condition(gsm)).with_action(lambda: _r28044_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ладно, вот… забирай свои деньги, Малманер.", EXIT, 'r', 'reply28045').with_condition(lambda: _r28045_condition(gsm)).with_action(lambda: _r28045_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бросить Малманеру пятьдесят медных монет.", EXIT, 'r', 'reply28046').with_condition(lambda: _r28046_condition(gsm)).with_action(lambda: _r28046_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ладно, вот… забирай свои деньги, Малманер.", EXIT, 'r', 'reply28047').with_condition(lambda: _r28047_condition(gsm)).with_action(lambda: _r28047_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Бросить Малманеру восемьдесят медных монет.", EXIT, 'r', 'reply28048').with_condition(lambda: _r28048_condition(gsm)).with_action(lambda: _r28048_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Правда? Будем считать, что я этого не слышал, Морт. Пошли.", EXIT, 'r', 'reply28049').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s275', '# from - // Check EXTENDS ~DGRACE~ : 60')\
    .with_npc_lines() \
        .line(SPEAKER, "Какая скукота.", 's275', 'say28630') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s276', '# from - // Check EXTENDS ~DGRACE~ : 72')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, она — танарри… суккуб.", 's276', 'say28631') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s277', '# from - // Check EXTENDS ~DANNAH~ : 166')\
    .with_npc_lines() \
        .line(SPEAKER, "Задвинься, бесовка! — Морт клацает зубами. — Я ЗА то, чтобы суккубка пошла с нами… Видят силы, от *тебя* веселья, как от колючки в кишках.", 's277', 'say28632') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s278', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, минутку! Это *я* лучше всех разбираюсь в планах! Это моя работа, шеф!", 's278', 'say28633') \
    .with_responses() \
        .response("Двое сведущих в плана людей в нашей команде — довольно неплохо, как по мне. Кроме того, еще я сказал, что она мила, Морт.", 'DMORTE.D_s279', 'r', 'reply28634') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s279', '# from 278.0 // Check EXTENDS ~DGRACE~ : 79')\
    .with_npc_lines() \
        .line(SPEAKER, "Пожалуй, только для глаз! Мне почему-то КАЖЕТСЯ, что стоит какой-нибудь цыпочке чуть-чуть оголиться, как ты уже принимаешь ее в команду! — Морт умолкает. — Не то чтобы я против. Просто подумал, что стоит об этом сказать.", 's279', 'say28635') \
    .with_responses() \
        .response("Заметано, Морт. Госпожа Грация… Может, я слишком забегаю вперед, но ты не хотела бы отправиться с нами в путешествие?", EXIT, 'r', 'reply28636').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s280', '# from - // Check EXTENDS ~DGRACE~ : 119')\
    .with_npc_lines() \
        .line(SPEAKER, "Мой товарищ в шрамах хотел сказать: с нами ДВУМЯ… Кстати, я Морт. Прошу простить моего товарища за то, что он не соизволил представить нас друг другу… Мне кажется, ваше присоединение к нам — ОТЛИЧНАЯ идея. У нас много места для суккуба. МНОГО места.", 's280', 'say28637') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s281', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Спасибо, шеф. Не могу выразить свою радость тем, что я снова с тобой. Его голос истекает сарказмом. А еще я научился новому приемчику, пока был там.", 's281', 'say28738') \
    .with_responses() \
        .response("Ага. Отлично. Я очень рад, что ты вернулся назад.", EXIT, 'r', 'reply28743').with_action(lambda: _r28743_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Извини, приятель. Я хотел его обмануть.", 'DMORTE.D_s282', 'r', 'reply28744').with_condition(lambda: _r28744_condition(gsm)).with_action(lambda: _r28744_action(gsm)) \
        .response("Извини, приятель. Я хотел его обмануть.", 'DMORTE.D_s283', 'r', 'reply28745').with_condition(lambda: _r28745_condition(gsm)).with_action(lambda: _r28745_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s282', '# from 281.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Правда? В этом чувствуется твой стиль, босс. Хорошо придумано. Ты условно прощен. Просто не делай так больше.", 's282', 'say28739') \
    .with_responses() \
        .response("Конечно, Морт. Идем.", EXIT, 'r', 'reply28746').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s283', '# from 281.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Почему-то мне в это верится с трудом. Давай просто забудем о случившемся. Идем.", 's283', 'say28740') \
    .with_responses() \
        .response("Отлично.", EXIT, 'r', 'reply28747').with_action(lambda: _dispose()) \
        .response("Морт, я блефовал. Вот увидишь.", EXIT, 'r', 'reply28748').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s284', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Спасибо, босс. Давай убираться отсюда! — Морт делает паузу. — А, кстати, босс… Эти ребята действительно соображают. Я научился у них паре острот.", 's284', 'say28741') \
    .with_responses() \
        .response("Идем.", EXIT, 'r', 'reply28749').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s285', '# from - // Check EXTENDS ~DQUISAI~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… шеф? Ты ведь раньше видел статуи? Ты ведь знаешь, что они не разговаривают?", 's285', 'say28962') \
    .with_responses() \
        .response("Подумай, Морт: ты — летающий и говорящий череп, который отрицает существование живых статуй.", 'DMORTE.D_s286', 'r', 'reply28967').with_condition(lambda: _r28967_condition(gsm)) \
        .response("Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?", EXIT, 'r', 'reply28968').with_condition(lambda: _r28968_condition(gsm)).with_action(lambda: _r28968_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Может быть. Я просто к нему прикоснусь…", EXIT, 'r', 'reply28969').with_action(lambda: _dispose()) \
        .response("Уйти.", EXIT, 'r', 'reply28970').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s286', '# from 285.0 // Check EXTENDS ~DQUISAI~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… э… м-м. Тут ты прав, босс.", 's286', 'say28963') \
    .with_responses() \
        .response("Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?", EXIT, 'r', 'reply28971').with_condition(lambda: _r28971_condition(gsm)).with_action(lambda: _r28971_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Конечно, Морт. Я просто к нему прикоснусь…", EXIT, 'r', 'reply28972').with_action(lambda: _dispose()) \
        .response("Уйти.", EXIT, 'r', 'reply28973').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s287', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, может, она слишком анатомически правильная?", 's287', 'say28964') \
    .with_responses() \
        .response("Это был риторический вопрос, Морт", 'DMORTE.D_s288', 'r', 'reply28974') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s288', '# from 287.0 // Check EXTENDS ~DQUISAI~ : 23')\
    .with_npc_lines() \
        .line(SPEAKER, "Конечно, босс. Я это знал.", 's288', 'say28965') \
    .with_responses() \
        .response("Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?", EXIT, 'r', 'reply28975').with_condition(lambda: _r28975_condition(gsm)).with_action(lambda: _r28975_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ударить статую.", EXIT, 'r', 'reply28976').with_action(lambda: _r28976_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Уйти.", EXIT, 'r', 'reply28977').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s289', '# from - // Check EXTENDS ~DQUISAI~ : 29')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт закатывает глаза и издает бульканье. О силы, нет, только не еще один пень, говорящий… вот… так!", 's289', 'say28966') \
    .with_responses() \
        .response("У меня есть вопросы о тебе…", EXIT, 'r', 'reply28978').with_action(lambda: _dispose()) \
        .response("У меня есть вопросы об этом месте.", EXIT, 'r', 'reply28979').with_action(lambda: _dispose()) \
        .response("Что ты знаешь о Равель Заморочке?", EXIT, 'r', 'reply28980').with_condition(lambda: _r28980_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я потом к тебе загляну. Прощай.", EXIT, 'r', 'reply28981').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s290', '# from - // Check EXTENDS ~DQUELL~ : 21')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф, он скрестил пальцы!", 's290', 'say29677') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s291', '# from - // Check EXTENDS ~DIANNIS~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт вклинивается в разговор, шепча: Он говорит, что он юрист, консультант. Один из тех пней, которые трещат своими черепушками в судах.", 's291', 'say30527') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s292', '# from - // Check EXTENDS ~DABLE~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт озирается назад. Где?! Где?!", 's292', 'say30816') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s293', '# from - // Check EXTENDS ~DABLE~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт раскрывает рот. Гляди, за тобой — еще один летающий череп!", 's293', 'say30817') \
    .with_responses() \
        .response("Самому поискать череп.", EXIT, 'r', 'reply30822').with_condition(lambda: _r30822_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Дать Морту повеселиться.", EXIT, 'r', 'reply30823').with_condition(lambda: _r30823_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Брось, Морт. У меня к нему вопросы…", EXIT, 'r', 'reply30824').with_condition(lambda: _r30824_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s294', '# from - // Check EXTENDS ~DABLE~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Вон там, куда я показываю! Вон там!", 's294', 'say30818') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s295', '# from - // Check EXTENDS ~DABLE~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт насмешливо произносит: Ты все пропустил! Там был целый *парад* черепов! Такое случается, наверно, раз в миллион циклов Великого Кольца!", 's295', 'say30819') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s296', '# from - // Check EXTENDS ~DABLE~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт покачивается, как будто пожимает плечами. Предпочитаю называть это проницательностью по части человеческой природы.", 's296', 'say30820') \
    .with_responses() \
        .response("У меня есть несколько вопросов…", EXIT, 'r', 'reply30825').with_condition(lambda: _r30825_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Снова привлечь внимание человека.", EXIT, 'r', 'reply30826').with_condition(lambda: _r30826_condition(gsm)).with_action(lambda: _r30826_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s297', '# from - // Check EXTENDS ~DABLE~ : 65')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, шеф, это НАСТОЛЬКО БЕЗУМНО, ЧТО МОЖЕТ СРАБОТАТЬ!", 's297', 'say30821') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s298', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Клянусь шипастыми сиськами Леди, вот это…  Внезапно все стихает. Остатки твоих чувств меркнут и покидают тебя.  [MRT387]", 's298', 'say31566') \
    .with_responses() \
        .response("Пасть во тьму, став жертвой страшного проклятья Гангройгидона.", EXIT, 'r', 'reply31567').with_action(lambda: _r31567_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s299', '# from - // Check EXTENDS ~DDEATHAD~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "'Тайнах'?! Секундочку! Мы же не собираемся *слушать* этого пустомелю? Да ладно… пойдем лучше найдем парочку цыпочек-чувствующих, которые еще ни разу не пробовали пламенной страсти от прикосновения губ черепа. Он в предвкушении водит бровями.", 's299', 'say32367') \
    .with_responses() \
        .response("Тише, Морт. Мы подождем… по крайней мере немного.", EXIT, 'r', 'reply32368').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32369').with_action(lambda: _dispose()) \
        .response("Ты прав, Морт, идем отсюда.", EXIT, 'r', 'reply32370').with_action(lambda: _r32370_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s300', '# from - // Check EXTENDS ~DDEATHAD~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: Начало новых страданий.", 's300', 'say32371') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32372').with_action(lambda: _dispose()) \
        .response("Морт, помолчи.", EXIT, 'r', 'reply32373').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32374').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32375').with_action(lambda: _r32375_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s301', '# from - // Check EXTENDS ~DDEATHAD~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: Ага, как же.", 's301', 'say32376') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32377').with_action(lambda: _dispose()) \
        .response("Морт, тише.", EXIT, 'r', 'reply32378').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", 'DMORTE.D_s303', 'r', 'reply32379') \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32380').with_action(lambda: _r32380_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s302', '# from - // Check EXTENDS ~DDEATHAD~ : 5')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: И бесконечной скуки.", 's302', 'say32381') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32382').with_action(lambda: _dispose()) \
        .response("Морт, пожалуйста, тише.", EXIT, 'r', 'reply32383').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32384').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32385').with_action(lambda: _r32385_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s303', '# from 301.2 // Check EXTENDS ~DDEATHAD~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: Кажется, теперь мы оба знаем, куда отправимся после смерти.", 's303', 'say32386') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32387').with_action(lambda: _dispose()) \
        .response("Морт, хватит болтать.", EXIT, 'r', 'reply32388').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32389').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32390').with_action(lambda: _r32390_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s304', '# from - // Check EXTENDS ~DDEATHAD~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: Это если только повезет.", 's304', 'say32391') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32392').with_action(lambda: _dispose()) \
        .response("Хватит, Морт.", EXIT, 'r', 'reply32393').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32394').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32395').with_action(lambda: _r32395_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s305', '# from - // Check EXTENDS ~DDEATHAD~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: И это типа стимул? Чтобы вляпаться в это *опять*? Ха, не могу дождаться, когда я снова стану летающим черепом. Ура! Забей на этого неудачника. Походу, он еще сам никогда не умирал, верно?", 's305', 'say32396') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32397').with_action(lambda: _dispose()) \
        .response("Хватит, Морт. Тише.", EXIT, 'r', 'reply32398').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32399').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32400').with_action(lambda: _r32400_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s306', '# from - // Check EXTENDS ~DDEATHAD~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Шепот Морта: А, еще один дешевый лозунг.", 's306', 'say32401') \
    .with_responses() \
        .response("Молча кивнуть Морту.", EXIT, 'r', 'reply32402').with_action(lambda: _dispose()) \
        .response("Морт, помолчи.", EXIT, 'r', 'reply32403').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply32404').with_action(lambda: _dispose()) \
        .response("Точно. Пошли отсюда, Морт.", EXIT, 'r', 'reply32405').with_action(lambda: _r32405_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s307', '# from - // Check EXTENDS ~DDEATHAD~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт громко кричит: Что за фигня!", 's307', 'say32406') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s308', '# from - // Check EXTENDS ~DDEATHAD~ : 16')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт, увильнув от взгляда докладчика, поворачивается к тебе и шепотом произносит: Давай, шеф. Задай ему жару по этому поводу.", 's308', 'say32407') \
    .with_responses() \
        .response("Да, у меня есть вопрос…", EXIT, 'r', 'reply32408').with_action(lambda: _dispose()) \
        .response("Вопросов нет. Мой приятель ошибся.", EXIT, 'r', 'reply32409').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s309', '# from - // Check EXTENDS ~DDEATHAD~ : 18')\
    .with_npc_lines() \
        .line(SPEAKER, "Отлично! Еще одна смерть! Подпишите меня! Среди слушателей раздается хохот. Докладчик выглядит сердитым.", 's309', 'say32410') \
    .with_responses() \
        .response("Что происходит, когда они умирают?", EXIT, 'r', 'reply32411').with_action(lambda: _dispose()) \
        .response("У меня есть другие вопросы…", EXIT, 'r', 'reply32412').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел узнать.", EXIT, 'r', 'reply32413').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s310', '# from - // Check EXTENDS ~DSARHAVA~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хочешь, я отшлепаю эту пустоголовую цыпочку, шеф?", 's310', 'say32651') \
    .with_responses() \
        .response("И никакого милосердия, Морт.", 'DMORTE.D_s316', 'r', 'reply32661') \
        .response("Нет, Морт… Я справлюсь с этим.", EXIT, 'r', 'reply32662').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s311', '# from - // Check EXTENDS ~DSARHAVA~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Обожаю твои пустоголовые приемчики, шеф.", 's311', 'say32652') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s312', '# from - // Check EXTENDS ~DSARHAVA~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "Когда ты становишься на колени перед женщиной, Морт кричит: Шеф! Ты шутишь надо мной! То есть, я хочу сказать, ты же не будешь *этого* делать…", 's312', 'say32653') \
    .with_responses() \
        .response("Не обращать внимания на Морта, вылизать сапог девушки.", EXIT, 'r', 'reply32663').with_action(lambda: _dispose()) \
        .response("Просто я не хочу никаких неприятностей, Морт. Если мы будем не осторожны, то я смогу позвать стражу.", 'DMORTE.D_s313', 'r', 'reply32664') \
        .response("Ты прав, Морт. Идем.", EXIT, 'r', 'reply32665').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s313', '# from 312.1 // Check EXTENDS ~DSARHAVA~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "В этом есть что-то… но все же…", 's313', 'say32654') \
    .with_responses() \
        .response("Забудь, Морт. Послушайте, мадам… Давайте прекратим это, пока я не позвал стражу.", EXIT, 'r', 'reply32666').with_action(lambda: _dispose()) \
        .response("Ты прав, Морт. Пошли отсюда.", EXIT, 'r', 'reply32667').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s314', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт сдавленно смеется и щелкает зубами. Просто обычный дамский угодник, а, шеф?", 's314', 'say32655') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s315', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ой-ой…", 's315', 'say32656') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s316', '# from 310.0 // Check EXTENDS ~DSARHAVA~ : 39')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подмигивает тебе и кричит девушке: Эй, ты! Да-да, ты, маленькая дерзкая грубиянка… смотреть на меня, когда я с тобой разговариваю! Чего это ты такая кислая, а?", 's316', 'say32657') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s317', '# from - // Check EXTENDS ~DSARHAVA~ : 40')\
    .with_npc_lines() \
        .line(SPEAKER, "Ааа, наверное, штаны у Пустынной принцессы от того, что султан хотел себе сыночка? Скажи-ка мне, 'принцесса Пустыни', ты так все ночи проводишь, за выпивкой и в драках, в окружении кучи хитрых подхалимов? Наверное, ты так пытаешься оправдать свое существование перед разочарованным отцом?", 's317', 'say32658') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s318', '# from - // Check EXTENDS ~DSARHAVA~ : 41')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты что, вправду думаешь, что от твоих мелких скандальчиков ты станешь о себе лучшего мнения? Думаешь, ты чего-то *стоишь*? А ВОТ И НЕТ! И если тебе, бедняжка, стало легче от того, кто ты *на самом деле*, то я посоветую тебе сдаться, вернуться домой, выйти замуж и податься в какой-нибудь придворный гарем!", 's318', 'say32659') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s319', '# from - // Check EXTENDS ~DSARHAVA~ : 42')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт поворачивается к тебе. Видишь, шеф, я *знаю*, как это все обычно случается. *Всем* известно, что Морт прав в данном вопросе. О нет, только не это, бедная маленькая Пустынная принцесса, оскорбленная, униженн…", 's319', 'say32660') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s320', '# from - // Check EXTENDS ~DGHYSIS~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Кровавая война? Это еще скучней, чем слушать, как законники декламируют законы. Давай-ка найдем пару молоденьких чувствующих, нуждающихся в просвещении по части любовных страстей! В предвкушении он водит бровями.", 's320', 'say33073') \
    .with_responses() \
        .response("Нет, Морт… Я хочу послушать это.", EXIT, 'r', 'reply33074').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply33075').with_action(lambda: _dispose()) \
        .response("Ладно, Морт, пошли.", EXIT, 'r', 'reply33076').with_action(lambda: _r33076_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s321', '# from - // Check EXTENDS ~DGHIVEM~ : 49')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт закатывает глаза и кричит. Ух ты! Смотри! Говорящая какашка!", 's321', 'say33300') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s322', '# from - // Check EXTENDS ~DGHIVEM~ : 51')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт качает в твою сторону, обращаясь к мужчине: Я показывал на этого огромного пня, знаток… не на тебя! Без обид, ага?", 's322', 'say33301') \
    .with_responses() \
        .response("Полегче, Морт…", EXIT, 'r', 'reply33302').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта.", EXIT, 'r', 'reply33303').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s323', '# from - // Check EXTENDS ~DGHIVEF~ : 47')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт закатывает глаза и кричит. Ух ты! Смотри! Говорящая какашка!", 's323', 'say33423') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s324', '# from - // Check EXTENDS ~DGHIVEF~ : 49')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт качает в твою сторону, обращаясь к мужчине: Я показывал на этого огромного пня, знаток… не на тебя! Без обид, ага?", 's324', 'say33429') \
    .with_responses() \
        .response("Полегче, Морт…", EXIT, 'r', 'reply33430').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта.", EXIT, 'r', 'reply33433').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s325', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а? [MRT516]", 's325', 'say33958') \
    .with_responses() \
        .response("Да… идем.", EXIT, 'r', 'reply33959').with_action(lambda: _r33959_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Не сейчас, Морт.", 'DMORTE.D_s326', 'r', 'reply33960') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s326', '# from 325.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's326', 'say33961') \
    .with_responses() \
        .response("Морт, у тебя НЕТ ни того, ни другого.", 'DMORTE.D_s327', 'r', 'reply33962') \
        .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r', 'reply33963').with_action(lambda: _r33963_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Не сейчас, Морт. Может быть, потом.", 'DMORTE.D_s327', 'r', 'reply33964') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s327', '# from 326.0 326.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?", 's327', 'say33965') \
    .with_responses() \
        .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r', 'reply33966').with_action(lambda: _r33966_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 'DMORTE.D_s328', 'r', 'reply33967') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s328', '# from 327.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", 's328', 'say33968') \
    .with_responses() \
        .response("Я так и сделаю. Прощай, Морт.", EXIT, 'r', 'reply33969').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s329', '# from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Что тебя гложет, шеф?", 's329', 'say33970') \
    .with_responses() \
        .response("Можешь еще раз прочитать, что у меня вытатуировано на спине?", 'DMORTE.D_s649', 'r', 'reply65539') \
        .response("Расскажи мне немного о Сигиле.", 'DMORTE.D_s659', 'r', 'reply65540') \
        .response("Морт… я не хочу навешивать ярлыки на тебя, но умеешь ли ты *еще* что-нибудь, кроме болтовни?", 'DMORTE.D_s663', 'r', 'reply65541').with_condition(lambda: _r65541_condition(gsm)) \
        .response("Морт… еще раз, какие у тебя есть способности?", 'DMORTE.D_s666', 'r', 'reply65542').with_condition(lambda: _r65542_condition(gsm)) \
        .response("Морт, почему ты не прочитал последнюю строку татуировки на моей спине?", 'DMORTE.D_s654', 'r', 'reply65543').with_condition(lambda: _r65543_condition(gsm)) \
        .response("Мне нужен совет. Что, по-твоему, нужно делать дальше?", 'DMORTE.D_s669', 'r', 'reply65544') \
        .response("Ты говорил, что ты — мимир, верно, Морт?", 'DMORTE.D_s684', 'r', 'reply65545').with_condition(lambda: _r65545_condition(gsm)) \
        .response("Расскажи мне еще раз, как ты оказался в Колонне Черепов.", 'DMORTE.D_s693', 'r', 'reply65546').with_condition(lambda: _r65546_condition(gsm)) \
        .response("Морт, почему с тех пор, как я вытащил тебя из Колонны, ты путешествуешь со мной?", 'DMORTE.D_s715', 'r', 'reply65547').with_condition(lambda: _r65547_condition(gsm)) \
        .response("Что ты знаешь о Кровавой войне?", 'DMORTE.D_s723', 'r', 'reply65548').with_condition(lambda: _r65548_condition(gsm)) \
        .response("Что тебе известно про ночную ведьму Равель?", 'DMORTE.D_s722', 'r', 'reply65549').with_condition(lambda: _r65549_condition(gsm)) \
        .response("Как ты умер, Морт?", 'DMORTE.D_s726', 'r', 'reply65550') \
        .response("Ничего, Морт. Просто проверяю, что ты все еще со мной.", EXIT, 'r', 'reply65551').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s330', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's330', 'say34990') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s331', 'r', 'reply34991').with_action(lambda: _r34991_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s331', 'r', 'reply35001').with_action(lambda: _r35001_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s331', '# from 330.0 330.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's331', 'say34992') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s332', 'r', 'reply34993').with_action(lambda: _r34993_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s333', 'r', 'reply34996') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s333', 'r', 'reply34999') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35000').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s332', '# from 331.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's332', 'say34994') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply34995').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s333', '# from 331.1 331.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's333', 'say34997') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply34998').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s334', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's334', 'say35022') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s335', 'r', 'reply35023').with_action(lambda: _r35023_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s335', 'r', 'reply35033').with_action(lambda: _r35033_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s335', '# from 334.0 334.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's335', 'say35024') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s336', 'r', 'reply35025').with_action(lambda: _r35025_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s337', 'r', 'reply35028') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s337', 'r', 'reply35031') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35032').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s336', '# from 335.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's336', 'say35026') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35027').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s337', '# from 335.1 335.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's337', 'say35029') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35030').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s338', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's338', 'say35054') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s339', 'r', 'reply35055').with_action(lambda: _r35055_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s339', 'r', 'reply35065').with_action(lambda: _r35065_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s339', '# from 338.0 338.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's339', 'say35056') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s340', 'r', 'reply35057').with_action(lambda: _r35057_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s341', 'r', 'reply35060') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s341', 'r', 'reply35063') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35064').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s340', '# from 339.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's340', 'say35058') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35059').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s341', '# from 339.1 339.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's341', 'say35061') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35062').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s342', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's342', 'say35086') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s343', 'r', 'reply35087').with_action(lambda: _r35087_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s343', 'r', 'reply35097').with_action(lambda: _r35097_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s343', '# from 342.0 342.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's343', 'say35088') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s344', 'r', 'reply35089').with_action(lambda: _r35089_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s345', 'r', 'reply35092') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s345', 'r', 'reply35095') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35096').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s344', '# from 343.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's344', 'say35090') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35091').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s345', '# from 343.1 343.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's345', 'say35093') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35094').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s346', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's346', 'say35118') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s347', 'r', 'reply35119').with_action(lambda: _r35119_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s347', 'r', 'reply35129').with_action(lambda: _r35129_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s347', '# from 346.0 346.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's347', 'say35120') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s348', 'r', 'reply35121').with_action(lambda: _r35121_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s349', 'r', 'reply35124') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s349', 'r', 'reply35127') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35128').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s348', '# from 347.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's348', 'say35122') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35123').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s349', '# from 347.1 347.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's349', 'say35125') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35126').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s350', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's350', 'say35150') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s351', 'r', 'reply35151').with_action(lambda: _r35151_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s351', 'r', 'reply35161').with_action(lambda: _r35161_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s351', '# from 350.0 350.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's351', 'say35152') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s352', 'r', 'reply35153').with_action(lambda: _r35153_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s353', 'r', 'reply35156') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s353', 'r', 'reply35159') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35160').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s352', '# from 351.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's352', 'say35154') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35155').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s353', '# from 351.1 351.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's353', 'say35157') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35158').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s354', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's354', 'say35182') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s355', 'r', 'reply35183').with_action(lambda: _r35183_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s355', 'r', 'reply35193').with_action(lambda: _r35193_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s355', '# from 354.0 354.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's355', 'say35184') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s356', 'r', 'reply35185').with_action(lambda: _r35185_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s357', 'r', 'reply35188') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s357', 'r', 'reply35191') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35192').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s356', '# from 355.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's356', 'say35186') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35187').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s357', '# from 355.1 355.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's357', 'say35189') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35190').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s358', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's358', 'say35214') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s359', 'r', 'reply35215').with_action(lambda: _r35215_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s359', 'r', 'reply35225').with_action(lambda: _r35225_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s359', '# from 358.0 358.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's359', 'say35216') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s360', 'r', 'reply35217').with_action(lambda: _r35217_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s361', 'r', 'reply35220') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s361', 'r', 'reply35223') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35224').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s360', '# from 359.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's360', 'say35218') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35219').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s361', '# from 359.1 359.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's361', 'say35221') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35222').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s362', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's362', 'say35246') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s363', 'r', 'reply35247').with_action(lambda: _r35247_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s363', 'r', 'reply35257').with_action(lambda: _r35257_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s363', '# from 362.0 362.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's363', 'say35248') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s364', 'r', 'reply35249').with_action(lambda: _r35249_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s365', 'r', 'reply35252') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s365', 'r', 'reply35255') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35256').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s364', '# from 363.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's364', 'say35250') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35251').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s365', '# from 363.1 363.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's365', 'say35253') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35254').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s366', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's366', 'say35278') \
    .with_responses() \
        .response("О чем это ты *толкуешь*?", 'DMORTE.D_s367', 'r', 'reply35279').with_action(lambda: _r35279_action(gsm)) \
        .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s367', 'r', 'reply35289').with_action(lambda: _r35289_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s367', '# from 366.0 366.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's367', 'say35280') \
    .with_responses() \
        .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s368', 'r', 'reply35281').with_action(lambda: _r35281_action(gsm)) \
        .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s369', 'r', 'reply35284') \
        .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s369', 'r', 'reply35287') \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35288').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s368', '# from 367.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's368', 'say35282') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35283').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s369', '# from 367.1 367.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?", 's369', 'say35285') \
    .with_responses() \
        .response("Как знаешь, Морт. Идем.", EXIT, 'r', 'reply35286').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s370', '# from 377.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's370', 'say35310') \
    .with_responses() \
        .response("Седобородый?", 'DMORTE.D_s371', 'r', 'reply35311') \
        .response("Не думаю, что он имеет что-то против.", 'DMORTE.D_s372', 'r', 'reply35326') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s373', 'r', 'reply35327') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s371', '# from 370.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.", 's371', 'say35312') \
    .with_responses() \
        .response("Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?", 'DMORTE.D_s372', 'r', 'reply35313') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s373', 'r', 'reply35325') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s372', '# from 370.1 371.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.", 's372', 'say35314') \
    .with_responses() \
        .response("А ты, значит, нет?", 'DMORTE.D_s373', 'r', 'reply35315') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply35324').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s373', '# from 370.2 371.1 372.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.", 's373', 'say35316') \
    .with_responses() \
        .response("Да? Зато у *меня* все при себе.", 'DMORTE.D_s374', 'r', 'reply35317') \
        .response("Идем.", EXIT, 'r', 'reply35323').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s374', '# from 373.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.", 's374', 'say35318') \
    .with_responses() \
        .response("Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.", 'DMORTE.D_s375', 'r', 'reply35319').with_action(lambda: _r35319_action(gsm)) \
        .response("Идем.", EXIT, 'r', 'reply35322').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s375', '# from 374.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.", 's375', 'say35320') \
    .with_responses() \
        .response("Очень приятно это слышать. Идем.", EXIT, 'r', 'reply35321').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s376', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's376', 'say35341') \
    .with_responses() \
        .response("И что?", 'DMORTE.D_s377', 'r', 'reply35342').with_action(lambda: _r35342_action(gsm)) \
        .response("О… Я не хотел ему навредить.", 'DMORTE.D_s377', 'r', 'reply35360').with_action(lambda: _r35360_action(gsm)) \
        .response("Ну, тогда ладно. Может, в другой раз.", 'DMORTE.D_s377', 'r', 'reply35361') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s377', '# from 376.0 376.1 376.2 // Check EXTENDS ~DS1221~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.", 's377', 'say35343') \
    .with_responses() \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35344').with_condition(lambda: _r35344_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35352').with_condition(lambda: _r35352_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35355').with_condition(lambda: _r35355_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, может быть, в другой раз.", 'DMORTE.D_s370', 'r', 'reply35358').with_condition(lambda: _r35358_condition(gsm)).with_action(lambda: _r35358_action(gsm)) \
        .response("Неважно, может быть, в другой раз.", EXIT, 'r', 'reply35359').with_condition(lambda: _r35359_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s378', '# from 385.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's378', 'say35387') \
    .with_responses() \
        .response("Седобородый?", 'DMORTE.D_s379', 'r', 'reply35388') \
        .response("Не думаю, что он имеет что-то против.", 'DMORTE.D_s380', 'r', 'reply35403') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s381', 'r', 'reply35404') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s379', '# from 378.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.", 's379', 'say35389') \
    .with_responses() \
        .response("Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?", 'DMORTE.D_s380', 'r', 'reply35390') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s381', 'r', 'reply35402') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s380', '# from 378.1 379.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.", 's380', 'say35391') \
    .with_responses() \
        .response("А ты, значит, нет?", 'DMORTE.D_s381', 'r', 'reply35392') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply35401').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s381', '# from 378.2 379.1 380.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.", 's381', 'say35393') \
    .with_responses() \
        .response("Да? Зато у *меня* все при себе.", 'DMORTE.D_s382', 'r', 'reply35394') \
        .response("Идем.", EXIT, 'r', 'reply35400').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s382', '# from 381.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.", 's382', 'say35395') \
    .with_responses() \
        .response("Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.", 'DMORTE.D_s383', 'r', 'reply35396').with_action(lambda: _r35396_action(gsm)) \
        .response("Идем.", EXIT, 'r', 'reply35399').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s383', '# from 382.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.", 's383', 'say35397') \
    .with_responses() \
        .response("Очень приятно это слышать. Идем.", EXIT, 'r', 'reply35398').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s384', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's384', 'say35418') \
    .with_responses() \
        .response("И что?", 'DMORTE.D_s385', 'r', 'reply35419').with_action(lambda: _r35419_action(gsm)) \
        .response("О… Я не хотел ему навредить.", 'DMORTE.D_s385', 'r', 'reply35437').with_action(lambda: _r35437_action(gsm)) \
        .response("Ну, тогда ладно. Может, в другой раз.", 'DMORTE.D_s385', 'r', 'reply35438') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s385', '# from 384.0 384.1 384.2 // Check EXTENDS ~DS748~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.", 's385', 'say35420') \
    .with_responses() \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35421').with_condition(lambda: _r35421_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35429').with_condition(lambda: _r35429_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35432').with_condition(lambda: _r35432_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, может быть, в другой раз.", 'DMORTE.D_s378', 'r', 'reply35435').with_condition(lambda: _r35435_condition(gsm)).with_action(lambda: _r35435_action(gsm)) \
        .response("Неважно, может быть, в другой раз.", EXIT, 'r', 'reply35436').with_condition(lambda: _r35436_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s386', '# from 393.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's386', 'say35464') \
    .with_responses() \
        .response("Седобородый?", 'DMORTE.D_s387', 'r', 'reply35465') \
        .response("Не думаю, что он имеет что-то против.", 'DMORTE.D_s388', 'r', 'reply35480') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s389', 'r', 'reply35481') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s387', '# from 386.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.", 's387', 'say35466') \
    .with_responses() \
        .response("Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?", 'DMORTE.D_s388', 'r', 'reply35467') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s389', 'r', 'reply35479') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s388', '# from 386.1 387.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.", 's388', 'say35468') \
    .with_responses() \
        .response("А ты, значит, нет?", 'DMORTE.D_s389', 'r', 'reply35469') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply35478').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s389', '# from 386.2 387.1 388.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.", 's389', 'say35470') \
    .with_responses() \
        .response("Да? Зато у *меня* все при себе.", 'DMORTE.D_s390', 'r', 'reply35471') \
        .response("Идем.", EXIT, 'r', 'reply35477').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s390', '# from 389.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.", 's390', 'say35472') \
    .with_responses() \
        .response("Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.", 'DMORTE.D_s391', 'r', 'reply35473').with_action(lambda: _r35473_action(gsm)) \
        .response("Идем.", EXIT, 'r', 'reply35476').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s391', '# from 390.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.", 's391', 'say35474') \
    .with_responses() \
        .response("Очень приятно это слышать. Идем.", EXIT, 'r', 'reply35475').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s392', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's392', 'say35495') \
    .with_responses() \
        .response("И что?", 'DMORTE.D_s393', 'r', 'reply35496').with_action(lambda: _r35496_action(gsm)) \
        .response("О… Я не хотел ему навредить.", 'DMORTE.D_s393', 'r', 'reply35514').with_action(lambda: _r35514_action(gsm)) \
        .response("Ну, тогда ладно. Может, в другой раз.", 'DMORTE.D_s393', 'r', 'reply35515') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s393', '# from 392.0 392.1 392.2 // Check EXTENDS ~DS996~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.", 's393', 'say35497') \
    .with_responses() \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35498').with_condition(lambda: _r35498_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35506').with_condition(lambda: _r35506_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35509').with_condition(lambda: _r35509_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, может быть, в другой раз.", 'DMORTE.D_s386', 'r', 'reply35512').with_condition(lambda: _r35512_condition(gsm)).with_action(lambda: _r35512_action(gsm)) \
        .response("Неважно, может быть, в другой раз.", EXIT, 'r', 'reply35513').with_condition(lambda: _r35513_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s394', '# from 401.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…", 's394', 'say35541') \
    .with_responses() \
        .response("Седобородый?", 'DMORTE.D_s395', 'r', 'reply35542') \
        .response("Не думаю, что он имеет что-то против.", 'DMORTE.D_s396', 'r', 'reply35557') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s397', 'r', 'reply35558') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s395', '# from 394.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.", 's395', 'say35543') \
    .with_responses() \
        .response("Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?", 'DMORTE.D_s396', 'r', 'reply35544') \
        .response("Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.", 'DMORTE.D_s397', 'r', 'reply35556') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s396', '# from 394.1 395.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.", 's396', 'say35545') \
    .with_responses() \
        .response("А ты, значит, нет?", 'DMORTE.D_s397', 'r', 'reply35546') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply35555').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s397', '# from 394.2 395.1 396.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.", 's397', 'say35547') \
    .with_responses() \
        .response("Да? Зато у *меня* все при себе.", 'DMORTE.D_s398', 'r', 'reply35548') \
        .response("Идем.", EXIT, 'r', 'reply35554').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s398', '# from 397.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.", 's398', 'say35549') \
    .with_responses() \
        .response("Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.", 'DMORTE.D_s399', 'r', 'reply35550').with_action(lambda: _r35550_action(gsm)) \
        .response("Идем.", EXIT, 'r', 'reply35553').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s399', '# from 398.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.", 's399', 'say35551') \
    .with_responses() \
        .response("Очень приятно это слышать. Идем.", EXIT, 'r', 'reply35552').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s400', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.", 's400', 'say35572') \
    .with_responses() \
        .response("И что?", 'DMORTE.D_s401', 'r', 'reply35573').with_action(lambda: _r35573_action(gsm)) \
        .response("О… Я не хотел ему навредить.", 'DMORTE.D_s401', 'r', 'reply35591').with_action(lambda: _r35591_action(gsm)) \
        .response("Ну, тогда ладно. Может, в другой раз.", 'DMORTE.D_s401', 'r', 'reply35592') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s401', '# from 400.0 400.1 400.2 // Check EXTENDS ~DS863~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.", 's401', 'say35574') \
    .with_responses() \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35575').with_condition(lambda: _r35575_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35583').with_condition(lambda: _r35583_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Попробовать вытащить скобы из суставов скелета.", EXIT, 'r', 'reply35586').with_condition(lambda: _r35586_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, может быть, в другой раз.", 'DMORTE.D_s394', 'r', 'reply35589').with_condition(lambda: _r35589_condition(gsm)).with_action(lambda: _r35589_action(gsm)) \
        .response("Неважно, может быть, в другой раз.", EXIT, 'r', 'reply35590').with_condition(lambda: _r35590_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s402', '# from - // Check EXTENDS ~DECCO~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Я уже втрескался в эту крошку по уши!", 's402', 'say38265') \
    .with_responses() \
        .response("А написать или показать жестами?", EXIT, 'r', 'reply38267').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s403', '# from - // Check EXTENDS ~DECCO~ : 34')\
    .with_npc_lines() \
        .line(SPEAKER, "Ой!", 's403', 'say38266') \
    .with_responses() \
        .response("А?", EXIT, 'r', 'reply38268').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s404', '# from - // Check EXTENDS ~DMANYAS1~ : 5')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепчет: Не к добру все это, шеф. Будь осторожен, не то они начисто сотрут твои мозги… чем их больше, тем они сильнее: каждая крыса добавляет свой разум к остальным. Они *смертельно* опасны.", 's404', 'say39000') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s405', '# from - // Check EXTENDS ~DMANYAS1~ : 58')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепчет: Не к добру все это, шеф. Будь осторожен, не то они начисто сотрут твои мозги… чем их больше, тем они сильнее: каждая крыса добавляет свой разум к остальным. Они *смертельно* опасны.", 's405', 'say39001') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s406', '# from - // Check EXTENDS ~DMANYAS1~ : 78')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепчет: Не знаю, к чему они клонят, шеф, но лучше следи за тем, о чем думаешь. Они — коллективный разум, и каждая крыса добавляет свой разум к остальным, и они дерутся, как… прости за каламбур… как загнанные в угол крысы. Мы у них дома, босс, и им некуда деваться. Так что не наломай дров.", 's406', 'say39002') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s407', '# from - // Check EXTENDS ~DYVES~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Какое совпадение! Я тоже охочусь — только за цыпочками.", 's407', 'say39564') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s408', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я? Почему это *я* должен травить байки?", 's408', 'say39565') \
    .with_responses() \
        .response("Тогда забудь.", 'DMORTE.D_s409', 'r', 'reply39713') \
        .response("Морт, просто расскажи историю.", 'DMORTE.D_s413', 'r', 'reply39714') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s409', '# from 408.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет-нет, я расскажу… Просто я решил, что стоит немного поныть — согласно обычаю. К тому же, я люблю, когда мне уделяют внимание.", 's409', 'say39566') \
    .with_responses() \
        .response("Нет уж, Морт. Я не желаю слышать ее.", 'DMORTE.D_s410', 'r', 'reply39715') \
        .response("Ладно… тогда давай.", 'DMORTE.D_s414', 'r', 'reply39716').with_action(lambda: _r39716_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s410', '# from 409.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Пожалуйста! Ну? Пожааалуйста! Это отличная история! Много персонажей, много действия, много предзнаменований, и потрясающий *денуэман*!", 's410', 'say39567') \
    .with_responses() \
        .response("Не может быть, чтобы все было настолько хорошо.", 'DMORTE.D_s411', 'r', 'reply39717') \
        .response("Что такое денуэман?", 'DMORTE.D_s412', 'r', 'reply39718') \
        .response("Ладно… валяй.", 'DMORTE.D_s414', 'r', 'reply39719').with_action(lambda: _r39719_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s411', '# from 410.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Может! Может! *Давай*!", 's411', 'say39568') \
    .with_responses() \
        .response("Постой… что такое денуэман?", 'DMORTE.D_s412', 'r', 'reply39720') \
        .response("Ладно, валяй.", 'DMORTE.D_s414', 'r', 'reply39721').with_action(lambda: _r39721_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s412', '# from 410.1 411.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Понятия не имею! Но *звучит* впечатляюще!", 's412', 'say39569') \
    .with_responses() \
        .response("Ладно, валяй.", 'DMORTE.D_s414', 'r', 'reply39722').with_action(lambda: _r39722_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s413', '# from 408.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ладно, ладно…", 's413', 'say39570') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s414', '# from 409.1 410.2 411.1 412.0 413.0 // Check EXTENDS ~DYVES~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Сидел себе старик на краю темной дороги, так? Он не был уверен, в какую сторону идти, и он не помнил, куда он направлялся и кем он был. Он присел ненадолго, чтобы дать отдых своим уставшим ногам, и вдруг видит перед собой старуху. Она беззубо улыбнулась и, хихикая, промолвила: 'А теперь твое третье желание. Каким оно будет?'", 's414', 'say39571') \
    .with_responses() \
        .response("Продолжай, Морт.", 'DMORTE.D_s415', 'r', 'reply39724') \
        .response("Погоди… У меня есть вопросы к Ив…", EXIT, 'r', 'reply39725').with_action(lambda: _dispose()) \
        .response("Морт, мы послушаем ее в другой раз. Счастливо, Ив.", EXIT, 'r', 'reply39726').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s415', '# from 414.0 // Check EXTENDS ~DYVES~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "'Третье желание? — ответил старик в замешательстве. — Как оно может быть третьим, если второго и первого не было?'", 's415', 'say39572') \
    .with_responses() \
        .response("Продолжай, Морт.", 'DMORTE.D_s416', 'r', 'reply39727') \
        .response("Погоди… У меня есть вопросы к Ив…", EXIT, 'r', 'reply39728').with_action(lambda: _dispose()) \
        .response("Морт, мы послушаем ее в другой раз. Счастливо, Ив.", EXIT, 'r', 'reply39729').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s416', '# from 415.0 // Check EXTENDS ~DYVES~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "'Ты уже загадал два желания — со смехом ответила старая карга, — но твоим вторым желанием было, чтобы все стало таким, каким оно было до того, как ты загадал первое желание. Потому ты ничего и не помнишь: ведь все так, как было до того, как ты начал загадывать желания. Так что у тебя осталось одно желание'.", 's416', 'say39573') \
    .with_responses() \
        .response("Продолжай, Морт.", 'DMORTE.D_s417', 'r', 'reply39752') \
        .response("Погоди… У меня есть вопросы к Ив…", EXIT, 'r', 'reply39753').with_action(lambda: _dispose()) \
        .response("Морт, мы послушаем ее в другой раз. Счастливо, Ив.", EXIT, 'r', 'reply39754').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s417', '# from 416.0 // Check EXTENDS ~DYVES~ : 55')\
    .with_npc_lines() \
        .line(SPEAKER, "'Ладно, — сказал старик. — Я в это все не верю, но ведь нет ничего страшного, если я загадаю желание. Я хочу знать, кто я такой'.  'Забавно, — сказала старуха, выполнив его. — Таким было твое первое желание, — и исчезла навсегда'.", 's417', 'say39574') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s418', '# from - // Check EXTENDS ~DNORDOM~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Что это была за фигня, тупой полигон?! Это самая нудная история из тех, что я когда-либо слышал!", 's418', 'say39575') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s419', '# from - // Check EXTENDS ~DNORDOM~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "Приукрашено?", 's419', 'say39576') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s420', '# from - // Check EXTENDS ~DANNAH~ : 196')\
    .with_npc_lines() \
        .line(SPEAKER, "*Давай* уже, чертовка. У тебя уже есть хвост, с которым ты не хочешь расставаться.", 's420', 'say39577') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s421', '# from - // Check EXTENDS ~DNENNY~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт вертится вокруг тебя, подшучивая над очевидностью слов девушки. Силы небесные, шеф… а ведь она права! Как я раньше не заметил… ты же весь в *шрамах*!", 's421', 'say40068') \
    .with_responses() \
        .response("Это все старые шрамы. Я в порядке.", EXIT, 'r', 'reply40069').with_condition(lambda: _r40069_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Только немного. Я очень скоро поправлюсь.", EXIT, 'r', 'reply40070').with_condition(lambda: _r40070_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Да. И очень сильно.", EXIT, 'r', 'reply40071').with_condition(lambda: _r40071_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Не думай об этом. У меня еще вопросы…", EXIT, 'r', 'reply40072').with_action(lambda: _dispose()) \
        .response("Не волнуйся об этом. Счастливо.", EXIT, 'r', 'reply40073').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s422', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт водит бровями. Да ты и впрямь слишком прямая… может, стоит что-нибудь сделать с этими обвисшими, болтающимися гр…", 's422', 'say40074') \
    .with_responses() \
        .response("Хватит, Морт.", 'DMORTE.D_s423', 'r', 'reply40075') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s423', '# from 422.0 // Check EXTENDS ~DNENNY~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт умолкает.", 's423', 'say40076') \
    .with_responses() \
        .response("Нет проблем, Ненни.", EXIT, 'r', 'reply40077').with_condition(lambda: _r40077_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Следи, чтобы это больше не повторилось, Ненни.", EXIT, 'r', 'reply40078').with_condition(lambda: _r40078_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Нет проблем, барышня.", EXIT, 'r', 'reply40079').with_condition(lambda: _r40079_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Следи, чтобы это больше не повторилось, девочка.", EXIT, 'r', 'reply40080').with_condition(lambda: _r40080_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s424', '# from - // Check EXTENDS ~DNENNY~ : 27')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй!", 's424', 'say40081') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s425', '# from - // Check EXTENDS ~DNENNY~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт бурчит себе под нос: Думаю, хорошо, что там *вообще* хоть что-нибудь есть.", 's425', 'say40082') \
    .with_responses() \
        .response("У меня другой вопрос, Ненни…", EXIT, 'r', 'reply40083').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел узнать, Ненни. Прощай.", EXIT, 'r', 'reply40084').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s426', '# from - // Check EXTENDS ~DBROCUS4~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Ооо, нет… ты просто *обязан* нам сейчас же все рассказать.", 's426', 'say40222') \
    .with_responses() \
        .response("Да… пожалуйста, расскажи нам.", EXIT, 'r', 'reply40223').with_action(lambda: _dispose()) \
        .response("Брось это, Морт. У меня к нему другой вопрос…", EXIT, 'r', 'reply40224').with_action(lambda: _dispose()) \
        .response("Забудь об этом, Морт. Идем.", EXIT, 'r', 'reply40225').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s427', '# from - // Check EXTENDS ~DSADJULI~ : 24')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подлетает поближе к тебе и шепчет: Мне жаль ее любовника. Он не представляет, как плохо обстоят дела. От таких девчонок, как эта, одни проблемы.", 's427', 'say40275') \
    .with_responses() \
        .response("Это звучит не очень мудро, Джульетта. Довольствуйся тем, что имеешь.", EXIT, 'r', 'reply40276').with_action(lambda: _dispose()) \
        .response("Что у тебя на уме, Джульетта?", EXIT, 'r', 'reply40277').with_action(lambda: _dispose()) \
        .response("У меня еще вопросы, Джульетта…", EXIT, 'r', 'reply40278').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел узнать, Джульетта. Прощай.", EXIT, 'r', 'reply40279').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s428', '# from - // Check EXTENDS ~DMARISSA~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт тихонько шепчет: Ух ты… жуткая девчонка.", 's428', 'say40685') \
    .with_responses() \
        .response("Прошу прощения, миледи… Не думал, что тут кто-нибудь есть.", EXIT, 'r', 'reply40686').with_action(lambda: _dispose()) \
        .response("У меня есть несколько вопросов, миледи…", EXIT, 'r', 'reply40687').with_action(lambda: _dispose()) \
        .response("В таком случае, прощайте, миледи.", EXIT, 'r', 'reply40688').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s429', '# from - // Check EXTENDS ~DBROCUS6~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Брось, шеф! Мы в доме, где полным-полно самых сексуальных цыпочек по эту сторону мультивселенной, а ты останавливаешься, чтобы поболтать с *модронами*?", 's429', 'say40846') \
    .with_responses() \
        .response("Что ты можешь рассказать о них, Морт?", 'DMORTE.D_s430', 'r', 'reply40847') \
        .response("Не обращать внимания на Морта и поздороваться с модроном.", EXIT, 'r', 'reply40848').with_action(lambda: _r40848_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Прошу прощения, Морт, но я разговариваю с модроном.", 'DMORTE.D_s431', 'r', 'reply40849') \
        .response("Хорошо. Идем, Морт.", EXIT, 'r', 'reply40850').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s430', '# from 429.0 // Check EXTENDS ~DBROCUS6~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт издает звук крайнего отвращения. Что тут сказать? Мелкие назойливые механические жучки… без передыху трудятся над навязыванием закона и порядка в мультивселенной. Заметь, не *добра*… только порядка. Давай просто забудем о них и пойдем поболтаем с дамочками, а?", 's430', 'say40851') \
    .with_responses() \
        .response("Не обращать внимания на Морта и поздороваться с модроном.", EXIT, 'r', 'reply40852').with_action(lambda: _r40852_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Прошу прощения, Морт, но я разговариваю с модроном.", 'DMORTE.D_s431', 'r', 'reply40853') \
        .response("Хорошо. Идем, Морт.", EXIT, 'r', 'reply40854').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s431', '# from 429.2 430.1 // Check EXTENDS ~DBROCUS6~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт громко вздыхает. Ладно, как знаешь… Только не говори, что я тебя не предупреждал. Хотя ты, наверное, многого от них не добьешься… у них довольно странная манера разговора.", 's431', 'say40855') \
    .with_responses() \
        .response("Приветствую…", EXIT, 'r', 'reply40856').with_action(lambda: _r40856_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s432', '# from - // Check EXTENDS ~DKESAI~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Все что угодно! — кричит Морт. — Ты можешь сделать со мной все что захочешь!", 's432', 'say41135') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s433', '# from - // Check EXTENDS ~DKESAI~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Я вот-вот разрыдаюсь… где же была эта крошка, когда у меня было *тело*?!", 's433', 'say41136') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s434', '# from - // Check EXTENDS ~DKIMASXI~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Мой приятель подумал, что ты привлекательная, но *черт*! Так сильно он еще ни разу не ошибался!", 's434', 'say41632') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s435', '# from 436.0 // Check EXTENDS ~DKIMASXI~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Конечно, шеф, как скажешь. Хороша, чертовка, а? — Морт фыркает, затем двигает бровями. — Это мне *нравится*!", 's435', 'say41633') \
    .with_responses() \
        .response("Уверен, так оно и есть, Морт, но мне нужно с ней поговорить.", EXIT, 'r', 'reply41634').with_action(lambda: _dispose()) \
        .response("Ладно… Тогда идем, Морт.", EXIT, 'r', 'reply41635').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s436', '# from - // Check EXTENDS ~DKIMASXI~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Как будто бы я оставил его где-то рядом, если бы оно у меня было! Что, услышала слово бордель и решила, что сможешь срубить здесь немного звенелок, блохастая помойная шлюха? Ха! Поверить не могу, что они пустили тебя внутрь со всеми этими блохами, падающими с твоих лохматых ног!", 's436', 'say41636') \
    .with_responses() \
        .response("Эй вы, двое. Прекратите.", 'DMORTE.D_s435', 'r', 'reply41637') \
        .response("Позволить им продолжать.", EXIT, 'r', 'reply41638').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s437', '# from - // Check EXTENDS ~DKIMASXI~ : 18')\
    .with_npc_lines() \
        .line(SPEAKER, "*Он*! '*ОН*, кажется, и так достаточно грязно ругается', ты, Кимаскси Говноязыкая… грязная козлоногая шлюшка!", 's437', 'say41639') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s438', '# from - // Check EXTENDS ~DKIMASXI~ : 20')\
    .with_npc_lines() \
        .line(SPEAKER, "Да уж получше тебя, да? — Морт двигает бровями. — А? А?", 's438', 'say41640') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s439', '# from - // Check EXTENDS ~DKIMASXI~ : 21')\
    .with_npc_lines() \
        .line(SPEAKER, "Не буду, *тифлинг*. Хотя признаю, что узнал пару новых вещей… неплохо придумано, шеф! [MRT387]", 's439', 'say41641') \
    .with_responses() \
        .response("Конечно, Морт.", EXIT, 'r', 'reply41642').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s440', '# from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя. Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?", 's440', 'say41830') \
    .with_responses() \
        .response("Хорошо… если у меня возникнут вопросы, я спрошу у тебя.", 'DMORTE.D_s441', 'r', 'reply41831') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s441', '# from 440.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.", 's441', 'say41832') \
    .with_responses() \
        .response("Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил.", 'DMORTE.D_s442', 'r', 'reply41833') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s442', '# from 441.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил.", 's442', 'say41834') \
    .with_responses() \
        .response("Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый.", 'DMORTE.D_s443', 'r', 'reply41835') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s443', '# from 442.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты… или, что еще важнее, кто *я*… то воспользуйся им, чтобы освежить свою память.", 's443', 'say41836') \
    .with_responses() \
        .response("Ладно… Уяснил. Идем.", EXIT, 'r', 'reply41837').with_action(lambda: _r41837_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s444', '# from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Что тебя гложет, шеф? [MRT515]", 's444', 'say41838') \
    .with_responses() \
        .response("Можешь еще раз прочитать, что у меня вытатуировано на спине?", 'DMORTE.D_s445', 'r', 'reply41840') \
        .response("Еще раз, что это за место?", 'DMORTE.D_s450', 'r', 'reply41841') \
        .response("Это место такое огромное… Кто за ним присматривает?", 'DMORTE.D_s451', 'r', 'reply41842').with_condition(lambda: _r41842_condition(gsm)) \
        .response("Еще раз, кто эти смотрители?", 'DMORTE.D_s451', 'r', 'reply41843').with_condition(lambda: _r41843_condition(gsm)) \
        .response("Эти трупы… откуда они все берутся?", 'DMORTE.D_s454', 'r', 'reply41844') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE.D_s455', 'r', 'reply41845').with_condition(lambda: _r41845_condition(gsm)) \
        .response("Как мне использовать эти бинты?", 'DMORTE.D_s453', 'r', 'reply41846').with_condition(lambda: _r41846_condition(gsm)) \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", 'DMORTE.D_s440', 'r', 'reply41847').with_condition(lambda: _r41847_condition(gsm)) \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", EXIT, 'r', 'reply41848').with_condition(lambda: _r41848_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s445', '# from 444.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл.", 's445', 'say41849') \
    .with_responses() \
        .response("Мне просто нужно освежить свою память.", 'DMORTE.D_s446', 'r', 'reply41850') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s444', 'r', 'reply41851') \
        .response("Ладно, забудь. Идем.", 'DMORTE.D_s440', 'r', 'reply41852').with_condition(lambda: _r41852_condition(gsm)) \
        .response("Ладно, забудь. Идем.", EXIT, 'r', 'reply41853').with_condition(lambda: _r41853_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s446', '# from 445.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Готов поспорить, что услышу ЭТО много раз, — Морт прочищает горло. — Посмотрим…  'Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых'.", 's446', 'say41854') \
    .with_responses() \
        .response("Фарод… хм-м. Продолжай.", 'DMORTE.D_s447', 'r', 'reply41855') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s444', 'r', 'reply41856') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE.D_s440', 'r', 'reply41857').with_condition(lambda: _r41857_condition(gsm)) \
        .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r', 'reply41858').with_condition(lambda: _r41858_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s447', '# from 446.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.", 's447', 'say41859') \
    .with_responses() \
        .response("Когда я очнулся, рядом со мной не было дневника?", 'DMORTE.D_s448', 'r', 'reply41860') \
        .response("Тогда ладно. У меня есть другие вопросы…", 'DMORTE.D_s444', 'r', 'reply41861') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE.D_s440', 'r', 'reply41862').with_condition(lambda: _r41862_condition(gsm)) \
        .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r', 'reply41863').with_condition(lambda: _r41863_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s448', '# from 447.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет… ты был обобран догола. Как я уже говорил, похоже, что достаточно того дневника, что написан у тебя на теле.", 's448', 'say41864') \
    .with_responses() \
        .response("Ты уверен, что не знаешь никого по имени Фарод?", 'DMORTE.D_s449', 'r', 'reply41865') \
        .response("И то правда. У меня есть другие вопросы…", 'DMORTE.D_s444', 'r', 'reply41866') \
        .response("Ладно. Идем.", 'DMORTE.D_s440', 'r', 'reply41867').with_condition(lambda: _r41867_condition(gsm)) \
        .response("Ладно. Идем.", EXIT, 'r', 'reply41868').with_condition(lambda: _r41868_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s449', '# from 448.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда.", 's449', 'say41869') \
    .with_responses() \
        .response("Перед тем как мы пойдем, у меня есть еще вопросы…", 'DMORTE.D_s444', 'r', 'reply41870') \
        .response("Ладно. Идем.", 'DMORTE.D_s440', 'r', 'reply41871').with_condition(lambda: _r41871_condition(gsm)) \
        .response("Ладно. Идем.", EXIT, 'r', 'reply41872').with_condition(lambda: _r41872_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s450', '# from 444.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's450', 'say41873') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE.D_s444', 'r', 'reply41874') \
        .response("Это все, что я хотел узнать. Спасибо.", 'DMORTE.D_s440', 'r', 'reply41875').with_condition(lambda: _r41875_condition(gsm)) \
        .response("Это все, что я хотел узнать. Спасибо.", EXIT, 'r', 'reply41876').with_condition(lambda: _r41876_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s451', '# from 444.2 444.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's451', 'say41877') \
    .with_responses() \
        .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE.D_s452', 'r', 'reply41878') \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE.D_s444', 'r', 'reply41879') \
        .response("Понятно. Тогда я буду осторожен.", 'DMORTE.D_s440', 'r', 'reply41880').with_condition(lambda: _r41880_condition(gsm)) \
        .response("Понятно. Тогда я буду осторожен.", EXIT, 'r', 'reply41881').with_condition(lambda: _r41881_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s452', '# from 451.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's452', 'say41882') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE.D_s444', 'r', 'reply41883') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE.D_s440', 'r', 'reply41884').with_condition(lambda: _r41884_condition(gsm)) \
        .response("Ладно… Я… попробую это запомнить.", EXIT, 'r', 'reply41885').with_condition(lambda: _r41885_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s453', '# from 444.6')\
    .with_npc_lines() \
        .line(SPEAKER, "Нууу… просто *используй* их. Останавливает кровотечение и все такое.", 's453', 'say41886') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE.D_s444', 'r', 'reply41887') \
        .response("Спасибо. Думаю, я смогу с ними справиться.", 'DMORTE.D_s440', 'r', 'reply41888').with_condition(lambda: _r41888_condition(gsm)) \
        .response("Спасибо. Думаю, я смогу с ними справиться.", EXIT, 'r', 'reply41889').with_condition(lambda: _r41889_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s454', '# from 444.4')\
    .with_npc_lines() \
        .line(SPEAKER, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's454', 'say41890') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE.D_s444', 'r', 'reply41891') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE.D_s440', 'r', 'reply41892').with_condition(lambda: _r41892_condition(gsm)) \
        .response("Ладно… Я… попробую это запомнить.", EXIT, 'r', 'reply41893').with_condition(lambda: _r41893_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s455', '# from 444.5')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's455', 'say41894') \
    .with_responses() \
        .response("Последняя возможность? Погоди… о *чем* это ты толкуешь?", 'DMORTE.D_s456', 'r', 'reply41895') \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE.D_s444', 'r', 'reply41896') \
        .response("Ладно… Я… попробую это запомнить.", EXIT, 'r', 'reply41897').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s456', '# from 455.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's456', 'say41898') \
    .with_responses() \
        .response("Нет… не очень, если честно.", 'DMORTE.D_s457', 'r', 'reply41899') \
        .response("Ты это *несерьезно*.", 'DMORTE.D_s457', 'r', 'reply41900').with_condition(lambda: _r41900_condition(gsm)) \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE.D_s444', 'r', 'reply41901') \
        .response("Я достаточно наслушался. Идем.", EXIT, 'r', 'reply41902').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s457', '# from 456.0 456.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* по крайней мере один раз умирали: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.", 's457', 'say41903') \
    .with_responses() \
        .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE.D_s458', 'r', 'reply41904') \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE.D_s444', 'r', 'reply41905') \
        .response("Я достаточно наслушался. Идем.", EXIT, 'r', 'reply41906').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s458', '# from 457.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's458', 'say41907') \
    .with_responses() \
        .response("У меня есть другие вопросы к тебе, Морт…", 'DMORTE.D_s444', 'r', 'reply41908') \
        .response("Я достаточно наслушался. Идем.", EXIT, 'r', 'reply41909').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s459', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Силы небесные. Это одна из этих ЧЕРТОВЫХ книг.", 's459', 'say41910') \
    .with_responses() \
        .response("Что такое?", 'DMORTE.D_s460', 'r', 'reply41911').with_action(lambda: _r41911_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s460', '# from 459.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь.", 's460', 'say41913') \
    .with_responses() \
        .response("А мое имя может быть там?", 'DMORTE.D_s461', 'r', 'reply41914') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s461', '# from 460.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея.", 's461', 'say41915') \
    .with_responses() \
        .response("Мне нужны ответы. Я поговорю с ним.", EXIT, 'r', 'reply41916').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s462', '# from - // Check EXTENDS ~DJUMBLE~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт шепчет: В каком-то дурдоме недостает постояльца.", 's462', 'say41919') \
    .with_responses() \
        .response("Джамбл, у меня несколько вопросов…", EXIT, 'r', 'reply41920').with_action(lambda: _dispose()) \
        .response("Ты тот, кто проклял Вонючку, не так ли?", EXIT, 'r', 'reply41921').with_condition(lambda: _r41921_condition(gsm)).with_action(lambda: _r41921_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Я хотел бы, чтобы ты снял проклятие с Вонючки.", EXIT, 'r', 'reply67864').with_condition(lambda: _r67864_condition(gsm)).with_action(lambda: _dispose()) \
        .response("А теперь я ухожу, Джамбл. Прощай.", EXIT, 'r', 'reply41922').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s463', '# from - // Check EXTENDS ~DJUMBLE~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Ого… шеф, похоже, что в тебя только что бросили проклятье…", 's463', 'say41923') \
    .with_responses() \
        .response("Что ты со мной сделал Джамбл?", EXIT, 'r', 'reply41924').with_action(lambda: _dispose()) \
        .response("Джамбл… пожалуйста, убери это, что бы ты там не натворил.", EXIT, 'r', 'reply41925').with_action(lambda: _dispose()) \
        .response("Что бы ты там не сделал, Джамбл, убери это… или ты об этом горько пожалеешь.", EXIT, 'r', 'reply41926').with_action(lambda: _dispose()) \
        .response("Пошли уже, Морт.", EXIT, 'r', 'reply41927').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s464', '# from - // Check EXTENDS ~DMONTAGU~ : 29')\
    .with_npc_lines() \
        .line(SPEAKER, "Я бы посоветовал проигнорировать эту цыпочку… веди себя отстраненно и невозмутимо. Вот это уж точно добавит остроты в ваши отношения!", 's464', 'say42929') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s465', '# from - // Check EXTENDS ~DMONTAGU~ : 31')\
    .with_npc_lines() \
        .line(SPEAKER, "Доверься мне, малыш. Начни игнорировать ее, придумай какие-нибудь придирки, пусть гадает — и тогда она станет из кожи вон лезть, лишь бы понять, в чем дело. Верно, шеф?", 's465', 'say42930') \
    .with_responses() \
        .response("Да… Она подумает, что что-то не так, и в кои-то веки он превратится из мишени в игрока.", EXIT, 'r', 'reply42931').with_action(lambda: _dispose()) \
        .response("Нет… это плохая идея.", EXIT, 'r', 'reply42932').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s466', '# from - // Check EXTENDS ~DKIINA~ : 35')\
    .with_npc_lines() \
        .line(SPEAKER, "Именно поэтому гиты и не должны размножаться. Они без конца твердят о чем-то, или о вере во что-то, или там 'где бы найти мозгососа или там гитьянки и убить их' и так далее и тому подобное. Я даже не уверен, что им доставляет удовольствие тыкать друг друга. Они сходят с ума и теряют голову, или наоборот — все время остаются такими прямыми и сосредоточенными, что забывают о чувстве юмора. Они болтают про концентрацию, единый разум и взаимное доверие, и при этом упоминают, что их раса раскололась вскоре после того, как они покончили с мозгососами. Теперь не говори мне, что религия и идеология не разрушит планы.", 's466', 'say43543') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s467', '# from - // Check EXTENDS ~DNEML~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Ух ты.", 's467', 'say43908') \
    .with_responses() \
        .response("Ты Немель? Мне сказали, что ты знаешь волшебное слово к этому графину.", EXIT, 'r', 'reply43909').with_condition(lambda: _r43909_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Немель? Твоя подруга Эльвин ищет тебя.", EXIT, 'r', 'reply43910').with_condition(lambda: _r43910_condition(gsm)).with_action(lambda: _r43910_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ты кого-то ищешь?", EXIT, 'r', 'reply43911').with_condition(lambda: _r43911_condition(gsm)).with_action(lambda: _dispose()) \
        .response("У меня есть несколько вопросов…", EXIT, 'r', 'reply43912').with_action(lambda: _dispose()) \
        .response("Мне ничего не нужно, Немель. Прощай.", EXIT, 'r', 'reply43913').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s468', '# from - // Check EXTENDS ~DANNAH~ : 209')\
    .with_npc_lines() \
        .line(SPEAKER, "Ух ты.", 's468', 'say43914') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s469', '# from - // Check EXTENDS ~DANNAH~ : 210')\
    .with_npc_lines() \
        .line(SPEAKER, "Вай, что за горячая девчонка! Изголодалась по вниманию? Я мог бы и на тебя слюни попускать, раз уж ты ревнуешь… Морт начинает подлетать к Анне, причмокивая…", 's469', 'say43915') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s470', '# from - // Check EXTENDS ~DNEML~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт резко останавливается и отворачивается, что-то неразборчиво бормоча.", 's470', 'say43916') \
    .with_responses() \
        .response("Ты Немель? Мне сказали, что ты знаешь волшебное слово к этому графину.", EXIT, 'r', 'reply43917').with_condition(lambda: _r43917_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Немель? Твоя подруга Эльвин ищет тебя.", EXIT, 'r', 'reply43918').with_condition(lambda: _r43918_condition(gsm)).with_action(lambda: _r43918_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ты кого-то ищешь?", EXIT, 'r', 'reply43919').with_condition(lambda: _r43919_condition(gsm)).with_action(lambda: _dispose()) \
        .response("У меня есть несколько вопросов…", EXIT, 'r', 'reply43920').with_action(lambda: _dispose()) \
        .response("Мне ничего не нужно, Немель. Прощай.", EXIT, 'r', 'reply43921').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s471', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Да ладно, шеф… Уверен, мы ведь сможем *что-нибудь* придумать. А? А?", 's471', 'say43922') \
    .with_responses() \
        .response("Забудь об этом, Морт. Идем.", EXIT, 'r', 'reply43923').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s472', '# from - // Check EXTENDS ~DGONCAL~ : 20')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт подлетает поближе и шепчет: Только не мне. Я могу помочь. А, шеф? Подмигну, подтолкну…", 's472', 'say44244') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s473', '# from - // Check EXTENDS ~DANNAH~ : 214')\
    .with_npc_lines() \
        .line(SPEAKER, "Повергнутый в ужас, Морт встревает в разговор. Нет! Мужик, ты *спятил*? Это же полный бред!", 's473', 'say44245') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s474', '# from - // Check EXTENDS ~DYI'MINN~ : 47')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт закатывает глаза. Нашествие дураков…", 's474', 'say44677') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s475', '# from - // Check EXTENDS ~DUDESIRE~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Обожа-а-аю Фестхолл.", 's475', 'say44944') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s476', '# from - // Check EXTENDS ~D3PLANEA~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт громко вздыхает. Брось, шеф, мы что, и впрямь останемся на это?", 's476', 'say45026') \
    .with_responses() \
        .response("Морт, просто немного помолчи. Я хочу послушать.", EXIT, 'r', 'reply45027').with_action(lambda: _dispose()) \
        .response("Не обращать внимания на Морта, продолжать слушать.", EXIT, 'r', 'reply45028').with_action(lambda: _dispose()) \
        .response("Ты прав, Морт. Идем.", EXIT, 'r', 'reply45029').with_action(lambda: _r45029_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s477', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ха. Кажется, кто-то забыл приказать этому бедолаге прекратить следовать правилу трех.", 's477', 'say45088') \
    .with_responses() \
        .response("О чем это ты?", 'DMORTE.D_s478', 'r', 'reply45089') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s478', '# from 477.0')\
    .with_npc_lines() \
        .line(SPEAKER, "У этих трупов котелок уже почти не варит, так что они могут выполнять не больше одного задания одновременно… если приказать им делать что-то, то они будут это делать до тех пор, пока кто-нибудь их не остановит. Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.", 's478', 'say45091') \
    .with_responses() \
        .response("А кто отдает им приказы?", 'DMORTE.D_s481', 'r', 'reply45092') \
        .response("Ты что-то сказал про 'правило трех'. Что ты имел ввиду?", 'DMORTE.D_s479', 'r', 'reply45093').with_action(lambda: _r45093_action(gsm)) \
        .response("Ладно. Давай двигаться дальше.", EXIT, 'r', 'reply45094').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s479', '# from 478.1 481.0')\
    .with_npc_lines() \
        .line(SPEAKER, "А? Ну, правило трех — это один из пресловутых законов планов, согласно которому все на свете случается по трое… или состоит из трех частей… или что всегда есть выбор из трех вариантов, ну и так далее.", 's479', 'say45095') \
    .with_responses() \
        .response("Ты так говоришь, как будто не очень веришь в это.", 'DMORTE.D_s480', 'r', 'reply45096') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s480', '# from 479.0 // Check EXTENDS ~DZM965~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "По мне, так все это фигня. Если ты возьмешь с потолка число, любое число, и попытаешься к нему приделать великий смысл, то ты всегда найдешь кучу каких-нибудь совпадений.", 's480', 'say45098') \
    .with_responses() \
        .response("Понятно. До этого ты говорил о том, что кто-то отдал этому трупу приказ, а потом забыл его остановить. А кто отдает трупам приказы?", 'DMORTE.D_s481', 'r', 'reply45099') \
        .response("Понятно. Я хочу еще намного осмотреть этого зомби…", EXIT, 'r', 'reply45100').with_action(lambda: _dispose()) \
        .response("Ладно. Давай двигаться дальше.", EXIT, 'r', 'reply45101').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s481', '# from 478.0 480.0 // Check EXTENDS ~DZM965~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Их выписал из книги мертвых либо один из здешних смотрителей, либо какой-то некромант. Скорее всего, это один из смотрителей… в конце концов, это им нужна дешевая рабочая сила.", 's481', 'say45102') \
    .with_responses() \
        .response("Понятно. А что ты там говорил до этого… про 'правило трех'?", 'DMORTE.D_s479', 'r', 'reply45103').with_action(lambda: _r45103_action(gsm)) \
        .response("Понятно. Я хочу еще намного осмотреть этого зомби…", EXIT, 'r', 'reply45104').with_action(lambda: _dispose()) \
        .response("Ладно. Давай двигаться дальше.", EXIT, 'r', 'reply45105').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s482', '# from - // Check EXTENDS ~DZM985~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… шеф… осторож…", 's482', 'say45540') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s483', '# from - // Check EXTENDS ~DANNAH~ : 215')\
    .with_npc_lines() \
        .line(SPEAKER, "О-о, аукцион! Может, продадим здесь Анну.", 's483', 'say45709') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s484', '# from - // Check EXTENDS ~DDAKKON~ : 163')\
    .with_npc_lines() \
        .line(SPEAKER, "О-о, аукцион! Может, продадим здесь Даккона.", 's484', 'say45710') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s485', '# from - // Check EXTENDS ~DGILTSP~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "О-о, аукцион! Может, подыщем мне здесь тело.", 's485', 'say45711') \
    .with_responses() \
        .response("Хорошо, Морт. Я не забуду об этом спросить.", EXIT, 'r', 'reply45712').with_action(lambda: _dispose()) \
        .response("Тогда давай уходить отсюда.", EXIT, 'r', 'reply45713').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s486', '# from - // Check EXTENDS ~DGILTSP~ : 4')\
    .with_npc_lines() \
        .line(SPEAKER, "Должно быть, это любовь. Это ведь любовь, да, босс?", 's486', 'say45714') \
    .with_responses() \
        .response("Прекратите, вы оба. Мне нужно задать несколько вопросов.", EXIT, 'r', 'reply45715').with_action(lambda: _dispose()) \
        .response("Как скажешь, Морт. Давай оставим в покое этого парня.", EXIT, 'r', 'reply45716').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s487', '# from - // Check EXTENDS ~DVAULT9~ : 0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, смотри! Еще одна летающая голова.", 's487', 'say45996') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s488', '# from - // Check EXTENDS ~DJUSTFER~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, у этой дубинки что-то вроде зависти к чужой мудрости. Забей, палка.", 's488', 'say47813') \
    .with_responses() \
        .response("Умолкни. У меня есть другие вопросы…", EXIT, 'r', 'reply47814').with_action(lambda: _dispose()) \
        .response("На этом разговор окончен.", EXIT, 'r', 'reply47815').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s489', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Оо, гитьянки. Могу поспорить, Даккон будет *так* рад помочь.", 's489', 'say49443') \
    .with_responses() \
        .response("Спасибо за ценное замечание, Морт. Идем.", EXIT, 'r', 'reply49444').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s490', '# from - // Check EXTENDS ~DANNAH~ : 242')\
    .with_npc_lines() \
        .line(SPEAKER, "Ха, да *есть* у них имена. Я уверен в этом.", 's490', 'say50162') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s491', '# from - // Check EXTENDS ~DADABUS~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Вот *ты* и скажи, бесовка.", 's491', 'say50164') \
    .with_responses() \
        .response("Хватит, Морт. Анна, ты можешь задать ему другие вопросы?", EXIT, 'r', 'reply50165').with_action(lambda: _dispose()) \
        .response("Забудь. Уходим отсюда.", EXIT, 'r', 'reply50166').with_action(lambda: _r50166_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s492', '# from - // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.", 's492', 'say50263') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply50264').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s493', '# from - // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.", 's493', 'say50266') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply50267').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s494', '# from - // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.", 's494', 'say50269') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply50270').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s495', '# from - // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.", 's495', 'say50272') \
    .with_responses() \
        .response("Наверное, так и стоит поступить…", EXIT, 'r', 'reply50273').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s496', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, силы небесные! Чертов дабус.", 's496', 'say50320') \
    .with_responses() \
        .response("Что не так?", 'DMORTE.D_s497', 'r', 'reply50321') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s497', '# from 496.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.", 's497', 'say50322') \
    .with_responses() \
        .response("Что за 'дабус'?", 'DMORTE.D_s498', 'r', 'reply50323') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s498', '# from 497.0 // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.", 's498', 'say50324') \
    .with_responses() \
        .response("'Леди Боли'? Кто это?", 'DMORTE.D_s499', 'r', 'reply50325').with_condition(lambda: _r50325_condition(gsm)).with_action(lambda: _r50325_action(gsm)) \
        .response("Что ты можешь рассказать о Леди Боли?", 'DMORTE.D_s499', 'r', 'reply50328').with_condition(lambda: _r50328_condition(gsm)) \
        .response("Понятно.", EXIT, 'r', 'reply50329').with_condition(lambda: _r50329_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s499', '# from 498.0 498.1 // Check EXTENDS ~DADABUS~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.", 's499', 'say50326') \
    .with_responses() \
        .response("Понятно.", EXIT, 'r', 'reply50327').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s500', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Что? Что? Что в ней было, шеф?", 's500', 'say50410') \
    .with_responses() \
        .response("Не знаю, что и сказать, Морт…", 'DMORTE.D_s501', 'r', 'reply50411') \
        .response("Ничто из того, что тебя касается, Морт.", 'DMORTE.D_s501', 'r', 'reply50412') \
        .response("Показать ему Кодекс.", 'DMORTE.D_s503', 'r', 'reply50413') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s501', '# from 500.0 500.1')\
    .with_npc_lines() \
        .line(SPEAKER, "ЧТО? Наверно, ты шутишь? Брось, дай посмотреть!", 's501', 'say50414') \
    .with_responses() \
        .response("Показать ему Кодекс.", 'DMORTE.D_s503', 'r', 'reply50415') \
        .response("Нет, Морт. Просто забудь, что ты его видел.", 'DMORTE.D_s502', 'r', 'reply50416').with_action(lambda: _r50416_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s502', '# from 501.1 // Check EXTENDS ~DCODEXI~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт что-то недовольно бормочет… но прекращает разговор.", 's502', 'say50417') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s503', '# from 500.2 501.0 // Check EXTENDS ~DCODEXI~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт взлетает над твоим плечом, чтобы ознакомиться с содержимым Кодекса. Его глаза чуть не вываливаются из глазниц, пробегая по его страницам. О-о-о. О-о-о-о. О, я… но… ого.", 's503', 'say50418') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s504', '# from - // Check EXTENDS ~DVRISCH~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Эй! Эй! Ты ведь *шутишь*, правда? Ты *не можешь* говорить это серьезно, шеф!", 's504', 'say50697') \
    .with_responses() \
        .response("Я серьезно. Берешь его, Вришика?", EXIT, 'r', 'reply50698').with_action(lambda: _dispose()) \
        .response("Нет. У меня есть другой вопрос, Вришика…", EXIT, 'r', 'reply50699').with_action(lambda: _dispose()) \
        .response("Ты прав, Морт: это была не лучшая идея. Пошли.", EXIT, 'r', 'reply50700').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s505', '# from - // Check EXTENDS ~DVRISCH~ : 46')\
    .with_npc_lines() \
        .line(SPEAKER, "Не могу в это поверить… ты и до этого довольно низко падал, шеф, но это уже слишком. Увидимся в Бааторе, ты, искалеченный мелкостручковый вероломный неблагодарный искромсанный говножующий жирноволосый кривозубый жалкий кусок забывчивого мусора! Помяни мои слова, чертов ублюдок, продолжай в том же духе — и уже скоро откинешься *навсегда*… и тогда уж ты свое получишь!", 's505', 'say50701') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s506', '# from - // Check EXTENDS ~DRAVEL~ : 126')\
    .with_npc_lines() \
        .line(SPEAKER, "Она-то его проглотила, но я не уверен, из *того* ли конца он вышел.", 's506', 'say52571') \
    .with_responses() \
        .response("Довольно… Послушай, Равель. Ты забрала мою смертность, и зла это причинило больше, чем добра. Я хочу вернуть ее обратно: похоже, она у тебя залежалась.", EXIT, 'r', 'reply52572').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s507', '# from - // Check EXTENDS ~DRAVEL~ : 189')\
    .with_npc_lines() \
        .line(SPEAKER, "Мне кажется, я знаю, кому следует сидеть в клетке…", 's507', 'say52573') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s508', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, я не нашел ничего ЛУЧШЕГО, чем согласиться идти в один из лабиринтов Леди и встретиться с одним из злейших созданий, когда-либо ступавших на землю Сигила, так что я сказал 'Конечно! Почему бы…", 's508', 'say52574') \
    .with_responses() \
        .response("Морт, умолкни. Равель, я…", 'DMORTE.D_s509', 'r', 'reply52575') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s509', '# from 508.0 // Check EXTENDS ~DRAVEL~ : 68')\
    .with_npc_lines() \
        .line(SPEAKER, "Умолкни?! — Морт клацает зубами. — Черта с два! Мне кажется, что мы уже достаточно наслушались, как эта старая карга трясет своей черепушкой, но теперь она уже перегибает палку, говоря, что у меня нет кожи! Ну и ЧТО?! Очевидно, тот факт, что у НЕЕ есть кожа, просто творит чудеса с ЕЕ видом! Она что, думает, мне *нравится* все время быть ГОЛЫМ? И *еще*…", 's509', 'say52576') \
    .with_responses() \
        .response("Морт! Хватит! Равель, послушай…", EXIT, 'r', 'reply52577').with_condition(lambda: _r52577_condition(gsm)).with_action(lambda: _r52577_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Морт! Хватит! Равель, послушай…", EXIT, 'r', 'reply52578').with_condition(lambda: _r52578_condition(gsm)).with_action(lambda: _r52578_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Морт! Хватит! Равель, послушай…", EXIT, 'r', 'reply52579').with_condition(lambda: _r52579_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s510', '# from - // Check EXTENDS ~DPREGAL~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Что за бред. Ну где мы тогда сейчас находимся, технически?", 's510', 'say52644') \
    .with_responses() \
        .response("Я и правда не хочу об этом знать, Морт.", EXIT, 'r', 'reply52771').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s511', '# from - // Check EXTENDS ~DPILLAR~ : 5')\
    .with_npc_lines() \
        .line(SPEAKER, "О, это просто *здорово*.", 's511', 'say53623') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s512', '# from 522.0 523.0 524.0 // Check EXTENDS ~DPILLAR~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Только ты делаешь шаг к колонне, Морт шепчет тебе: Пссс! Шеф! Шеф… слушай, я не могу позволить этой штуковине увидеть себя. Тебе придется убрать меня отсюда… оставь меня где-нибудь, а потом подбери позже, или еще чего…", 's512', 'say53624') \
    .with_responses() \
        .response("Забудь об этом, Морт. Я поговорю с ней прямо сейчас…", EXIT, 'r', 'reply53625').with_condition(lambda: _r53625_condition(gsm)).with_action(lambda: _r53625_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Почему, Морт? Что происходит?", 'DMORTE.D_s513', 'r', 'reply53627').with_condition(lambda: _r53627_condition(gsm)) \
        .response("Хорошо. Тогда пошли.", EXIT, 'r', 'reply53628').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s513', '# from 512.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… Я, правда, не хочу об этом говорить. Пойдем-ка отсюда, а? Голос Морта дрожит от страха. Его глаза бегают, смотря то на тебя, то на огромную колонну из голов.", 's513', 'say53626') \
    .with_responses() \
        .response("Я не могу позволить тебе держать так много секретов, Морт. Тебе придется рассказать мне, что здесь происходит.", 'DMORTE.D_s514', 'r', 'reply53629').with_action(lambda: _r53629_action(gsm)) \
        .response("Хватит уклоняться от ответа, Морт. *Сейчас же* выкладывай, что здесь происходит, или ты *хочешь*, чтобы мы поболтали с головами?", 'DMORTE.D_s514', 'r', 'reply53630').with_action(lambda: _r53630_action(gsm)) \
        .response("Хорошо. Тогда пошли.", EXIT, 'r', 'reply53631').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s514', '# from 513.0 513.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт вздыхает, не в силах встретиться с тобой взглядом. Наконец, он сдается. Ладно, ладно… Я тебе расскажу. На Авернусе, первом слое Баатора, есть колонна, сделанная из голов всех тех, кто своей ложью привел кого-нибудь к смерти. Ну… это и есть она. Видишь ли, когда-то я в ней был. Та еще история.", 's514', 'say53632') \
    .with_responses() \
        .response("Значит… ты был одной из тех голов?", 'DMORTE.D_s516', 'r', 'reply53662').with_condition(lambda: _r53662_condition(gsm)) \
        .response("Значит… ты был одной из тех голов?", 'DMORTE.D_s515', 'r', 'reply53663').with_condition(lambda: _r53663_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s515', '# from 514.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага. Я преувеличил… пару раз. Просто один из моих советов привел к твоей смерти. Один из них. Может, и другие. Я правда не знаю. Я больше не помню этого.", 's515', 'say53664') \
    .with_responses() \
        .response("Понятно…", 'DMORTE.D_s518', 'r', 'reply53665') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s516', '# from 514.0 // Check EXTENDS ~DANNAH~ : 269')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага. Я преувеличил… пару раз. Просто один из моих советов…", 's516', 'say53666') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s517', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт невозмутимо продолжает: …один из моих *советов* привел к твоей смерти. Одной из них. Может, и к другим. Я правда не знаю. Я больше не помню этого.", 's517', 'say53667') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s518', '# from 515.0 517.0 // Check EXTENDS ~DDAKKON~ : 183')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. Те воспоминания, они… слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны…", 's518', 'say53668') \
    .with_responses() \
        .response("Продолжай…", 'DMORTE.D_s520', 'r', 'reply54105').with_condition(lambda: _r54105_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s519', '# from - // Check EXTENDS ~DPILLAR~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт смотрит на Даккона, потом на тебя. Думаю, да. Это именно то, что случается, когда ты умираешь. Ты… забываешь. Я, пожалуй, не был образцовым членом общества при жизни… но, черт, есть ли такие вообще? — Морт снова вздыхает. — Ну, с этим я ничего не могу поделать. Нет ничего хуже, чем все время быть честным. Ладно, слушай, шеф, если та куча голов меня увидит, она захочет меня вернуть, *еще как* захочет. Ты не должен этого допустить!", 's519', 'say53794') \
    .with_responses() \
        .response("Забудь об этом, Морт. Я поговорю с ней прямо сейчас…", EXIT, 'r', 'reply53795').with_action(lambda: _r53795_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Погоди… как ты освободился из Колонны?", 'DMORTE.D_s521', 'r', 'reply53796') \
        .response("Постой… почему там, в Морге, ты не сказал, что знал меня?", 'DMORTE.D_s523', 'r', 'reply53797') \
        .response("Минутку. И как давно ты меня знаешь, Морт?", 'DMORTE.D_s524', 'r', 'reply53798') \
        .response("Ладно. Пошли, Морт.", EXIT, 'r', 'reply53799').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s520', '# from 518.1 // Check EXTENDS ~DPILLAR~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Как бы там ни было, я, пожалуй, не был образцовым членом общества при жизни… но, черт, есть ли такие вообще? — Морт снова вздыхает. — Ну, с этим я ничего не могу поделать. Нет ничего хуже, чем все время быть честным. Ладно, слушай, шеф, если та куча голов меня увидит, она захочет меня вернуть, *еще как* захочет. Ты не должен этого допустить!", 's520', 'say53800') \
    .with_responses() \
        .response("Забудь об этом, Морт. Я поговорю с ней прямо сейчас…", EXIT, 'r', 'reply53801').with_action(lambda: _r53801_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Погоди… как ты освободился из Колонны?", 'DMORTE.D_s521', 'r', 'reply53802') \
        .response("Постой… почему там, в Морге, ты не сказал, что знал меня?", 'DMORTE.D_s523', 'r', 'reply53803') \
        .response("Минутку. И как давно ты меня знаешь, Морт?", 'DMORTE.D_s524', 'r', 'reply53804') \
        .response("Ладно. Пошли, Морт.", EXIT, 'r', 'reply53805').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s521', '# from 519.1 520.1 523.1 524.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… ты меня вытащил, шеф. Я пробился на поверхность Колонны — ты ведь был уже здесь раньше — и вопил до тех пор, пока ты меня не заметил. Я умолял освободить себя, клялся, что пойду за тобой, буду делиться с тобой своими знаниями до конца твоих дней… Я просто не представлял, насколько это затянется, пока ты меня не выдернул.", 's521', 'say53806') \
    .with_responses() \
        .response("А как насчет знаний Колонны?..", 'DMORTE.D_s522', 'r', 'reply53807').with_action(lambda: _r53807_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s522', '# from 521.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ах, это… ну, еще я не осознавал, что потеряю большую часть накопленных Колонной знаний, как только освобожусь. Дьявольские силы, *это* не раз тебя выводило из себя! Но ты все равно держал меня рядом. Сперва я почувствовал 'связь' с тобой… может, это твое волшебство превратило меня в что-то типа приживалы. Но через пару сотен лет я понял, что это нечто *большее*… нечто более глубокое. Не просто чувство долга из благодарности, но, черт, и без него не обошлось, это уж точно. Я просто почувствовал себя *связанным* с тобой каким-то образом. Возможно, это все твои страдания, шеф… твои муки. Не знаю. Может, они напоминали мне мои собственные, когда я был в колонне.", 's522', 'say53808') \
    .with_responses() \
        .response("А сейчас я поговорю с Колонной…", 'DMORTE.D_s512', 'r', 'reply53809') \
        .response("Почему там, в Морге, ты не сказал, что знал меня?", 'DMORTE.D_s523', 'r', 'reply53810') \
        .response("И как давно ты меня знаешь, Морт?", 'DMORTE.D_s524', 'r', 'reply53811') \
        .response("Хорошо. Идем, Морт.", EXIT, 'r', 'reply53812').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s523', '# from 519.2 520.2 522.1 524.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Неожиданно Морт начинает защищаться. Потому что я никогда не *знал*, кем ты можешь стать! Некоторые твои воплощения были совершенно безумными! Однажды ты проснулся, одержимый идеей, что это *я* был твоим черепом, и преследовал меня вокруг Шпиля, пытаясь разбить и проглотить… к счастью, на улице ты попал под повозку. Другой ты, 'добрый и законопослушный', пытался засунуть меня обратно в Колонну, потому что 'там мне и место', — Морт ухмыляется. — *Вот* почему. Кроме того, твое незнание не принесло вреда…", 's523', 'say53813') \
    .with_responses() \
        .response("А сейчас я поговорю с Колонной…", 'DMORTE.D_s512', 'r', 'reply53814') \
        .response("Как ты освободился из Колонны?", 'DMORTE.D_s521', 'r', 'reply53815') \
        .response("И как давно ты меня знаешь, Морт?", 'DMORTE.D_s524', 'r', 'reply53816') \
        .response("Хорошо. Идем, Морт.", EXIT, 'r', 'reply53817').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s524', '# from 519.3 520.3 522.2 523.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Не знаю. Наверно, века. Я каждый раз делал все, что мог, чтобы помочь тебе найти свой путь, но… — Морт вздыхает и поднимает взгляд, встречаясь с твоим. — Ты редко добирался так далеко, шеф. Я серьезно. Кажется, всего четыре или пять раз. Должно быть, пришло время… *тебе*, проделавшему весь этот путь, выяснить, что к чему.", 's524', 'say53818') \
    .with_responses() \
        .response("А сейчас я поговорю с Колонной…", 'DMORTE.D_s512', 'r', 'reply53819') \
        .response("Как ты освободился из Колонны?", 'DMORTE.D_s521', 'r', 'reply53820') \
        .response("Почему там, в Морге, ты не сказал, что знал меня?", 'DMORTE.D_s523', 'r', 'reply53821') \
        .response("Хорошо. Идем, Морт.", EXIT, 'r', 'reply53822').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s525', '# from - // Check EXTENDS ~DPILLAR~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "О, нет…", 's525', 'say53823') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s526', '# from - // Check EXTENDS ~DPILLAR~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт трясется от страха, его зубы стучат. Я не могу вернуться, шеф! Не могу! Не могу! Не могу!", 's526', 'say53824') \
    .with_responses() \
        .response("Он не вернется к вам. А у меня есть вопросы…", EXIT, 'r', 'reply53825').with_condition(lambda: _r53825_condition(gsm)).with_action(lambda: _r53825_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Он не вернется к вам. А у меня есть вопросы…", EXIT, 'r', 'reply53826').with_condition(lambda: _r53826_condition(gsm)).with_action(lambda: _r53826_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Он не вернется в Колонну Черепов. А у меня есть вопросы…", EXIT, 'r', 'reply53827').with_condition(lambda: _r53827_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Уходим отсюда, Морт. Давай.", EXIT, 'r', 'reply53828').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s527', '# from - // Check EXTENDS ~DPILLAR~ : 14')\
    .with_npc_lines() \
        .line(SPEAKER, "*Брось*, шеф. Разве я тебе *не рассказывал*, что это? Она состоит из голов лжецов, чьи 'советы' привели к смерти других. Она может ответить почти на любой вопрос — она знает очень многое, — но она ожидает непомерную плату за свои услуги. Не задавай ей такие вопросы!", 's527', 'say53829') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s528', '# from - // Check EXTENDS ~DPILLAR~ : 17')\
    .with_npc_lines() \
        .line(SPEAKER, "Не возвращай меня, шеф. Пожалуйста!", 's528', 'say53830') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s529', '# from - // Check EXTENDS ~DPILLAR~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф? Нет! Нет! Ты *не можешь*! Брось это!", 's529', 'say53831') \
    .with_responses() \
        .response("Не волнуйся, Морт: я заберу тебя позже.", 'DMORTE.D_s530', 'r', 'reply53832').with_condition(lambda: _r53832_condition(gsm)) \
        .response("Не волнуйся, Морт: я заберу тебя позже.", 'DMORTE.D_s530', 'r', 'reply53833').with_condition(lambda: _r53833_condition(gsm)) \
        .response("Не волнуйся, Морт: я заберу тебя позже.", 'DMORTE.D_s530', 'r', 'reply53834').with_condition(lambda: _r53834_condition(gsm)) \
        .response("Не волнуйся, Морт: я заберу тебя позже.", 'DMORTE.D_s531', 'r', 'reply53835').with_condition(lambda: _r53835_condition(gsm)) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53836').with_condition(lambda: _r53836_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53837').with_condition(lambda: _r53837_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53838').with_condition(lambda: _r53838_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53839').with_condition(lambda: _r53839_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53840').with_condition(lambda: _r53840_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Уходим отсюда, Морт. Давай.", EXIT, 'r', 'reply53841').with_action(lambda: _r53841_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s530', '# from 529.0 529.1 529.2 // Check EXTENDS ~DPILLAR~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт смотрит на тебя скептически. Ты *уверен*? *Клянешься*? Эй, о чем это я?! Нет! Ни за что! Эй, ты ведь *не можешь* вернуть меня туда?!", 's530', 'say53842') \
    .with_responses() \
        .response("Схватить Морта и швырнуть его в Колонну Черепов.", EXIT, 'r', 'reply53843').with_action(lambda: _r53843_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53844').with_condition(lambda: _r53844_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53863').with_condition(lambda: _r53863_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53864').with_condition(lambda: _r53864_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53865').with_condition(lambda: _r53865_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53866').with_condition(lambda: _r53866_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Уходим отсюда, Морт. Давай.", EXIT, 'r', 'reply53867').with_action(lambda: _r53867_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s531', '# from 529.3 // Check EXTENDS ~DPILLAR~ : 50')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт некоторое время смотрит на тебя, разинув рот. ЧЕГО? Ни за что! Ты уже не такой сильный, каким был, когда… слушай, забудь об этом; ты не сможешь этого сделать, не получится! Эй, ты же *не можешь* вернуть меня туда?!", 's531', 'say53849') \
    .with_responses() \
        .response("Схватить Морта и швырнуть его в Колонну Черепов.", EXIT, 'r', 'reply53850').with_action(lambda: _r53850_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53851').with_condition(lambda: _r53851_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53852').with_condition(lambda: _r53852_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53853').with_condition(lambda: _r53853_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53854').with_condition(lambda: _r53854_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?", EXIT, 'r', 'reply53855').with_condition(lambda: _r53855_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Уходим отсюда, Морт. Давай.", EXIT, 'r', 'reply53856').with_action(lambda: _r53856_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s532', '# from - // Check EXTENDS ~DPILLAR~ : 19')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй… постой! Не так быстро! Колонна… Я мог бы рассказать вам, где находится Фьюл Раздвоенный Язык! Ну же, разве вы не это хотите знать? Что, если он расскажет это вместо меня? А? Что скажете?", 's532', 'say53857') \
    .with_responses() \
        .response("Постой, Морт. Мы не будем выдавать Фьюла.", 'DMORTE.D_s533', 'r', 'reply53858') \
        .response("Ждать ответа Колонны.", EXIT, 'r', 'reply53859').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s533', '# from 532.0 // Check EXTENDS ~DPILLAR~ : 18')\
    .with_npc_lines() \
        .line(SPEAKER, "Чего? Ты что, *спятил*? Ты продаешь *меня*, а не того *НЕЧИСТОГО*?! Он помог тебе только потому, что он проклят, принужден к этому! А как же *я*? Кто вытащил тебя из Морга, дружище? Кто будет стоять… э, парить… возле тебя, когда ты встретишь то, что ждет тебя в той Крепости Чего-то-там?! А? А? НЕ ФЬЮЛ ТОЛСТОЗАДЫЙ, ЭТО УЖ ТОЧНО!", 's533', 'say53860') \
    .with_responses() \
        .response("Ладно, ладно. Колонна, что скажете?", EXIT, 'r', 'reply53861').with_action(lambda: _dispose()) \
        .response("Извини, Морт. Твой выход.", EXIT, 'r', 'reply53862').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s534', '# from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Почему бы и нет, шеф? — качает головой Морт. — То есть, мы уже были во ВСЕХ ужасных планах мультивселенной, которые только можно вообразить. Так почему бы не сделать еще один шаг в сторону обрыва? — он шумно вздыхает. — ТЫ готов? Потому что если ты не готов…", 's534', 'say54155') \
    .with_responses() \
        .response("Можешь рассказать еще раз, что ждет нас по ту сторону портала?", 'DMORTE.D_s544', 'r', 'reply54156') \
        .response("Я готов, Морт. Лучше мне уже не подготовиться. Ты со мной?", 'DMORTE.D_s535', 'r', 'reply54157') \
        .response("Возможно, ты прав… Дай мне подготовиться поосновательней.", EXIT, 'r', 'reply54158').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s535', '# from 534.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… — Морт с тяжелым вздохом смотрит на мерцающий синий занавес. — Конечно. Пошли. Ведь лучше попадать в разные места, чем трясти черепушкой в Морге, верно?", 's535', 'say54159') \
    .with_responses() \
        .response("Ну хорошо…", EXIT, 'r', 'reply54160').with_action(lambda: _r54160_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s536', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Э-э-э… Морт колеблется, переводя взгляд с портала на тебя и снова на портал. Он шумно вздыхает. Слушай, я не собираюсь говорить *очень* много, но, э-э-э… в общем, мне нужно кое-что сказать тебе…", 's536', 'say54161') \
    .with_responses() \
        .response("В чем дело, Морт?", 'DMORTE.D_s537', 'r', 'reply54162') \
        .response("Что? Давай быстрее, Морт, нам нужно идти…", 'DMORTE.D_s537', 'r', 'reply54163') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s537', '# from 536.0 536.1 // Check EXTENDS ~DDAKKON~ : 174')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, это насчет того места, куда мы собираемся попасть… или, э-э-э, где… мы уже *были*.", 's537', 'say54164') \
    .with_responses() \
        .response("'Где МЫ уже были?' О чем это ты?", 'DMORTE.D_s540', 'r', 'reply54165').with_condition(lambda: _r54165_condition(gsm)) \
        .response("'Где МЫ уже были?' О чем это ты?", EXIT, 'r', 'reply54166').with_condition(lambda: _r54166_condition(gsm)).with_action(lambda: _dispose()) \
        .response("'Где МЫ уже были?' О чем это ты?", 'DMORTE.D_s540', 'r', 'reply54167').with_condition(lambda: _r54167_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s538', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Э-э-э… шеф? Морт колеблется, переводя взгляд с портала на тебя и снова на портал. Он шумно вздыхает. Слушай, я не собираюсь говорить *очень* много, но, э-э-э… в общем, мне нужно кое-что сказать тебе…", 's538', 'say54168') \
    .with_responses() \
        .response("В чем дело, Морт?", 'DMORTE.D_s539', 'r', 'reply54169') \
        .response("Что? Давай быстрее, Морт, мне нужно идти…", 'DMORTE.D_s539', 'r', 'reply54170') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s539', '# from 538.0 538.1 // Check EXTENDS ~DDAKKON~ : 174')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, это насчет того места, куда ты собираешься попасть или, э-э-э, где… ты уже *был*.", 's539', 'say54171') \
    .with_responses() \
        .response("'Где МЫ уже были?' О чем это ты?", 'DMORTE.D_s540', 'r', 'reply54172').with_condition(lambda: _r54172_condition(gsm)) \
        .response("'Где МЫ уже были?' О чем это ты?", EXIT, 'r', 'reply54173').with_condition(lambda: _r54173_condition(gsm)).with_action(lambda: _dispose()) \
        .response("'Где МЫ уже были?' О чем это ты?", 'DMORTE.D_s540', 'r', 'reply54174').with_condition(lambda: _r54174_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s540', '# from 537.0 537.2 539.0 539.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Это… э-э-э, мы проходим это уже не в ПЕРВЫЙ раз… понимаешь, мы уже бывали в этой Крепости сожалений… хотя мы… я… не знал об этом.", 's540', 'say54175') \
    .with_responses() \
        .response("Ты не *знал*? Как такое могло случиться?", 'DMORTE.D_s541', 'r', 'reply54176') \
        .response("Так, значит, ты С САМОГО НАЧАЛА мог мне СКАЗАТЬ, где находится портал, ЧЕМ является портальный ключ, ПОЧЕМУ я бессмертен, ЧТО случилось с моей смертностью И что это связано с Крепостью?! Я тебя *УБЬЮ*, Морт!..", 'DMORTE.D_s542', 'r', 'reply54177') \
        .response("Морт, я жду объяснений… только без лжи и жульничества, только не сейчас.", 'DMORTE.D_s541', 'r', 'reply54178') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54179').with_condition(lambda: _r54179_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54180').with_condition(lambda: _r54180_condition(gsm)).with_action(lambda: _r54180_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s541', '# from 540.0 540.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Это было очень трудно объяснить, пока ты здесь не *оказался*… Кроме того, ты не знал, э-э-э, *другого* тебя — он точно не был из тех вояк, кто ДЕЛИЛСЯ с нами своими мыслями. То есть, я знал, что он искал КАКОЕ-ТО место, но не знал, почему, где оно находится или ЧТО из себя представляет, так что я НИЧЕГО не мог сказать тебе, потому что НИЧЕГО не знал! Я… только знаю, что случилось, когда мы ПОПАЛИ туда…", 's541', 'say54181') \
    .with_responses() \
        .response("И… что случилось?", 'DMORTE.D_s544', 'r', 'reply54189').with_condition(lambda: _r54189_condition(gsm)) \
        .response("И… что случилось?", 'DMORTE.D_s543', 'r', 'reply54190').with_condition(lambda: _r54190_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54191').with_condition(lambda: _r54191_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54192').with_condition(lambda: _r54192_condition(gsm)).with_action(lambda: _r54192_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s542', '# from 540.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт явно встревожен. Нет! Нет! Мы… Я… никогда НЕ ЗНАЛ ничего из этого! А ты был не из самых общительных вояк на планах! Тот… тот *другой* ты хранил КУЧУ секретов при себе, и мы даже не знали, ЗАЧЕМ нам нужно попасть в это место или даже ЧТО из себя оно представляет! Я только знаю, что случилось, когда мы ПОПАЛИ туда…", 's542', 'say54193') \
    .with_responses() \
        .response("И… что случилось?", 'DMORTE.D_s544', 'r', 'reply54194').with_condition(lambda: _r54194_condition(gsm)) \
        .response("И… что случилось?", 'DMORTE.D_s543', 'r', 'reply54195').with_condition(lambda: _r54195_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54196').with_condition(lambda: _r54196_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54197').with_condition(lambda: _r54197_condition(gsm)).with_action(lambda: _r54197_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s543', '# from 541.1 542.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, мы попали туда — в эту КРЕПОСТЬ, но мы даже не успели встать на ноги, как нас РАЗДЕЛИЛИ, и нам пришлось сражаться за собственные жизни… Так что *первая* вещь, которую я хочу сказать тебе: если ты решил пойти туда, есть большая вероятность, что всякий, кто вступит в этот портал, окажется *очень* далеко от других. Мысль в том, что тебе могут понадобиться твои спутники…", 's543', 'say54198') \
    .with_responses() \
        .response("Почему ты об этом заговорил?", 'DMORTE.D_s545', 'r', 'reply54199') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54200').with_condition(lambda: _r54200_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54201').with_condition(lambda: _r54201_condition(gsm)).with_action(lambda: _r54201_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s544', '# from 534.0 541.0 542.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, мы попали туда… в эту КРЕПОСТЬ, но мы даже не успели встать на ноги, как нас РАЗДЕЛИЛИ, и нам пришлось сражаться за собственные жизни… — он содрогается. — Так что *первая* вещь, которую я хочу сказать тебе — если ты решил пойти туда, есть большая вероятность, что всякий, кто вступит в этот портал, окажется *очень* далеко от других. Мысль в том, что даже разделенные, мы можем оказаться единственной твоей надеждой…", 's544', 'say54202') \
    .with_responses() \
        .response("Почему ты об этом заговорил?", 'DMORTE.D_s545', 'r', 'reply54203') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54204').with_condition(lambda: _r54204_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54205').with_condition(lambda: _r54205_condition(gsm)).with_action(lambda: _r54205_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s545', '# from 543.0 544.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Что бы тебя не ждало там, в Крепости, шеф, оно уже побеждало тебя… не знаю, как тогда тебе удалось выжить, но если ты снова падешь, тебе понадобится кто-то, кто сможет вытащить тебя из этой Крепости…", 's545', 'say54206') \
    .with_responses() \
        .response("Морт, мне нужно, чтобы ты рассказал об этой Крепости все… Это очень важно.", 'DMORTE.D_s547', 'r', 'reply54207').with_condition(lambda: _r54207_condition(gsm)) \
        .response("Морт, мне нужно, чтобы ты рассказал об этой Крепости все… Это очень важно.", 'DMORTE.D_s546', 'r', 'reply54208').with_condition(lambda: _r54208_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54209').with_condition(lambda: _r54209_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54210').with_condition(lambda: _r54210_condition(gsm)).with_action(lambda: _r54210_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s546', '# from 545.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Эта Крепость сожалений… она тянется на многие ЛИГИ, шеф. Она называется Крепостью, но она очень похожа на ПЛАН. Одни только камни, тьма и тени — тени повсюду. Если ты пойдешь туда… тебе лучше быть готовым.", 's546', 'say54211') \
    .with_responses() \
        .response("Что произошло, когда мы впервые оказались там?", 'DMORTE.D_s548', 'r', 'reply54212') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54213').with_condition(lambda: _r54213_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54214').with_condition(lambda: _r54214_condition(gsm)).with_action(lambda: _r54214_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s547', '# from 545.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эта Крепость сожалений… она тянется на многие ЛИГИ, шеф. Она называется Крепостью, но она очень похожа на ПЛАН. Одни только камни, тьма и тени — тени повсюду. Если мы пойдем туда… нам лучше быть готовыми.", 's547', 'say54215') \
    .with_responses() \
        .response("Что произошло, когда мы впервые оказались там?", 'DMORTE.D_s548', 'r', 'reply54216') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54217').with_condition(lambda: _r54217_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54218').with_condition(lambda: _r54218_condition(gsm)).with_action(lambda: _r54218_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s548', '# from 546.0 547.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не знаю, что случилось с ТОБОЙ, шеф, но я знаю, что произошло со МНОЙ… Я все время носился от одного укрытия к другому, эти тени ползли вслед за мной, пытаясь пригвоздить меня к земле… а потом я просто… внезапно мы оказались 'снаружи', как будто кто-то нас вытащил…", 's548', 'say54219') \
    .with_responses() \
        .response("Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.", 'DMORTE.D_s565', 'r', 'reply54220').with_condition(lambda: _r54220_condition(gsm)) \
        .response("Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.", 'DMORTE.D_s549', 'r', 'reply54221').with_condition(lambda: _r54221_condition(gsm)) \
        .response("Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.", 'DMORTE.D_s550', 'r', 'reply54223').with_condition(lambda: _r54223_condition(gsm)) \
        .response("Понятно. Что еще ты можешь сказать?", 'DMORTE.D_s552', 'r', 'reply54225') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54226').with_condition(lambda: _r54226_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54227').with_condition(lambda: _r54227_condition(gsm)).with_action(lambda: _r54227_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s549', '# from 548.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт умолкает на некоторое время. Нет… Там были и другие. Там были… Даккон, эта чувствующая цыпочка, Дейонарра, слепой лучник, который почти все время был пьян до беспамятства, ты и я… Было такое ощущение, что мы прыгнули в ад и тут же вернулись. Очевидно, тебе, мне и Даккону это удалось, а те двоим — нет. Даже не знаю, что случилось с ними.", 's549', 'say54229') \
    .with_responses() \
        .response("Даккон? Но почему?.. Я спрошу его об этом. Ты сказал, что Дейонарра и лучник не вернулись из Крепости?", 'DMORTE.D_s551', 'r', 'reply54230').with_condition(lambda: _r54230_condition(gsm)) \
        .response("Даккон? Но почему?.. Я спрошу его об этом. Ты сказал, что те женщина и лучник не вернулись из Крепости?", 'DMORTE.D_s551', 'r', 'reply54231').with_condition(lambda: _r54231_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54232').with_condition(lambda: _r54232_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54233').with_condition(lambda: _r54233_condition(gsm)).with_action(lambda: _r54233_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s550', '# from 548.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт умолкает на некоторое время. Нет… Там были и другие. Там были… старый гит, Даккон, эта чувствующая цыпочка, Дейонарра, слепой лучник, который почти все время был пьян до беспамятства, ты и я… Было такое ощущение, что мы прыгнули в ад и тут же вернулись. Очевидно, тебе, мне и Даккону это удалось, а те двоим — нет. Даже не знаю, что случилось с ними.", 's550', 'say54234') \
    .with_responses() \
        .response("Ты сказал, что Дейонарра и лучник не вернулись из Крепости?", 'DMORTE.D_s551', 'r', 'reply54235').with_condition(lambda: _r54235_condition(gsm)) \
        .response("Ты сказал, что эта женщина, Дейонарра, и лучник не вернулись из Крепости?", 'DMORTE.D_s551', 'r', 'reply54236').with_condition(lambda: _r54236_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54237').with_condition(lambda: _r54237_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54238').with_condition(lambda: _r54238_condition(gsm)).with_action(lambda: _r54238_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s551', '# from 549.0 549.1 550.0 550.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт качает головой. По крайней мере, я об этом ничего не знаю.", 's551', 'say54239') \
    .with_responses() \
        .response("Ты можешь мне еще что-нибудь рассказать об этой Крепости?", 'DMORTE.D_s552', 'r', 'reply54240') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54241').with_condition(lambda: _r54241_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54242').with_condition(lambda: _r54242_condition(gsm)).with_action(lambda: _r54242_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s552', '# from 548.3 551.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Больше ничего, шеф. Кроме того, что мы были вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в Крепости есть нечто гораздо могущественнее *любого* из нас. Больше мне нечего сказать…", 's552', 'say54243') \
    .with_responses() \
        .response("Ты *уверен*? Возможно, это будет наша последняя возможность поговорить друг с другом…", 'DMORTE.D_s553', 'r', 'reply54244').with_action(lambda: _r54244_action(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54245').with_condition(lambda: _r54245_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54246').with_condition(lambda: _r54246_condition(gsm)).with_action(lambda: _r54246_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s553', '# from 552.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… — Морт делает паузу. — Да, есть еще одна вещь, которую ты должен знать. ТЫ, которого я знал раньше, ТЫ, который привел нас сюда, отличается от тебя. Во всем.", 's553', 'say54249') \
    .with_responses() \
        .response("О чем это ты?", 'DMORTE.D_s554', 'r', 'reply54250').with_condition(lambda: _r54250_condition(gsm)) \
        .response("О чем это ты?", 'DMORTE.D_s555', 'r', 'reply54252').with_condition(lambda: _r54252_condition(gsm)) \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54255').with_condition(lambda: _r54255_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54262').with_condition(lambda: _r54262_condition(gsm)).with_action(lambda: _r54262_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s554', '# from 553.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Другой ТЫ, он… он не особенно заботился о других. Ни о ком. Мы могли бы ВСЕ погибнуть в Крепости, а он бы и глазом не моргнул. Так что… я просто хочу, чтобы ты почувствовал разницу… *Ты* нравишься мне больше. ГОРАЗДО больше.", 's554', 'say54263') \
    .with_responses() \
        .response("Но это не все, что ты хочешь сказать, верно?", 'DMORTE.D_s556', 'r', 'reply54264').with_condition(lambda: _r54264_condition(gsm)) \
        .response("Это все?", 'DMORTE.D_s556', 'r', 'reply54265') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54266').with_condition(lambda: _r54266_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54267').with_condition(lambda: _r54267_condition(gsm)).with_action(lambda: _r54267_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s555', '# from 553.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Я только хотел сказать, что несмотря на твое упрямство, ТЫ сильнее духом, чем он когда либо был. Другой ТЫ, он… он был отделен от других. Так что… я просто хочу, чтобы ты об этом знал.", 's555', 'say54268') \
    .with_responses() \
        .response("Но это не все, что ты хочешь сказать, верно?", 'DMORTE.D_s556', 'r', 'reply54269').with_condition(lambda: _r54269_condition(gsm)) \
        .response("Это все?", 'DMORTE.D_s556', 'r', 'reply54270') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54271').with_condition(lambda: _r54271_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54272').with_condition(lambda: _r54272_condition(gsm)).with_action(lambda: _r54272_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s556', '# from 554.0 554.1 555.0 555.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет… — Морт делает паузу. — Еще одно — может быть, мне не очень нравился *другой* ты, но он был очень умным воякой, никого умнее я не встречал. У него на все случаи всегда был запасной план. И если он умер в Крепости, это значит… ну…", 's556', 'say54273') \
    .with_responses() \
        .response("Ты не считаешь, что у меня может получиться?", 'DMORTE.D_s557', 'r', 'reply54274') \
        .response("Неважно, Морт. Я готов шагнуть в портал — ты со мной?", 'DMORTE.D_s534', 'r', 'reply54275').with_condition(lambda: _r54275_condition(gsm)) \
        .response("Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.", EXIT, 'r', 'reply54276').with_condition(lambda: _r54276_condition(gsm)).with_action(lambda: _r54276_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s557', '# from 556.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет… — Морт качает головой. — Не в этом дело, шеф. Не всегда важно, кто умнее, или могущественнее, или сильнее… Иногда все сводится к тому, кто ты и чего ты хочешь *на самом деле*. То есть, когда-то ты хотел стать бессмертным, но чего ты хотел *на самом деле*? Просто на этот раз будь уверен в том, чего ты хочешь — вот что я хочу сказать.", 's557', 'say54277') \
    .with_responses() \
        .response("Ладно. Послушай, Морт… Мы ведь никогда об этом не говорили, но ты ведь не хочешь идти в этом место, верно? Я пойму, если ты не пойдешь.", 'DMORTE.D_s558', 'r', 'reply54278').with_condition(lambda: _r54278_condition(gsm)).with_action(lambda: _r54278_action(gsm)) \
        .response("Понятно. Если ты высказался — пошли. Ты готов?", 'DMORTE.D_s534', 'r', 'reply54279').with_condition(lambda: _r54279_condition(gsm)) \
        .response("Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.", EXIT, 'r', 'reply54280').with_condition(lambda: _r54280_condition(gsm)).with_action(lambda: _r54280_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s558', '# from 557.0 // Check EXTENDS ~DGRACE~ : 170')\
    .with_npc_lines() \
        .line(SPEAKER, "Да… Я знаю, шеф. Не буду лгать — я не хочу туда… но я пойду. Просто знай: как только мы войдем в портал, это больше не будет касаться только *тебя*. Наши жизни окажутся в твоих руках, и мы не сможем вернуться, если умрем.", 's558', 'say54281') \
    .with_responses() \
        .response("Тогда почему же ты…", EXIT, 'r', 'reply54282').with_condition(lambda: _r54282_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда почему же ты…", EXIT, 'r', 'reply54283').with_condition(lambda: _r54283_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда почему же ты…", 'DMORTE.D_s562', 'r', 'reply54284').with_condition(lambda: _r54284_condition(gsm)) \
        .response("Тогда почему же ты…", 'DMORTE.D_s563', 'r', 'reply54285').with_condition(lambda: _r54285_condition(gsm)) \
        .response("Тогда почему же ты…", 'DMORTE.D_s564', 'r', 'reply54286').with_condition(lambda: _r54286_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s559', '# from - // Check EXTENDS ~DGRACE~ : 176')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?", 's559', 'say54762') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s560', '# from - // Check EXTENDS ~DGRACE~ : 177')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?", 's560', 'say54763') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s561', '# from - // Check EXTENDS ~DTRIAS~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?", 's561', 'say54764') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s562', '# from 558.2')\
    .with_npc_lines() \
        .line(SPEAKER, "То, что Равель сказала там, в лабиринте… она сказала, что ты притягиваешь страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.", 's562', 'say54831') \
    .with_responses() \
        .response("Может быть. Значит… ты со мной, Морт?", 'DMORTE.D_s534', 'r', 'reply54832').with_condition(lambda: _r54832_condition(gsm)) \
        .response("Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.", EXIT, 'r', 'reply54833').with_condition(lambda: _r54833_condition(gsm)).with_action(lambda: _r54833_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s563', '# from 558.3')\
    .with_npc_lines() \
        .line(SPEAKER, "То, что Равель сказала там, в лабиринте, и то, что Фелл сказал о том символе Мучения? Они сказали, что ты страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.", 's563', 'say54834') \
    .with_responses() \
        .response("Может быть. Значит… ты со мной, Морт?", 'DMORTE.D_s534', 'r', 'reply54835').with_condition(lambda: _r54835_condition(gsm)) \
        .response("Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.", EXIT, 'r', 'reply54836').with_condition(lambda: _r54836_condition(gsm)).with_action(lambda: _r54836_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s564', '# from 558.4')\
    .with_npc_lines() \
        .line(SPEAKER, "Я знал тебя, шеф, уже долгое время, и есть в тебе *кое-что*: ты притягиваешь страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.", 's564', 'say54837') \
    .with_responses() \
        .response("Может быть. Значит… ты со мной, Морт?", 'DMORTE.D_s534', 'r', 'reply54838').with_condition(lambda: _r54838_condition(gsm)) \
        .response("Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.", EXIT, 'r', 'reply54839').with_condition(lambda: _r54839_condition(gsm)).with_action(lambda: _r54839_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s565', '# from 548.0 // Check EXTENDS ~DDAKKON~ : 175')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт умолкает.", 's565', 'say54840') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s566', '# from - // Check EXTENDS ~DDAKKON~ : 177')\
    .with_npc_lines() \
        .line(SPEAKER, "Черепом был я, — тихо произносит Морт. — Женщиной была одна цыпочка по имени Дейонарра. Лучника я не знал…", 's566', 'say54841') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s567', '# from - // Check EXTENDS ~DDAKKON~ : 178')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага… — Морт трясется, почти что трепещет. — Шеф, в этой крепости — там *повсюду* тени…", 's567', 'say54842') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s568', '# from - // Check EXTENDS ~DDAKKON~ : 179')\
    .with_npc_lines() \
        .line(SPEAKER, "Они говорили со мной, как Колонна Черепов… — Морт понижает тон. — Они *знали*…", 's568', 'say54843') \
    .with_responses() \
        .response("Ладно. Слушайте, вы двое: мне нужно знать все, что вы можете рассказать мне об этой крепости…", EXIT, 'r', 'reply54844').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s569', '# from - // Check EXTENDS ~DDAKKON~ : 182')\
    .with_npc_lines() \
        .line(SPEAKER, "Больше ничего, шеф. Кроме того, что мы были вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в крепости есть нечто гораздо могущественнее *любого* из нас.", 's569', 'say54845') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s570', '# from - // Check EXTENDS ~DDAKKON~ : 182')\
    .with_npc_lines() \
        .line(SPEAKER, "Больше ничего, шеф. Кроме того, что те, кто попадают туда, вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в крепости есть нечто гораздо могущественнее *любого* из нас.", 's570', 'say54846') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s571', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, перед нами потенциальный источник неприятностей: этот модрон стал бродягой.", 's571', 'say55832') \
    .with_responses() \
        .response("Бродягой?", 'DMORTE.D_s572', 'r', 'reply55833') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s572', '# from 571.0 // Check EXTENDS ~DNORDOM~ : 21')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, видишь ли, иногда модроны становятся немного хаотичными, и когда это случается… что ж, полагаю, *лучше* всего объяснить это так: модрон-бродяга — это что-то вроде… модрона наоборот.", 's572', 'say55834') \
    .with_responses() \
        .response("Так значит, это… модрон наоборот?", EXIT, 'r', 'reply55836').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s573', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, может, это и кажется весельем, но выбивание барного стула из-под зада баатезу может оказаться куда более полезным занятием, по сравнению с трещанием черепушками с этим дурацким полигоном.", 's573', 'say55837') \
    .with_responses() \
        .response("Морт, *ты* знаешь, что такое духи механизмов?", 'DMORTE.D_s574', 'r', 'reply55839') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s574', '# from 573.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, я понятия не имею, о чем трещит этот куб.", 's574', 'say55841') \
    .with_responses() \
        .response("А я-то думал, что ты — *эксперт* по планам.", 'DMORTE.D_s575', 'r', 'reply55842') \
        .response("Ну хорошо. Нордом, у меня есть к тебе другие вопросы…", EXIT, 'r', 'reply55843').with_action(lambda: _dispose()) \
        .response("Тогда забудь об этом. Пошли дальше.", EXIT, 'r', 'reply55844').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s575', '# from 574.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт… Я знаю побольше *твоего*, шатающийся и ни черта не помнящий хрипун! Кстати, вот тебе еще три сведения, чтобы тарахтели в твоей пустой черепушке: во-первых, НЕ СУЩЕСТВУЕТ экспертов по планам; во-вторых, я — лучшее из того, что ты можешь найти; и, в-третьих, проявляй ко мне хоть немного уважения. Зачем? Смотри пункт второй.", 's575', 'say55845') \
    .with_responses() \
        .response("Ну хорошо. Нордом, у меня есть к тебе другие вопросы…", EXIT, 'r', 'reply55846').with_action(lambda: _dispose()) \
        .response("Тогда забудь об этом. Пошли дальше.", EXIT, 'r', 'reply55847').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s576', '# from - // Check EXTENDS ~DNORDOM~ : 65')\
    .with_npc_lines() \
        .line(SPEAKER, "Механус? Скучный во всех смыслах этого слова, шеф. Представь себе план, наполненный модронами и большими вертящимися шестернями — вот и весь великий, огромный и СКУЧНЫЙ план Механус. Слишком много законов, слишком нудно. О таком месте ты даже и думать не захочешь, не то чтобы посетить.", 's576', 'say55848') \
    .with_responses() \
        .response("Что имел в виду под 'нулевым домом', Нордом?", EXIT, 'r', 'reply55849').with_condition(lambda: _r55849_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Неважно, Морт. Я достаточно наслушался. Идем.", EXIT, 'r', 'reply55850').with_condition(lambda: _r55850_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s577', '# from - // Check EXTENDS ~DNORDOM~ : 65')\
    .with_npc_lines() \
        .line(SPEAKER, "Прошу ПРОЩЕНИЯ, мисс Жрица Благочестивости, но Механус — САМОЕ скучное место в мультивселенной… Единственное интересное событие, которое могло бы там произойти, — это если бы *ты* туда пришла… — Морт закатывает глаза. — Но у меня есть подозрение, что даже *это* утратило бы свое очарование через какое-то время.", 's577', 'say55855') \
    .with_responses() \
        .response("Что имел в виду под 'нулевым домом', Нордом?", EXIT, 'r', 'reply55857').with_action(lambda: _dispose()) \
        .response("Неважно, Морт. Я достаточно наслушался. Идем.", EXIT, 'r', 'reply55858').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s578', '# from - // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Все модроны — части этой 'совокупности', шеф, все равно что огромное хранилище энергии… Когда один из них умирает, энергия, затраченная для создания модрона, возвращается в хранилище, и создается новый модрон. Дело вот в чем… когда модроны съезжают с катушек, они типа обрывают эту связь, при этом оставляя у себя немного энергии.", 's578', 'say55860') \
    .with_responses() \
        .response("Итак… Нордом, этот Механус — источник энергии?", EXIT, 'r', 'reply55862').with_action(lambda: _dispose()) \
        .response("Ясно. Нордом, у меня есть к тебе другие вопросы…", EXIT, 'r', 'reply55864').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел знать. Пошли.", EXIT, 'r', 'reply55865').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s579', '# from - // Check EXTENDS ~DGRACE~ : 187')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт уставился на Падшую Грацию. *Не возражаешь*? Спасибо, я уже раскрыл вопрос. Здесь *я* источник информации, НЕ ТЫ, понятно?", 's579', 'say55867') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s580', '# from - // Check EXTENDS ~DGRACE~ : 191')\
    .with_npc_lines() \
        .line(SPEAKER, "О, *понятно*! Может, если бы я был суккубом, ты бы больше ко мне прислушивался, правда? Может, если бы я время от времени обнажал ножку, ты бы меня больше уважал, да? Это очень низко, шеф, очень низко! Да я вообще могу…", 's580', 'say55870') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s581', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "NULL NODE", 's581', 'say55871') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s582', '# from - // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Вот как?! Я?! Ну… Да, ты совершенно… да-а, ты это слышал, шеф? То, что сказала суккубка? Она права. Меня легче понять, я 'умею подбирать слова', знаю, что говорю. Видишь, как я тебе нужен!", 's582', 'say55873') \
    .with_responses() \
        .response("Ладно, тогда у меня другой вопрос: вы оба говорите, что Нордом — часть этого Источника, но он от него отрезан. И что когда модрон умирает, он возвращается туда. С Нордомом будет так же?", 'DMORTE.D_s583', 'r', 'reply55875').with_condition(lambda: _r55875_condition(gsm)) \
        .response("Я и не отрицаю, Морт. Итак… Нордом, этот источник энергии, о котором ты упоминал… он на Механусе?", EXIT, 'r', 'reply55876').with_action(lambda: _dispose()) \
        .response("Ну хорошо. Нордом, у меня есть другие вопросы к тебе…", EXIT, 'r', 'reply55877').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел знать. Пошли.", EXIT, 'r', 'reply55879').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s583', '# from 582.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт кивает.", 's583', 'say55882') \
    .with_responses() \
        .response("И если он умрет, создается еще один Нордом.", 'DMORTE.D_s584', 'r', 'reply55884') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s584', '# from 583.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… нет.", 's584', 'say55886') \
    .with_responses() \
        .response("Тогда что?", 'DMORTE.D_s585', 'r', 'reply55887') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s585', '# from 584.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, они заберут его энергию, шеф, и создадут еще одного модрона, но это будет уже не Нордом, потому что он теперь уже *не совсем* модрон, в нем слишком много от планов. Они сделают замену на не-Нордома.", 's585', 'say55890') \
    .with_responses() \
        .response("Значит… став бродягой, он превратился… в смертного?", 'DMORTE.D_s586', 'r', 'reply55892') \
        .response("Ну хорошо. Нордом, у меня есть другие вопросы к тебе…", EXIT, 'r', 'reply55894').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел знать. Пошли.", EXIT, 'r', 'reply55895').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s586', '# from 585.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт на миг умолкает. Ну… да, можно и так сказать. То есть, если бы он не устроил свой маленький бродяжный бунт, с ним бы все было в порядке… Если бы он умер, появился бы еще один модрон — точная его копия. Но поскольку он 'обратился'… ну, когда он умрет, эта частичка потеряется.", 's586', 'say55897') \
    .with_responses() \
        .response("Ну хорошо. Нордом, у меня есть другие вопросы к тебе…", EXIT, 'r', 'reply55898').with_action(lambda: _dispose()) \
        .response("Это все, что я хотел знать. Пошли.", EXIT, 'r', 'reply55900').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s587', '# from - // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Аййй! Во имя сил, пожалей мою голову и прекрати это! Если ты продолжишь спрашивать его об этом без конца, у него коленвал погнется!", 's587', 'say55901') \
    .with_responses() \
        .response("А что, это *идея*, Морт.", 'DMORTE.D_s588', 'r', 'reply55902').with_action(lambda: _r55902_action(gsm)) \
        .response("Ну, я хотел услышать от него ответ, и я добивался этого от него", 'DMORTE.D_s589', 'r', 'reply55905') \
        .response("Неважно. У меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55906').with_action(lambda: _dispose()) \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply55907').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s588', '# from 587.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "О, — Морт 'ухмыляется'. — Мог бы хоть ЧТО-ТО сказать. Пожалуйста, продолжай. Я не против… — Морт щелкает зубами, изображая Нордома. — Если хочешь что-нибудь узнать о модронах — спроси МЕНЯ.", 's588', 'say55909') \
    .with_responses() \
        .response("Ладно, Морт… Что ты можешь рассказать мне о модронах?", 'DMORTE.D_s590', 'r', 'reply55910') \
        .response("Неважно. У меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55912').with_action(lambda: _dispose()) \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply55913').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s589', '# from 587.1 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Слушай, шеф, ОБЫЧНЫЕ модроны с трудом понимают что-либо, что не касается их базовых задач, и этот тупой полигон только что попал на планы. Не запутывай куб, хорошо? По крайней мере, пока он вооружен. Если хочешь узнать что-то про модронов, спрашивай меня, а не его.", 's589', 'say55914') \
    .with_responses() \
        .response("Ладно, Морт… Что ты можешь рассказать мне о модронах?", 'DMORTE.D_s590', 'r', 'reply55915') \
        .response("Неважно. У меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55917').with_action(lambda: _dispose()) \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply55918').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s590', '# from 588.0 589.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, все выглядит так: модроны — это дурацкие геометрические фигуры, которые бряцают по своему родному плану, Механусу. Они все такие аккуратные, упорядоченные, и хотят, чтобы и ОСТАЛЬНАЯ мультивселенная была такой же. Вот почему они такие надоедливые.", 's590', 'say55921') \
    .with_responses() \
        .response("Что плохого в том, чтобы попытаться навести порядок в мультивселенной?", 'DMORTE.D_s592', 'r', 'reply55923') \
        .response("Что еще за Механус?", 'DMORTE.D_s591', 'r', 'reply55925').with_action(lambda: _r55925_action(gsm)) \
        .response("Неважно. У меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55926').with_action(lambda: _dispose()) \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply55928').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s591', '# from 590.1 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Это план, откуда происходят все эти механические дармоеды. Спроси его о нем, увидишь, что он скажет. Там они садятся в кружок и без конца все раскладывают по полочкам… Создать перечень, положить на место *то*, положить на место *это*, придумать закон, и так далее и тому подобное.", 's591', 'say55930') \
    .with_responses() \
        .response("Правда: Похоже, это благородное стремление. Что плохого в том, чтобы попытаться навести порядок в мультивселенной?", 'DMORTE.D_s592', 'r', 'reply55931').with_action(lambda: _r55931_action(gsm)) \
        .response("Кажется, тебе это не кажется захватывающим.", 'DMORTE.D_s592', 'r', 'reply55935') \
        .response("У меня есть вопросы к Нордому…", EXIT, 'r', 'reply55936').with_action(lambda: _dispose()) \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply55937').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s592', '# from 590.0 591.0 591.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт глядит на Нордома, который держит свой левый арбалет у виска, словно слушая его.", 's592', 'say55938') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s593', '# from 592.0 // Check EXTENDS ~DNORDOM~ : 74')\
    .with_npc_lines() \
        .line(SPEAKER, "Потому что, шеф, хаос тоже должен иметь место. Если бы все было так, как это видят *модроны*, это не было бы похоже на жизнь.. по крайней мере, на жизнь, которой я хочу жить. Они только и хотят, чтобы все *структурировать*. Ух-х.", 's593', 'say55940') \
    .with_responses() \
        .response("Правда: Согласен. Должно быть место и для хаоса… если будет чересчур много законов, получится застой. Слушай, у меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55941').with_action(lambda: _r55941_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Понятно. Слушай, у меня есть другие вопросы к Нордому…", EXIT, 'r', 'reply55942').with_action(lambda: _dispose()) \
        .response("Тогда ладно. Давай двигаться дальше.", EXIT, 'r', 'reply55944').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s594', '# from - // Check EXTENDS ~DFHJULL~ : 27')\
    .with_npc_lines() \
        .line(SPEAKER, "А мне *нравится*, как она пахнет. Так мило.", 's594', 'say56029') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s595', '# from - // Check EXTENDS ~DFHJULL~ : 88')\
    .with_npc_lines() \
        .line(SPEAKER, "Погоди, шеф… Баатор — это ПЛОХОЕ место. Нечистый, вероятно, что-то утаил от нас… и даже если эта 'Колонна Черепов' и существует, возможно, мы могли бы найти кого-нибудь еще, кто знает, как добраться до Крепости, не побывав при этом на одном из самых опасных планов в мультивселенной.", 's595', 'say56030') \
    .with_responses() \
        .response("Ты что-то утаил, Раздвоенный Язык?", EXIT, 'r', 'reply56031').with_action(lambda: _dispose()) \
        .response("Почему ты не хочешь туда идти, Морт?", 'DMORTE.D_s596', 'r', 'reply56032') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s596', '# from 595.1 // Check EXTENDS ~DFHJULL~ : 46')\
    .with_npc_lines() \
        .line(SPEAKER, "Там опасно, шеф. Я бы лучше туда не ходил. Я бывал там — не лучшее место. Ясно?", 's596', 'say56033') \
    .with_responses() \
        .response("Мы еще поговорим об этом позже. Раздвоенный Язык, у меня есть несколько вопросов…", EXIT, 'r', 'reply56034').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s597', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Этот мужик появляется *повсюду*!", 's597', 'say56936') \
    .with_responses() \
        .response("Да, но он нам помог. Идем.", EXIT, 'r', 'reply56937').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s598', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "(NULL NODE)", 's598', 'say59827') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s599', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, быть мертвым не так уж плохо. Посмотри на это с другой стороны: по крайней мере, тебе больше не придется разговаривать с этими дурацкими закорючками.", 's599', 'say60950') \
    .with_responses() \
        .response("Молчи, Морт. Я с этим разберусь. Ты не мог бы сказать, что случилось?", EXIT, 'r', 'reply61111').with_action(lambda: _dispose()) \
        .response("Забудь. Я оставлю тебя здесь.", EXIT, 'r', 'reply61112').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s600', '# from - // Check EXTENDS ~DUCHO~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… шеф… что скажешь? Как насчет того, чтобы одолжить старому Морту немного звенелок? Знаешь, прошло уже много времени…", 's600', 'say61408') \
    .with_responses() \
        .response("Конечно, почему бы и нет. Мисс?", EXIT, 'r', 'reply61411').with_condition(lambda: _r61411_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Извини, Морт, наличность закончилась. Идем.", EXIT, 'r', 'reply61412').with_condition(lambda: _r61412_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Морт, нам правда нужно идти. Прощай, красавица.", EXIT, 'r', 'reply61413').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s601', '# from - // Check EXTENDS ~DUCHO~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Отлично! Спасибо, шеф! Морт поворачивается к уходящей женщине.", 's601', 'say61409') \
    .with_responses() \
        .response("Подождать, пока он не вернется.", EXIT, 'r', 'reply61414').with_action(lambda: _r61414_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s602', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, Морт лишь смутно осознает твое присутствие: он то глупо хихикает, то томно вздыхает.", 's602', 'say61410') \
    .with_responses() \
        .response("Хорошо… Думаю, что все прошло хорошо. Прощай, красавица.", EXIT, 'r', 'reply61415').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s603', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Моим? Я — голова Векны. [MRT562]", 's603', 'say61481') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s604', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Боги услышали мои молитвы! [MRT485]", 's604', 'say61482') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s605', '# from - // Check EXTENDS ~BGRACE~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "История головы Векны очень долгая. Я не хочу об этом говорить. [MRT559A]", 's605', 'say61483') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s606', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "*Пожалуйста*, мы можем сменить тему? [MRT559B]", 's606', 'say61484') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s607', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я? Я *ле пети Морт*. [MRT560]", 's607', 'say61485') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s608', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Что сказать? Я — *Мементо Морте*. [MRT561]", 's608', 'say61486') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s609', '# from - // Check EXTENDS ~BGRACE~ : 7')\
    .with_npc_lines() \
        .line(SPEAKER, "Только если я отдохну на твоих буферах. [MRT486A]", 's609', 'say61487') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s610', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Ничего! Ничего такого. Важного. [MRT486B]", 's610', 'say61488') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s611', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Гав! Гав! Хе-хе-хе! [MRT484]", 's611', 'say61489') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s612', '# from - // Check EXTENDS ~DGRACE~ : 213')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, она — танарри… суккуб.", 's612', 'say62890') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s613', '# from - // Check EXTENDS ~BANNAH~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Я не могу нигде стоять. Видишь ли, это можно делать только ногами. [MRT482]", 's613', 'say63454') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s614', '# from - // Check EXTENDS ~BANNAH~ : 3')\
    .with_npc_lines() \
        .line(SPEAKER, "Я думал, что ты хорошо выглядишь, но я ошибался. [MRT483]", 's614', 'say63455') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s615', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я перестал дышать с тех пор, как увидел тебя, бесовка. [MRT524]", 's615', 'say63456') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s616', '# from - // Check EXTENDS ~BANNAH~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, у меня ведь есть ИМЯ. [MRT526]", 's616', 'say63457') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s617', '# from - // Check EXTENDS ~BANNAH~ : 8')\
    .with_npc_lines() \
        .line(SPEAKER, "Интересно, надо попробовать… на следующий день я у них спрошу, сколько они отвалят за тебя. [MRT531]", 's617', 'say63458') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s618', '# from - // Check EXTENDS ~BANNAH~ : 10')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, когда твой рот закрыт, ты выглядишь намного симпатичней. [MRT530]", 's618', 'say63459') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s619', '# from - // Check EXTENDS ~BANNAH~ : 12')\
    .with_npc_lines() \
        .line(SPEAKER, "О, но у тебя ведь уже есть мое сердце, бесовка. [MRT532]", 's619', 'say63460') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s620', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я могу придумать способы и похуже. [MRT525]", 's620', 'say63462') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s621', '# from - // Check EXTENDS ~BANNAH~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, а ведь ты *тоже* отчасти нечисть. [MRT533A]", 's621', 'say63463') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s622', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "С той точки, где я парю, она выглядит хорошенькой. [MRT533B]", 's622', 'say63464') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s623', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я заметил. Почему бы тебе не поделиться своей проницательностью с шефом, а? [MRT563]", 's623', 'say63666') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s624', '# from - // Check EXTENDS ~BNORDOM~ : 2')\
    .with_npc_lines() \
        .line(SPEAKER, "Метеоризм, глупый полигон. [MRT468A]", 's624', 'say63667') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s625', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда почему бы тебе не стать чуточку 'эффективнее', пустомеля-полигон. [MRT469A]", 's625', 'say63668') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s626', '# from - // Check EXTENDS ~DANNAH~ : 315')\
    .with_npc_lines() \
        .line(SPEAKER, "Погоди, я-я-я н-ничего такого не говорил! [MRT470B]", 's626', 'say63669') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s627', '# from - // Check EXTENDS ~BNORDOM~ : 6')\
    .with_npc_lines() \
        .line(SPEAKER, "Анна все еще в одежде? [MRT565A]", 's627', 'say63670') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s628', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда ответ — да. [MRT565B]", 's628', 'say63671') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s629', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Я сейчас тебе приделаю девятнадцатую, если ты не заткнешь свою пасть. [MRT564]", 's629', 'say63672') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s630', '# from - // Check EXTENDS ~BNORDOM~ : 9')\
    .with_npc_lines() \
        .line(SPEAKER, "Если свобода воли заключается в беспрекословном исполнении моих приказов, то — да. [MRT569A]", 's630', 'say63673') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s631', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Добро пожаловать на планы, сынок. [MRT569B]", 's631', 'say63674') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s632', '# from - // Check EXTENDS ~BNORDOM~ : 11')\
    .with_npc_lines() \
        .line(SPEAKER, "Падшая Грация голая? [MRT568A]", 's632', 'say63675') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s633', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда ответ на твой вопрос — да. [MRT568B]", 's633', 'say63676') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s634', '# from - // Check EXTENDS ~BNORDOM~ : 13')\
    .with_npc_lines() \
        .line(SPEAKER, "Купание Анны, Падшей Грации и тебя в киммерийской трясине. [MRT571A]", 's634', 'say63677') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s635', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй. Некоторые читают словарь, а некоторые — его пишут. [MRT572B]", 's635', 'say63678') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s636', '# from - // Check EXTENDS ~BNORDOM~ : 15')\
    .with_npc_lines() \
        .line(SPEAKER, "Анна, бутылка фуриондийского огненного янтарного и номер-люкс в Фестхолле. [MRT573]", 's636', 'say63679') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s637', '# from - // Check EXTENDS ~BNORDOM~ : 17')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, *заткнись*. [MRT471D]", 's637', 'say63680') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s638', '# from - // Check EXTENDS ~BNORDOM~ : 19')\
    .with_npc_lines() \
        .line(SPEAKER, "Ох, иди беспокой кого-нибудь еще, дурацкая счетная машинка. [MRT576A]", 's638', 'say63681') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s639', '# from - // Check EXTENDS ~BNORDOM~ : 20')\
    .with_npc_lines() \
        .line(SPEAKER, "Я не знаю, ясно? Оно просто… оно… ну понимаешь… просто исчезло. [MRT576B]", 's639', 'say63682') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s640', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Если ты не заткнешь свою пасть, я тебе сейчас это покажу. [MRT576C]", 's640', 'say63683') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s641', '# from - // Check EXTENDS ~DGRACE~ : 373')\
    .with_npc_lines() \
        .line(SPEAKER, "Иди поцелуй медведя в задницу. [MRT575A]", 's641', 'say63684') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s642', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Поверь мне. Анна заслуживает поцелуя. [MRT575B]", 's642', 'say63685') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s643', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "::Невинно посвистывает:: [MRT472A]", 's643', 'say63686') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s644', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Никто! Никто ему этого не говорил! [MRT473D]", 's644', 'say63688') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s645', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Это чисто добровольное действие с их стороны, идиот. Э… или я не все знаю. [MRT577]", 's645', 'say63689') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s646', '# from - // Check EXTENDS ~BVHAILOR~ : 1')\
    .with_npc_lines() \
        .line(SPEAKER, "Поверь мне, ты никогда не встречался с ним. [MRT475AA]", 's646', 'say63858') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s647', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Погоди-ка, шеф… взгляни на это. Взглянув вниз, ты замечаешь множество грязных следов, ведущих в арку… и не поворачивающих обратно. Здесь, должно быть, портал или что-то вроде этого.", 's647', 'say64990') \
    .with_responses() \
        .response("Портал? Как его открыть?", 'DMORTE.D_s648', 'r', 'reply64991') \
        .response("Может, и так. Идем.", EXIT, 'r', 'reply64993').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s648', '# from 647.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Без понятия, шеф. Но это должен быть распространенный ключ: гляди, сколько народу через него ходит! Может, кто из местных бандюков подскажет…", 's648', 'say64992') \
    .with_responses() \
        .response("Тогда я поспрашиваю в округе. Пошли.", EXIT, 'r', 'reply64994').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s649', '# from 329.0 729.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф, *да ладно* тебе. Только не говори, что ты снова все забыл.", 's649', 'say65552') \
    .with_responses() \
        .response("Мне просто нужно освежить свою память.", 'DMORTE.D_s650', 'r', 'reply65553') \
        .response("Нет, просто на этот раз я хочу услышать *всю* историю — давай, освежи мою память.", 'DMORTE.D_s650', 'r', 'reply65554').with_condition(lambda: _r65554_condition(gsm)) \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65555') \
        .response("Ладно, забудь. Идем.", EXIT, 'r', 'reply65556').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s650', '# from 649.0 649.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Готов поспорить, что услышу ЭТО много раз, — Морт прочищает горло. — Посмотрим…  'Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых'.", 's650', 'say65557') \
    .with_responses() \
        .response("Фарод… хм-м. Продолжай.", 'DMORTE.D_s651', 'r', 'reply65558').with_condition(lambda: _r65558_condition(gsm)) \
        .response("Продолжай.", 'DMORTE.D_s651', 'r', 'reply65559').with_condition(lambda: _r65559_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65560') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r', 'reply65561').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s651', '# from 650.0 650.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.", 's651', 'say65562') \
    .with_responses() \
        .response("А дальше? Что там написано после этого?", 'DMORTE.D_s652', 'r', 'reply65566').with_condition(lambda: _r65566_condition(gsm)) \
        .response("Когда я очнулся, рядом со мной не было дневника?", 'DMORTE.D_s682', 'r', 'reply65565').with_condition(lambda: _r65565_condition(gsm)) \
        .response("Тогда ладно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65567') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r', 'reply65568').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s652', '# from 651.1')\
    .with_npc_lines() \
        .line(SPEAKER, "О чем это ты, шеф? Здесь больше ничего нет.", 's652', 'say65563') \
    .with_responses() \
        .response("А как насчет 'Не верь черепу'?", 'DMORTE.D_s654', 'r', 'reply65569').with_condition(lambda: _r65569_condition(gsm)).with_action(lambda: _r65569_action(gsm)) \
        .response("А как насчет 'Не верь черепу'?", 'DMORTE.D_s654', 'r', 'reply65570').with_condition(lambda: _r65570_condition(gsm)) \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65571') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65572').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s653', '# from 651.0')\
    .with_npc_lines() \
        .line(SPEAKER, "И конечно же, в самом конце небольшая приписка: не верить черепам.", 's653', 'say65564') \
    .with_responses() \
        .response("Как ты думаешь, что означает эта часть? Тебе не кажется, что здесь говорится о *тебе*?", 'DMORTE.D_s655', 'r', 'reply65574') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65575') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65576').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s654', '# from 329.4 652.0 652.1 729.4')\
    .with_npc_lines() \
        .line(SPEAKER, "А… *этой* концовке? Я думал, это грязь какая-то пристала, поэтому не стал зачитывать эту строчку.", 's654', 'say65577') \
    .with_responses() \
        .response("Правда? А как ты думаешь, что это означает? Тебе не кажется, что здесь говорится о *тебе*?", 'DMORTE.D_s655', 'r', 'reply65578') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65579') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65580').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s655', '# from 653.0 654.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Навряд ли. То есть, я хочу сказать, что ты можешь *доверять* мне. Ведь правда, шеф?", 's655', 'say65581') \
    .with_responses() \
        .response("А ты не *лжешь* мне, Морт?", 'DMORTE.D_s656', 'r', 'reply65582') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65583') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65584').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s656', '# from 655.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет! Да хватит тебе, какие проблемы, шеф? Я же ни разу пока еще тебя не подводил.", 's656', 'say65585') \
    .with_responses() \
        .response("*Пока*. Мне не нравится тот факт, что ты утаил эту строку от меня. Я хотел бы знать: может, ты *еще* чего-то недосказал с тех пор, как мы путешествуем вместе.", 'DMORTE.D_s657', 'r', 'reply65587') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65586') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65588').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s657', '# from 656.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Больше ничего! Я говорил тебе обо всем… ну, ПОЧТИ обо всем, кроме *опасного*, ну ты понимаешь.", 's657', 'say65589') \
    .with_responses() \
        .response("Если есть ЧТО-ТО еще, то советую тебе побыстрее об этом рассказать.", 'DMORTE.D_s658', 'r', 'reply65590') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65591') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65592').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s658', '# from 657.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, серьезно, больше сказать нечего. Я не хочу от тебя что-либо утаивать.", 's658', 'say65593') \
    .with_responses() \
        .response("Ладно, Морт. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65594') \
        .response("Очень надеюсь на это. Идем.", EXIT, 'r', 'reply65595').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s659', '# from 329.1 729.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Сигил — это кольцеобразный город, который торчит на самой верхушке бесконечно высокого тонкого шпиля, который, как некоторые заявляют, находится в самом центре планов… Конечно, заявления о том, *как* он может быть на верхушке бесконечного тонкого шпиля, и каким образом город может *быть* в центре планов, порождают массу вопросов.", 's659', 'say65596') \
    .with_responses() \
        .response("Что-нибудь еще?", 'DMORTE.D_s660', 'r', 'reply65597') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65598') \
        .response("Это все, что я хотел знать. Идем.", EXIT, 'r', 'reply65599').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s660', '# from 659.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Сигил называется 'Городом Дверей', главным образом из-за того, что здесь расположена КУЧА дверей, ведущих в него и из него — простая арка, дверной проем, обруч от бочки, книжная полка или открытое окно может стать порталом в определенных обстоятельствах. Все зависит от того, есть ли у тебя ключи, которые откроют его.", 's660', 'say65600') \
    .with_responses() \
        .response("Ключи?", 'DMORTE.D_s661', 'r', 'reply65601') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65602') \
        .response("Это все, что я хотел знать. Идем.", EXIT, 'r', 'reply65603').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s661', '# from 660.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Смотри, попробую по-доходчивей объяснить. Большинство порталов 'дремлет', понимаешь? Ты можешь ходить сквозь них, через них, по ним, и ничего не произойдет. Так вот, есть нечто, что заставляет портал 'пробудиться'. Это может быть твое посвистывание, кусок хлеба недельной свежести из Байтопии, воспоминание о твоем первом поцелуе, а потом — БАМ — портал наполняется силой, и ты сможешь прыгнуть в него, при этом очутившись в самом неожиданном месте.", 's661', 'say65604') \
    .with_responses() \
        .response("Где, например?", 'DMORTE.D_s662', 'r', 'reply65605') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65606') \
        .response("Это все, что я хотел знать. Идем.", EXIT, 'r', 'reply65607').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s662', '# from 661.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да где угодно, шеф. Буквально. В любое место, которое ты можешь себе вообразить, есть портал. Вот почему Сигил так популярен на планах.", 's662', 'say65608') \
    .with_responses() \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65609') \
        .response("Это все, что я хотел знать. Идем.", EXIT, 'r', 'reply65610').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s663', '# from 329.2 729.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй! Чесание языком — моя лучшая черта. Он постукивает зубами, а затем 'скалится'. А? А?", 's663', 'say65611') \
    .with_responses() \
        .response("О-о, *очень* приятно это слышать.", 'DMORTE.D_s664', 'r', 'reply65612') \
        .response("Да-да, я уже знаю о Потоке Проклятий, Морт. Мне очень интересно, чем ты занимался, когда оказался у Лотара.", 'DMORTE.D_s667', 'r', 'reply65613').with_condition(lambda: _r65613_condition(gsm)) \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65614') \
        .response("Неважно Идем.", EXIT, 'r', 'reply65615').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s664', '# from 663.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет, серьезно, шеф. Я очень хорошо навострился в словоблудии. Я вообще могу любому скрутить уши в трубочку, если ты хочешь знать. Я знаю выпады, дразнилки — все, что может ввернуть оба уха поглубже в голову любому слушателю.", 's664', 'say65616') \
    .with_responses() \
        .response("Э… Чем *это* может быть полезно?", 'DMORTE.D_s665', 'r', 'reply65617') \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65618') \
        .response("Неважно Идем.", EXIT, 'r', 'reply65619').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s665', '# from 664.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Это один из моих талантов… Я называю его 'Потоком Проклятий'. Видишь ли, иногда я могу вогнать в краску кого-нибудь, просто пустив в его адрес какую-нибудь колкость. Конечно же, после этого обычно мне приходится долго бегать… но суть ты уловил.", 's665', 'say65620') \
    .with_responses() \
        .response("А как это действует?", 'DMORTE.D_s666', 'r', 'reply65621').with_action(lambda: _r65621_action(gsm)) \
        .response("Что-нибудь еще?", 'DMORTE.D_s667', 'r', 'reply65622').with_condition(lambda: _r65622_condition(gsm)) \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65623') \
        .response("Хм-м. Это может пригодиться. Идем.", EXIT, 'r', 'reply65624').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s666', '# from 329.3 665.0 729.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, я могу извергать проклятия на любого до тех пор, пока они в припадке безумства не начнут гоняться за мной.", 's666', 'say65626') \
    .with_responses() \
        .response("А еще что-нибудь ты умеешь?", 'DMORTE.D_s667', 'r', 'reply65627').with_condition(lambda: _r65627_condition(gsm)) \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65628') \
        .response("Хм-м. Это может пригодиться. Идем.", EXIT, 'r', 'reply65629').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s667', '# from 663.1 665.1 666.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, пока я пылился на полке у Лотара в ожидании того, когда ты меня не выкупишь — спасибо за бесцельно проведенное там время, — я завел там несколько друзей, и они сказали, что если мне понадобится помощь, то я могу их позвать.", 's667', 'say65630') \
    .with_responses() \
        .response("Друзей? О чем это ты?", 'DMORTE.D_s668', 'r', 'reply65631').with_action(lambda: _r65631_action(gsm)) \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65632') \
        .response("Приятно слышать это. Идем.", EXIT, 'r', 'reply65633').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s668', '# from 667.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, по моему свисту они появляются просто из ниоткуда. Они — та еще кучка драчунов: кусаются как *змеи*.", 's668', 'say65634') \
    .with_responses() \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65635') \
        .response("Приятно слышать это. Идем.", EXIT, 'r', 'reply65636').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s669', '# from 329.5 729.5')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, вот как *я* все себе представляю…", 's669', 'say65638') \
    .with_responses() \
        .response("Продолжай…", 'DMORTE.D_s671', 'r', 'reply65639').with_condition(lambda: _r65639_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s672', 'r', 'reply65640').with_condition(lambda: _r65640_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s673', 'r', 'reply65641').with_condition(lambda: _r65641_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s670', 'r', 'reply65642').with_condition(lambda: _r65642_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s674', 'r', 'reply65643').with_condition(lambda: _r65643_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s675', 'r', 'reply65644').with_condition(lambda: _r65644_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s677', 'r', 'reply65645').with_condition(lambda: _r65645_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s680', 'r', 'reply65646').with_condition(lambda: _r65646_condition(gsm)) \
        .response("Продолжай…", 'DMORTE.D_s681', 'r', 'reply65647').with_condition(lambda: _r65647_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65648') \
        .response("Если подумать, забудь об этом. Пошли.", EXIT, 'r', 'reply65649').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s670', '# from 669.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Как по мне, это твое шоу, шеф. Тут я мало что могу подсказать.", 's670', 'say65650') \
    .with_responses() \
        .response("Это что-то *новое*. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65651') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65652').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s671', '# from 669.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я считаю, что ты должен попробовать отыскать этого 'Фарода', где бы ни находилась его берлога. У тебя бы не было этих указаний на спине, не будь у него хоть какое-то понятие о том, что с тобой стряслось. Кто-нибудь из местных ОБЯЗАТЕЛЬНО должен знать, где он находится.", 's671', 'say65653') \
    .with_responses() \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65654') \
        .response("Хорошо. Давай тогда искать его.", EXIT, 'r', 'reply65655').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s672', '# from 669.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Скажем, мы могли бы попробовать найти поскорее этот 'бронзовый шар' и принести его старому костылю.", 's672', 'say65656') \
    .with_responses() \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65657') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65658').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s673', '# from 669.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Скажем, мы могли бы выяснить, где нашли твой труп. Возможно, мы смогли бы узнать, кто записал тебя в книгу мертвых.", 's673', 'say65659') \
    .with_responses() \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65660') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65661').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s674', '# from 669.4')\
    .with_npc_lines() \
        .line(SPEAKER, "Скажем, мы могли бы разыскать тех, кто что-нибудь о тебе знает… и как ты стал таким. В районах должны найтись толковые рубаки, которым известно что-нибудь интересное о тебе.", 's674', 'say65662') \
    .with_responses() \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65663') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65664').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s675', '# from 669.5')\
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, нам нужно выяснить больше про эту ночную ведьму, Равель. И должен тебе признаться, шеф: я *не горю* желанием это делать. Однако мудрецы Фестхолла или какие-нибудь камни переживаний могут нам что-то подсказать.", 's675', 'say65665') \
    .with_responses() \
        .response("Фестхолл? Камни переживаний?", 'DMORTE.D_s676', 'r', 'reply65666').with_condition(lambda: _r65666_condition(gsm)).with_action(lambda: _r65666_action(gsm)) \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65667') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65668').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s676', '# from 675.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Извини, шеф, я все забываю, что у тебя знания, как у зеленого первичника. Слушай, Фестхолл — это главная берлога фракции чувствующих в Чиновничьем районе. Там есть библиотеки камней переживаний, а еще куча мудрецов, лекторов и наставников, которые могли бы пролить свет на то, что случилось с Равель.", 's676', 'say65670') \
    .with_responses() \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65671') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65672').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s677', '# from 669.6')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, Равель попала в лабиринт. И все же возможно есть КАКОЙ-НИБУДЬ ключ и КАКОЙ-НИБУДЬ портал, которые могли бы нас туда доставить, если ты все еще этого хочешь.", 's677', 'say65673') \
    .with_responses() \
        .response("Ты не знаешь, чем может быть ключ к ее лабиринту?", 'DMORTE.D_s678', 'r', 'reply65674').with_condition(lambda: _r65674_condition(gsm)).with_action(lambda: _r65674_action(gsm)) \
        .response("Ты не знаешь, где мне найти портал в ее лабиринт?", 'DMORTE.D_s679', 'r', 'reply65675') \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65676') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65677').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s678', '# from 677.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Без понятия. Я имею в виду 'кусочек Равель'. Это может быть что угодно, начиная с одной из ее высушенных бородавок до слюней изо рта. Слишком туманно. Могу поспорить, что КТО-НИБУДЬ в Чиновничьем районе должен знать, где достать кусок этой чокнутой ведьмы. Если нет, мы можем проверить камни переживаний в Фестхолле: возможно, одна из этих глыб подскажет нам что-нибудь полезное.", 's678', 'say65679') \
    .with_responses() \
        .response("Ты не знаешь, где мне найти портал в ее лабиринт?", 'DMORTE.D_s679', 'r', 'reply65680') \
        .response("Неплохой совет… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65681') \
        .response("Ладно. Продолжим поиски.", EXIT, 'r', 'reply65682').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s679', '# from 677.1 678.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Хоть убей, не знаю, шеф. В Сигиле полно порталов. Я бы начал с Фестхолла — сомневаюсь, что он там, но тамошние камни переживаний могут кое-что рассказать об этом. А если не получится, можно все забыть про это и заставить кого-нибудь СДЕЛАТЬ нам портал.", 's679', 'say65683') \
    .with_responses() \
        .response("Хорошо. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65684') \
        .response("Хорошо. Тогда идем.", EXIT, 'r', 'reply65685').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s680', '# from 669.7')\
    .with_npc_lines() \
        .line(SPEAKER, "Скажем, мы могли бы найти то, что нам нужно, и к чертям сваливать отсюда, шеф. От этого места у меня мурашки, хоть у меня и нет кожи. Хорошо?", 's680', 'say65686') \
    .with_responses() \
        .response("И то правда. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65687') \
        .response("Ну хорошо. Продолжим путь.", EXIT, 'r', 'reply65688').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s681', '# from 669.8')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты меня понял, шеф. Это целиком твое шоу, я просто буду рядом.", 's681', 'say65689') \
    .with_responses() \
        .response("И то правда. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65690') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65691').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s682', '# from 651.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Нет… ты был обобран догола. Как я уже говорил, похоже, что достаточно того дневника, что написан у тебя на теле.", 's682', 'say65692') \
    .with_responses() \
        .response("Ты уверен, что не знаешь никого по имени Фарод?", 'DMORTE.D_s683', 'r', 'reply65693').with_condition(lambda: _r65693_condition(gsm)) \
        .response("И то правда. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65694') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65695').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s683', '# from 682.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не-а. В общем, какой-нибудь пень должен знать, как добраться до него. Надо поспрашивать местных.", 's683', 'say65696') \
    .with_responses() \
        .response("Перед тем как мы пойдем, у меня есть еще вопросы…", 'DMORTE.D_s329', 'r', 'reply65697') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65698').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s684', '# from 329.6 729.6')\
    .with_npc_lines() \
        .line(SPEAKER, "Ага… мимир — это летающая энциклопедия. Запихиваешь в него информацию и получаешь обратно.", 's684', 'say65699') \
    .with_responses() \
        .response("Но разве мимиры не сделаны из серебристого металла?", 'DMORTE.D_s685', 'r', 'reply65700').with_condition(lambda: _r65700_condition(gsm)) \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65701') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65702').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s685', '# from 684.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну и что? Может быть, некоторые — да, но *я* — нет. И это не самая странная штука на планах, шеф.", 's685', 'say65703') \
    .with_responses() \
        .response("Не думаю, что ты — мимир, Морт. Что ты такое?", 'DMORTE.D_s686', 'r', 'reply65704') \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65705') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65706').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s686', '# from 685.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Это что, допрос? Да что *ты* вообще знаешь о мимирах?", 's686', 'say65707') \
    .with_responses() \
        .response("Я знаю достаточно, чтобы считать, что ты лжешь мне.", 'DMORTE.D_s687', 'r', 'reply65708').with_condition(lambda: _r65708_condition(gsm)) \
        .response("Я знаю достаточно, чтобы считать, что ты лжешь мне. Сначала та забытая строчка на моей спине, говорящая не верить тебе, теперь это. И что я должен думать?", 'DMORTE.D_s687', 'r', 'reply65709').with_condition(lambda: _r65709_condition(gsm)) \
        .response("Пожалуй, ничего. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65710').with_action(lambda: _r65710_action(gsm)) \
        .response("Тогда неважно. Идем.", EXIT, 'r', 'reply65711').with_action(lambda: _r65711_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s687', '# from 686.0 686.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну хорошо, я *не мимир*, но я знаю столько всего, что *вполне* мог бы им быть.", 's687', 'say65713') \
    .with_responses() \
        .response("Чем же тогда ты *являешься*?", 'DMORTE.D_s688', 'r', 'reply65714') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65715') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65716').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s688', '# from 687.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я летающий череп, который много знает.", 's688', 'say65717') \
    .with_responses() \
        .response("А как насчет твоего бааторийского запаха?", 'DMORTE.D_s690', 'r', 'reply65718').with_condition(lambda: _r65718_condition(gsm)) \
        .response("А как насчет твоего бааторийского запаха?", 'DMORTE.D_s689', 'r', 'reply65719').with_condition(lambda: _r65719_condition(gsm)) \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65720') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65721').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s689', '# from 688.1')\
    .with_npc_lines() \
        .line(SPEAKER, "А откуда ТЕБЕ знать, как пахнет Баатор?!", 's689', 'say65722') \
    .with_responses() \
        .response("А я *был* там, Морт. Я бродил по Авернусу.", 'DMORTE.D_s691', 'r', 'reply65723') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65724') \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply65725').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s690', '# from 688.0')\
    .with_npc_lines() \
        .line(SPEAKER, "А откуда ТЕБЕ знать, как пахнет Баатор?! Если только… Эй, ты разговаривал обо мне с этой танарри, разве не так?! Что она-то знает?!", 's690', 'say65726') \
    .with_responses() \
        .response("Она ведь определенно что-то почувствовала — это же бааторийский запах, верно?", 'DMORTE.D_s691', 'r', 'reply65727') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65728') \
        .response("Забудь об этом. Идем.", EXIT, 'r', 'reply65729').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s691', '# from 689.0 690.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Тогда… да, но… ну да. Да, я пахну немного. *Прошу прощения*.", 's691', 'say65730') \
    .with_responses() \
        .response("*Почему* ты пахнешь как Баатор?", 'DMORTE.D_s692', 'r', 'reply65731').with_action(lambda: _r65731_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s692', '# from 691.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я был в тамошних преисподних. Довольно долго был. А эта вонь въедается в тебя.", 's692', 'say65732') \
    .with_responses() \
        .response("Ты был в тех преисподних? Что ты там ДЕЛАЛ?", 'DMORTE.D_s693', 'r', 'reply65733').with_action(lambda: _r65733_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s693', '# from 329.7 692.0 729.7')\
    .with_npc_lines() \
        .line(SPEAKER, "Знаешь, на Авернусе, первом слое Баатор, есть *колонна*. Она называется Колонна Черепов, но лучше ее называть колонной голов.", 's693', 'say65734') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s694', '# from 693.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Если верить некоторым громилам, она *предположительно* была сделана из голов пней, по большей части мудрецов и ученых, которые использовали свои знания обо всяком, что они знали при жизни, чтобы немного приврать… настолько, что этим им удавалось причинить вред или даже, э, убить кого-нибудь. Так вот, когда я *умер*, я очутился там. Весело, правда?", 's694', 'say65735') \
    .with_responses() \
        .response("Не очень-то.", 'DMORTE.D_s695', 'r', 'reply65846') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s695', '# from 694.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Э… — Морт на секунду умолкает. — Да, ты прав, в этом нет ничего веселого. Понимаешь, я знал кучу вещей, пока был жив. И может быть, когда я знал что-то, то не всегда говорил об этом правду. Мне кажется, я, возможно, исказить правду пару раз и этим прописать кое-кого в книгу мертвых раньше срока.", 's695', 'say65736') \
    .with_responses() \
        .response("Ты помнишь, кого?", 'DMORTE.D_s697', 'r', 'reply65737') \
        .response("И это был я, не так ли?", 'DMORTE.D_s696', 'r', 'reply65738').with_condition(lambda: _r65738_condition(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65739').with_condition(lambda: _r65739_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65740').with_condition(lambda: _r65740_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s696', '# from 695.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт задерживает на тебе взгляд. Да. Не знаю, *откуда* мне это известно, шеф, но мне так кажется. Я думаю, что это из-за тебя меня туда послали. Это стало последней каплей. Дело в том, что я не помню, что случилось: я даже не помню, каким был человеком, или какой была моя жизнь до того, как я очнулся в Колонне.", 's696', 'say65741') \
    .with_responses() \
        .response("Почему ты забыл?", 'DMORTE.D_s698', 'r', 'reply65742') \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65743').with_condition(lambda: _r65743_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65744').with_condition(lambda: _r65744_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s697', '# from 695.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не знаю, *откуда* мне это известно, шеф, но мне так кажется, это был *ты*. По крайней мере однажды. Дело в том, что я не помню, что произошло. я даже не помню, каким был человеком, или какой была моя жизнь до того, как я очнулся в Колонне.", 's697', 'say65745') \
    .with_responses() \
        .response("Почему ты забыл?", 'DMORTE.D_s698', 'r', 'reply65746') \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65747').with_condition(lambda: _r65747_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65748').with_condition(lambda: _r65748_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s698', '# from 696.0 697.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Обычно так происходит, когда ты умираешь. Уверен, что тебе это знакомо. Ты просто… забываешь. Думаю, я был не самым уважаемым членом общества при жизни… но черт возьми, а кто был? — Морт вздыхает. — С этим я ничего не могу поделать. Нет ничего хуже, чем быть *честным* все время.", 's698', 'say65749') \
    .with_responses() \
        .response("Кроме как быть приговоренным к преисподней. Это гораздо хуже, чем говорить правду.", 'DMORTE.D_s699', 'r', 'reply65750').with_condition(lambda: _r65750_condition(gsm)).with_action(lambda: _r65750_action(gsm)) \
        .response("Да, это так… Но тебе следует подбирать свою ложь поосторожней.", 'DMORTE.D_s699', 'r', 'reply65751').with_condition(lambda: _r65751_condition(gsm)).with_action(lambda: _r65751_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s699', '# from 698.0 698.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Да… ты прав. *Снова*. Морт щелкает зубами. Это напоминает похрустывание пальцами. Думаю, все добро, зло, ложь и обман возвращается к нам. И когда меня прописали в книгу мертвых, настал мой черед платить перевозчику.", 's699', 'say65752') \
    .with_responses() \
        .response("Так как же тебе удалось выбраться из Колонны?", 'DMORTE.D_s700', 'r', 'reply65753').with_action(lambda: _r65753_action(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65754').with_condition(lambda: _r65754_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65755').with_condition(lambda: _r65755_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s700', '# from 699.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну… это ты помог мне, шеф. Когда ты объявился перед Колонной Черепов, я пробился наружу. Мои очевидные эрудиция и очарование привлекли твое внимание — ты знал, что именно *я* был головой, которая больше всех знала. Так что я подписался под твою сделку.", 's700', 'say65757') \
    .with_responses() \
        .response("Сделку?..", 'DMORTE.D_s701', 'r', 'reply65758').with_action(lambda: _r65758_action(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65759').with_condition(lambda: _r65759_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65760').with_condition(lambda: _r65760_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s701', '# from 700.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Пока Морт говорит, твое зрение заволакивает кроваво-красным, ты слышишь оглушительный рев, ужасный *пронзительный* гомон голосов, болтовни, визжания, криков. ВСЕ они молят, кричат об освобождении, а голос Морта… слабый, едва слышный в этой урагане. Он звучит отчаянно, напугано и… жалостно, трагически *потерянно*.", 's701', 'say65761') \
    .with_responses() \
        .response("Эхо: Ты. Череп. Говори.", 'DMORTE.D_s702', 'r', 'reply65762') \
        .response("Стряхнуть с себя воспоминание.", 'DMORTE.D_s706', 'r', 'reply65763').with_action(lambda: _r65763_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s702', '# from 701.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ревущие голоса утихают, ты смотришь на маленький череп, на его трещины в адском свете. Он смотрит на тебя. По его лицу течет кровь и гной, его зубы стучат словно от холода. Я… я с-с-смогу п-п-помочь тебе. Я з-з-знаю, что т-т-тебе надо… все эти головы… их знания… п-п-прошу тебя, *умоляю*, освободи меня. Позволь мне *помочь* тебе. Я расскажу тебе о чем угодно, обо *всем*.", 's702', 'say65764') \
    .with_responses() \
        .response("Эхо: *Так* ли это? ПОКЛЯНИСЬ в этом, череп. ПОКЛЯНИСЬ, что ты будешь служить мне до конца моих дней, иначе ты останешься здесь.", 'DMORTE.D_s703', 'r', 'reply65765') \
        .response("Стряхнуть с себя воспоминание.", 'DMORTE.D_s706', 'r', 'reply65766').with_action(lambda: _r65766_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s703', '# from 702.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Клянусь. Клянусь… только, *пожалуйста*, освободи меня… Я… Ты видишь, как Морт тошнотворно глотает, его гордость становится осязаемой. Я… *умоляю* тебя. Позволь мне *помочь* тебе. Пожалуйста.", 's703', 'say65767') \
    .with_responses() \
        .response("Эхо: Хорошо. Я освобожу тебя.", 'DMORTE.D_s704', 'r', 'reply65768') \
        .response("Стряхнуть с себя воспоминание.", 'DMORTE.D_s706', 'r', 'reply65769').with_action(lambda: _r65769_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s704', '# from 703.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Твое зрение смещается, как будто ты движешься. Какофония криков и рева начинается снова, кошмарные вопли, рычание, выпады и оскорбления… ты чувствуешь, как твои руки погружаются в грязную трясину колонны, состоящую из кусающих клыков и челюстей. Твои руки хватают небольшой череп и вырывают его из колонны как гнилой зуб…", 's704', 'say65770') \
    .with_responses() \
        .response("Эхо: ГОТОВО.", 'DMORTE.D_s705', 'r', 'reply65771') \
        .response("Стряхнуть с себя воспоминание.", 'DMORTE.D_s706', 'r', 'reply65772').with_action(lambda: _r65772_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s705', '# from 704.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты смотришь вниз, на кровавый череп в своих израненных руках. Его глаза покрыты гноем колонны, зубы стучат, снова и снова. Он напоминает тебе визжащего новорожденного, беспомощного и — в глазах человека, которым ты когда-то был, — жалкого.", 's705', 'say65773') \
    .with_responses() \
        .response("Эхо: Я освободил тебя. Теперь твоя жизнь… и смерть — моя… Морт.", 'DMORTE.D_s706', 'r', 'reply65774').with_condition(lambda: _r65774_condition(gsm)).with_action(lambda: _r65774_action(gsm)) \
        .response("Эхо: Я освободил тебя. Теперь твоя жизнь… и смерть — моя… Морт.", 'DMORTE.D_s706', 'r', 'reply65775').with_condition(lambda: _r65775_condition(gsm)).with_action(lambda: _r65775_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s706', '# from 701.1 702.1 703.1 704.1 705.0 705.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Видение расплывается, пелена уходит прочь, а Морт все еще продолжает без умолку болтать. Мы поговорили некоторое время, согласовывая обязательства сделки. Думаю, мы произвели друг на друга хорошее впечатление, так что ты предложил мне выйти из Колонны, и с тех пор я рад находится рядом с тобой.", 's706', 'say65776') \
    .with_responses() \
        .response("Э… И что случилось потом?", 'DMORTE.D_s707', 'r', 'reply65777') \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65778').with_condition(lambda: _r65778_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65779').with_condition(lambda: _r65779_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s707', '# from 706.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я не знаю. Как только я выбрался, я потерял почти все знания Колонны. То есть, я хочу сказать, откуда мне было знать, я ведь ни разу не был вне этой чертовой штуки… но ты отнесся к этому с большим пониманием…", 's707', 'say65780') \
    .with_responses() \
        .response("Ты потерял все знания, которые имел?..", 'DMORTE.D_s708', 'r', 'reply65781').with_action(lambda: _r65781_action(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65782').with_condition(lambda: _r65782_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65783').with_condition(lambda: _r65783_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s708', '# from 707.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Твое зрение снова затуманивается, голова идет кругом, кишки завязывает в узел. Ты слышишь треск костей и крики Морта: он воет от боли, просит кого-то прекратить, прекратить *убивать* его… а твоя рука продолжает бить, снова и снова…", 's708', 'say65784') \
    .with_responses() \
        .response("Эхо: Будь ты ПРОКЛЯТ, череп, ты ОБМАНУЛ меня. Я БРОШУ ТЕБЯ НАЗАД В ЭТУ ЧЕРТОВУ КОЛОННУ И ОСТАВЛЮ ТЕБЯ ТАМ *ПОДЫХАТЬ*.", 'DMORTE.D_s709', 'r', 'reply65785') \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65786').with_condition(lambda: _r65786_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65787').with_condition(lambda: _r65787_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s709', '# from 708.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Слышится звук удара кости о что-то металлическое, пол или стену. Разлетаются выбитые зубы. Ты слышишь Морта, скулящего как побитый пес, молящего тебя…", 's709', 'say65788') \
    .with_responses() \
        .response("Эхо: ЗНАЙ, ЧТО ТВОИ СТРАДАНИЯ В КОЛОННЕ БУДУТ *НИЧЕМ* ПО СРАВНЕНИЮ С ТЕМ МУЧЕНИЕМ, КОТОРЫЕ ТЫ *ИСПЫТАЕШЬ* У МЕНЯ.", 'DMORTE.D_s710', 'r', 'reply65789').with_action(lambda: _r65789_action(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65790').with_condition(lambda: _r65790_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65791').with_condition(lambda: _r65791_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s710', '# from 709.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Видение снова отступает, превращая вопль Морта в размеренный ритм его болтовни. И ты понял, что я все еще полезен для тебя, поэтому я до сих пор следую за тобой по пятам.", 's710', 'say65792') \
    .with_responses() \
        .response("Морт, а что я хотел от Колонны? И сколько прошло времени с тех пор, как я тебя освободил?", 'DMORTE.D_s711', 'r', 'reply65793') \
        .response("Э, забудь об этом, Морт… У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65794').with_condition(lambda: _r65794_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65795').with_condition(lambda: _r65795_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s711', '# from 710.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт задумывается. Ну, достаточно давно, я не знаю точно, шеф. Несколько веков, наверное. Я всегда делал все, что мог, чтобы помочь тебе, но… — Морт вздыхает. — Это не так просто. Я не знаю, что тебе было нужно от Колонны: как только ты меня вырвал из нее, я все забыл.", 's711', 'say65796') \
    .with_responses() \
        .response("Морт, почему ты ничего не СКАЗАЛ тогда, в Морге?", 'DMORTE.D_s712', 'r', 'reply65797') \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65798').with_condition(lambda: _r65798_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65799').with_condition(lambda: _r65799_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s712', '# from 711.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Неожиданно Морт начинает защищаться. Потому что я никогда не *знал*, кем ты можешь стать! Некоторые твои воплощения были совершенно безумными! Однажды ты проснулся, одержимый идеей, что это *я* был твоим черепом, и преследовал меня вокруг Шпиля, пытаясь разбить и проглотить… к счастью, на улице ты попал под повозку. Другой ты, 'добрый и законопослушный', пытался засунуть меня обратно в Колонну, потому что 'там мне и место', — Морт ухмыляется. — *Вот* почему. Кроме того, твое незнание не принесло вреда…", 's712', 'say65800') \
    .with_responses() \
        .response("Так значит, ты был со мной все это время?", 'DMORTE.D_s713', 'r', 'reply65801').with_condition(lambda: _r65801_condition(gsm)) \
        .response("Забудь об этом, Морт. У меня есть несколько вопросов…", 'DMORTE.D_s329', 'r', 'reply65802').with_condition(lambda: _r65802_condition(gsm)) \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65803').with_condition(lambda: _r65803_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s713', '# from 712.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну да, шеф. Я же обещал. Морт всегда держит свои обещания, — он делает паузу. — Ну, почти всегда. Хе-хе. Была одна крошка с Арбореи, которая…", 's713', 'say65804') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s714', '# from 713.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Неожиданно ты понимаешь, что тон Морта изменился. После шутки тебе кажется, что он пытается что-то скрыть. Что-то о том, почему он по-прежнему с тобой.", 's714', 'say65805') \
    .with_responses() \
        .response("А если серьезно, Морт, почему ты до сих пор путешествуешь со мной?", 'DMORTE.D_s715', 'r', 'reply65806') \
        .response("Тогда ладно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65807') \
        .response("Неважно, Морт. Идем дальше.", EXIT, 'r', 'reply65808').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s715', '# from 329.8 714.0 729.8')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, я же сказал: потому что я обещал, верно?- он выглядит раздраженным. — Что может быть еще?", 's715', 'say65809') \
    .with_responses() \
        .response("Не знаю. Тебе ведь не обязательно кружить вокруг меня, раз я тебя освободил.", 'DMORTE.D_s716', 'r', 'reply65810') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65811') \
        .response("Забудь об этом, Морт. Пошли.", EXIT, 'r', 'reply65812').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s716', '# from 715.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Конечно нет, шеф, но я… Внезапно его голос струной режет тебя. Ты знаешь, *почему* он по-прежнему остается рядом с тобой, все это время.", 's716', 'say65813') \
    .with_responses() \
        .response("Ты чувствуешь себя *виноватым*. Вот почему ты следуешь за мной до моей смерти, верно? И все это время ты страдал.", 'DMORTE.D_s717', 'r', 'reply65814') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s717', '# from 716.0')\
    .with_npc_lines() \
        .line(SPEAKER, "А, да ладно, шеф. Чтоб я чувствовал себя *виноватым*? Я — Морт.", 's717', 'say65815') \
    .with_responses() \
        .response("Нет, все именно так. Когда я пришел, чтобы освободить тебя от твоей судьбы, ты не мог *помочь* мне, но ты попробовал. А после освобождения, когда ты мог просто уйти, ты остался. Потому что ты чувствовал себя в долгу.", 'DMORTE.D_s718', 'r', 'reply65816') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s718', '# from 717.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Глядя на тебя, Морт на секунду умолкает. Может быть. И знаешь, что самое смешное? Сперва я не знал, что это было за чувство: это как будто тебя что-то медленно поглощает, понимаешь?", 's718', 'say65817') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s719', '# from 718.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я имею в виду, сначала я думал, что это побочный эффект того, что 'связывает' меня с тобой… но спустя несколько сотен лет, я понял, что это нечто *большее*… более глубокое. Я просто почувствовал, что каким-то образом *связан* с тобой. Возможно, это все твои страдания, шеф… твои муки. Я не знаю. Возможно, я чувствую… ну, не знаю… что я *ответственный* за то, что я сделал. Что, если это из-за меня ты стал таким?", 's719', 'say65818') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s720', '# from 719.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Дело в том, что я, кем бы я ни был прежде, не *видел* всех последствий своей лжи и обмана. А когда я в Колонне впервые увидел тебя, я почему-то *знал*, что я тебя однажды предал. Однажды… давным-давно, — Морт вздыхает. — И это все, что я знаю.", 's720', 'say65820') \
    .with_responses() \
        .response("Понятно. Спасибо за разъяснения, Морт.", 'DMORTE.D_s721', 'r', 'reply65821').with_action(lambda: _r65821_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s721', '# from 720.0')\
    .with_npc_lines() \
        .line(SPEAKER, "А, не благодари… Морт вздыхает. К твоему удивлению, его голос каким-то образом стал более твердым и уверенным. Некоторые трещины и сколы в его черепе исчезли, как после исцеления. Это мне нужно тебя благодарить. Я прямо чувствую, как сбросил Планы со своих плеч… образно выражаясь.", 's721', 'say65822') \
    .with_responses() \
        .response("У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65823') \
        .response("Отлично, Морт. Пошли.", EXIT, 'r', 'reply65824').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s722', '# from 329.10 729.10')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, она — ночная ведьма. И она определенно чокнутая настолько, что из всех людей бессмертным сделала ТЕБЯ. То есть, она могла бы выбрать меня, — Морт закатывает глаза. — Тем не менее, вряд ли мы хотим найти того, кто настолько чокнутый, чтобы скрестить клинки с Леди Боли.", 's722', 'say65826') \
    .with_responses() \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65827') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65828').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s723', '# from 329.9 729.9')\
    .with_npc_lines() \
        .line(SPEAKER, "Это война. Большая, кровавая, беспощадная война. Она повсюду, несмотря на то, что иногда ты ее не в состоянии заметить.", 's723', 'say65829') \
    .with_responses() \
        .response("Продолжай…", 'DMORTE.D_s724', 'r', 'reply65830') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65831') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65832').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s724', '# from 723.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Понимаешь, шеф, это война между двумя ужасными расами — демонами и дьяволами. Когда-то они не подозревали о существовании друг друга. Дьяволы злые, только это 'упорядоченный' вид зла. Демоны тоже злые, но в этом плане они более свободны: более импульсивные, хаотичные, неорганизованные. Дьяволов можно сравнить с политиками, а демонов — с убийцами.", 's724', 'say65833') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s725', '# from 724.0')\
    .with_npc_lines() \
        .line(SPEAKER, "И вот однажды они встретились. Они посмотрели друг на друга, и каждой из рас не понравилось, как другая трактует зло. И с тех пор они воюют. Это один сплошной ночной кошмар. Но покуда обе эти расы заняты друг другом, они не разбегаются по всем планам.", 's725', 'say65834') \
    .with_responses() \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65835') \
        .response("Это все, что я хотел знать. Идем.", EXIT, 'r', 'reply65836').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s726', '# from 329.11 729.11')\
    .with_npc_lines() \
        .line(SPEAKER, "Без понятия, шеф. Я уже забыл, как я умер. Не могу сказать, что я сильно осуждаю себя за это. По крайней мере, меня хоть что-то ждало после моей смерти, даже если это оказалась жизнь в качестве летающего черепа. Ведь все могло оказаться гораздо хуже.", 's726', 'say65837') \
    .with_responses() \
        .response("А что случилось с твоим телом?", 'DMORTE.D_s727', 'r', 'reply65839') \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65840') \
        .response("Ладно. Идем.", EXIT, 'r', 'reply65841').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s727', '# from 726.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Эх… Я не знаю, ясно? Оно просто пропало — Морт выразительно смотрит на тебя. — Вот только не думай, что я СКУЧАЮ по нему, я рад тому, что я есть, и мне не нужны твои тупые подколки или фальшивые сочувствия, понятно?", 's727', 'say65838') \
    .with_responses() \
        .response("Понятно. У меня есть другие вопросы…", 'DMORTE.D_s329', 'r', 'reply65842') \
        .response("Как бы то ни было, идем. Давай, шевели ногами.", 'DMORTE.D_s728', 'r', 'reply65843') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s728', '# from 727.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт сверкает на тебя гневным взглядом. Я уже почти верю, что ты — какое-то ходячее проклятие, обреченное следовать за мной по пятам.", 's728', 'say65844') \
    .with_responses() \
        .response("Ой-ой, кто бы говорил. Идем.", EXIT, 'r', 'reply65845').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s729', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Что тебя гложет, шеф? [MRT515]", 's729', 'say66344') \
    .with_responses() \
        .response("Можешь еще раз прочитать, что у меня вытатуировано на спине?", 'DMORTE.D_s649', 'r', 'reply66345') \
        .response("Расскажи мне немного о Сигиле.", 'DMORTE.D_s659', 'r', 'reply66346') \
        .response("Морт… я не хочу навешивать ярлыки на тебя, но умеешь ли ты *еще* что-нибудь, кроме болтовни?", 'DMORTE.D_s663', 'r', 'reply66347').with_condition(lambda: _r66347_condition(gsm)) \
        .response("Морт… еще раз, какие у тебя есть способности?", 'DMORTE.D_s666', 'r', 'reply66348').with_condition(lambda: _r66348_condition(gsm)) \
        .response("Морт, почему ты не прочитал последнюю строку татуировки на моей спине?", 'DMORTE.D_s654', 'r', 'reply66349').with_condition(lambda: _r66349_condition(gsm)) \
        .response("Мне нужен совет. Что, по-твоему, нужно делать дальше?", 'DMORTE.D_s669', 'r', 'reply66350') \
        .response("Ты говорил, что ты — мимир, верно, Морт?", 'DMORTE.D_s684', 'r', 'reply66351').with_condition(lambda: _r66351_condition(gsm)) \
        .response("Расскажи мне еще раз, как ты оказался в Колонне Черепов.", 'DMORTE.D_s693', 'r', 'reply66352').with_condition(lambda: _r66352_condition(gsm)) \
        .response("Морт, почему с тех пор, как я вытащил тебя из Колонны, ты путешествуешь со мной?", 'DMORTE.D_s715', 'r', 'reply66353').with_condition(lambda: _r66353_condition(gsm)) \
        .response("Что ты знаешь о Кровавой войне?", 'DMORTE.D_s723', 'r', 'reply66354').with_condition(lambda: _r66354_condition(gsm)) \
        .response("Что тебе известно про ночную ведьму Равель?", 'DMORTE.D_s722', 'r', 'reply66355').with_condition(lambda: _r66355_condition(gsm)) \
        .response("Как ты умер, Морт?", 'DMORTE.D_s726', 'r', 'reply66356') \
        .response("Ничего, Морт. Просто проверяю, что ты все еще со мной.", EXIT, 'r', 'reply66357').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s730', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф, ты доверяешь этим двум? Они могли бы научить *меня* парочке вещей… [MRT387]", 's730', 'say66816') \
    .with_responses() \
        .response("Я тоже так думаю, Морт. Пошли.", EXIT, 'r', 'reply66817').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s731', '# from - // Check EXTENDS ~DANNAH~ : 418')\
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, я хотел бы просто вставить свое замечание и заявить, что не собираюсь ничего говорить, дабы не испортить никому настроения. Просто полетаю тут и понаблюдаю. Не обращайте на меня внимания.", 's731', 'say67510') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s732', '# from - // Check EXTENDS ~DANNAH~ : 446')\
    .with_npc_lines() \
        .line(SPEAKER, "Может быть, вы двое уже закончите с этим, а то мне придется позвать дабуса, что вас отцепить друг от дружки! — Морт *фыркает*. — Или хотя бы дайте поучаствовать.", 's732', 'say67600') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s733', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Едва ты собираешься прикоснуться к Морту, как вдруг он произносит: Эй-эй-эй! Погоди, шеф. Э-э-э… мне тебе нужно кое-что тебе сказать. [MRT242]", 's733', 'say68171') \
    .with_responses() \
        .response("Морт?!.. Ты не мертвый!", 'DMORTE.D_s734', 'r', 'reply68176').with_action(lambda: _r68176_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s734', '# from 733.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну да. Если бы ты был мертвым столько, сколько я, ты бы тоже хорошо симулировал смерть. Я типа подслушал твой разговор. Используй свою силу на ком-нибудь другом: мне она без надобности.", 's734', 'say68172') \
    .with_responses() \
        .response("Ты что, собирался *валялся* тут без дела, пока мне надирают задницу?", 'DMORTE.D_s735', 'r', 'reply68177') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s735', '# from 734.0 // Check EXTENDS ~DTRANS~ : 142')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну, *да*, шеф. Ведь ты бы все равно не умер. Я имею в виду, если бы ты пал, тебе бы понадобился кто-то, кто бы запомнил все. К тому же, ты ведь знаешь, какой я бесполезный в бою, если только не оскорбляю какого-нибудь мага или типа того…", 's735', 'say68173') \
    .with_responses() \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", 'DMORTE.D_s736', 'r', 'reply68178').with_condition(lambda: _r68178_condition(gsm)) \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68189').with_condition(lambda: _r68189_condition(gsm)).with_action(lambda: _r68189_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68190').with_condition(lambda: _r68190_condition(gsm)).with_action(lambda: _r68190_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68191').with_condition(lambda: _r68191_condition(gsm)).with_action(lambda: _r68191_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68192').with_condition(lambda: _r68192_condition(gsm)).with_action(lambda: _r68192_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68193').with_condition(lambda: _r68193_condition(gsm)).with_action(lambda: _r68193_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68194').with_condition(lambda: _r68194_condition(gsm)).with_action(lambda: _r68194_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68239').with_condition(lambda: _r68239_condition(gsm)).with_action(lambda: _r68239_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68438').with_condition(lambda: _r68438_condition(gsm)).with_action(lambda: _r68438_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68439').with_condition(lambda: _r68439_condition(gsm)).with_action(lambda: _r68439_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68446').with_condition(lambda: _r68446_condition(gsm)).with_action(lambda: _r68446_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…", EXIT, 'r', 'reply68503').with_condition(lambda: _r68503_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s736', '# from 735.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты снова используешь свою силу…", 's736', 'say68174') \
    .with_responses() \
        .response("Возродить Анну.", EXIT, 'r', 'reply68175').with_condition(lambda: _r68175_condition(gsm)).with_action(lambda: _r68175_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Возродить Даккона.", EXIT, 'r', 'reply68179').with_condition(lambda: _r68179_condition(gsm)).with_action(lambda: _r68179_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Возродить Падшую Грацию.", EXIT, 'r', 'reply68180').with_condition(lambda: _r68180_condition(gsm)).with_action(lambda: _r68180_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Возродить Нордома.", EXIT, 'r', 'reply68181').with_condition(lambda: _r68181_condition(gsm)).with_action(lambda: _r68181_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Возродить Игнуса.", EXIT, 'r', 'reply68182').with_condition(lambda: _r68182_condition(gsm)).with_action(lambda: _r68182_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Возродить Вейлора.", EXIT, 'r', 'reply68183').with_condition(lambda: _r68183_condition(gsm)).with_action(lambda: _r68183_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s737', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Едва ты собираешься прикоснуться к Морту, как вдруг он взлетает в воздух. Э-э-э… Погоди, шеф. Тебе не нужно возрождать меня. Я, понимаешь, э-э-э, типа просто лежал тут, слушал вас двоих.", 's737', 'say68310') \
    .with_responses() \
        .response("ТЫ ПРИТВОРЯЛСЯ МЕРТВЫМ.", 'DMORTE.D_s738', 'r', 'reply68311') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s738', '# from 737.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ну да, я ведь *уже* мертв и… Э-э-э, что случилось с твоим голосом, шеф?", 's738', 'say68312') \
    .with_responses() \
        .response("Я… ТЕПЕРЬ ДРУГОЙ. ОСТАЛОСЬ МАЛО ВРЕМЕНИ, И СКОРО ВРЕМЯ И СУДЬБА МЕНЯ НАСТИГНУТ. ЕСЛИ ХОЧЕШЬ, Я ВЕРНУ ТЕБЯ В СИГИЛ, МОРТ.", 'DMORTE.D_s739', 'r', 'reply68313') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s739', '# from 738.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Чт?.. Вернуть меня? А как же *ты*? Хватит, шеф, может я и *трус*, но я ни за что не брошу тебя в этом месте.", 's739', 'say68314') \
    .with_responses() \
        .response("МНОГО ПРЕСТУПЛЕНИЙ БЫЛО СОВЕРШЕНО С ТЕХ ПОР, КАК МОЯ СМЕРТНОСТЬ И Я БЫЛИ РАЗДЕЛЕНЫ. ЗА ЭТИ ПРЕСТУПЛЕНИЯ ПРИДЕТСЯ… ЗАПЛАТИТЬ. НАВЕРНО, ТЫ НЕ ЗАХОЧЕШЬ ПОЙТИ ТУДА, ГДЕ Я СКОРО ОКАЖУСЬ.", 'DMORTE.D_s740', 'r', 'reply68315') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s740', '# from 739.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Я *могу* пойти куда угодно, шеф, если ты этого захочешь. Мы ведь бывали в местах и похуж…", 's740', 'say68316') \
    .with_responses() \
        .response("НЕ В ЭТОТ РАЗ. ВОЗМОЖНО, ОДНАЖДЫ МЫ СНОВА ВСТРЕТИМСЯ, НА ДРУГОМ ПЛАНЕ. НО НЕ В ЭТОТ РАЗ.", 'DMORTE.D_s741', 'r', 'reply68317') \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s741', '# from 740.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт молча смотрит на тебя, затем вздыхает. Не то чтобы я сильно растрогался, и все же мне, э-э, было приятно с тобой путешествовать, шеф. [MRT109]", 's741', 'say68318') \
    .with_responses() \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68319').with_condition(lambda: _r68319_condition(gsm)).with_action(lambda: _r68319_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68320').with_condition(lambda: _r68320_condition(gsm)).with_action(lambda: _r68320_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68321').with_condition(lambda: _r68321_condition(gsm)).with_action(lambda: _r68321_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68322').with_condition(lambda: _r68322_condition(gsm)).with_action(lambda: _r68322_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68323').with_condition(lambda: _r68323_condition(gsm)).with_action(lambda: _r68323_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68324').with_condition(lambda: _r68324_condition(gsm)).with_action(lambda: _r68324_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68325').with_condition(lambda: _r68325_condition(gsm)).with_action(lambda: _r68325_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68490').with_condition(lambda: _r68490_condition(gsm)).with_action(lambda: _r68490_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68491').with_condition(lambda: _r68491_condition(gsm)).with_action(lambda: _r68491_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("ПРОЩАЙ, МОРТ.", EXIT, 'r', 'reply68492').with_condition(lambda: _r68492_condition(gsm)).with_action(lambda: _r68492_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE.D_s742', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Морт молча смотрит на тебя, затем вздыхает. Не то чтобы я сильно растрогался, и все же мне, э-э, было приятно с тобой путешествовать, шеф. [MRT109]", 's742', 'say68408') \
    .with_responses() \
        .response("Тогда возьмемся за дело…", EXIT, 'r', 'reply68409').with_action(lambda: _dispose()) \
    .push(manager)