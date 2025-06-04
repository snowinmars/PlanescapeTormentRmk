init python:
    def _r17833_action(gsm):        
        gsm.set_has_intro_key(True) 
        gsm.set_meet_morte(True) 
        gsm.set_read_scars(True) 
        gsm.set_in_party_morte(True)
    def _r1088_action(gsm):        
        gsm.set_read_scars(True)
    def _r1079_action(gsm):        
        gsm.set_meet_morte(True) 
        gsm.set_in_party_morte(True)
    def _r1845_action(gsm):        
        gsm.set_morte_harlot_quip_1(True)
    def _r1846_action(gsm):        
        gsm.set_morte_harlot_quip_1(True)
    def _r1847_action(gsm):        
        gsm.set_morte_harlot_quip_1(True)
    def _r2080_action(gsm):        
        gsm.set_know_mimir(True) 
        gsm.set_morte_mimir(True)
    def _r9029_action(gsm):        
        gsm.set_know_gith(True)
    def _r2603_action(gsm):        
        gsm.set_morte_quip(True)
    def _r2602_action(gsm):        
        gsm.set_morte_quip(True)
    def _r2605_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r6952_action(gsm):        
        gsm.set_know_lady(True)
    def _r3474_action(gsm):        
        gsm.update_journal('38205')    # '38205': ' ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ '
    def _r3483_action(gsm):        
        gsm.update_journal('38205')    # '38205': ' ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ '
    def _r3871_action(gsm):        
        gsm.set_warning(1)
    def _r3874_action(gsm):        
        gsm.set_warning(2)
    def _r3877_action(gsm):        
        gsm.set_warning(2)
    def _r3965_action(gsm):        
        gsm.dec_good('good')
    def _r3966_action(gsm):        
        gsm.inc_good('good')
    def _r3972_action(gsm):        
        gsm.set_morte_skel_mort_quip(True)
    def _r3988_action(gsm):        
        gsm.dec_once_law('chaotic_skeleton_mort_1')
    def _r4029_action(gsm):        
        gsm.inc_once_good('good_giant_skel_mort_1')
    def _r4144_action(gsm):        
        gsm.set_warning(1)
    def _r4145_action(gsm):        
        gsm.set_warning(1)
    def _r4142_action(gsm):        
        gsm.set_warning(2)
    def _r4143_action(gsm):        
        gsm.set_warning(2)
    def _r4140_action(gsm):        
        gsm.set_warning(2)
    def _r4339_action(gsm):        
        gsm.set_warning(1)
    def _r4342_action(gsm):        
        gsm.set_warning(2)
    def _r4345_action(gsm):        
        gsm.set_warning(2)
    def _r4676_action(gsm):        
        gsm.update_journal('64512')    # '64512': ' ~Недавно я повстречал замаскировавшегося под зомби мужчину из анархистов, фракции, которая отрицает авторитеты и низвергает все, что хоть издали напоминает «устоявшийся институт». ~ '
    def _r4678_action(gsm):        
        gsm.dec_once_law('chaotic_vaxis_3', 3)
    def _r4679_action(gsm):        
        gsm.dec_once_law('chaotic_vaxis_4')
    def _r4682_action(gsm):        
        gsm.inc_once_law('lawful_vaxis_3', 3)
    def _r4687_action(gsm):        
        gsm.inc_once_law('lawful_vaxis_2') 
        gsm.inc_once_good('good_vaxis_2')
    def _r4693_action(gsm):        
        gsm.update_journal('64512')    # '64512': ' ~Недавно я повстречал замаскировавшегося под зомби мужчину из анархистов, фракции, которая отрицает авторитеты и низвергает все, что хоть издали напоминает «устоявшийся институт». ~ '
    def _r4695_action(gsm):        
        gsm.dec_once_law('chaotic_vaxis_3', 3)
    def _r4699_action(gsm):        
        gsm.inc_once_law('lawful_vaxis_3', 3)
    def _r64535_action(gsm):        FadeToColor([20.0],0) Wait(1) 
        gsm.set_looks_like("zombie") Wait(2) FadeFromColor([20.0],0) 
        gsm.inc_exp(500)
    def _r64534_action(gsm):        FadeToColor([20.0],0) Wait(1) 
        gsm.set_looks_like("zombie") Wait(2) FadeFromColor([20.0],0)
    def _r5030_action(gsm):        
        gsm.set_warning(1)
    def _r5033_action(gsm):        
        gsm.set_warning(2)
    def _r5036_action(gsm):        
        gsm.set_warning(2)
    def _r6075_action(gsm):        
        gsm.set_morte_deionarra_quip_1(True)
    def _r6658_action(gsm):        
        gsm.dec_good('good')
    def _r6659_action(gsm):        
        gsm.inc_good('good')
    def _r6957_action(gsm):        
        gsm.set_translate_dabus(False)
    def _r7056_action(gsm):        
        gsm.set_morte_zombie_female_bar_quip(True)
    def _r7057_action(gsm):        
        gsm.set_morte_quip(True)
    def _r7058_action(gsm):        
        gsm.set_morte_quip(True)
    def _r7483_action(gsm):        
        gsm.inc_bd_morte_morale()
    def _r7485_action(gsm):        
        gsm.inc_morte_taunt()
    def _r11977_action(gsm):        
        gsm.set_ingress_teeth_installed(True) 
        gsm.dec_once_law('chaotic_ingress_teeth_2') 
        gsm.dec_once_good('evil_ingress_teeth_1')
    def _r11980_action(gsm):        
        gsm.set_ingress_teeth_installed(True) 
        gsm.dec_once_law('chaotic_ingress_teeth_2') 
        gsm.dec_once_good('evil_ingress_teeth_1')
    def _r11982_action(gsm):        
        gsm.dec_morale_morte()
    def _r11983_action(gsm):        
        gsm.set_ingress_teeth_installed(True)
    def _r12554_action(gsm):        
        gsm.dec_morale_morte(2) Enemy() Attack(Protagonist) ChangeAIScript("MDKTNO",DEFAULT) ForceAttack(Protagonist,Myself)
    def _r12555_action(gsm):        Enemy() Attack(Protagonist) ChangeAIScript("MDKTNO",DEFAULT) ForceAttack(Protagonist,Myself)
    def _r12556_action(gsm):        
        gsm.set_baria(2)
    def _r12855_action(gsm):        
        gsm.set_know_mimir(True)
    def _r12858_action(gsm):        
        gsm.set_know_mimir(True)
    def _r12860_action(gsm):        
        gsm.set_morte_mimir(True)
    def _r12861_action(gsm):        
        gsm.set_morte_mimir(True)
    def _r13774_action(gsm):        
        gsm.set_morte_sdthug_quip_1(True) 
        gsm.set_know_chaosmen(True)
    def _r13775_action(gsm):        
        gsm.set_morte_sdthug_quip_1(True)
    def _r13776_action(gsm):        
        gsm.set_morte_sdthug_quip_1(True)
    def _r13986_action(gsm):        
        gsm.set_morte_wilder_quip_1(True) 
        gsm.set_know_chaosmen(True)
    def _r13987_action(gsm):        
        gsm.set_morte_wilder_quip_1(True)
    def _r13988_action(gsm):        
        gsm.set_morte_wilder_quip_1(True)
    def _r15492_action(gsm):        
        gsm.inc_bd_morte_morale()
    def _r15495_action(gsm):        
        gsm.set_adyzoel(2)
    def _r16882_action(gsm):        
        gsm.inc_tree_helpers()
    def _r16884_action(gsm):        
        gsm.set_tree_a(True)
    def _r16885_action(gsm):        
        gsm.set_tree_i(True)
    def _r16886_action(gsm):        
        gsm.set_tree_g(True)
    def _r16887_action(gsm):        
        gsm.set_tree_d(True)
    def _r16888_action(gsm):        
        gsm.inc_bd_dakkon_morale() 
        gsm.set_tree_d(True)
    def _r16889_action(gsm):        
        gsm.set_tree_n(True)
    def _r16890_action(gsm):        
        gsm.set_tree_v(True)
    def _r16893_action(gsm):        
        gsm.set_tree_m(True)
    def _r16894_action(gsm):        
        gsm.set_tree_a(True)
    def _r16895_action(gsm):        
        gsm.set_tree_i(True)
    def _r16896_action(gsm):        
        gsm.set_tree_g(True)
    def _r16897_action(gsm):        
        gsm.set_tree_d(True)
    def _r16898_action(gsm):        
        gsm.inc_bd_dakkon_morale() 
        gsm.set_tree_d(True)
    def _r16899_action(gsm):        
        gsm.set_tree_v(True)
    def _r17584_action(gsm):        
        gsm.dec_gold(40)
    def _r18802_action(gsm):        
        gsm.inc_bd_morte_morale()
    def _r18578_action(gsm):        
        gsm.inc_once_law('lawful_yellow_1')
    def _r18808_action(gsm):        
        gsm.inc_once_good('good_yellow_1')
    def _r18820_action(gsm):        
        gsm.dec_gold(5)
    def _r18821_action(gsm):        
        gsm.dec_gold(50)
    def _r18822_action(gsm):        
        gsm.dec_gold(100)
    def _r18823_action(gsm):        
        gsm.dec_gold(500)
    def _r18830_action(gsm):        
        gsm.dec_gold(5)
    def _r18833_action(gsm):        
        gsm.dec_gold(5)
    def _r18834_action(gsm):        
        gsm.dec_gold(10)
    def _r18835_action(gsm):        
        gsm.dec_gold(50)
    def _r18836_action(gsm):        
        gsm.dec_gold(100)
    def _r20612_action(gsm):        
        gsm.set_know_marta_work(3) ~ 
        gsm.update_journal('20538')    # '20538': ' ~Похоже, что Марта-швея занимается тем, что обрабатывает трупы, которые ей дают: вырывает их зубы, распарывает швы, обыскивает их снаружи и внутри в поисках любых ценностей, а затем зашивает.~ '
    def _r20613_action(gsm):        
        gsm.update_journal('20538')    # '20538': ' ~Похоже, что Марта-швея занимается тем, что обрабатывает трупы, которые ей дают: вырывает их зубы, распарывает швы, обыскивает их снаружи и внутри в поисках любых ценностей, а затем зашивает.~ '
    def _r24697_action(gsm):        
        gsm.set_know_lady(True)
    def _r22850_action(gsm):        
        gsm.dec_once_law('chaotic_cube_3')
    def _r22853_action(gsm):        
        gsm.dec_once_law('chaotic_cube_4')
    def _r22856_action(gsm):        
        gsm.dec_once_law('chaotic_cube_5')
    def _r24904_action(gsm):        
        gsm.set_meet_morte(True)
    def _r24905_action(gsm):        
        gsm.set_meet_morte(True) 
        gsm.set_in_party_morte(True)
    def _r24925_action(gsm):        
        gsm.inc_once_good('good_morte_1')
    def _r24932_action(gsm):        
        gsm.set_in_party_morte(True) ~ 
        gsm.update_journal('24933')    # '24933': ' ~Я начал записывать происходящее со мной, чтобы прочистить голову, в надежде на то, что я смогу разобраться в том, что происходит. Я очнулся в месте под названием «Морг»... действительно похоже на морг. Я не знаю, кто я, что я здесь делаю и как я сюда попал. Первый, на кого я наткнулся, очнувшись, был тараторящий череп по имени Морт. Он сказал, что мы заперты и что у одного из ковыляющих по комнате трупов должен быть ключ. Он предложил мне поискать на полках скальпель, а потом тыкать им в мертвецов, пока те не «умрут».~ '
    def _r28041_action(gsm):        
        gsm.dec_gold(10)
    def _r28042_action(gsm):        
        gsm.dec_gold(10)
    def _r28038_action(gsm):        
        gsm.dec_gold(30)
    def _r28039_action(gsm):        
        gsm.dec_gold(30)
    def _r28040_action(gsm):        
        gsm.dec_gold(50)
    def _r28044_action(gsm):        
        gsm.dec_gold(50)
    def _r28045_action(gsm):        
        gsm.dec_gold(50)
    def _r28046_action(gsm):        
        gsm.dec_gold(50)
    def _r28047_action(gsm):        
        gsm.dec_gold(80)
    def _r28048_action(gsm):        
        gsm.dec_gold(80)
    def _r28743_action(gsm):        
        gsm.set_morte_stolen(3)
    def _r28744_action(gsm):        
        gsm.inc_bd_morte_morale() 
        gsm.set_morte_stolen(3)
    def _r28745_action(gsm):        
        gsm.set_morte_stolen(3)
    def _r28968_action(gsm):        
        gsm.set_qui_sai(2)
    def _r28971_action(gsm):        
        gsm.set_qui_sai(2)
    def _r28975_action(gsm):        
        gsm.set_qui_sai(2)
    def _r28976_action(gsm):        
        gsm.set_qui_sai(2)
    def _r30826_action(gsm):        
        gsm.set_able(True)
    def _r31567_action(gsm):        OpenDoor("Statue") Kill(Protagonist)
    def _r32370_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32375_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32380_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32385_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32390_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32395_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32400_action(gsm):        
        gsm.set_lecture_death(2)
    def _r32405_action(gsm):        
        gsm.set_lecture_death(2)
    def _r33076_action(gsm):        
        gsm.set_lecture_ghysis(2)
    def _r33959_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r33963_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r33966_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r34991_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35001_action(gsm):        
        gsm.set_morte_quip(True)
    def _r34993_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35023_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35033_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35025_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35055_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35065_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35057_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35087_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35097_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35089_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35119_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35129_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35121_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35151_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35161_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35153_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35183_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35193_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35185_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35215_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35225_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35217_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35247_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35257_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35249_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35279_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35289_action(gsm):        
        gsm.set_morte_quip(True)
    def _r35281_action(gsm):        
        gsm.dec_once_law('morte_zombie_1')
    def _r35319_action(gsm):        
        gsm.dec_once_law('chaotic_skeleton_mort_1')
    def _r35342_action(gsm):        
        gsm.dec_good('good')
    def _r35360_action(gsm):        
        gsm.inc_good('good')
    def _r35358_action(gsm):        
        gsm.set_morte_skel_mort_quip(True)
    def _r35396_action(gsm):        
        gsm.dec_once_law('chaotic_skeleton_mort_1')
    def _r35419_action(gsm):        
        gsm.dec_good('good')
    def _r35437_action(gsm):        
        gsm.inc_good('good')
    def _r35435_action(gsm):        
        gsm.set_morte_skel_mort_quip(True)
    def _r35473_action(gsm):        
        gsm.dec_once_law('chaotic_skeleton_mort_1')
    def _r35496_action(gsm):        
        gsm.dec_good('good')
    def _r35514_action(gsm):        
        gsm.inc_good('good')
    def _r35512_action(gsm):        
        gsm.set_morte_skel_mort_quip(True)
    def _r35550_action(gsm):        
        gsm.dec_once_law('chaotic_skeleton_mort_1')
    def _r35573_action(gsm):        
        gsm.dec_good('good')
    def _r35591_action(gsm):        
        gsm.inc_good('good')
    def _r35589_action(gsm):        
        gsm.set_morte_skel_mort_quip(True)
    def _r39716_action(gsm):        
        gsm.set_yves_shared(True)
    def _r39719_action(gsm):        
        gsm.set_yves_shared(True)
    def _r39721_action(gsm):        
        gsm.set_yves_shared(True)
    def _r39722_action(gsm):        
        gsm.set_yves_shared(True)
    def _r40848_action(gsm):        
        gsm.set_met_modrons(True)
    def _r40852_action(gsm):        
        gsm.set_met_modrons(True)
    def _r40856_action(gsm):        
        gsm.set_met_modrons(True)
    def _r41837_action(gsm):        
        gsm.update_journal('39516')    # '39516': ' ~Мой предыдущий дневник пропал, так что я завел новый. Я очнулся в месте под названием «Морг». Я не знаю, кто я, что я здесь делаю и даже как я сюда попал. Единственного, кого я здесь пока встретил, — говорящий без умолку череп по имени Морт... Когда он осматривал мои раны, он нашел «указания», вытатуированные на моей спине:  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».  Мог ли сам себе оставить это сообщение? Судя по всему, мне придется найти этого «Фарода» и свой дневник.~ '
    def _r41911_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_2(True)
    def _r41921_action(gsm):        
        gsm.set_jumble_reekwind(True) ~ 
        gsm.update_journal('67862')    # '67862': ' ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ '
    def _r43910_action(gsm):        
        gsm.set_nemelle(3) 
        gsm.set_aelwyn(4) ~ 
        gsm.update_journal('39490')    # '39490': ' ~Я сказал подруге Немель, Эльвин, что она ее ищет. Она вознаградила меня волшебным поцелуем, который увеличил мой максимум очков жизни на три.~ '
    def _r43918_action(gsm):        
        gsm.set_nemelle(3) 
        gsm.set_aelwyn(4) ~ 
        gsm.update_journal('39490')    # '39490': ' ~Я сказал подруге Немель, Эльвин, что она ее ищет. Она вознаградила меня волшебным поцелуем, который увеличил мой максимум очков жизни на три.~ '
    def _r45029_action(gsm):        
        gsm.set_lecture_death(2)
    def _r45093_action(gsm):        
        gsm.update_journal('39477')    # '39477': ' ~Морт что-то сказал про какое-то «правило трех». По-видимому, некоторые верят в то, что все на свете происходит по три, придавая глубокий смысл числам.~ '
    def _r45103_action(gsm):        
        gsm.update_journal('39477')    # '39477': ' ~Морт что-то сказал про какое-то «правило трех». По-видимому, некоторые верят в то, что все на свете происходит по три, придавая глубокий смысл числам.~ '
    def _r50166_action(gsm):        
        gsm.set_translate_dabus(False)
    def _r50325_action(gsm):        
        gsm.set_know_lady(True)
    def _r50416_action(gsm):        
        gsm.dec_morale_morte()
    def _r52577_action(gsm):        
        gsm.set_ravel_grace(2)
    def _r52578_action(gsm):        
        gsm.set_ravel_annah(2)
    def _r53625_action(gsm):        
        gsm.dec_morale_morte()
    def _r53629_action(gsm):        
        gsm.set_morte_story(True) ~ 
        gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
    def _r53630_action(gsm):        
        gsm.dec_morale_morte() 
        gsm.set_morte_story(True) ~ 
        gsm.update_journal('53661')    # '53661': ' ~Оказывается, Морт появился из такой себе Колонной Черепов, горы живых отрубленных голов, находящейся на Авернусе, первом слое Баатора. Она состоит из голов тех, чья ложь привела к смерти других.~ '
    def _r53795_action(gsm):        
        gsm.dec_morale_morte()
    def _r53801_action(gsm):        
        gsm.dec_morale_morte()
    def _r53807_action(gsm):        
        gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
    def _r53825_action(gsm):        
        gsm.set_pillar_musk(True)
    def _r53826_action(gsm):        
        gsm.set_pillar_musk(True)
    def _r53841_action(gsm):        
        gsm.set_pillar_question(False)
    def _r53843_action(gsm):        
        gsm.dec_once_good('evil_pillar_2') 
        gsm.set_pillar(2) StartCutSceneMode() # ?.startCutScene('1001Cut1')
    def _r53867_action(gsm):        
        gsm.set_pillar_question(False)
    def _r53850_action(gsm):        
        gsm.dec_once_good('evil_pillar_2') 
        gsm.set_pillar(2) StartCutSceneMode() # ?.startCutScene('1001Cut1')
    def _r53856_action(gsm):        
        gsm.set_pillar_question(False)
    def _r54160_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54180_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54192_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54197_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54201_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54205_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54210_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54214_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54218_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54227_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54233_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54238_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54242_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54244_action(gsm):        
        gsm.set_morte_quip_regret_portal(2)
    def _r54246_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54262_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54267_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54272_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54276_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54278_action(gsm):        
        gsm.inc_bd_morte_morale() 
        gsm.set_morte_morale_fortress_portal(1)
    def _r54280_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54833_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54836_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r54839_action(gsm):        SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
    def _r55902_action(gsm):        
        gsm.dec_once_law('chaotic_nordom_5')
    def _r55925_action(gsm):        
        gsm.set_know_mechanus(True)
    def _r55931_action(gsm):        
        gsm.inc_once_law('lawful_nordom_2', 2)
    def _r55941_action(gsm):        
        gsm.dec_once_law('chaotic_nordom_4', 2)
    def _r61414_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65569_action(gsm):        
        gsm.set_morte_tattoo_xp(True) 
        gsm.inc_exp(1000)    # '65573': ' ~Я напрямую спросил Морта насчет дополнительной строки на моей спине, которую он «забыл» мне прочитать. Он заявил, что это не имеет никакого смысла, поэтому он и не прочел. Я уверен, что он лжет, но пока мне непонятно почему. ~ '
    def _r65621_action(gsm):        
        gsm.set_morte_talent(True) ~ 
        gsm.update_journal('65625')    # '65625': ' ~Морт сказал мне, что у него есть особенный «талант» выводить из себя людей, который называется «Поток Проклятий». Очевидно, во время своей жизни и смерти он выучил столько оскорблений, что теперь знает, как провоцировать людей на нападение. В приступе злости их легко ударить, а им — труднее ударить тебя. Кроме того, они забывают обо всем, кроме того, чтобы догнать Морта и надавать ему тумаков. Похоже, это очень пригодится, если я повстречаю какого-нибудь чародея. Фактически этот талант не является магией, поэтому он может подействовать на любую тварь, которая зачитывает заклинания. Думаю, чем больше проклятий услышит Морт от людей, которых я встречу, тем лучше будет становиться эта возможность. ~ '
    def _r65631_action(gsm):        
        gsm.update_journal('65637')    # '65637': ' ~Морт сказал мне, что пока они был на полке Лотара, у него появилась новая способность под названием «Толпа Черепов». Похоже, он может несколько раз в день призывать некоторых друзей, с которыми познакомился у Лотара. Они будут атаковать выбранного Мортом противника, кусая его, а затем убегая прочь. Наносимый ими урон зависит от уровня опытности Морта.~ '
    def _r65666_action(gsm):        
        gsm.update_journal('65669')    # '65669': ' ~Морт посоветовал мне заглянуть в Городской Фестхолл в Чиновничьем районе и попробовать разузнать побольше о ночной ведьме Равель.~ '
    def _r65674_action(gsm):        
        gsm.update_journal('65678')    # '65678': ' ~Морт подкинул мысль, что кто-нибудь в Чиновничьем районе может знать, где достать кусочек Равель. Если мы никого не найдем, можно проверить Фестхолл и тамошние камни переживаний. Если и *там* ничего не выйдет, всегда можно наведаться к проституткам... Вот уж предстоит набегаться и наговориться.~ '
    def _r65710_action(gsm):        
        gsm.update_journal('65712')    # '65712': ' ~Я прямо спросил Морта о его заявлении, что он — мимир, но не сумел загнать его в угол. Думаю, мне нужно его подловить на лжи, чтобы вывести на чистую воду. ~ '
    def _r65711_action(gsm):        
        gsm.update_journal('65712')    # '65712': ' ~Я прямо спросил Морта о его заявлении, что он — мимир, но не сумел загнать его в угол. Думаю, мне нужно его подловить на лжи, чтобы вывести на чистую воду. ~ '
    def _r65731_action(gsm):        
        gsm.set_morte_story(True)
    def _r65733_action(gsm):        
        gsm.inc_exp(12000)
    def _r65750_action(gsm):        
        gsm.inc_once_law('lawful_morte_1')
    def _r65751_action(gsm):        
        gsm.dec_once_law('chaotic_morte_1') 
        gsm.dec_once_good('evil_morte_1')
    def _r65753_action(gsm):        
        gsm.update_journal('53633')    # '53633': ' ~Морт сказал, что это я вытащил его из Колонны много лет назад, хотя он точно не понимает, как. Также он объяснил, что когда он оказался вне Колонны, то потерял все собранные ею знания... Это может объяснять, почему он не *столь* полезен, как он заявил моему предыдущему воплощению.~ '
    def _r65758_action(gsm):        # ?.play_sound('SPTR_01') FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65763_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65766_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65769_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65772_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65774_action(gsm):        
        gsm.set_memory_morte_pillar(True) 
        gsm.dec_exp('Protagonist,12000) FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0]', 0)
    def _r65775_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65781_action(gsm):        # ?.play_sound('SPTR_01') FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65789_action(gsm):        FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)
    def _r65821_action(gsm):        
        gsm.inc_exp(12000)    # '65825': ' ~Я выяснил, почему Морт оставался со мной все это время... Все из-за того, что он испытывал чувство вины за то, что убил меня однажды, когда был жив. Встретившись со своей виной лицом к лицу, он сбросил с себя весь этот груз и, в конце концов, стал сильнее.~ '
    def _r68176_action(gsm):        
        gsm.set_fortress_morte(4) JoinPartyEx(TRUE)
    def _r68189_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204d0')
    def _r68190_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204a0')
    def _r68191_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204g0')
    def _r68192_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204i0')
    def _r68193_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204v0')
    def _r68194_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204n0')
    def _r68239_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204tr')
    def _r68438_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204tr')
    def _r68439_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204tr')
    def _r68446_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204v0')
    def _r68175_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204a0')
    def _r68179_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204d0')
    def _r68180_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204g0')
    def _r68181_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204n0')
    def _r68182_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204i0')
    def _r68183_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204v0')
    def _r68319_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204a0')
    def _r68320_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204d0')
    def _r68321_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204g0')
    def _r68322_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204n0')
    def _r68323_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204i0')
    def _r68324_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204v0')
    def _r68325_action(gsm):        QuitGame(FINALE,0,0)
    def _r68490_action(gsm):        StartCutSceneMode() # ?.startCutScene('1204v0')
    def _r68491_action(gsm):        QuitGame(FINALE,0,0)
    def _r68492_action(gsm):        QuitGame(FINALE,0,0)


init python:
    def _r1006_condition(gsm):
        return gsm.get_read_scars()
    def _r1015_condition(gsm):
        return gsm.get_read_scars()
    def _r1019_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r1050_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',12,'int')
    def _r1051_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r1077_condition(gsm):
        return gsm.get_read_scars()
    def _r1083_condition(gsm):
        return gsm.get_read_scars()
    def _r1095_condition(gsm):
        return gsm.get_read_scars()
    def _r1120_condition(gsm):
        return gsm.get_read_scars()
    def _r1125_condition(gsm):
        return gsm.get_read_scars()
    def _r1130_condition(gsm):
        return gsm.get_read_scars()
    def _r9029_condition(gsm):
        return not gsm.get_know_gith()
    def _r9030_condition(gsm):
        return gsm.get_know_gith()
    def _r6952_condition(gsm):
        return not gsm.get_know_lady()
    def _r6953_condition(gsm):
        return gsm.get_know_lady()
    def _r6954_condition(gsm):
        return gsm.get_know_lady()
    def _r3969_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r3970_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r3971_condition(gsm):
        return gsm.get_has_prybar()
    def _r3972_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r3973_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r4023_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r4024_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r4027_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r4028_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r4031_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r4032_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r4034_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r4686_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',13,'int')
    def _r64535_condition(gsm):
        return not gsm.get_vaxis_global_xp()
    def _r64534_condition(gsm):
        return gsm.get_vaxis_global_xp()
    def _r6325_condition(gsm):
        return HasItem("Cobble","Post")  # Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).
    def _r6326_condition(gsm):
        return !HasItem("Cobble","Post")  # Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).
    def _r6327_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int') \
               and gsm.check_char_prop_lt('protagonist',12,'wis')
    def _r6328_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'wis')
    def _r6329_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',12,'int') \
               and gsm.check_char_prop_lt('protagonist',12,'wis')
    def _r6330_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r6664_condition(gsm):
        return gsm.get_42_secret()
    def _r6665_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis') \
               and not gsm.get_42_secret()
    def _r7056_condition(gsm):
        return gsm.get_morte_quip()
    def _r7057_condition(gsm):
        return not gsm.get_morte_quip()
    def _r7058_condition(gsm):
        return not gsm.get_morte_quip()
    def _r11985_condition(gsm):
        return gsm.get_evil_ingress_teeth_1()
    def _r11986_condition(gsm):
        return gsm.get_good_ingress_teeth_1()
    def _r11988_condition(gsm):
        return gsm.get_good_ingress_teeth_1()
    def _r11989_condition(gsm):
        return gsm.get_evil_ingress_teeth_1()
    def _r11990_condition(gsm):
        return gsm.get_good_ingress_teeth_1()
    def _r11991_condition(gsm):
        return gsm.get_evil_ingress_teeth_1()
    def _r12855_condition(gsm):
        return not gsm.get_know_mimir()
    def _r12858_condition(gsm):
        return not gsm.get_know_mimir()
    def _r13774_condition(gsm):
        return not gsm.get_know_chaosmen()
    def _r13775_condition(gsm):
        return gsm.get_know_chaosmen()
    def _r13776_condition(gsm):
        return gsm.get_know_chaosmen()
    def _r13986_condition(gsm):
        return not gsm.get_know_chaosmen()
    def _r13987_condition(gsm):
        return gsm.get_know_chaosmen()
    def _r13988_condition(gsm):
        return gsm.get_know_chaosmen()
    def _r13989_condition(gsm):
        return not gsm.get_join_chaosmen()
    def _r14275_condition(gsm):
        return gsm.get_mortai_contract() \
               and gsm.get_coppereyes_contract()
    def _r14276_condition(gsm):
        return gsm.get_mortai_contract() \
               and not gsm.get_coppereyes_contract()
    def _r14277_condition(gsm):
        return not gsm.get_mortai_contract() \
               and gsm.get_coppereyes_contract()
    def _r14278_condition(gsm):
        return not gsm.get_mortai_contract() \
               and not gsm.get_coppereyes_contract()
    def _r65537_condition(gsm):
        return false  # GlobalGT("Morte_Mimir","GLOBAL",1)
    def _r16881_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis')
    def _r16882_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r16884_condition(gsm):
        return gsm.get_in_party_annah() \
               and not gsm.get_tree_a()
    def _r16885_condition(gsm):
        return gsm.get_in_party_ignus() \
               and not gsm.get_tree_i()
    def _r16886_condition(gsm):
        return gsm.get_in_party_grace() \
               and not gsm.get_tree_g()
    def _r16887_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and not gsm.get_tree_d()
    def _r16888_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and not gsm.get_tree_d() \
               and gsm.get_dakkon_slave()
    def _r16889_condition(gsm):
        return gsm.get_in_party_nordom() \
               and not gsm.get_tree_n()
    def _r16890_condition(gsm):
        return gsm.get_in_party_vhail() \
               and not gsm.get_tree_v()
    def _r16893_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_tree_m()
    def _r16894_condition(gsm):
        return gsm.get_in_party_annah() \
               and not gsm.get_tree_a()
    def _r16895_condition(gsm):
        return gsm.get_in_party_ignus() \
               and not gsm.get_tree_i()
    def _r16896_condition(gsm):
        return gsm.get_in_party_grace() \
               and not gsm.get_tree_g()
    def _r16897_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and not gsm.get_tree_d()
    def _r16898_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and not gsm.get_tree_d() \
               and gsm.get_dakkon_slave()
    def _r16899_condition(gsm):
        return gsm.get_in_party_vhail() \
               and not gsm.get_tree_v()
    def _r17583_condition(gsm):
        return gsm.get_in_party_annah()
    def _r17584_condition(gsm):
        return gsm.get_gold() > 39
    def _r17585_condition(gsm):
        return gsm.get_gold() > 39
    def _r17586_condition(gsm):
        return gsm.get_gold() > 39
    def _r17587_condition(gsm):
        return PartyGoldLT(40)
    def _r17588_condition(gsm):
        return PartyGoldLT(40)
    def _r18820_condition(gsm):
        return gsm.get_gold() > 4
    def _r18821_condition(gsm):
        return gsm.get_gold() > 49
    def _r18822_condition(gsm):
        return gsm.get_gold() > 99
    def _r18823_condition(gsm):
        return gsm.get_gold() > 499
    def _r18824_condition(gsm):
        return PartyGoldLT(5)
    def _r18829_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',11,'int')
    def _r18830_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',12,'int')
    def _r18833_condition(gsm):
        return gsm.get_gold() > 4
    def _r18834_condition(gsm):
        return gsm.get_gold() > 9
    def _r18835_condition(gsm):
        return gsm.get_gold() > 49
    def _r18836_condition(gsm):
        return gsm.get_gold() > 99
    def _r19668_condition(gsm):
        return not gsm.get_can_speak_with_dead()
    def _r19669_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r19670_condition(gsm):
        return not gsm.get_can_speak_with_dead()
    def _r19671_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r20612_condition(gsm):
        return gsm.get_know_marta_work() < 3
    def _r20613_condition(gsm):
        return gsm.get_know_marta_work() > 2
    def _r24697_condition(gsm):
        return not gsm.get_know_lady()
    def _r24698_condition(gsm):
        return gsm.get_know_lady()
    def _r24699_condition(gsm):
        return gsm.get_know_lady()
    def _r24700_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',13,'wis') \
               and gsm.check_char_prop_gt('protagonist',12,'int')
    def _r24701_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis')
    def _r66902_condition(gsm):
        return false  # GlobalGT("Morte_Mimir","GLOBAL",1)
    def _r25967_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',14,'int')
    def _r27316_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int')
    def _r65536_condition(gsm):
        return false  # GlobalGT("Morte_Mimir","GLOBAL",1)
    def _r27916_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',14,'int')
    def _r28038_condition(gsm):
        return gsm.get_malmaner() == 3 \
               and gsm.get_chaotic_malmaner_1() != 1
    def _r28039_condition(gsm):
        return gsm.get_malmaner() == 3 \
               and gsm.get_chaotic_malmaner_1() != 1
    def _r28040_condition(gsm):
        return gsm.get_malmaner() == 3 \
               and gsm.get_chaotic_malmaner_1() == 1
    def _r28044_condition(gsm):
        return gsm.get_malmaner() == 3 \
               and gsm.get_chaotic_malmaner_1() == 1
    def _r28045_condition(gsm):
        return gsm.get_malmaner() == 5 \
               and gsm.get_chaotic_malmaner_1() != 3
    def _r28046_condition(gsm):
        return gsm.get_malmaner() == 5 \
               and gsm.get_chaotic_malmaner_1() != 3
    def _r28047_condition(gsm):
        return gsm.get_malmaner() == 5 \
               and gsm.get_chaotic_malmaner_1() == 3
    def _r28048_condition(gsm):
        return gsm.get_malmaner() == 5 \
               and gsm.get_chaotic_malmaner_1() == 3
    def _r28744_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',14,'chr')
    def _r28745_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',15,'chr')
    def _r28967_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',14,'int')
    def _r28968_condition(gsm):
        return gsm.get_cw_sal_hint()
    def _r28971_condition(gsm):
        return gsm.get_cw_sal_hint()
    def _r28975_condition(gsm):
        return gsm.get_cw_sal_hint()
    def _r28980_condition(gsm):
        return gsm.get_know_ravel()
    def _r30822_condition(gsm):
        return gsm.check_char_prop_lt('protagonist',9,'int')
    def _r30823_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',8,'int')
    def _r30824_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',8,'int')
    def _r30825_condition(gsm):
        return gsm.get_able()
    def _r30826_condition(gsm):
        return not gsm.get_able()
    def _r65541_condition(gsm):
        return not gsm.get_morte_talent()
    def _r65542_condition(gsm):
        return gsm.get_morte_talent()
    def _r65543_condition(gsm):
        return gsm.get_morte_tattoo_xp()
    def _r65545_condition(gsm):
        return gsm.get_know_mimir() \
               and not gsm.get_morte_story()
    def _r65546_condition(gsm):
        return gsm.get_morte_story()
    def _r65547_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65548_condition(gsm):
        return gsm.get_know_blood_war()
    def _r65549_condition(gsm):
        return gsm.get_know_ravel() \
               and not gsm.get_meet_ravel()
    def _r35344_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35352_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35355_condition(gsm):
        return gsm.get_has_prybar()
    def _r35358_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35359_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35421_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35429_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35432_condition(gsm):
        return gsm.get_has_prybar()
    def _r35435_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35436_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35498_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35506_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35509_condition(gsm):
        return gsm.get_has_prybar()
    def _r35512_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35513_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35575_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35583_condition(gsm):
        return not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35586_condition(gsm):
        return gsm.get_has_prybar()
    def _r35589_condition(gsm):
        return not gsm.get_morte_skel_mort_quip()
    def _r35590_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r40069_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_hp() == 100
    def _r40070_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_hp() > 49
    def _r40071_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_hp() < 50
    def _r40077_condition(gsm):
        return gsm.get_nenny() == 2
    def _r40078_condition(gsm):
        return gsm.get_nenny() == 2
    def _r40079_condition(gsm):
        return gsm.get_nenny() == 1
    def _r40080_condition(gsm):
        return gsm.get_nenny() == 1
    def _r41842_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41843_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41845_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41846_condition(gsm):
        return gsm.get_has_bandages()
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
    def _r41921_condition(gsm):
        return gsm.get_story_reekwind_curse() \
               and not gsm.get_jumble_reekwind()
    def _r67864_condition(gsm):
        return gsm.get_jumble_reekwind()
    def _r43909_condition(gsm):
        return gsm.get_has_decant() \
               and gsm.get_seek_word()
    def _r43910_condition(gsm):
        return gsm.get_aelwyn() == 2 \
               and not gsm.get_dead_aelwyn()
    def _r43911_condition(gsm):
        return gsm.get_aelwyn() < 2
    def _r43917_condition(gsm):
        return gsm.get_has_decant() \
               and gsm.get_seek_word()
    def _r43918_condition(gsm):
        return gsm.get_aelwyn() == 2 \
               and not gsm.get_dead_aelwyn()
    def _r43919_condition(gsm):
        return gsm.get_aelwyn() < 2
    def _r50325_condition(gsm):
        return not gsm.get_know_lady()
    def _r50328_condition(gsm):
        return gsm.get_know_lady()
    def _r50329_condition(gsm):
        return gsm.get_know_lady()
    def _r52577_condition(gsm):
        return gsm.get_in_party_grace()
    def _r52578_condition(gsm):
        return not gsm.get_in_party_grace() \
               and gsm.get_in_party_annah()
    def _r52579_condition(gsm):
        return not gsm.get_in_party_grace() \
               and not gsm.get_in_party_annah()
    def _r53625_condition(gsm):
        return gsm.get_morte_story()
    def _r53627_condition(gsm):
        return not gsm.get_morte_story()
    def _r53662_condition(gsm):
        return gsm.get_in_party_annah()
    def _r53663_condition(gsm):
        return not gsm.get_in_party_annah()
    def _r54105_condition(gsm):
        return not gsm.get_in_party_dakkon()
    def _r53825_condition(gsm):
        return gsm.get_in_party_grace()
    def _r53826_condition(gsm):
        return gsm.get_in_party_annah() \
               and not gsm.get_in_party_grace()
    def _r53827_condition(gsm):
        return not gsm.get_in_party_grace() \
               and not gsm.get_in_party_annah()
    def _r53832_condition(gsm):
        return gsm.get_specialist() == 4
    def _r53833_condition(gsm):
        return gsm.get_specialist() == 5
    def _r53834_condition(gsm):
        return gsm.get_specialist() == 6
    def _r53835_condition(gsm):
        return gsm.get_specialist() != 4 \
               and gsm.get_specialist() != 5 \
               and gsm.get_specialist() != 6
    def _r53836_condition(gsm):
        return not gsm.get_where_fhjull()
    def _r53837_condition(gsm):
        return gsm.get_where_fhjull() \
               and gsm.get_has_cube()
    def _r53838_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and gsm.get_in_party_grace()
    def _r53839_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and gsm.get_in_party_annah()
    def _r53840_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and not gsm.get_in_party_annah()
    def _r53844_condition(gsm):
        return not gsm.get_where_fhjull()
    def _r53863_condition(gsm):
        return gsm.get_where_fhjull() \
               and gsm.get_has_cube()
    def _r53864_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and gsm.get_in_party_grace()
    def _r53865_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and gsm.get_in_party_annah()
    def _r53866_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and not gsm.get_in_party_annah()
    def _r53851_condition(gsm):
        return not gsm.get_where_fhjull()
    def _r53852_condition(gsm):
        return gsm.get_where_fhjull() \
               and gsm.get_has_cube()
    def _r53853_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and gsm.get_in_party_grace()
    def _r53854_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and gsm.get_in_party_annah()
    def _r53855_condition(gsm):
        return gsm.get_where_fhjull() \
               and not gsm.get_has_cube() \
               and not gsm.get_in_party_grace() \
               and not gsm.get_in_party_annah()
    def _r54165_condition(gsm):
        return not gsm.get_in_party_dakkon()
    def _r54166_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and gsm.check_char_prop_gt('protagonist',13,'wis')
    def _r54167_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and gsm.check_char_prop_lt('protagonist',14,'wis')
    def _r54172_condition(gsm):
        return not gsm.get_in_party_dakkon()
    def _r54173_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and gsm.check_char_prop_gt('protagonist',13,'wis')
    def _r54174_condition(gsm):
        return gsm.get_in_party_dakkon() \
               and gsm.check_char_prop_lt('protagonist',14,'wis')
    def _r54179_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54180_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54189_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54190_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54191_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54192_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54194_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54195_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54196_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54197_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54200_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54201_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54204_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54205_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54207_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54208_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54209_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54210_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54213_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54214_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54217_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54218_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54220_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'int') \
               and gsm.get_in_party_dakkon()
    def _r54221_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'int') \
               and not gsm.get_in_party_dakkon() \
               and gsm.get_meet_dakkon()
    def _r54223_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'int') \
               and not gsm.get_in_party_dakkon() \
               and not gsm.get_meet_dakkon()
    def _r54226_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54227_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54230_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r54231_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r54232_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54233_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54235_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r54236_condition(gsm):
        return not gsm.get_meet_deionarra()
    def _r54237_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54238_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54241_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54242_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54245_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54246_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54250_condition(gsm):
        return gsm.get_bd_morte_morale() > 5
    def _r54252_condition(gsm):
        return gsm.get_bd_morte_morale() < 6
    def _r54255_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54262_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54264_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'wis')
    def _r54266_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54267_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54269_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'wis')
    def _r54271_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54272_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54275_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and gsm.get_in_party_morte()
    def _r54276_condition(gsm):
        return gsm.get_morte_quip_regret_portal() > 1 \
               and not gsm.get_in_party_morte()
    def _r54278_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_morale_fortress_portal() == 0
    def _r54279_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54280_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54282_condition(gsm):
        return gsm.get_ravel_grace() > 0 \
               and gsm.get_ravel_morte() \
               and gsm.get_torment_fell() < 2 \
               and gsm.get_in_party_grace()
    def _r54283_condition(gsm):
        return gsm.get_ravel_grace() > 0 \
               and gsm.get_ravel_morte() \
               and gsm.get_torment_fell() == 2 \
               and gsm.get_in_party_grace()
    def _r54284_condition(gsm):
        return gsm.get_ravel_morte() \
               and gsm.get_torment_fell() < 2 \
               and not gsm.get_in_party_grace()
    def _r54285_condition(gsm):
        return gsm.get_ravel_morte() \
               and gsm.get_torment_fell() == 2 \
               and not gsm.get_in_party_grace()
    def _r54286_condition(gsm):
        return not gsm.get_ravel_morte()
    def _r54832_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54833_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54835_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54836_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r54838_condition(gsm):
        return gsm.get_in_party_morte()
    def _r54839_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r55849_condition(gsm):
        return not gsm.get_in_party_grace()
    def _r55850_condition(gsm):
        return not gsm.get_in_party_grace()
    def _r55875_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',15,'int')
    def _r61411_condition(gsm):
        return gsm.get_gold() > 499
    def _r61412_condition(gsm):
        return PartyGoldLT(500)
    def _r65554_condition(gsm):
        return gsm.get_morte_warning()
    def _r65558_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r65559_condition(gsm):
        return gsm.get_meet_pharod()
    def _r65566_condition(gsm):
        return gsm.get_morte_warning()
    def _r65565_condition(gsm):
        return not gsm.get_journal()
    def _r65569_condition(gsm):
        return not gsm.get_morte_tattoo_xp()
    def _r65570_condition(gsm):
        return gsm.get_morte_tattoo_xp()
    def _r65613_condition(gsm):
        return gsm.get_morte_stolen() > 2
    def _r65622_condition(gsm):
        return gsm.get_morte_stolen() > 2
    def _r65627_condition(gsm):
        return gsm.get_morte_stolen() > 2
    def _r65639_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r65640_condition(gsm):
        return gsm.get_meet_pharod() \
               and gsm.get_pharod_quest() == 1
    def _r65641_condition(gsm):
        return gsm.get_pharod_quest() > 1 \
               and not gsm.is_internal_location_visited('AR0401')
    def _r65642_condition(gsm):
        return gsm.is_internal_location_visited('AR0401') \
               and not gsm.is_internal_location_visited('AR0500')
    def _r65643_condition(gsm):
        return gsm.is_internal_location_visited('AR0500') \
               and not gsm.get_know_ravel()
    def _r65644_condition(gsm):
        return gsm.get_know_ravel() \
               and not gsm.get_know_ravel_key()
    def _r65645_condition(gsm):
        return gsm.get_know_ravel() \
               and gsm.get_know_ravel_key() \
               and not gsm.is_internal_location_visited('AR0610')
    def _r65646_condition(gsm):
        return gsm.is_internal_location_visited('AR0610') \
               and not gsm.is_internal_location_visited('AR0700')
    def _r65647_condition(gsm):
        return gsm.is_internal_location_visited('AR0700')
    def _r65666_condition(gsm):
        return not gsm.is_internal_location_visited('AR0601')
    def _r65674_condition(gsm):
        return gsm.get_know_ravel_key()
    def _r65693_condition(gsm):
        return not gsm.get_meet_pharod()
    def _r65700_condition(gsm):
        return gsm.get_grace_silver_mimir()
    def _r65708_condition(gsm):
        return gsm.get_grace_smell_mimir()
    def _r65709_condition(gsm):
        return gsm.get_morte_tattoo_xp()
    def _r65718_condition(gsm):
        return gsm.get_grace_smell_mimir() \
               and not gsm.is_internal_location_visited('AR1000')
    def _r65719_condition(gsm):
        return gsm.get_grace_smell_mimir() \
               and gsm.is_internal_location_visited('AR1000')
    def _r65738_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',13,'wis')
    def _r65739_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65740_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65743_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65744_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65747_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65748_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65750_condition(gsm):
        return not gsm.get_chaotic_morte_1()
    def _r65751_condition(gsm):
        return not gsm.get_lawful_morte_1()
    def _r65754_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65755_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65759_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65760_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65774_condition(gsm):
        return not gsm.get_memory_morte_pillar()
    def _r65775_condition(gsm):
        return gsm.get_memory_morte_pillar()
    def _r65778_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65779_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65782_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65783_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65786_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65787_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65790_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65791_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65794_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65795_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65798_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65799_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65801_condition(gsm):
        return not gsm.get_know_morte_pillar()
    def _r65802_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r65803_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r66347_condition(gsm):
        return not gsm.get_morte_talent()
    def _r66348_condition(gsm):
        return gsm.get_morte_talent()
    def _r66349_condition(gsm):
        return gsm.get_morte_tattoo_xp()
    def _r66351_condition(gsm):
        return gsm.get_know_mimir() \
               and not gsm.get_morte_story()
    def _r66352_condition(gsm):
        return gsm.get_morte_story()
    def _r66353_condition(gsm):
        return gsm.get_know_morte_pillar()
    def _r66354_condition(gsm):
        return gsm.get_know_blood_war()
    def _r66355_condition(gsm):
        return gsm.get_know_ravel() \
               and not gsm.get_meet_ravel()
    def _r68178_condition(gsm):
        return not gsm.get_trans_vanish() \
               and false  # GlobalGT("Fortress_Party_Roof","GLOBAL",1)
    def _r68189_condition(gsm):
        return gsm.get_trans_vanish() \
               and gsm.get_fortress_dakkon()
    def _r68190_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and gsm.get_fortress_annah()
    def _r68191_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and gsm.get_fortress_grace()
    def _r68192_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and gsm.get_fortress_ignus() \
               and not gsm.get_fortress_ignus_battle()
    def _r68193_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_ignus() \
               and gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_vhailor_battle()
    def _r68194_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_ignus() \
               and not gsm.get_fortress_vhailor() \
               and gsm.get_fortress_nordom()
    def _r68239_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_ignus() \
               and not gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_nordom()
    def _r68438_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_ignus() \
               and gsm.get_fortress_vhailor() \
               and gsm.get_fortress_vhailor_battle() \
               and not gsm.get_fortress_nordom()
    def _r68439_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and gsm.get_fortress_ignus() \
               and gsm.get_fortress_ignus_battle() \
               and not gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_nordom()
    def _r68446_condition(gsm):
        return gsm.get_trans_vanish() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_grace() \
               and gsm.get_fortress_ignus() \
               and gsm.get_fortress_ignus_battle() \
               and gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_vhailor_battle()
    def _r68503_condition(gsm):
        return not gsm.get_trans_vanish() \
               and gsm.get_fortress_party_roof()
    def _r68175_condition(gsm):
        return gsm.get_fortress_annah()
    def _r68179_condition(gsm):
        return gsm.get_fortress_dakkon()
    def _r68180_condition(gsm):
        return gsm.get_fortress_grace()
    def _r68181_condition(gsm):
        return gsm.get_fortress_nordom()
    def _r68182_condition(gsm):
        return gsm.get_fortress_ignus() \
               and not gsm.get_fortress_ignus_battle()
    def _r68183_condition(gsm):
        return gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_vhailor_battle()
    def _r68319_condition(gsm):
        return gsm.get_fortress_annah()
    def _r68320_condition(gsm):
        return gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68321_condition(gsm):
        return gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68322_condition(gsm):
        return gsm.get_fortress_nordom() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68323_condition(gsm):
        return gsm.get_fortress_ignus() \
               and not gsm.get_fortress_ignus_battle() \
               and not gsm.get_fortress_nordom() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68324_condition(gsm):
        return gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_vhailor_battle() \
               and not gsm.get_fortress_ignus() \
               and not gsm.get_fortress_nordom() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68325_condition(gsm):
        return not gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_ignus() \
               and not gsm.get_fortress_nordom() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah()
    def _r68490_condition(gsm):
        return gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_vhailor_battle() \
               and gsm.get_fortress_ignus() \
               and not gsm.get_fortress_nordom() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and gsm.get_fortress_ignus_battle()
    def _r68491_condition(gsm):
        return gsm.get_fortress_vhailor() \
               and gsm.get_fortress_vhailor_battle() \
               and not gsm.get_fortress_ignus() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_nordom()
    def _r68492_condition(gsm):
        return gsm.get_fortress_ignus() \
               and gsm.get_fortress_ignus_battle() \
               and not gsm.get_fortress_vhailor() \
               and not gsm.get_fortress_grace() \
               and not gsm.get_fortress_dakkon() \
               and not gsm.get_fortress_annah() \
               and not gsm.get_fortress_nordom()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DMORTE.DLG
# Starts:    dmorte_s
# ###


label dmorte_init:
    return


label dmorte_dispose:
    jump show_graphics_menu


# s0 # say986
label dmorte_s0:  # from - # IF ~~ THEN BEGIN 0 // from:
    SPEAKER 'Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба.'

    menu:
        'Кто ты?':
            # r0 # reply987
            jump dmorte_s1
        'Не обращать внимания на говорящий череп и изучить комнату.':
            # r1 # reply989
            jump show_graphics_menu
        'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.':
            # r2 # reply988
            jump show_graphics_menu
        'Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО.':
            # r3 # reply17833
            $ _r17833_action(gsm)
            jump show_graphics_menu


# s1 # say990
label dmorte_s1:  # from 0.0 29.0 31.0
    SPEAKER 'Я? — возмущается череп. — Может, *ты* начнешь, паршивец? Кто ты?'

    menu:
        'Я… не знаю.':
            # r4 # reply992
            jump dmorte_s2
        'Я не знаю… Не могу вспомнить.':
            # r5 # reply995
            jump dmorte_s3
        'Я первый спросил тебя, череп.':
            # r6 # reply993
            jump dmorte_s4
        'Не обращать внимания на череп и изучить комнату.':
            # r7 # reply991
            jump show_graphics_menu


# s2 # say997
label dmorte_s2:  # from 1.0 4.0 5.0
    SPEAKER 'Ты не знаешь, кто ты такой, а? *Мог* бы просто сказать: 'забей, пень'. Что ж, ладно… бестолочью притворяешься. Проверяешь, есть ли мне до этого дело. Я Морт. Приветствую, добро пожаловать и далее по списку.'

    menu:
        'Где я, Морт?':
            # r8 # reply998
            jump dmorte_s6
        'Ты знаешь, как мне отсюда выбраться?' if _r1006_condition(gsm):
            # r9 # reply1006
            jump dmorte_s21
        'Как я попал сюда?':
            # r10 # reply1080
            jump dmorte_s20
        'Не обращать внимания на Морта и изучить комнату.':
            # r11 # reply1087
            jump show_graphics_menu


# s3 # say999
label dmorte_s3:  # from 1.1 4.1 5.1
    SPEAKER 'Ты *не помнишь*? Нелегкая выдалась у тебя ночка. Надеюсь, никого не покалечил… Меня зовут Морт. Приветствую, добро пожаловать и далее по списку, — он делает паузу. — Слушай, я просто *обязан* спросить: ты случайно не один из тех чувствующих, которые занимаются членовредительством, или это кто-то другой подарил тебе эти шрамы?'

    menu:
        'Чувствующие?':
            # r12 # reply1000
            jump dmorte_s12
        'Шрамы?':
            # r13 # reply1001
            jump dmorte_s13
        'Не обращать внимания на Морта и изучить комнату.':
            # r14 # reply1002
            jump show_graphics_menu


# s4 # say1003
label dmorte_s4:  # from 1.2
    SPEAKER 'Ага, а я спросил тебя вторым. Как тебя звать?'

    menu:
        'Я… не знаю.':
            # r15 # reply1004
            jump dmorte_s2
        'Я не знаю… Не могу вспомнить.':
            # r16 # reply1005
            jump dmorte_s3
        'Ты первый, череп.':
            # r17 # reply1007
            jump dmorte_s5
        'Не обращать внимания на череп и изучить комнату.':
            # r18 # reply994
            jump show_graphics_menu


# s5 # say1008
label dmorte_s5:  # from 4.2
    SPEAKER 'Да ты натянут как струна. Ладно, ладно… Пускай *я* буде хорошим парнем… я, Морт. Морт Зубоскал. Итак, какому имени не посчастливилось иметь такого владельца как ты?'

    menu:
        'Я… не знаю.':
            # r19 # reply1009
            jump dmorte_s2
        'Я не знаю… Я ничего не могу вспомнить.':
            # r20 # reply1010
            jump dmorte_s3
        'Не обращать внимания на Морта и изучить комнату.':
            # r21 # reply1011
            jump show_graphics_menu


# s6 # say1012
label dmorte_s6:  # from 2.0 29.1 31.1
    SPEAKER 'Ты находишься в дыре под названием Морг… это такое большое черное здание с чарующей архитектурой беременной паучихи.'

    menu:
        'Морг? Я умер?':
            # r22 # reply1013
            jump dmorte_s7
        'Как мне выбраться отсюда?' if _r1015_condition(gsm):
            # r23 # reply1015
            jump dmorte_s21
        'Не обращать внимания на Морта и изучить комнату.':
            # r24 # reply1085
            jump show_graphics_menu


# s7 # say1014
label dmorte_s7:  # from 6.0 9.0
    SPEAKER 'Ну, насчет этого не знаю… Но Морг — самое подходящее место для покойников, которое только можно найти в этом городишке. Всякие пни тащат сюда мертвецов, хоронят их, сжигают, а если тебе *конкретно* повезло, тебя возвращают к жизни в качестве раба. Не лучшее место на планах. На твоем месте я бы разыскал ближайший выход и помахал этому месту ручкой.'

    menu:
        'Прошу прощения… Морг? Что это за место?':
            # r25 # reply1016
            jump dmorte_s10
        'Возвращают к жизни в качестве раба?':
            # r26 # reply1017
            jump dmorte_s9
        'Но почему я тогда могу ходить?':
            # r27 # reply1018
            jump dmorte_s11
        'Говоришь, люди тащат сюда мертвецов? Это так я сюда попал?' if _r1019_condition(gsm):
            # r28 # reply1019
            jump dmorte_s8
        'Не обращать внимания на Морта и изучить комнату.':
            # r29 # reply1020
            jump show_graphics_menu


# s8 # say1021
label dmorte_s8:  # from 7.3
    SPEAKER 'Пауза. Ага, наверно. Может, какой-нибудь бездельник спутал тебя со жмуриком и подкинул тебя сюда. То, как ты строишь из себя трупака, и *меня* бы одурачило… может, тебе лучше найти того пня, который притащил тебя сюда, и его расспросить, а? — Морт кивает. — Неплохо соображаешь, как для недавнего мертвеца… рад видеть, что твоя черепушка все еще на месте.'

    menu:
        'Зачем кому-то понадобилось тащить меня сюда?':
            # r30 # reply1029
            jump dmorte_s14
        'У меня есть другие вопросы…':
            # r31 # reply1030
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r32 # reply1137
            jump show_graphics_menu


# s9 # say1022
label dmorte_s9:  # from 7.1
    SPEAKER 'Да, это очаровательная жизнь… если не учитывать, что тебя без конца натирают формальдегида и пришиваю тебе отвалившиеся конечности, это можно считать раем.'

    menu:
        'Разве я должен здесь быть? Я мертв?':
            # r33 # reply1113
            jump dmorte_s7
        'Как я выгляжу? Насколько плохи мои шрамы?':
            # r34 # reply1114
            jump dmorte_s13
        'Неважно. У меня есть другие вопросы…':
            # r35 # reply1115
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r36 # reply1116
            jump show_graphics_menu


# s10 # say1023
label dmorte_s10:  # from 7.0
    SPEAKER 'Э-э-э… как я уже сказал, в Морге. С тобой все в порядке, шеф? Ты что-то неважно выглядишь.'

    menu:
        'Разве я должен здесь быть? Я мертв?':
            # r37 # reply1109
            jump dmorte_s16
        '*Как* я выгляжу? Насколько плохи мои шрамы?':
            # r38 # reply1110
            jump dmorte_s13
        'Неважно. У меня есть другие вопросы…':
            # r39 # reply1111
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r40 # reply1112
            jump show_graphics_menu


# s11 # say1024
label dmorte_s11:  # from 7.2
    SPEAKER 'Шеф, зрелище того, как ты сползаешь с плиты, было жуть как странно. Ты выглядишь так, будто тебе уже пора просить счет за выпивку, если ты понял, о чем я.'

    menu:
        'Может, я умер? И поэтому я здесь?':
            # r41 # reply1133
            jump dmorte_s16
        'Насколько плохо я выгляжу?':
            # r42 # reply1134
            jump dmorte_s13
        'Неважно. У меня есть другие вопросы…':
            # r43 # reply1135
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r44 # reply1136
            jump show_graphics_menu


# s12 # say1025
label dmorte_s12:  # from 3.0 33.0
    SPEAKER 'Не знаешь, кто такие чувствующие? О, да ты, похоже, рассчитываешь услышать что-то особенное! Ну, они — кучка рубак, которые хотят перепробовать все, что могут предоставить им планы, включая… ладно, пока о них забудем. Что насчет этих шрамов?'

    menu:
        'Шрамы?':
            # r45 # reply1027
            jump dmorte_s13
        'Неважно. У меня есть другие вопросы…':
            # r46 # reply1028
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r47 # reply1143
            jump show_graphics_menu


# s13 # say1026
label dmorte_s13:  # from 3.1 9.1 10.1 11.1 12.0 33.1
    SPEAKER 'Это как будто какой-нибудь рубака решил разрисовать тебя ножом. Ты весь в шрамах… даже на спине, не считая… — делает паузу. — Скажем так: пень, у тебя на спине целая галерея наколок. Тут что-то написано…'

    menu:
        'Что там написано?':
            # r48 # reply1088
            $ _r1088_action(gsm)
            jump dmorte_s34
        'Неважно. У меня есть другие вопросы…':
            # r49 # reply1089
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r50 # reply1090
            jump show_graphics_menu


# s14 # say1031
label dmorte_s14:  # from 8.0 29.3
    SPEAKER 'Некоторые люди в этом городишке собирают жмуриков с улиц и продают их здесь за звенелки. Не очень-то хороший способ сводить концы с концами, но если ты живешь отстойнике всех планов, то выбор у тебя не так уж велик.'

    menu:
        'Звенелки? Какие еще 'звенелки'?':
            # r51 # reply1032
            jump dmorte_s15
        'Неважно. У меня есть другие вопросы…':
            # r52 # reply1033
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r53 # reply1142
            jump show_graphics_menu


# s15 # say1034
label dmorte_s15:  # from 14.0
    SPEAKER 'Э-э… деньги. Звенелки — это деньги. Разве там, откуда ты, их нету?'

    menu:
        'Я не могу вспомнить, откуда я.':
            # r54 # reply1035
            jump dmorte_s19
        'Забудь об этом. У меня есть несколько вопросов…':
            # r55 # reply1036
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r56 # reply1138
            jump show_graphics_menu


# s16 # say1037
label dmorte_s16:  # from 10.0 11.0
    SPEAKER 'Он умолкает. Не знаю. Ты *болтаешь* со мной… Здешние ходячие мертвецы обычно так не делают. Как мне кажется, трухлявые допустили ошибку и ты не был мертвым. Ты случайно не помнишь, чтобы подписывал какой-то контракт? То есть, обычно они заполняют кучу документов, прежде чем вытащить кого-нибудь из книги мертвых.'

    menu:
        'Э… контракт? Нет, не помню, чтобы подписывал контракт. Я… почти ничего не помню.':
            # r57 # reply1038
            jump dmorte_s32
        'Книга мертвых?':
            # r58 # reply1039
            jump dmorte_s17
        'Документов?':
            # r59 # reply1040
            jump dmorte_s18
        'Забудь об этом. У меня есть несколько вопросов…':
            # r60 # reply1041
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r61 # reply1150
            jump show_graphics_menu


# s17 # say1042
label dmorte_s17:  # from 16.1 18.0
    SPEAKER 'Ну да, 'книга мертвых'. Знаешь про такую? А может и не знаешь. Слушай, забудь про 'книгу мертвых'. Ты живой, значит, тебя в ней нет.'

    menu:
        'Что это за документ… контракт… о котором ты говорил?':
            # r62 # reply1151
            jump dmorte_s18
        'У меня есть другие вопросы…':
            # r63 # reply1152
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r64 # reply1153
            jump show_graphics_menu


# s18 # say1043
label dmorte_s18:  # from 16.2 17.0
    SPEAKER 'Ага, от этого так и хочется ломать кирпичи? Сигил вращается благодаря законам, и нельзя даже облегчиться, не подписав пару контрактов.'

    menu:
        'Что ты там говорил насчет книги мертвых?':
            # r65 # reply1154
            jump dmorte_s17
        'Неважно. У меня есть другие вопросы…':
            # r66 # reply1155
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r67 # reply1156
            jump show_graphics_menu


# s19 # say1044
label dmorte_s19:  # from 15.0
    SPEAKER 'Во имя богов и их матерей, ты что, *вообще* не в курсе? Ты хоть представляешь, откуда ты? Наверно, у народа бестолочей пропал их царь. Ты что, показал какому-нибудь богу кукиш, или всегда был таким недалеким?'

    menu:
        'Я не знаю… Я ничего не могу вспомнить.':
            # r68 # reply1139
            jump dmorte_s32
        'Неважно. У меня есть другие вопросы…':
            # r69 # reply1140
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r70 # reply1141
            jump show_graphics_menu


# s20 # say1045
label dmorte_s20:  # from 2.2 31.2
    SPEAKER 'Шеф, я без зеленого понятия. А вот ты точно набил руку, изображая из себя мертвеца. Пока ты здесь лежал, я не заметил, чтобы ты моргал или дышал… ничего. Ты что, напился? Что произошло?'

    menu:
        'Я не знаю… Я ничего не могу вспомнить.':
            # r71 # reply1097
            jump dmorte_s32
        'Неважно. У меня есть другие вопросы…':
            # r72 # reply1098
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r73 # reply1099
            jump show_graphics_menu


# s21 # say1046
label dmorte_s21:  # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    SPEAKER 'Что ж, вот *это* хороший вопрос. Для тебя, шеф, часы снова начали тикать. Тебя найдут тленные и попытаются исправить 'проблему' с твоим воскрешением, засунув тебя в крематорий. Если и дальше будешь изображать труп, ты так или иначе попадешь в крематорий. Значит, выбор, как у модрона? Что делать?'

    menu:
        'Тленные?':
            # r74 # reply1047
            jump dmorte_s30
        'Я… сбегу.':
            # r75 # reply1048
            jump dmorte_s22
        'Я все объясню этим… тленным.':
            # r76 # reply1049
            jump dmorte_s25
        'Что мне делать?' if _r1050_condition(gsm):
            # r77 # reply1050
            jump dmorte_s23
        'Почему бы тебе не сказать? Похоже, у тебя уже заготовлен ответ.' if _r1051_condition(gsm):
            # r78 # reply1051
            jump dmorte_s23
        'Не обращать внимания на Морта и изучить комнату.':
            # r79 # reply1081
            jump show_graphics_menu


# s22 # say1052
label dmorte_s22:  # from 21.1
    SPEAKER 'О, *отличная* идея, шеф! Почему *я* до этого не додумался? И как же ты сбежишь? Даю подсказку: нужно небольшое сотрудничество.'

    menu:
        'Ты меня заинтересовал. Продолжай.':
            # r80 # reply1053
            jump dmorte_s23
        'Забудь об этом. У меня есть несколько вопросов…':
            # r81 # reply1054
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r82 # reply1145
            jump show_graphics_menu


# s23 # say1055
label dmorte_s23:  # from 21.3 21.4 22.0 26.0
    SPEAKER 'Как мне кажется, тебе явно нужно отсюда выбираться. Что до меня, то я могу позволить себе подождать. Единственное, то угрожает *мне*, — это смерть от скуки. Мы могли бы протянуть друг другу руку помощи.'

    menu:
        'Продолжай…':
            # r83 # reply1058
            jump dmorte_s24
        'У тебя нет рук. Как *ты* можешь мне помочь?':
            # r84 # reply1059
            jump dmorte_s24
        'Забудь об этом. У меня есть несколько вопросов…':
            # r85 # reply1060
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r86 # reply1146
            jump show_graphics_menu


# s24 # say1061
label dmorte_s24:  # from 23.0 23.1
    SPEAKER 'Может, ты так и не считаешь, но я мог бы помочь выбраться тебе, а ты — мне. У меня нет рук, так что я в слегка затруднительном положении. У тебя недостача в черепушке, а вот у меня много опыта и знаний, как вывести тебя из этой хибары. Будем сотрудничать — оба выберемся *наружу*. По рукам, пень?'

    menu:
        'По рукам.':
            # r87 # reply1057
            jump dmorte_s28
        'По рукам. У меня есть дурное предчувствие, что нам судьбой предрешено путешествовать вместе, Морт.':
            # r88 # reply1062
            jump dmorte_s27
        'Забудь об этом. У меня есть несколько вопросов…':
            # r89 # reply1063
            jump dmorte_s31
        'Нет уж, спасибо. От твоей трескотни голова раскалывается. Я сам найду выход.':
            # r90 # reply1147
            jump show_graphics_menu


# s25 # say1064
label dmorte_s25:  # from 21.2
    SPEAKER 'О, *отличная* мысль, шеф! Почему *я* до этого не додумался? — его тон становится насмешливым. — 'Кстати, сэр Тленный, я тут умер и очнулся на плите в вашем маленьком Морге. Вы мне не поможете?' Они тебе 'помогут', куда уж там. Поглядят на тебя пару секунд, потом позовут стражу и закинут тебя в персональную топку.'

    menu:
        'Звучит, как какие-то крайности… Зачем им это делать?':
            # r91 # reply1065
            jump dmorte_s26
        'Что ж, стража у них должна быть чертовски крутой, чтобы взять меня.':
            # r92 # reply1066
            jump dmorte_s26
        'Забудь об этом. У меня есть несколько вопросов…':
            # r93 # reply1067
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r94 # reply1149
            jump show_graphics_menu


# s26 # say1068
label dmorte_s26:  # from 25.0 25.1
    SPEAKER 'Просто поверь мне… Неважно, насколько крутым ты себя считаешь и что ты им скажешь, — они тебя схватят. Ты не настолько силен, чтобы пробиться через стены гробницы или пережить жар стихийного плана огня. Пробуждение из мертвых — не лучшая затея, пока вокруг столько стражи. Не будь идиотом.'

    menu:
        'И каков твой план?..':
            # r95 # reply1069
            jump dmorte_s23
        'Неважно. У меня есть другие вопросы…':
            # r96 # reply1070
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r97 # reply1148
            jump show_graphics_menu


# s27 # say1071
label dmorte_s27:  # from 24.1
    SPEAKER 'Судьба может присесть на алебарду — мне-то какое дело. Слушай, шеф. Обрати внимание на то, как часто слова 'плохой' и 'судьба' встречаются в одном и том же предложении, и тебе откроется одна из тайн жизни. Лучше всего сказать судьбе завернуться в остролистник: *всегда* есть другой вариант, который судьба не показывает.'

    menu:
        'Буду иметь в виду.':
            # r98 # reply1073
            jump dmorte_s28
        'Хватит болтовни. Так какой у тебя план?':
            # r99 # reply1074
            jump dmorte_s28


# s28 # say1072
label dmorte_s28:  # from 24.0 27.0 27.1
    SPEAKER 'Ну хорошо… а теперь вперед, сваливаем отсюда. Двери выхода заперты, так что нам понадобится ключ. Есть шанс, что он у одного из ходячих трупов в этой комнате.'

    menu:
        'Ходячих трупов?':
            # r100 # reply1079
            $ _r1079_action(gsm)
            jump dmorte_s240


# s29 # say996
label dmorte_s29:  # from -
    SPEAKER 'О, значит, *теперь* тебе снова захотелось поговорить с Мортом, а?'

    menu:
        'Кто ты?':
            # r101 # reply1075
            jump dmorte_s1
        'Где я?':
            # r102 # reply1076
            jump dmorte_s6
        'Ты знаешь, как мне отсюда выбраться?' if _r1077_condition(gsm):
            # r103 # reply1077
            jump dmorte_s21
        'Как я попал сюда?':
            # r104 # reply1078
            jump dmorte_s14
        'Не обращать внимания на Морта и изучить комнату.':
            # r105 # reply1086
            jump show_graphics_menu


# s30 # say1082
label dmorte_s30:  # from 21.0
    SPEAKER 'Трухлявые? Они смотрят за этим местом. Ты их не пропустишь… Они питают особую тягу к черному цвету и окоченевшему выражению лица. Они зовут себя 'тленными' и притворяются фракцией, но они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Держись от них подальше.'

    menu:
        'И как мне выбраться отсюда?' if _r1083_condition(gsm):
            # r106 # reply1083
            jump dmorte_s21
        'Неважно. У меня есть другие вопросы…':
            # r107 # reply1084
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r108 # reply1144
            jump show_graphics_menu


# s31 # say1091
label dmorte_s31:  # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    SPEAKER 'Да? И *какие* же вопросы?'

    menu:
        'Кто ты?':
            # r109 # reply1092
            jump dmorte_s1
        'Где я?':
            # r110 # reply1093
            jump dmorte_s6
        'Как я попал сюда?':
            # r111 # reply1094
            jump dmorte_s20
        'Как мне выбраться отсюда?' if _r1095_condition(gsm):
            # r112 # reply1095
            jump dmorte_s21
        'Не обращать внимания на Морта и изучить комнату.':
            # r113 # reply1096
            jump show_graphics_menu


# s32 # say1100
label dmorte_s32:  # from 16.0 19.0 20.0
    SPEAKER 'Ты что *ничего* не помнишь? Брось, да это же куча танаррьего дерьма. Ты серьезно?'

    menu:
        'Да.':
            # r114 # reply1101
            jump dmorte_s33
        'Неважно. У меня есть другие вопросы…':
            # r115 # reply1102
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r116 # reply1103
            jump show_graphics_menu


# s33 # say1104
label dmorte_s33:  # from 32.0
    SPEAKER 'Во имя всех богов и их матерей… Э-э, шеф, скорее всего, твои воспоминания просто погрузились глубоко в твою черепушку. Если повезет, они скоро всплывут, поверь мне. Должно быть, нелегкая у тебя ночка выдалась. Надеюсь, ты никого не покалечил и не повздорил со стражей… Кстати говоря, ты случайно не один из тех чувствующих, которые занимаются членовредительством, или это кто-то другой подарил тебе эти шрамы?'

    menu:
        'Чувствующих?':
            # r117 # reply1105
            jump dmorte_s12
        'Шрамы?':
            # r118 # reply1106
            jump dmorte_s13
        'У меня есть другие вопросы…':
            # r119 # reply1107
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r120 # reply1108
            jump show_graphics_menu


# s34 # say1117
label dmorte_s34:  # from 13.0
    SPEAKER 'Похоже на указания… — Морт прочищает горло. — Посмотрим… начинается с…  ЗАМЕТКА: Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо сосредоточиться. Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых.  Не потеряй этот клочок кожи ИЛИ дневник, иначе мы снова окажемся в Стиксе, понятно? И поверь мне, что бы ты не делал, НЕ ГОВОРИ никому, КТО ты, ЧТО случилось с тобой или ОТКУДА ты пришел, иначе ты окажешься на полпути в крематорий.'

    menu:
        'Неудивительно, что моя спина болит. Ты знаешь кого-нибудь с именем Фарод?':
            # r121 # reply1118
            jump dmorte_s36
        'Ты не видел при мне дневника, когда я там лежал?':
            # r122 # reply1119
            jump dmorte_s35
        'Ты знаешь, как мне отсюда выбраться?' if _r1120_condition(gsm):
            # r123 # reply1120
            jump dmorte_s21
        'У меня есть другие вопросы…':
            # r124 # reply1121
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r125 # reply1122
            jump show_graphics_menu


# s35 # say1123
label dmorte_s35:  # from 34.1 36.0
    SPEAKER 'Нет… тебя обобрали догола, когда доставили сюда. Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле.'

    menu:
        'Ты знаешь кого-нибудь по имени Фарод?':
            # r126 # reply1124
            jump dmorte_s36
        'Как мне выбраться отсюда?' if _r1125_condition(gsm):
            # r127 # reply1125
            jump dmorte_s21
        'Неважно. У меня есть другие вопросы…':
            # r128 # reply1126
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r129 # reply1127
            jump show_graphics_menu


# s36 # say1128
label dmorte_s36:  # from 34.0 35.0
    SPEAKER 'Нет, не знаю. С другой стороны, я вообще мало кого знаю. В общем, кто-нибудь да знает, как добраться до этого Фарода… то есть, как только мы выберемся отсюда.'

    menu:
        'При мне не было дневника, когда я там лежал?':
            # r130 # reply1129
            jump dmorte_s35
        'Как мне выбраться отсюда?' if _r1130_condition(gsm):
            # r131 # reply1130
            jump dmorte_s21
        'Неважно. У меня есть другие вопросы…':
            # r132 # reply1131
            jump dmorte_s31
        'Не обращать внимания на Морта и изучить комнату.':
            # r133 # reply1132
            jump show_graphics_menu


# s37 # say1818
label dmorte_s37:  # from - # Check EXTENDS ~DHARLOTN~ : 2Check EXTENDS ~DHARLOTN~ : 3Check EXTENDS ~DHARLOTN~ : 9Check EXTENDS ~DHARLOTN~ : 11
    SPEAKER 'Вот это удача! Кажется, то, что мы ищем, мы в твоем скромном убежище, красавица.'

    menu:
        'На самом деле, я потерял дневник.':
            # r134 # reply1820
            jump show_graphics_menu
        'Может, ты поможешь мне найти то, что я потерял, красавица.':
            # r135 # reply1819
            jump show_graphics_menu
        'Я ничего не терял, но у меня есть несколько вопросов…':
            # r136 # reply1821
            jump show_graphics_menu
        'Я должен идти. Прощай.':
            # r137 # reply1822
            jump show_graphics_menu


# s38 # say1844
label dmorte_s38:  # from - # Check EXTENDS ~DHARLOTN~ : 7Check EXTENDS ~DHARLOTN~ : 7
    SPEAKER 'Шеф, ты не можешь одолжить мне немного звенелок… э-э… у меня этого так давно не было.'

    menu:
        'Э… полагаю, это никому *не повредит*…':
            # r138 # reply1845
            $ _r1845_action(gsm)
            jump show_graphics_menu
        'Я даже не хочу спрашивать, как ты намереваешься это совершить.':
            # r139 # reply1846
            $ _r1846_action(gsm)
            jump show_graphics_menu
        'Послушай, Морт… вообще-то, нам нужно идти. Прощай, красавица.':
            # r140 # reply1847
            $ _r1847_action(gsm)
            jump show_graphics_menu


# s39 # say2000
label dmorte_s39:  # from - # Check EXTENDS ~DANNAH~ : 5
    SPEAKER 'Она имеет в виду деньги.'

    menu:
        'О.':
            # r141 # reply2001
            jump show_graphics_menu


# s40 # say2048
label dmorte_s40:  # from - # Check EXTENDS ~DANNAH~ : 13
    SPEAKER 'Это же очевидно, что ни ты, ни твой хвост не продаются. Ты бы все равно на них не прожила.'

    menu:
        'Э…':
            # r142 # reply2049
            jump show_graphics_menu


# s41 # say2067
label dmorte_s41:  # from - # Check EXTENDS ~DANNAH~ : 17Check EXTENDS ~DANNAH~ : 17
    SPEAKER 'Она — тифлинг, шеф. В них есть немного демонической крови, из-за которой они становятся немного подозрительными и бдительными… симпатичный хвостик, кстати. Жаль только, что он приделан к такому уродливому телу.'

    menu:
        'Ого, а…':
            # r143 # reply2068
            jump show_graphics_menu
        'Эй, неплохо сказано, Морт.':
            # r144 # reply2069
            jump show_graphics_menu


# s42 # say2074
label dmorte_s42:  # from - # Check EXTENDS ~DANNAH~ : 18Check EXTENDS ~DANNAH~ : 14
    SPEAKER 'Что же ты не *пытаешься* расколоть мою челюсть? Только и дело, что слышу пустую болтовню от всяких отбросов Улья! Давай, попробуй! Я тебе ноги откушу!'

    menu:
        'Хватит!':
            # r145 # reply2076
            jump show_graphics_menu
        'Хватит! Мы уходим.':
            # r146 # reply2075
            jump show_graphics_menu


# s43 # say2079
label dmorte_s43:  # from - # Check EXTENDS ~DANNAH~ : 21
    SPEAKER 'Мимир — это говорящая энциклопедия. Это я, шеф.'

    menu:
        'Понятно.':
            # r147 # reply2080
            $ _r2080_action(gsm)
            jump show_graphics_menu


# s44 # say2348
label dmorte_s44:  # from - # Check EXTENDS ~DGITH~ : 7
    SPEAKER 'Бросай это дело, шеф. Говорить с гитом — все равно что из остролистника варенье делать. Пойдем.'

    menu:
        'Это гит?' if _r9029_condition(gsm):
            # r148 # reply9029
            $ _r9029_action(gsm)
            jump dmorte_s135
        'Это гит?' if _r9030_condition(gsm):
            # r149 # reply9030
            jump dmorte_s135
        'Я пока еще не готов уйти. Сначала я задам ему пару вопросов…':
            # r150 # reply9031
            jump show_graphics_menu
        'Оставить гита в покое.':
            # r151 # reply9032
            jump show_graphics_menu


# s45 # say2354
label dmorte_s45:  # from - # Check EXTENDS ~DGITH~ : 7
    SPEAKER 'Не стоит утруждать себя пустыми разговорами со старым Незнание-это-Счастье. Пошли отсюда, шеф.'

    menu:
        'Я пока еще не готов уйти. Сначала я задам ему пару вопросов…':
            # r152 # reply9033
            jump show_graphics_menu
        'Оставить гита в покое.':
            # r153 # reply9034
            jump show_graphics_menu


# s46 # say2601
label dmorte_s46:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r154 # reply2603
            $ _r2603_action(gsm)
            jump dmorte_s47
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r155 # reply2602
            $ _r2602_action(gsm)
            jump dmorte_s47


# s47 # say2604
label dmorte_s47:  # from 46.0 46.1 121.1 121.2
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r156 # reply2605
            $ _r2605_action(gsm)
            jump dmorte_s49
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r157 # reply2606
            jump dmorte_s48
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r158 # reply2607
            jump dmorte_s48
        'Как знаешь, Морт. Идем.':
            # r159 # reply2608
            jump show_graphics_menu


# s48 # say2609
label dmorte_s48:  # from 47.1 47.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r160 # reply2610
            jump show_graphics_menu


# s49 # say2611
label dmorte_s49:  # from 47.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r161 # reply2612
            jump show_graphics_menu


# s50 # say2709
label dmorte_s50:  # from - # Check EXTENDS ~DTEST~ : 7
    SPEAKER 'Что? Что такое? Это девчонка досаждает тебе?'

    jump show_graphics_menu

# s51 # say2711
label dmorte_s51:  # from - # Check EXTENDS ~DTEST~ : 0
    SPEAKER 'Верю. Наверное, будет лучше, если он вернется в основное меню и избавит меня от этого.'

    jump show_graphics_menu

# s52 # say2782
label dmorte_s52:  # from -
    SPEAKER 'Ох, силы небесные! Чертов дабус.'

    menu:
        'Что не так?':
            # r162 # reply2783
            jump dmorte_s53


# s53 # say2788
label dmorte_s53:  # from 52.0
    SPEAKER 'Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.'

    menu:
        'Что за 'дабус'?':
            # r163 # reply2791
            jump dmorte_s54


# s54 # say2789
label dmorte_s54:  # from 53.0 # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.'

    menu:
        ''Леди Боли'? Кто это?' if _r6952_condition(gsm):
            # r164 # reply6952
            $ _r6952_action(gsm)
            jump dmorte_s113
        'Что ты можешь рассказать о Леди Боли?' if _r6953_condition(gsm):
            # r165 # reply6953
            jump dmorte_s113
        'Понятно.' if _r6954_condition(gsm):
            # r166 # reply6954
            jump show_graphics_menu


# s55 # say3473
label dmorte_s55:  # from - # Check EXTENDS ~DEIVENE~ : 4
    SPEAKER 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r167 # reply3474
            $ _r3474_action(gsm)
            jump dmorte_s56
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r168 # reply3475
            jump show_graphics_menu
        'Оставить ее в покое.':
            # r169 # reply3476
            jump show_graphics_menu


# s56 # say3477
label dmorte_s56:  # from 55.0 # Check EXTENDS ~DEIVENE~ : 4
    SPEAKER 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r170 # reply3478
            jump show_graphics_menu
        'Оставить ее в покое.':
            # r171 # reply3479
            jump show_graphics_menu


# s57 # say3480
label dmorte_s57:  # from -
    SPEAKER 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r172 # reply3483
            $ _r3483_action(gsm)
            jump dmorte_s58
        'Уйти.':
            # r173 # reply3484
            jump show_graphics_menu


# s58 # say3481
label dmorte_s58:  # from 57.0
    SPEAKER 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Уйти.':
            # r174 # reply3482
            jump show_graphics_menu


# s59 # say3487
label dmorte_s59:  # from - # Check EXTENDS ~DEIVENE~ : 11Check EXTENDS ~DEIVENE~ : 11Check EXTENDS ~DEIVENE~ : 10
    SPEAKER 'Похоже, у тебя новая подруга, шеф. Может, вас оставить наедине на часок, или?..'

    menu:
        'Замолкни, Морт.':
            # r175 # reply3488
            jump show_graphics_menu
        'Продолжать строить из себя зомби.':
            # r176 # reply3489
            jump show_graphics_menu
        'Оттолкнуть женщину.':
            # r177 # reply3490
            jump show_graphics_menu


# s60 # say3492
label dmorte_s60:  # from - # Check EXTENDS ~DEIVENE~ : 14
    SPEAKER 'Это второй случай в моей жизни, когда я счастлив, что у меня нет носа.'

    jump show_graphics_menu

# s61 # say3870
label dmorte_s61:  # from -
    SPEAKER 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этим парнем. Проблемы?':
            # r178 # reply3871
            $ _r3871_action(gsm)
            jump dmorte_s62
        'Ничего. Идем.':
            # r179 # reply3872
            jump show_graphics_menu


# s62 # say3873
label dmorte_s62:  # from 61.0
    SPEAKER 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.':
            # r180 # reply3874
            $ _r3874_action(gsm)
            jump dmorte_s64
        'Согласен. Идем.':
            # r181 # reply3875
            jump show_graphics_menu


# s63 # say3876
label dmorte_s63:  # from -
    SPEAKER 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этим парнем. Проблемы?':
            # r182 # reply3877
            $ _r3877_action(gsm)
            jump dmorte_s64
        'Ничего. Идем.':
            # r183 # reply3878
            jump show_graphics_menu


# s64 # say3879
label dmorte_s64:  # from 62.0 63.0 # Check EXTENDS ~DDUST~ : 3
    SPEAKER 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r184 # reply3880
            jump show_graphics_menu
        'А, ты прав. Забудь об этом. Идем.':
            # r185 # reply3881
            jump show_graphics_menu


# s65 # say3964
label dmorte_s65:  # from -
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r186 # reply3965
            $ _r3965_action(gsm)
            jump dmorte_s66
        'О… Я не хотел ему навредить.':
            # r187 # reply3966
            $ _r3966_action(gsm)
            jump dmorte_s66
        'Ну, тогда ладно. Может, в другой раз.':
            # r188 # reply3967
            jump dmorte_s66


# s66 # say3968
label dmorte_s66:  # from 65.0 65.1 65.2 # Check EXTENDS ~DSKELW~ : 4Check EXTENDS ~DSKELW~ : 5Check EXTENDS ~DSKELW~ : 6
    SPEAKER 'Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r3969_condition(gsm):
            # r189 # reply3969
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r3970_condition(gsm):
            # r190 # reply3970
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r3971_condition(gsm):
            # r191 # reply3971
            jump show_graphics_menu
        'Неважно, может быть, в другой раз.' if _r3972_condition(gsm):
            # r192 # reply3972
            $ _r3972_action(gsm)
            jump dmorte_s67
        'Неважно, может быть, в другой раз.' if _r3973_condition(gsm):
            # r193 # reply3973
            jump show_graphics_menu


# s67 # say3974
label dmorte_s67:  # from 66.3
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r194 # reply3975
            jump dmorte_s68
        'Не думаю, что он имеет что-то против.':
            # r195 # reply3976
            jump dmorte_s69
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r196 # reply3977
            jump dmorte_s70


# s68 # say3978
label dmorte_s68:  # from 67.0
    SPEAKER 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r197 # reply3979
            jump dmorte_s69
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r198 # reply3980
            jump dmorte_s70


# s69 # say3981
label dmorte_s69:  # from 67.1 68.0
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r199 # reply3982
            jump dmorte_s70
        'Ладно. Идем.':
            # r200 # reply3983
            jump show_graphics_menu


# s70 # say3984
label dmorte_s70:  # from 67.2 68.1 69.0 127.0
    SPEAKER 'Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r201 # reply3985
            jump dmorte_s71
        'Идем.':
            # r202 # reply3986
            jump show_graphics_menu


# s71 # say3987
label dmorte_s71:  # from 70.0
    SPEAKER 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r203 # reply3988
            $ _r3988_action(gsm)
            jump dmorte_s72
        'Идем.':
            # r204 # reply3989
            jump show_graphics_menu


# s72 # say3990
label dmorte_s72:  # from 71.0
    SPEAKER 'Помощь тебе в побеге из препараторской только что теперь добавлена в мой растущий список сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r205 # reply3991
            jump show_graphics_menu


# s73 # say4018
label dmorte_s73:  # from -
    SPEAKER 'Морт скалит зубы.'

    menu:
        'Ну, так да или?..':
            # r206 # reply4019
            jump dmorte_s74


# s74 # say4020
label dmorte_s74:  # from 73.0 # Check EXTENDS ~DGIANTSK~ : 2Check EXTENDS ~DGIANTSK~ : 3
    SPEAKER 'Ой… извини. Морт подлетает к голове скелета, смотрит на нее, затем спускается вниз, попутно изучая доспехи и клинок. О да. Да, думаю, такое подойдет.'

    menu:
        'Хорошо… секунду, я вытащу из него голову.' if _r4023_condition(gsm):
            # r207 # reply4023
            jump show_graphics_menu
        'Хорошо… секунду, я вытащу из него голову.' if _r4024_condition(gsm):
            # r208 # reply4024
            jump show_graphics_menu
        'Ну не знаю. Оно такое здоровое, вряд ли ты сможешь с таким управиться.':
            # r209 # reply4025
            jump dmorte_s75
        'Я думаю, лучше оставить его в покое.':
            # r210 # reply4026
            jump dmorte_s75


# s75 # say4021
label dmorte_s75:  # from 74.2 74.3 # Check EXTENDS ~DGIANTSK~ : 2Check EXTENDS ~DGIANTSK~ : 3
    SPEAKER 'А какого тогда Баатора ты СПРАШИВАЕШЬ меня? Практикуешься в навыках жестокости? — Морт негодующе раскачивается. — И это после всего, что я сделал для тебя…'

    menu:
        'Хорошо… секунду, я вытащу из него голову.' if _r4027_condition(gsm):
            # r211 # reply4027
            jump show_graphics_menu
        'Хорошо… секунду, я вытащу из него голову.' if _r4028_condition(gsm):
            # r212 # reply4028
            jump show_graphics_menu
        'Я думаю о твоей безопасности, Морт. Я опасаюсь, что присоединив твою голову к этому, причиню какой-нибудь вред тебе.':
            # r213 # reply4029
            $ _r4029_action(gsm)
            jump dmorte_s76
        'Все же я думаю, что лучше оставить его в покое. Идем отсюда.':
            # r214 # reply4030
            jump show_graphics_menu


# s76 # say4022
label dmorte_s76:  # from 75.2 # Check EXTENDS ~DGIANTSK~ : 2Check EXTENDS ~DGIANTSK~ : 3
    SPEAKER 'Морт уставился на тебя. Мы что теперь, ЖЕНАТЫ? Что это за бред — 'я не хочу причинить тебе вред'? — Морт выразительно на тебя смотрит. — Если ты ПО-НАСТОЯЩЕМУ обо мне заботишься, то найди способ закрепить мою голову на теле гигантского скелета.'

    menu:
        'Хорошо… секунду, я вытащу из него голову.' if _r4031_condition(gsm):
            # r215 # reply4031
            jump show_graphics_menu
        'Хорошо… секунду, я вытащу из него голову.' if _r4032_condition(gsm):
            # r216 # reply4032
            jump show_graphics_menu
        'Извини, я не так сильно о тебе забочусь. Идем.':
            # r217 # reply4033
            jump show_graphics_menu
        'Я говорю, оставь его в покое. А теперь идем отсюда.' if _r4034_condition(gsm):
            # r218 # reply4034
            jump show_graphics_menu


# s77 # say4134
label dmorte_s77:  # from -
    SPEAKER 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этим парнем. Проблемы?':
            # r219 # reply4144
            $ _r4144_action(gsm)
            jump dmorte_s78
        'Ничего. Идем.':
            # r220 # reply4145
            $ _r4145_action(gsm)
            jump show_graphics_menu


# s78 # say4135
label dmorte_s78:  # from 77.0
    SPEAKER 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.':
            # r221 # reply4142
            $ _r4142_action(gsm)
            jump dmorte_s80
        'Согласен. Идем.':
            # r222 # reply4143
            $ _r4143_action(gsm)
            jump show_graphics_menu


# s79 # say4136
label dmorte_s79:  # from -
    SPEAKER 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этим парнем. Проблемы?':
            # r223 # reply4140
            $ _r4140_action(gsm)
            jump dmorte_s80
        'Ничего. Идем.':
            # r224 # reply4141
            jump show_graphics_menu


# s80 # say4137
label dmorte_s80:  # from 78.0 79.0 # Check EXTENDS ~DDUSTGU~ : 12
    SPEAKER 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r225 # reply4138
            jump show_graphics_menu
        'А, ты прав. Забудь об этом. Идем.':
            # r226 # reply4139
            jump show_graphics_menu


# s81 # say4338
label dmorte_s81:  # from -
    SPEAKER 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этой дамочкой. Проблемы?':
            # r227 # reply4339
            $ _r4339_action(gsm)
            jump dmorte_s82
        'Ничего. Идем.':
            # r228 # reply4340
            jump show_graphics_menu


# s82 # say4341
label dmorte_s82:  # from 81.0
    SPEAKER 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но *все еще* хочу поговорить с этой дамочкой.':
            # r229 # reply4342
            $ _r4342_action(gsm)
            jump dmorte_s84
        'Согласен. Идем.':
            # r230 # reply4343
            jump show_graphics_menu


# s83 # say4344
label dmorte_s83:  # from -
    SPEAKER 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этой дамочкой. Проблемы?':
            # r231 # reply4345
            $ _r4345_action(gsm)
            jump dmorte_s84
        'Ничего. Идем.':
            # r232 # reply4346
            jump show_graphics_menu


# s84 # say4347
label dmorte_s84:  # from 82.0 83.0 # Check EXTENDS ~DDUSTFEM~ : 3
    SPEAKER 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r233 # reply4348
            jump show_graphics_menu
        'А, ты прав. Забудь об этом. Идем.':
            # r234 # reply4349
            jump show_graphics_menu


# s85 # say4675
label dmorte_s85:  # from -
    SPEAKER 'Морт шепотом вклинивается в разговор. О силы… этот пень — *анархист*. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r235 # reply4676
            $ _r4676_action(gsm)
            jump dmorte_s86


# s86 # say4677
label dmorte_s86:  # from 85.0 # Check EXTENDS ~DVAXIS~ : 11Check EXTENDS ~DVAXIS~ : 11Check EXTENDS ~DVAXIS~ : 10Check EXTENDS ~DVAXIS~ : 10Check EXTENDS ~DVAXIS~ : 10
    SPEAKER 'Анархисты… это такая фракция… Похоже, Морт еле сдерживает поток оскорблений, но затем замечает, что зомби смотрит на вас обоих, внимательно слушая. …они, э, хотят *освободить* всех от оков правительства. Свергнуть старый порядок, чтобы установить новый — без никаких порядков.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r236 # reply4678
            $ _r4678_action(gsm)
            jump show_graphics_menu
        'Ложь: Похоже на благородное стремление. Любой анархист, посвятивший себя столь высокой цели, *определенно* является мне другом.':
            # r237 # reply4679
            $ _r4679_action(gsm)
            jump show_graphics_menu
        'Это все довольно… противоречиво.':
            # r238 # reply4680
            jump show_graphics_menu
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r239 # reply4681
            jump show_graphics_menu
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r240 # reply4682
            $ _r4682_action(gsm)
            jump show_graphics_menu


# s87 # say4683
label dmorte_s87:  # from -
    SPEAKER 'Шепотом: Он интересуется, не спятил ли ты, не слетел с катушек, не выжил из ума… и я, кстати, тоже. А теперь выкинь это 'Я очнулся из мертвых' из своего лексикона, хорошо?! Ты ставишь меня в глупое положение.'

    menu:
        'Я смущаю ТЕБЯ?':
            # r241 # reply4684
            jump dmorte_s88
        'Я просто хотел узнать, о чем этот… труп… говорит. Ясно?':
            # r242 # reply4685
            jump dmorte_s88
        'Не моя вина, что никто в этом сумасшедшем… 'чокнутом'… месте не говорит нормально… или хотя бы не ВЫГЛЯДИТ так.' if _r4686_condition(gsm):
            # r243 # reply4686
            jump dmorte_s88
        'Слушай, я НЕ хочу лгать этому парню. Лучше говорить с ним напрямую.':
            # r244 # reply4687
            $ _r4687_action(gsm)
            jump dmorte_s88


# s88 # say4688
label dmorte_s88:  # from 87.0 87.1 87.2 87.3 # Check EXTENDS ~DVAXIS~ : 15Check EXTENDS ~DVAXIS~ : 15Check EXTENDS ~DVAXIS~ : 15
    SPEAKER 'Морт вздыхает. Слушай, шеф… ты должен понимать свою ситуацию. Ты не сможешь разгуливать, рассказывая всем одну только ПРАВДУ. Мы не должны делать себя целями ловца кроликов, ясно?'

    menu:
        'Ловец кроликов? Цели? Что это… а, неважно.':
            # r245 # reply4689
            jump show_graphics_menu
        'Замолкни, Морт.':
            # r246 # reply4690
            jump show_graphics_menu
        'Я… я запомню это. Мне нужно поговорить с этим 'зомби'.':
            # r247 # reply4691
            jump show_graphics_menu


# s89 # say4692
label dmorte_s89:  # from -
    SPEAKER 'Погоди… — говорит Морт удивленно. — Да этот пень — *анархист*. Ха. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r248 # reply4693
            $ _r4693_action(gsm)
            jump dmorte_s90


# s90 # say4694
label dmorte_s90:  # from 89.0 # Check EXTENDS ~DVAXIS~ : 71Check EXTENDS ~DVAXIS~ : 71Check EXTENDS ~DVAXIS~ : 71Check EXTENDS ~DVAXIS~ : 71Check EXTENDS ~DVAXIS~ : 71
    SPEAKER 'Анархисты — это фракция, которая тратит свое время на слежку за представителями власти и на поиски способов низвергнуть все, от чего несет порядком или контролем, — Морт фыркает. — Анархисты считают, что каждый пень на планах должен быть свободен и счастлив искать свою собственную 'правду', как только правительство будет сожжено дотла. Они хотят основать новый порядок, в котором не будет никакого порядка.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r249 # reply4695
            $ _r4695_action(gsm)
            jump show_graphics_menu
        'Это все довольно… противоречиво.':
            # r250 # reply4696
            jump show_graphics_menu
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r251 # reply4697
            jump show_graphics_menu
        'Как хочешь.':
            # r252 # reply4698
            jump show_graphics_menu
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r253 # reply4699
            $ _r4699_action(gsm)
            jump show_graphics_menu


# s91 # say4700
label dmorte_s91:  # from - # Check EXTENDS ~DVAXIS~ : 43
    SPEAKER 'Он говорит, что этот Фарод продал очень много жмуриков… трупов… тленным. Ну, сборщики занимаются этим — находят тела мертвых и продают их тленным. Похоже, этот Фарод запродал так много жмуриков, что трухлявые начали подозревать, что он записывает жителей Улья в книгу мертвых раньше положенного срока… ну, ты понял, просто убивает их.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r254 # reply4701
            jump show_graphics_menu
        'Да этот Фарод просто святой. Возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r255 # reply4702
            jump show_graphics_menu


# s92 # say4703
label dmorte_s92:  # from - # Check EXTENDS ~DVAXIS~ : 43
    SPEAKER 'Он хочет знать, не обокрал ли кто тебя. Наверно, интересуется, что случилось.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r256 # reply4704
            jump show_graphics_menu
        'Да, я жду не дождусь поймать этого вора. Слушай, возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r257 # reply4705
            jump show_graphics_menu


# s93 # say4706
label dmorte_s93:  # from - # Check EXTENDS ~DVAXIS~ : 61
    SPEAKER 'Ага, уж кто тупые, так это *они*. Это точно.'

    jump show_graphics_menu

# s94 # say4708
label dmorte_s94:  # from - # Check EXTENDS ~DVAXIS~ : 66Check EXTENDS ~DVAXIS~ : 66
    SPEAKER 'Не могу поверить, что ты делаешь это. Ты, что, СОВСЕМ спятил?'

    menu:
        'Бред, как по мне…' if _r64535_condition(gsm):
            # r258 # reply64535
            $ _r64535_action(gsm)
            jump show_graphics_menu
        'Бред, как по мне…' if _r64534_condition(gsm):
            # r259 # reply64534
            $ _r64534_action(gsm)
            jump show_graphics_menu


# s95 # say4710
label dmorte_s95:  # from - # Check EXTENDS ~DVAXIS~ : 67Check EXTENDS ~DVAXIS~ : 67
    SPEAKER 'А нельзя ли ему зашить рот потуже?'

    menu:
        'Замоокни, Моот…':
            # r260 # reply4711
            jump show_graphics_menu
        'Ммм-ХММФ!':
            # r261 # reply4712
            jump show_graphics_menu


# s96 # say5029
label dmorte_s96:  # from -
    SPEAKER 'Эй! Эй! Что ты делаешь?'

    menu:
        'Я *хотел* поговорить с этим парнем. Проблемы?':
            # r262 # reply5030
            $ _r5030_action(gsm)
            jump dmorte_s97
        'Ничего. Идем.':
            # r263 # reply5031
            jump show_graphics_menu


# s97 # say5032
label dmorte_s97:  # from 96.0
    SPEAKER 'Если ты собираешься трясти черепушкой с трухлявыми, то, пожалуйста, без меня. Я с ними не в лучших отношениях… и тебе не стоит с ними родниться. Они скорее спалят тебя или заживо зароют, чем будут слушать. Не валяй дурака, давай выбираться отсюда.'

    menu:
        'Спасибо за совет, но я *все еще* хочу поговорить с этим парнем.':
            # r264 # reply5033
            $ _r5033_action(gsm)
            jump dmorte_s99
        'Согласен. Идем.':
            # r265 # reply5034
            jump show_graphics_menu


# s98 # say5035
label dmorte_s98:  # from -
    SPEAKER 'Эй! Ты оглох, что ли? Ты что творишь?'

    menu:
        'Слушай, я хочу поговорить с этим парнем. Проблемы?':
            # r266 # reply5036
            $ _r5036_action(gsm)
            jump dmorte_s99
        'Ничего. Идем.':
            # r267 # reply5037
            jump show_graphics_menu


# s99 # say5038
label dmorte_s99:  # from 97.0 98.0 # Check EXTENDS ~DSOEGO~ : 3
    SPEAKER 'Тогда *не слушай* меня больше — тебя похоронят.'

    menu:
        'Да-да, а ты сможешь поплакаться на панихиде. А пока — умолкни.':
            # r268 # reply5039
            jump show_graphics_menu
        'А, ты прав. Забудь об этом. Идем.':
            # r269 # reply5040
            jump show_graphics_menu


# s100 # say5041
label dmorte_s100:  # from - # Check EXTENDS ~DSOEGO~ : 21
    SPEAKER 'Что ты *наделал*? Если ты хочешь убить его, сделай это!'

    menu:
        'Я это и *хотел*! Я свернул ему шею! Он не должен теперь шевелиться!':
            # r270 # reply5042
            jump show_graphics_menu


# s101 # say5043
label dmorte_s101:  # from - # Check EXTENDS ~DSOEGO~ : 11
    SPEAKER 'По крайней мере он *ходить* умеет, — Морт фыркает. — Радость о полета пропадает в тот момент, когда мне хочется кого-то пнуть.'

    jump show_graphics_menu

# s102 # say5049
label dmorte_s102:  # from -
    SPEAKER 'Эй, шеф! Ты что творишь?!'

    menu:
        'Я хотел поговорить с этим писарем. Он может кое-что знать о том, как я попал сюда.':
            # r271 # reply5050
            jump dmorte_s103


# s103 # say5052
label dmorte_s103:  # from 102.0 # Check EXTENDS ~DDHALL~ : 0
    SPEAKER 'Послушай, трясти черепушкой с трухлявыми — это ПОСЛЕДНЯЯ мысль, которая должна…'

    jump show_graphics_menu

# s104 # say5053
label dmorte_s104:  # from - # Check EXTENDS ~DDHALL~ : 1
    SPEAKER 'И мы *тем более* не должны болтать с больными трухляками. Давай, пошли отсюда. Чем быстрее мы свалим отсюда, тем лучш…'

    jump show_graphics_menu

# s105 # say6071
label dmorte_s105:  # from -
    SPEAKER 'Шеф, ты как, вернулся? Ты вроде как завис.'

    menu:
        'Нет, я в порядке. Ты знаешь, что это был за дух?':
            # r272 # reply6075
            $ _r6075_action(gsm)
            jump dmorte_s106
        'Я в порядке. Идем.':
            # r273 # reply6076
            jump show_graphics_menu


# s106 # say6072
label dmorte_s106:  # from 105.0
    SPEAKER 'Э? Дух?'

    menu:
        'Ну, призрак, с котором я разговаривал. Призрак женщины.':
            # r274 # reply6077
            jump dmorte_s107


# s107 # say6073
label dmorte_s107:  # from 106.0
    SPEAKER 'Ты тряс своей черепушкой с какой-то женщиной? Где? — Морт недоуменно оглядывается. — А как она выглядела?'

    menu:
        'Она была прямо над могилой. Разве ты ее не видел?':
            # r275 # reply6078
            jump dmorte_s108


# s108 # say6074
label dmorte_s108:  # from 107.0
    SPEAKER 'Э… нет, просто ты ненадолго завис и стоял как вкопанный. Я уж стал бояться, что ты снова свихнешься и набросишься на меня.'

    menu:
        'Нет, я в порядке… кажется. Идем.':
            # r276 # reply6079
            jump show_graphics_menu


# s109 # say6324
label dmorte_s109:  # from - # Check EXTENDS ~DPOST~ : 3Check EXTENDS ~DPOST~ : 4Check EXTENDS ~DPOST~ : 5Check EXTENDS ~DPOST~ : 5Check EXTENDS ~DPOST~ : 5Check EXTENDS ~DPOST~ : 2
    SPEAKER 'Это напоминает мне одну мою работенку. Кажется, он смущен. Ну, только… без махания руками.'

    menu:
        'Осмотреть труп.' if _r6325_condition(gsm):
            # r277 # reply6325
            jump show_graphics_menu
        'Осмотреть труп.' if _r6326_condition(gsm):
            # r278 # reply6326
            jump show_graphics_menu
        'Хм-м. Интересно, это сработает с другими записками?..' if _r6327_condition(gsm):
            # r279 # reply6327
            jump show_graphics_menu
        'Хм-м. Интересно, это сработает с другими записками?..' if _r6328_condition(gsm):
            # r280 # reply6328
            jump show_graphics_menu
        'Осмотреть другие записки.' if _r6329_condition(gsm):
            # r281 # reply6329
            jump show_graphics_menu
        'Использовать на трупе свою способность История костей.' if _r6330_condition(gsm):
            # r282 # reply6330
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r283 # reply6331
            jump show_graphics_menu


# s110 # say6609
label dmorte_s110:  # from - # Check EXTENDS ~DS42~ : 1Check EXTENDS ~DS42~ : 1Check EXTENDS ~DS42~ : 1
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r284 # reply6658
            $ _r6658_action(gsm)
            jump show_graphics_menu
        'О… Я не хотел ему навредить.':
            # r285 # reply6659
            $ _r6659_action(gsm)
            jump show_graphics_menu
        'Ну, тогда ладно. Может, в другой раз.':
            # r286 # reply6660
            jump show_graphics_menu


# s111 # say6610
label dmorte_s111:  # from - # Check EXTENDS ~DS42~ : 1Check EXTENDS ~DS42~ : 1Check EXTENDS ~DS42~ : 1
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r287 # reply6661
            jump show_graphics_menu
        'Не думаю, что он имеет что-то против.':
            # r288 # reply6662
            jump show_graphics_menu
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r289 # reply6663
            jump show_graphics_menu


# s112 # say6611
label dmorte_s112:  # from - # Check EXTENDS ~DS42~ : 4Check EXTENDS ~DS42~ : 9Check EXTENDS ~DS42~ : 10
    SPEAKER 'Может, уже хватит? У него руки сейчас отвалятся.'

    menu:
        'Скрестить свои руки.' if _r6664_condition(gsm):
            # r290 # reply6664
            jump show_graphics_menu
        'Подстроиться под движения скелета… посмотреть, что получится.' if _r6665_condition(gsm):
            # r291 # reply6665
            jump show_graphics_menu
        'Э…':
            # r292 # reply6666
            jump show_graphics_menu
        'Оставить скелета в покое.':
            # r293 # reply6667
            jump show_graphics_menu


# s113 # say6771
label dmorte_s113:  # from 54.0 54.1 # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.'

    menu:
        'Понятно.':
            # r294 # reply2784
            jump show_graphics_menu


# s114 # say6784
label dmorte_s114:  # from - # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.'

    menu:
        'Понятно.':
            # r295 # reply6955
            jump show_graphics_menu


# s115 # say6786
label dmorte_s115:  # from - # Check EXTENDS ~DANNAH~ : 43
    SPEAKER 'Ха, да *есть* у них имена. Я уверен в этом.'

    jump show_graphics_menu

# s116 # say6790
label dmorte_s116:  # from - # Check EXTENDS ~DANNAH~ : 40Check EXTENDS ~DDABUS~ : 6
    SPEAKER 'Вот *ты* и скажи, бесовка.'

    menu:
        'Хватит, Морт. Анна, ты можешь задать ему другие вопросы?':
            # r296 # reply6956
            jump show_graphics_menu
        'Забудь. Уходим отсюда.':
            # r297 # reply6957
            $ _r6957_action(gsm)
            jump show_graphics_menu


# s117 # say6794
label dmorte_s117:  # from - # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.'

    menu:
        'Наверное, так и стоит поступить…':
            # r298 # reply6958
            jump show_graphics_menu


# s118 # say6797
label dmorte_s118:  # from - # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.'

    menu:
        'Наверное, так и стоит поступить…':
            # r299 # reply6959
            jump show_graphics_menu


# s119 # say6800
label dmorte_s119:  # from - # Check EXTENDS ~DDABUS~ : 3
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.'

    menu:
        'Наверное, так и стоит поступить…':
            # r300 # reply6960
            jump show_graphics_menu


# s120 # say7040
label dmorte_s120:  # from -
    SPEAKER 'Отвернувшись, ты замечаешь, что Морт уставился на тебя. А? А?'

    menu:
        'Что такое?':
            # r301 # reply7055
            jump dmorte_s121


# s121 # say7041
label dmorte_s121:  # from 120.0
    SPEAKER 'Ты *видел*, как эта мертвая красотка меня осматривала? — зубы Морта стучат в предвкушении. — Она ищет какого-то счастливчика-рубаку, который согреет ее уютненький гробик.'

    menu:
        '*Пожалуйста*, только не начинай.' if _r7056_condition(gsm):
            # r302 # reply7056
            $ _r7056_action(gsm)
            jump dmorte_s122
        'О чем это ты *толкуешь*?' if _r7057_condition(gsm):
            # r303 # reply7057
            $ _r7057_action(gsm)
            jump dmorte_s47
        'Что, ты имеешь в виду этот бессмысленный пустой могильный взгляд?' if _r7058_condition(gsm):
            # r304 # reply7058
            $ _r7058_action(gsm)
            jump dmorte_s47


# s122 # say7042
label dmorte_s122:  # from 121.0
    SPEAKER 'Морт игнорирует тебя, становясь задумчивым. Вообще-то я не возражаю против внимания к себе… просто мне больше нравится, когда за мной видят нечто большее, чем просто череп, понимаешь? У меня есть чувства, которые доминируют над моими животными инстинктами. Я хочу уважения, а не просто ночного летания по мавзолею.'

    menu:
        'Продолжай в том же духе, и *я* отправлю тебя куда-нибудь полетать.':
            # r305 # reply7059
            jump dmorte_s123
        'Морт, *ты* — череп. Для всех ты только череп. Смирись с этим.':
            # r306 # reply7060
            jump dmorte_s124
        'Понимаю. А теперь идем отсюда, хорошо?':
            # r307 # reply7061
            jump show_graphics_menu


# s123 # say7043
label dmorte_s123:  # from 122.0
    SPEAKER 'Ого, шеф… Морт немного отлетает, чтобы ты не смог до него дотянуться. Женщинам больше нравятся любовники, а не бойцы.'

    menu:
        'Ты, наверное, *последний* из всех, от кого я хотел бы слушать советы по части романтики.':
            # r308 # reply7062
            jump dmorte_s126
        'Как знаешь, Морт. Идем.':
            # r309 # reply7063
            jump show_graphics_menu


# s124 # say7044
label dmorte_s124:  # from 122.1
    SPEAKER 'Да, я просто череп, но у меня большое сердце.'

    menu:
        'Вообще-то, у тебя его *тоже* нет.':
            # r310 # reply7064
            jump dmorte_s125
        'Как знаешь, Морт. Идем.':
            # r311 # reply7065
            jump show_graphics_menu


# s125 # say7045
label dmorte_s125:  # from 124.0
    SPEAKER 'Тебе наплевать на мою жизнь, мои мечты и чаяния?! Отлично, ну и пусть. У меня нет сердца, зато у меня есть *душа*.'

    menu:
        'Ну, вообще-то, я могу поспорить на что угодно, что… а, забудь. Идем.':
            # r312 # reply7066
            jump show_graphics_menu
        'Как знаешь, Морт. Идем.':
            # r313 # reply7067
            jump show_graphics_menu


# s126 # say7046
label dmorte_s126:  # from 123.0
    SPEAKER 'Будь у тебя хоть половина того здравого смысла, с которым ты умер, ты бы понял, — голос Морта становится жутко самодовольным. — Что касается летописей любви, отмечу, что все они были написаны мной.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r314 # reply7068
            jump show_graphics_menu


# s127 # say7071
label dmorte_s127:  # from -
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Этот слишком чистый… на нем почти не осталось мяса. К тому же, я никогда не смогу очистить кости от этой побелки.'

    menu:
        'Не знаю, если он — 'слишком чистый'… то тебе стоит изучить значение слова чистота.':
            # r315 # reply7076
            jump dmorte_s70
        'Ладно. Идем.':
            # r316 # reply7077
            jump show_graphics_menu


# s128 # say7130
label dmorte_s128:  # from - # Check EXTENDS ~DHIVEF1~ : 8
    SPEAKER 'Точно!'

    jump show_graphics_menu

# s129 # say7187
label dmorte_s129:  # from - # Check EXTENDS ~DHARLOTN~ : 8
    SPEAKER 'Мимир — это говорящая энциклопедия. Это я, шеф.'

    menu:
        'Понятно. Ладно, не парься насчет этого, Морт. Если поглядеть на нее, то я скорее спасаю тебя от второй смерти.':
            # r317 # reply7483
            $ _r7483_action(gsm)
            jump show_graphics_menu
        'Просто уходим отсюда. Прощай, красавица.':
            # r318 # reply7484
            jump show_graphics_menu


# s130 # say7188
label dmorte_s130:  # from -
    SPEAKER 'Морт, словно загипнотизированный, очарованно слушает поток оскорблений, изливающийся изо рта проститутки. После этой словесной лавины Морт несколько мгновений молчит, затем поворачивается к тебе. Ого, шеф. Есть несколько новых ругательств в моем старом добром арсенале. Он поворачивается назад к переводящей дыхание проститутке. И я тебя тоже люблю. [MRT387]'

    menu:
        'Уйти.':
            # r319 # reply7485
            $ _r7485_action(gsm)
            jump show_graphics_menu


# s131 # say7775
label dmorte_s131:  # from -
    SPEAKER 'Ого, шеф. Морт встревает прежде, чем ты заговариваешь с существом. Лучше захлопнись. Тебе не следует трясти своей черепушкой с нечистью на улице. Пойдем.'

    menu:
        'Я хочу задать ему несколько вопросов…':
            # r320 # reply7776
            jump dmorte_s132
        'Оставить существо в покое.':
            # r321 # reply7777
            jump show_graphics_menu


# s132 # say7778
label dmorte_s132:  # from 131.0 # Check EXTENDS ~ABISHAB~ : 11
    SPEAKER 'Нет, не хочешь. Морт украдкой смотрит на существо, затем поворачивается назад, понижая голос до шепота. Они очень обидчивы. Давай уйдем отсюда.'

    menu:
        'Я все же рискну.':
            # r322 # reply7779
            jump show_graphics_menu
        'Оставить существо в покое.':
            # r323 # reply7780
            jump show_graphics_menu


# s133 # say7805
label dmorte_s133:  # from -
    SPEAKER 'Видя, что ты собираешься заговорить с существом, Морт шумно вздыхает.'

    menu:
        'Да?':
            # r324 # reply7806
            jump dmorte_s134


# s134 # say7807
label dmorte_s134:  # from 133.0 # Check EXTENDS ~ABISHAB~ : 11
    SPEAKER 'А, нет, ничего… жизнь — лучший учитель, знаешь ли, — он кивает на существо. — Давай, продолжай.'

    menu:
        'Я так и сделаю.':
            # r325 # reply7808
            jump show_graphics_menu
        'Ладно, неважно. Идем.':
            # r326 # reply7809
            jump show_graphics_menu


# s135 # say2349
label dmorte_s135:  # from 44.0 44.1 # Check EXTENDS ~DGITH~ : 7
    SPEAKER 'Ага, 'гит'… Морт оглядывается на гита, который все еще смотрит на тебя. Поговорим об этом в другой раз.'

    menu:
        'Я пока еще не готов уйти. Сначала я задам ему пару вопросов…':
            # r327 # reply9035
            jump show_graphics_menu
        'Оставить гита в покое.':
            # r328 # reply9036
            jump show_graphics_menu


# s136 # say9860
label dmorte_s136:  # from -
    SPEAKER 'Брось, шеф… ты убьешь бедолагу, прежде чем тебе удастся его разбудить!'

    menu:
        'Ты прав, Морт. Идем.':
            # r329 # reply9882
            jump show_graphics_menu


# s137 # say11946
label dmorte_s137:  # from -
    SPEAKER 'Морт подлетает. О чем речь, шеф?'

    menu:
        'Видишь эти зубы?':
            # r330 # reply11974
            jump dmorte_s138
        'Ничего, неважно.':
            # r331 # reply11975
            jump show_graphics_menu


# s138 # say11947
label dmorte_s138:  # from 137.0
    SPEAKER 'Морт глядит на твою ладонь. Ух-х-х. Кажется, его покоробило. Вот уж мелкие уродцы, а?'

    jump show_graphics_menu

# s139 # say11948
label dmorte_s139:  # from -
    SPEAKER 'Задвинься, — Морт вздрагивает. — А ты бы хотел, чтобы они оказались в *тебе*?'

    menu:
        'Ладно тебе, Морт, кажется, ты им нравишься. Посмотри, как они на тебя смотрят.':
            # r332 # reply11976
            jump dmorte_s140
        'Схватить Морта, сунуть зубы ему в рот.':
            # r333 # reply11977
            $ _r11977_action(gsm)
            jump dmorte_s141
        'Тогда неважно.':
            # r334 # reply11978
            jump show_graphics_menu


# s140 # say11949
label dmorte_s140:  # from 139.0
    SPEAKER 'Лучше этим мелким засранцам не приближаться ко мне, иначе я… — Морт умолкает. — Знаешь, я понятия не имею, чем угрожать зубам.'

    menu:
        'Осмотреть зубы.':
            # r335 # reply11979
            jump show_graphics_menu
        'Схватить Морта, сунуть зубы ему в рот.':
            # r336 # reply11980
            $ _r11980_action(gsm)
            jump dmorte_s141
        'Тогда неважно.':
            # r337 # reply11981
            jump show_graphics_menu


# s141 # say11950
label dmorte_s141:  # from 139.1 140.1
    SPEAKER 'Схватка длится не долго. Ты ловишь Морта в захват — единственное движение, которое ты можешь сделать — и, пока он, кусаясь, пытается освободиться, зубы спрыгивают с твоей руки и налетают на его челюсть. Морт воет, а зубы Ингресс быстро выкорчевывают его старые зубы и прыгают в открывшиеся полости.'

    menu:
        'Ну вот, Морт. Ведь было не так плохо?':
            # r338 # reply11982
            $ _r11982_action(gsm)
            jump dmorte_s143


# s142 # say11951
label dmorte_s142:  # from 149.0
    SPEAKER 'Морт продолжает выть. Зубы начинают обустраиваться и пускать корни с жутким хрустом.'

    menu:
        'Морт? С тобой все в порядке?':
            # r339 # reply11983
            $ _r11983_action(gsm)
            jump dmorte_s143


# s143 # say11952
label dmorte_s143:  # from 141.0 142.0
    SPEAKER 'Кажется, Морт тебя не слышит… Он продолжает выть, затем вдруг начинает клацать зубами. Ему удается трижды сильно клацнуть, прежде чем верхние зубы сцепляются с нижними и не дают ему открыть рот.'

    menu:
        'Ух ты.':
            # r340 # reply11984
            jump dmorte_s144


# s144 # say11953
label dmorte_s144:  # from 143.0
    SPEAKER 'Морт что-то тебе бормочет, его глаза широко раскрыты.'

    menu:
        'Значит… они тебе нравятся?' if _r11985_condition(gsm):
            # r341 # reply11985
            jump dmorte_s145
        'Морт, ты в порядке?' if _r11986_condition(gsm):
            # r342 # reply11986
            jump dmorte_s150


# s145 # say11954
label dmorte_s145:  # from 144.0
    SPEAKER 'Внезапно зубы расцепляются, и Морт делает глубокий вздох. Я *убью* тебя за это, — говорит он. — Это было нечестно.'

    menu:
        'Как они тебе?':
            # r343 # reply11987
            jump dmorte_s146


# s146 # say11955
label dmorte_s146:  # from 145.0 150.0
    SPEAKER 'Морт пробует двигать челюстью. Странно. Но неплохо, — внезапно зубы превращаются в клыки. — О-о-о! Они меняются! Они превращаются в нормальные зубы, потом в клики, потом обратно… Думаю, они мне понравятся.'

    menu:
        'Извини, Морт. Я не желал тебе зла.' if _r11988_condition(gsm):
            # r344 # reply11988
            jump dmorte_s147
        'Вот видишь? Разве я не был прав?' if _r11989_condition(gsm):
            # r345 # reply11989
            jump dmorte_s147


# s147 # say11956
label dmorte_s147:  # from 146.0 146.1
    SPEAKER 'О, я все еще зол на тебя, — отвечает Морт. Он ухмыляется, его зубы снова превращаются в клыки. Погоди мне.'

    menu:
        'Э… месть еще никому не помогала, Морт… Э, пошли.' if _r11990_condition(gsm):
            # r346 # reply11990
            jump show_graphics_menu
        'Поблагодаришь меня позже. Вот увидишь.' if _r11991_condition(gsm):
            # r347 # reply11991
            jump show_graphics_menu


# s148 # say11957
label dmorte_s148:  # from -
    SPEAKER 'Что там? Морт подлетает ближе и смотрит тебе на ладонь. Эй… Кажется, они что-то замышляют, так ведь?'

    menu:
        'Точно замышляют, так…':
            # r348 # reply11992
            jump dmorte_s149


# s149 # say11958
label dmorte_s149:  # from 148.0
    SPEAKER 'То, что происходит дальше, трудно описать… и больно смотреть. Не успеваешь ты закрыть ладонь, как зубы спрыгивают с твоей руки и налетают на его челюсть. Морт воет, а зубы Ингресс быстро выкорчевывают его старые зубы и прыгают в открывшиеся полости.'

    menu:
        'Морт!':
            # r349 # reply11993
            jump dmorte_s142


# s150 # say11959
label dmorte_s150:  # from 144.1
    SPEAKER 'Внезапно зубы расцепляются, и Морт делает глубокий вздох. Я *убью* тебя за это! Ты все спланировал! Я знаю!'

    menu:
        'Слушай, я этого не хотел… Я даже предупредил тебя. Э… как они тебе?':
            # r350 # reply11994
            jump dmorte_s146


# s151 # say12389
label dmorte_s151:  # from - # Check EXTENDS ~DTEGARIN~ : 12
    SPEAKER 'Морт шепчет тебе: Босс, не нравится мне это. Они не должны здесь находиться. На Кровавой войне небожители так просто нечисти отпуска не дают. Им что-то *нужно*. Будь осторожен. Тем временем Тегарин продолжает отвечать своему спутнику…'

    jump show_graphics_menu

# s152 # say12449
label dmorte_s152:  # from - # Check EXTENDS ~DAETHEL~ : 11
    SPEAKER 'Шеф, я более чем уверен, что эти пни — не самые большие шишки. Мне кажется, что они сбежали и теперь ищут какой-нибудь способ повысить свой статус в Бааторе. Тебе не стоит разговаривать с ними, шеф… непонятно, в какую игру они играют, а тебя они могут поджарить… буквально.'

    menu:
        'Хорошо, Морт. Я задам еще парочку вопросов этим двум…':
            # r351 # reply12450
            jump show_graphics_menu
        'Хорошо, Морт. С этими я закончил.':
            # r352 # reply12451
            jump show_graphics_menu


# s153 # say12466
label dmorte_s153:  # from - # Check EXTENDS ~DBARIA~ : 4
    SPEAKER 'Морт подлетает поближе и шепчет тебе на ухо: Он *прав*, шеф… Не знаю, что вас так взбесило…'

    menu:
        'Хорошо… Я только хотел задать вопрос…':
            # r353 # reply12553
            jump show_graphics_menu
        'Умолкни, ноющий череп! А ты, козлик, сдохни…':
            # r354 # reply12554
            $ _r12554_action(gsm)
            jump show_graphics_menu
        'Э, нет… это все *ты*, и ты об этом пожалеешь…':
            # r355 # reply12555
            $ _r12555_action(gsm)
            jump show_graphics_menu
        'Тогда забудь об этом. Прощай.':
            # r356 # reply12556
            $ _r12556_action(gsm)
            jump show_graphics_menu


# s154 # say12467
label dmorte_s154:  # from - # Check EXTENDS ~DBARIA~ : 20
    SPEAKER 'Да, да! То что надо!'

    jump show_graphics_menu

# s155 # say12621
label dmorte_s155:  # from - # Check EXTENDS ~DCREED~ : 30
    SPEAKER 'Морт пытается отстраниться под общим взглядом. Что? Что? Тебе кажется, что будь у него губы, то он бы сейчас невинно посвистывал.'

    menu:
        'Ты можешь это объяснить, Морт?':
            # r357 # reply12854
            jump dmorte_s156
        'Что такое 'мимир'?' if _r12855_condition(gsm):
            # r358 # reply12855
            $ _r12855_action(gsm)
            jump dmorte_s157
        'Не обращай на него внимания… Ты можешь ответить на мои вопросы?':
            # r359 # reply12856
            jump show_graphics_menu


# s156 # say12622
label dmorte_s156:  # from 155.0 # Check EXTENDS ~DCREED~ : 32
    SPEAKER 'Ну, я скажу, что мы должны выслушать этого мужчину. Правильно? Морт поворачивается к ловцу крыс и окидывает его тяжелым взглядом.'

    menu:
        'Нет… давай лучше выслушаем, что скажешь ты, Морт.':
            # r360 # reply12857
            jump dmorte_s158
        'Секунду… что такое 'мимир'?' if _r12858_condition(gsm):
            # r361 # reply12858
            $ _r12858_action(gsm)
            jump dmorte_s157
        'Повернуться к ловцу крыс.':
            # r362 # reply12859
            jump show_graphics_menu


# s157 # say12623
label dmorte_s157:  # from 155.1 156.1 # Check EXTENDS ~DCREED~ : 32Check EXTENDS ~DCREED~ : 59
    SPEAKER 'Морт смущенно закатывает глаза. Это… говорящая энциклопедия. Не то, чтобы я этим гордился. А теперь давай выслушаем этого приятеля, хорошо?'

    menu:
        'Хорошо.':
            # r363 # reply12860
            $ _r12860_action(gsm)
            jump show_graphics_menu
        'Нет, я выслушал достаточно. Прощай, крысолов.':
            # r364 # reply12861
            $ _r12861_action(gsm)
            jump show_graphics_menu


# s158 # say12624
label dmorte_s158:  # from 156.0 # Check EXTENDS ~DCREED~ : 32Check EXTENDS ~DCREED~ : 59
    SPEAKER 'Да ладно, шеф… зачем мне тебя отвлекать? Я сказал тебе все полезное, что знаю *сам*. Пусть лучше этот пень выскажется по этой теме.'

    menu:
        'Хорошо.':
            # r365 # reply12862
            jump show_graphics_menu
        'Неважно. Пошли… Прощай, крысолов.':
            # r366 # reply12863
            jump show_graphics_menu


# s159 # say12625
label dmorte_s159:  # from - # Check EXTENDS ~DCREED~ : 40
    SPEAKER 'Точно, шеф! То, что надо!'

    jump show_graphics_menu

# s160 # say12626
label dmorte_s160:  # from - # Check EXTENDS ~DCREED~ : 49Check EXTENDS ~DCREED~ : 15Check EXTENDS ~DCREED~ : 59
    SPEAKER 'Умереть, шеф… умереть.'

    menu:
        'А вот ты достаточно дружелюбен, крысолов…':
            # r367 # reply12864
            jump show_graphics_menu
        'Понятно. Еще вопрос…':
            # r368 # reply12865
            jump show_graphics_menu
        'Спасибо за информацию. Прощай.':
            # r369 # reply12866
            jump show_graphics_menu


# s161 # say12627
label dmorte_s161:  # from - # Check EXTENDS ~DCREED~ : 18Check EXTENDS ~DCREED~ : 15Check EXTENDS ~DCREED~ : 59
    SPEAKER 'Умереть, шеф… умереть.'

    menu:
        'А… Что ты говорил о людях, которые платят за крыс?':
            # r370 # reply12867
            jump show_graphics_menu
        'Понятно Я хотел бы узнать о кое-чем еще…':
            # r371 # reply12868
            jump show_graphics_menu
        'Понятно. Прощай.':
            # r372 # reply12869
            jump show_graphics_menu


# s162 # say13748
label dmorte_s162:  # from -
    SPEAKER 'Да, вот уж у кого шарики за ролики заехали, — Морт закатывает глаза. — Бессмысленно общаться с хаоситеками, шеф. Они все из ума выжили.'

    menu:
        'Хаоситеки?' if _r13774_condition(gsm):
            # r373 # reply13774
            $ _r13774_action(gsm)
            jump dmorte_s163
        'Еще раз, кто такие хаоситеки?' if _r13775_condition(gsm):
            # r374 # reply13775
            $ _r13775_action(gsm)
            jump dmorte_s163
        'Я думал, что смогу что-нибудь у него узнать. Ладно, пойдем отсюда.' if _r13776_condition(gsm):
            # r375 # reply13776
            $ _r13776_action(gsm)
            jump show_graphics_menu


# s163 # say13749
label dmorte_s163:  # from 162.0 162.1
    SPEAKER 'Они типа 'фракция', у которой нет никаких правил… кроме того, чтобы не держать у себя в голове одну мысль слишком долго. Иногда их еще называют хаоситами. Полагаю, нет нужды объяснять почему.'

    menu:
        'А как тогда к ним приходят люди?':
            # r376 # reply13777
            jump dmorte_s164
        'Понятно. Идем.':
            # r377 # reply13778
            jump show_graphics_menu


# s164 # say13750
label dmorte_s164:  # from 163.0
    SPEAKER 'Они просто привлекают новых людей, словно мух… наверное, тех, кто и так уже достаточно спятил или хаотичен. Не думаю, что у них есть для этого вербовщики… хотя наверняка на их счет ничего нельзя сказать.'

    menu:
        'Понятно. Спасибо за информацию.':
            # r378 # reply13779
            jump show_graphics_menu


# s165 # say13828
label dmorte_s165:  # from -
    SPEAKER 'Да, вот уж у кого шарики за ролики заехали, — Морт закатывает глаза. — Бессмысленно общаться с хаоситеками, шеф. Они все из ума выжили.'

    menu:
        'Хаоситеки?' if _r13986_condition(gsm):
            # r379 # reply13986
            $ _r13986_action(gsm)
            jump dmorte_s166
        'Еще раз, кто такие хаоситеки?' if _r13987_condition(gsm):
            # r380 # reply13987
            $ _r13987_action(gsm)
            jump dmorte_s166
        'Я думал, что смогу что-нибудь у него узнать. Ладно, пойдем отсюда.' if _r13988_condition(gsm):
            # r381 # reply13988
            $ _r13988_action(gsm)
            jump show_graphics_menu


# s166 # say13829
label dmorte_s166:  # from 165.0 165.1
    SPEAKER 'Они типа 'фракция', у которой нет никаких правил… кроме того, чтобы не держать у себя в голове одну мысль слишком долго. Иногда их еще называют хаоситами. Полагаю, нет нужды объяснять почему.'

    menu:
        'А как тогда к ним приходят люди?' if _r13989_condition(gsm):
            # r382 # reply13989
            jump dmorte_s167
        'Понятно. Тогда пойдем.':
            # r383 # reply13990
            jump show_graphics_menu


# s167 # say13830
label dmorte_s167:  # from 166.0
    SPEAKER 'Они просто привлекают новых людей, словно мух… наверное, тех, кто и так уже достаточно спятил или хаотичен. Не думаю, что у них есть для этого вербовщики… хотя наверняка на их счет ничего нельзя сказать.'

    menu:
        'Понятно. Спасибо за информацию.':
            # r384 # reply13991
            jump show_graphics_menu


# s168 # say14075
label dmorte_s168:  # from - # Check EXTENDS ~DAWAIT~ : 6Check EXTENDS ~DAWAIT~ : 6Check EXTENDS ~DAWAIT~ : 6Check EXTENDS ~DAWAIT~ : 15
    SPEAKER 'Ладно, шеф… — шепчет тебе Морт. — Идем. Этот трухлявенький скоро станет удобрением.'

    menu:
        'Похоже на то. Пойдем отсюда.' if _r14275_condition(gsm):
            # r385 # reply14275
            jump show_graphics_menu
        'Похоже на то. Пойдем отсюда.' if _r14276_condition(gsm):
            # r386 # reply14276
            jump show_graphics_menu
        'Похоже на то. Пойдем отсюда.' if _r14277_condition(gsm):
            # r387 # reply14277
            jump show_graphics_menu
        'Похоже на то. Пойдем отсюда.' if _r14278_condition(gsm):
            # r388 # reply14278
            jump show_graphics_menu


# s169 # say15339
label dmorte_s169:  # from - # Check EXTENDS ~DADYZOEL~ : 19
    SPEAKER 'Порви этого лощеного щеголя, босс! Покажи ему, как это делается!'

    jump show_graphics_menu

# s170 # say15340
label dmorte_s170:  # from - # Check EXTENDS ~DADYZOEL~ : 13
    SPEAKER 'Да, отвечай на вопросы!'

    jump show_graphics_menu

# s171 # say15341
label dmorte_s171:  # from - # Check EXTENDS ~DADYZOEL~ : 20
    SPEAKER 'Ставлю десять медяков на того здоровенного парня в шрамах! Морт подлетает поближе и шепчет: То есть, на тебя, шеф. Не подведи нас.'

    jump show_graphics_menu

# s172 # say15342
label dmorte_s172:  # from - # Check EXTENDS ~DADYZOEL~ : 19
    SPEAKER 'Ладно, шеф, на этот раз ты его достал! Дерись грязно!'

    jump show_graphics_menu

# s173 # say15343
label dmorte_s173:  # from - # Check EXTENDS ~DADYZOEL~ : 32
    SPEAKER 'Это уж точно, ты, высокомерный надушенный буржуй с сахарной задницей… ты его слышал!'

    jump show_graphics_menu

# s174 # say15344
label dmorte_s174:  # from -
    SPEAKER 'Кто *я* такой? Ха! Я мог бы стать твоим отцом, но какая-то обезьяна меня обошла!'

    menu:
        'Морт, помолчи.':
            # r389 # reply15490
            jump dmorte_s175
        'Позволить Морту продолжить.':
            # r390 # reply15491
            jump dmorte_s175


# s175 # say15345
label dmorte_s175:  # from 174.0 174.1
    SPEAKER 'Что-то не так, принцесса? Разучилась говорить? Лучше подбери свою упавшую челюсть, пока что-нибудь в горло не залетело! Все верно, ты меня слышала! Забирай свой лифчик с рюшечками и прячься под юбку к мамке! И передай ей от меня привет!'

    menu:
        'Морт, *сейчас же* заткнись.':
            # r391 # reply15492
            $ _r15492_action(gsm)
            jump dmorte_s176
        'Позволить Морту продолжить.':
            # r392 # reply15493
            jump dmorte_s177


# s176 # say15346
label dmorte_s176:  # from 175.0 # Check EXTENDS ~DADYZOEL~ : 33
    SPEAKER 'А? О… прости, шеф. Просто такие, как он, выводят меня из себя…'

    jump show_graphics_menu

# s177 # say15347
label dmorte_s177:  # from 175.1 # Check EXTENDS ~DADYZOEL~ : 33
    SPEAKER 'А что, если б я не знал, я бы сказал…'

    jump show_graphics_menu

# s178 # say15348
label dmorte_s178:  # from - # Check EXTENDS ~DADYZOEL~ : 35 # ~SetGlobal("Know_Mimir","GLOBAL",1) ~ EXTERN ~DADYZOEL~ 35
    SPEAKER 'Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!'

    jump show_graphics_menu

# s179 # say15349
label dmorte_s179:  # from - # Check EXTENDS ~DADYZOEL~ : 36Check EXTENDS ~DADYZOEL~ : 36
    SPEAKER 'Это, э… что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда.'

    menu:
        'Но ты ведь НЕ мимир, Морт…' if _r65537_condition(gsm):
            # r393 # reply65537
            jump show_graphics_menu


# s180 # say15350
label dmorte_s180:  # from - # Check EXTENDS ~DADYZOEL~ : 19
    SPEAKER 'Брось, шеф… ты же не собираешься спустить ему это с рук? Давай-ка выпорем этого жеманного шалопая! Я займусь его глазами, пока ты будешь выколачивать из него дурь!'

    menu:
        'Ты прав… давай с ним разберемся.':
            # r394 # reply15494
            jump show_graphics_menu
        'Не в этот раз, Морт. Пошли.':
            # r395 # reply15495
            $ _r15495_action(gsm)
            jump show_graphics_menu


# s181 # say16613
label dmorte_s181:  # from 185.0 # Check EXTENDS ~DMFTREE~ : 28
    SPEAKER 'А? А, да, шеф, конечно — как скажешь.'

    menu:
        'Спасибо. У меня есть вопросы, Скорбящий…' if _r16881_condition(gsm):
            # r396 # reply16881
            jump show_graphics_menu
        'Я серьезно, Морт. Приложишь в этом усилия?' if _r16882_condition(gsm):
            # r397 # reply16882
            $ _r16882_action(gsm)
            jump dmorte_s182
        'Спасибо, Морт. Прощай, Скорбящий-по-деревьям.':
            # r398 # reply16883
            jump show_graphics_menu


# s182 # say16614
label dmorte_s182:  # from 181.1 # Check EXTENDS ~DANNAH~ : 99Check EXTENDS ~DIGNUS~ : 11Check EXTENDS ~DGRACE~ : 14Check EXTENDS ~DDAKKON~ : 74Check EXTENDS ~DDAKKON~ : 75Check EXTENDS ~DNORDOM~ : 1Check EXTENDS ~DVHAIL~ : 1Check EXTENDS ~DMFTREE~ : 28
    SPEAKER 'Морт некоторое время молча на тебя смотрит, а затем кивает. Да, я смогу. Если это настолько важно для тебя, я сделаю это.'

    menu:
        'Спасибо. Анна? А ты?' if _r16884_condition(gsm):
            # r399 # reply16884
            $ _r16884_action(gsm)
            jump show_graphics_menu
        'Спасибо. Игнус?' if _r16885_condition(gsm):
            # r400 # reply16885
            $ _r16885_action(gsm)
            jump show_graphics_menu
        'Спасибо. Грация, ты не могла бы в этом помочь?' if _r16886_condition(gsm):
            # r401 # reply16886
            $ _r16886_action(gsm)
            jump show_graphics_menu
        'Спасибо. Даккон, ты поможешь этому человеку?' if _r16887_condition(gsm):
            # r402 # reply16887
            $ _r16887_action(gsm)
            jump show_graphics_menu
        'Спасибо. Даккон, помоги этому человеку.' if _r16888_condition(gsm):
            # r403 # reply16888
            $ _r16888_action(gsm)
            jump show_graphics_menu
        'Спасибо. Нордом, как ты думаешь, ты сможешь помочь?' if _r16889_condition(gsm):
            # r404 # reply16889
            $ _r16889_action(gsm)
            jump show_graphics_menu
        'Спасибо. Вейлор, ты сможешь помочь?' if _r16890_condition(gsm):
            # r405 # reply16890
            $ _r16890_action(gsm)
            jump show_graphics_menu
        'Спасибо. У меня есть вопросы, Скорбящий…':
            # r406 # reply16891
            jump show_graphics_menu
        'Спасибо, Морт. Прощай, Скорбящий-по-деревьям.':
            # r407 # reply16892
            jump show_graphics_menu


# s183 # say16615
label dmorte_s183:  # from - # Check EXTENDS ~DNORDOM~ : 2
    SPEAKER 'Знаешь, я *вообще* не представляю, что из этого может получиться. Этот знаток сделан из камня, шеф. Эти малютки просто не справятся с ним.'

    jump show_graphics_menu

# s184 # say16616
label dmorte_s184:  # from - # Check EXTENDS ~DNORDOM~ : 3
    SPEAKER 'Ого, вот оно как оборачивается. Не могу *поверить*, что ты вообще тратишь на это время, босс!'

    jump show_graphics_menu

# s185 # say16617
label dmorte_s185:  # from - # Check EXTENDS ~DANNAH~ : 99Check EXTENDS ~DIGNUS~ : 11Check EXTENDS ~DGRACE~ : 14Check EXTENDS ~DDAKKON~ : 74Check EXTENDS ~DDAKKON~ : 75Check EXTENDS ~DVHAIL~ : 1Check EXTENDS ~DMFTREE~ : 28
    SPEAKER 'Знаешь, шеф, я повидал много причудливых штуковин… Но он поразил мой разум только тем, что это вообще *возможно*.'

    menu:
        'Спасибо тебе, Нордом. Морт? Что думаешь насчет этого?' if _r16893_condition(gsm):
            # r408 # reply16893
            $ _r16893_action(gsm)
            jump dmorte_s181
        'Спасибо тебе, Нордом. Анна? А ты?' if _r16894_condition(gsm):
            # r409 # reply16894
            $ _r16894_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. Игнус?' if _r16895_condition(gsm):
            # r410 # reply16895
            $ _r16895_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. Грация, ты не могла бы в этом помочь?' if _r16896_condition(gsm):
            # r411 # reply16896
            $ _r16896_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. Даккон, ты поможешь этому человеку?' if _r16897_condition(gsm):
            # r412 # reply16897
            $ _r16897_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. Даккон, помоги этому человеку.' if _r16898_condition(gsm):
            # r413 # reply16898
            $ _r16898_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. Вейлор, ты сможешь помочь?' if _r16899_condition(gsm):
            # r414 # reply16899
            $ _r16899_action(gsm)
            jump show_graphics_menu
        'Спасибо тебе, Нордом. У меня есть несколько вопросов, Скорбящий…':
            # r415 # reply16900
            jump show_graphics_menu
        'Я благодарен тебе, Нордом. Прощай, Скорбящий-по-деревьям.':
            # r416 # reply16901
            jump show_graphics_menu


# s186 # say16618
label dmorte_s186:  # from - # Check EXTENDS ~DIGNUS~ : 13
    SPEAKER 'О! Я не могу на это смотреть!'

    jump show_graphics_menu

# s187 # say17533
label dmorte_s187:  # from - # Check EXTENDS ~DANNAH~ : 107Check EXTENDS ~D300MER5~ : 5Check EXTENDS ~D300MER5~ : 2Check EXTENDS ~D300MER5~ : 2
    SPEAKER 'Почему бы и нет, босс? Будет весело пнуть его, если будет поганое настроение, верно? Хм-м… Ладно, по крайней мере, я могу пнуть от твоего имени. А еще хочется взглянуть на пятидесятифутовый прыжок от уголька!'

    menu:
        'Что думаешь, Анна?' if _r17583_condition(gsm):
            # r417 # reply17583
            jump show_graphics_menu
        'Я возьму одного, торговец.' if _r17584_condition(gsm):
            # r418 # reply17584
            $ _r17584_action(gsm)
            jump show_graphics_menu
        'Лучше не разбрасываться медяками. У меня есть несколько вопросов, торговец…' if _r17585_condition(gsm):
            # r419 # reply17585
            jump show_graphics_menu
        'Лучше я поберегу свои медяки, торговец. Прощай.' if _r17586_condition(gsm):
            # r420 # reply17586
            jump show_graphics_menu
        'У меня не хватает денег, торговец, но у меня есть несколько вопросов…' if _r17587_condition(gsm):
            # r421 # reply17587
            jump show_graphics_menu
        'Неважно, торговец, мне все равно не хватает монет. Прощай.' if _r17588_condition(gsm):
            # r422 # reply17588
            jump show_graphics_menu


# s188 # say18801
label dmorte_s188:  # from - # Check EXTENDS ~DCOLYLFN~ : 5Check EXTENDS ~DCOLYLFN~ : 6Check EXTENDS ~DCOLYLFN~ : 9Check EXTENDS ~DCOLYLFN~ : 10Check EXTENDS ~DCOLYLFN~ : 12Check EXTENDS ~DCOLYLFN~ : 13Check EXTENDS ~DCOLYLFN~ : 14
    SPEAKER 'Морт поворачивается к жителю Улья. Отвали.'

    menu:
        'Этот череп ты не получишь.':
            # r423 # reply18802
            $ _r18802_action(gsm)
            jump show_graphics_menu
        'Это не твой череп.':
            # r424 # reply18803
            jump show_graphics_menu
        'Правда: Вперед, забирай череп.':
            # r425 # reply18804
            jump show_graphics_menu
        'Напасть на него, как только он потеряет бдительность: Вперед, забирай череп.':
            # r426 # reply18805
            jump show_graphics_menu
        'Правда: Если тебе удастся доказать, что череп твой, я отдам его тебе. Так будет честно.':
            # r427 # reply18578
            $ _r18578_action(gsm)
            jump show_graphics_menu
        'Кто ты?':
            # r428 # reply18807
            jump show_graphics_menu
        'Я куплю у тебя череп. Пойдет?':
            # r429 # reply18808
            $ _r18808_action(gsm)
            jump show_graphics_menu


# s189 # say18809
label dmorte_s189:  # from - # Check EXTENDS ~DCOLYLFN~ : 11Check EXTENDS ~DCOLYLFN~ : 11
    SPEAKER 'Морт держит в зубах один из его пальцев, словно это какая-то жуткая сигара. Удерживая палец, он проговаривает: Еще раз тронешь — и твоя рука присоединится к пальцу, пень.'

    menu:
        'Морт! Верни ему палец.':
            # r430 # reply18810
            jump dmorte_s190
        'Не повезло тебе. Сгинь, полукровка.':
            # r431 # reply18811
            jump show_graphics_menu
        'Это будет тебе хорошим уроком. Прощай.':
            # r432 # reply18812
            jump show_graphics_menu


# s190 # say18813
label dmorte_s190:  # from 189.0 # Check EXTENDS ~DCOLYLFN~ : 11Check EXTENDS ~DCOLYLFN~ : 11
    SPEAKER 'Морт выплевывает в него палец. Тот отскакивает от его груди и падает на землю.'

    menu:
        'Не повезло тебе. Сгинь, полукровка.':
            # r433 # reply18814
            jump show_graphics_menu
        'Это будет тебе хорошим уроком. Прощай.':
            # r434 # reply18815
            jump show_graphics_menu


# s191 # say18816
label dmorte_s191:  # from - # Check EXTENDS ~DCOLYLFN~ : 15
    SPEAKER 'Морт подлетает и перехватывает тебя: Шеф, ничего не давай этому отребью.'

    menu:
        'Я…':
            # r435 # reply18817
            jump show_graphics_menu


# s192 # say18818
label dmorte_s192:  # from - # Check EXTENDS ~DCOLYLFN~ : 16
    SPEAKER 'Морт поворачивается к нему: Я не с тобой разговаривал, жопоголовый. Когда я к тебе обращусь, ты это поймешь: я буду хрюкать и фыркать, чтобы ты меня понял.'

    jump show_graphics_menu

# s193 # say18819
label dmorte_s193:  # from - # Check EXTENDS ~DCOLYLFN~ : 18Check EXTENDS ~DCOLYLFN~ : 18Check EXTENDS ~DCOLYLFN~ : 18Check EXTENDS ~DCOLYLFN~ : 18Check EXTENDS ~DCOLYLFN~ : 19Check EXTENDS ~DCOLYLFN~ : 6
    SPEAKER 'Шеф, *не надо*.'

    menu:
        'Дать ему пять медяков.' if _r18820_condition(gsm):
            # r436 # reply18820
            $ _r18820_action(gsm)
            jump show_graphics_menu
        'Дать ему пятьдесят медяков.' if _r18821_condition(gsm):
            # r437 # reply18821
            $ _r18821_action(gsm)
            jump show_graphics_menu
        'Дать ему сто медяков.' if _r18822_condition(gsm):
            # r438 # reply18822
            $ _r18822_action(gsm)
            jump show_graphics_menu
        'Дать ему пятьсот медяков.' if _r18823_condition(gsm):
            # r439 # reply18823
            $ _r18823_action(gsm)
            jump show_graphics_menu
        'У меня нет ни одной монеты.' if _r18824_condition(gsm):
            # r440 # reply18824
            jump show_graphics_menu
        'Забудь мое предложение. Это не твой череп, и ты его не получишь.':
            # r441 # reply18825
            jump show_graphics_menu


# s194 # say18826
label dmorte_s194:  # from - # Check EXTENDS ~DCOLYLFN~ : 20Check EXTENDS ~DCOLYLFN~ : 23Check EXTENDS ~DCOLYLFN~ : 41
    SPEAKER 'Я летаю с самым большим болваном во всей мультивселенной.'

    menu:
        '… и что, Желтопалый? Еще раз обчищу тебя — и *что*?':
            # r442 # reply18827
            jump show_graphics_menu
        'Теперь, когда все утряслось, Желтопалый, у меня есть несколько вопросов…':
            # r443 # reply18828
            jump show_graphics_menu
        'Прощай, Желтопалый.' if _r18829_condition(gsm):
            # r444 # reply18829
            jump show_graphics_menu
        'Прощай, Желтопалый.' if _r18830_condition(gsm):
            # r445 # reply18830
            $ _r18830_action(gsm)
            jump show_graphics_menu


# s195 # say18831
label dmorte_s195:  # from - # Check EXTENDS ~DCOLYLFN~ : 52
    SPEAKER 'Шеф! Брось!'

    jump show_graphics_menu

# s196 # say18832
label dmorte_s196:  # from - # Check EXTENDS ~DCOLYLFN~ : 53Check EXTENDS ~DCOLYLFN~ : 53Check EXTENDS ~DCOLYLFN~ : 53Check EXTENDS ~DCOLYLFN~ : 53Check EXTENDS ~DCOLYLFN~ : 61
    SPEAKER 'Если смотреть с моей позиции, так она никого не балует.'

    menu:
        'Дать ему пять медяков.' if _r18833_condition(gsm):
            # r446 # reply18833
            $ _r18833_action(gsm)
            jump show_graphics_menu
        'Дать ему десять медяков.' if _r18834_condition(gsm):
            # r447 # reply18834
            $ _r18834_action(gsm)
            jump show_graphics_menu
        'Дать ему пятьдесят медяков.' if _r18835_condition(gsm):
            # r448 # reply18835
            $ _r18835_action(gsm)
            jump show_graphics_menu
        'Дать ему сто медяков.' if _r18836_condition(gsm):
            # r449 # reply18836
            $ _r18836_action(gsm)
            jump show_graphics_menu
        'Беру свои слова обратно. Уходи и больше мне не попадайся.':
            # r450 # reply18837
            jump show_graphics_menu


# s197 # say19031
label dmorte_s197:  # from - # Check EXTENDS ~DOJO~ : 11
    SPEAKER 'Привет, здоровячок! Как поживает твой дружок в стене?'

    jump show_graphics_menu

# s198 # say19032
label dmorte_s198:  # from - # Check EXTENDS ~DOJO~ : 12
    SPEAKER 'Морт склоняет голову. Как скажешь, босс.'

    menu:
        'Хорошо. Охо, у меня есть другие вопросы.':
            # r451 # reply19033
            jump show_graphics_menu
        'Хорошо. Идем.':
            # r452 # reply19034
            jump show_graphics_menu


# s199 # say19551
label dmorte_s199:  # from -
    SPEAKER 'Ух ты, шеф… ну что за красотка? Мало где встретишь такую милашку, как эта, знаешь ли.'

    menu:
        'Гниющие трупы не выглядят для меня привлекательными, Морт. Даже женские трупы.':
            # r453 # reply19666
            jump dmorte_s200
        'Ну, наверно, если не обращать внимания на 'вонючее разлагающееся мясо в трупных червях', то…':
            # r454 # reply19667
            jump dmorte_s201


# s200 # say19552
label dmorte_s200:  # from 199.0 # Check EXTENDS ~DZOMCITF~ : 1Check EXTENDS ~DZOMCITF~ : 3
    SPEAKER 'Морт закатывает глаза. Ха! Однажды ты поймешь, о чем я говорю.'

    menu:
        'Не обращать на него внимания, поздороваться с зомби.' if _r19668_condition(gsm):
            # r455 # reply19668
            jump show_graphics_menu
        'Не обращать на него внимания, поздороваться с зомби.' if _r19669_condition(gsm):
            # r456 # reply19669
            jump show_graphics_menu


# s201 # say19553
label dmorte_s201:  # from 199.1 # Check EXTENDS ~DZOMCITF~ : 1Check EXTENDS ~DZOMCITF~ : 3
    SPEAKER 'Ага, видишь ли, это я… эй! — Морт поворачивается к тебе. — Ты что, издеваешься надо мной?'

    menu:
        'Не обращать на него внимания, поздороваться с зомби.' if _r19670_condition(gsm):
            # r457 # reply19670
            jump show_graphics_menu
        'Не обращать на него внимания, поздороваться с зомби.' if _r19671_condition(gsm):
            # r458 # reply19671
            jump show_graphics_menu


# s202 # say19681
label dmorte_s202:  # from - # Check EXTENDS ~DGHOCITM~ : 1
    SPEAKER 'Э… даже не знаю, захочешь ли ты говорить с этой… тварью.'

    menu:
        'Почему нет, Морт?':
            # r459 # reply19691
            jump dmorte_s203
        'Ладно. Идем.':
            # r460 # reply19692
            jump show_graphics_menu
        'Не обращать внимания на Морта, поздороваться с упырем.':
            # r461 # reply19693
            jump show_graphics_menu


# s203 # say19682
label dmorte_s203:  # from 202.0 # Check EXTENDS ~DGHOCITM~ : 1
    SPEAKER 'Когда-то они были людьми… Они, или их предки, ели трупы, и вот во что они превратились. Довольно таки мерзкая вещь, шеф… На самом деле, они больше похожи на животных. *Опасных* животных.'

    menu:
        'Ладно. Идем.':
            # r462 # reply19694
            jump show_graphics_menu
        'Я все равно с ним поговорю.':
            # r463 # reply19695
            jump show_graphics_menu


# s204 # say19702
label dmorte_s204:  # from - # Check EXTENDS ~DGHOCITF~ : 1
    SPEAKER 'Э… даже не знаю, захочешь ли ты говорить с этой… тварью.'

    menu:
        'Морт, ты меня удивляешь… Это нежить женского пола. Обычно этого для тебя достаточно.':
            # r464 # reply19713
            jump dmorte_s206
        'Почему нет, Морт?':
            # r465 # reply19714
            jump dmorte_s205
        'Ладно. Идем.':
            # r466 # reply19715
            jump show_graphics_menu
        'Не обращать внимания на Морта, поздороваться с упырем.':
            # r467 # reply19716
            jump show_graphics_menu


# s205 # say19703
label dmorte_s205:  # from 204.1 206.0 # Check EXTENDS ~DGHOCITF~ : 1
    SPEAKER 'Когда-то они были людьми… Они, или их предки, ели трупы, и вот во что они превратились. Довольно таки мерзкая вещь, шеф… На самом деле, они больше похожи на животных. *Опасных* животных.'

    menu:
        'Ладно. Идем.':
            # r468 # reply19717
            jump show_graphics_menu
        'Я все равно с ней поговорю.':
            # r469 # reply19718
            jump show_graphics_menu


# s206 # say19704
label dmorte_s206:  # from 204.0
    SPEAKER 'Это не то же самое, шеф…'

    jump show_graphics_menu

# s207 # say20469
label dmorte_s207:  # from - # Check EXTENDS ~DMARTA~ : 9
    SPEAKER 'Она же слепая и почти глухая.'

    jump show_graphics_menu

# s208 # say20470
label dmorte_s208:  # from - # Check EXTENDS ~DMARTA~ : 15
    SPEAKER 'Мне кажется, она имеет в виду органы. Надеюсь, что она имеет в виду органы.'

    jump show_graphics_menu

# s209 # say20471
label dmorte_s209:  # from - # Check EXTENDS ~DMARTA~ : 16Check EXTENDS ~DMARTA~ : 16
    SPEAKER 'Морт поворачивается к Марте. Да, 'штучки', — он поворачивается к тебе. — Все дело в смысле слов.'

    menu:
        'Марта, зачем ты достаешь из трупов зубы и швы?' if _r20612_condition(gsm):
            # r470 # reply20612
            $ _r20612_action(gsm)
            jump show_graphics_menu
        'Марта, зачем ты достаешь из трупов зубы и швы?' if _r20613_condition(gsm):
            # r471 # reply20613
            $ _r20613_action(gsm)
            jump show_graphics_menu
        'Э… ладно. Мне нужно идти, Марта. Прощай.':
            # r472 # reply20614
            jump show_graphics_menu


# s210 # say20472
label dmorte_s210:  # from - # Check EXTENDS ~DMARTA~ : 24
    SPEAKER 'Я *не собираюсь* на это смотреть.'

    jump show_graphics_menu

# s211 # say21602
label dmorte_s211:  # from -
    SPEAKER 'Ох, силы небесные!.. Чертов дабус.'

    menu:
        'Что не так?':
            # r473 # reply24695
            jump dmorte_s212


# s212 # say21603
label dmorte_s212:  # from 211.0
    SPEAKER 'Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.'

    menu:
        'Что за 'дабус'?':
            # r474 # reply24696
            jump dmorte_s213


# s213 # say21604
label dmorte_s213:  # from 212.0 # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.'

    menu:
        ''Леди Боли'? Кто это?' if _r24697_condition(gsm):
            # r475 # reply24697
            $ _r24697_action(gsm)
            jump dmorte_s214
        'Что ты можешь рассказать о Леди Боли?' if _r24698_condition(gsm):
            # r476 # reply24698
            jump dmorte_s214
        'Понятно.' if _r24699_condition(gsm):
            # r477 # reply24699
            jump show_graphics_menu


# s214 # say21605
label dmorte_s214:  # from 213.0 213.1 # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.'

    menu:
        'Э-э… постой-ка. Ты сказал, что дабусы парят, верно? А этот ходит по земле.' if _r24700_condition(gsm):
            # r478 # reply24700
            jump dmorte_s215
        'Э-э… постой-ка. Ты сказал, что дабусы парят, верно? А этот ходит по земле.' if _r24701_condition(gsm):
            # r479 # reply24701
            jump dmorte_s215
        'Понятно.':
            # r480 # reply24702
            jump show_graphics_menu


# s215 # say21606
label dmorte_s215:  # from 214.0 214.1 # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Морт, едва взглянув на дабуса, смотрит теперь во все глаза. Ага! Я знал, что вы, козлиные морды, умеете ходить! Я знал это! Морт ликующе возвращается к тебе. Ха! Должно быть, этот не такой уж отрешенный, чтобы парить над землей.'

    menu:
        'Может быть…':
            # r481 # reply24703
            jump show_graphics_menu


# s216 # say21607
label dmorte_s216:  # from - # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.'

    menu:
        'Понятно.':
            # r482 # reply24704
            jump show_graphics_menu


# s217 # say21608
label dmorte_s217:  # from - # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.'

    menu:
        'Наверное, так и стоит поступить…':
            # r483 # reply24705
            jump show_graphics_menu


# s218 # say21609
label dmorte_s218:  # from - # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.'

    menu:
        'Наверное, так и стоит поступить…':
            # r484 # reply24706
            jump show_graphics_menu


# s219 # say21610
label dmorte_s219:  # from - # Check EXTENDS ~DFELL~ : 8
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.'

    menu:
        'Наверное, так и стоит поступить…':
            # r485 # reply24707
            jump show_graphics_menu


# s220 # say22061
label dmorte_s220:  # from - # Check EXTENDS ~DSOEGO~ : 83
    SPEAKER 'Да вы просто хотите их убить. Для тленных чувства являются угрозой.'

    menu:
        'У меня есть другие вопросы…':
            # r486 # reply22062
            jump show_graphics_menu
        'Это все, что я хотел узнать. Прощай.':
            # r487 # reply22063
            jump show_graphics_menu


# s221 # say22849
label dmorte_s221:  # from -
    SPEAKER 'Глядя на тебя, Морт качает головой.'

    menu:
        'Что такое, куб-герой? 'Морт — глупый череп'? Но как же, разве это не так, куб-герой?':
            # r488 # reply22850
            $ _r22850_action(gsm)
            jump dmorte_s222
        'Отложить куб.':
            # r489 # reply22851
            jump show_graphics_menu


# s222 # say22852
label dmorte_s222:  # from 221.0
    SPEAKER 'Эй! Он не говорил этого!'

    menu:
        'Нет, говорил! Он только что это сказал!':
            # r490 # reply22853
            $ _r22853_action(gsm)
            jump dmorte_s223
        'Отложить куб.':
            # r491 # reply22854
            jump show_graphics_menu


# s223 # say22855
label dmorte_s223:  # from 222.0
    SPEAKER 'Чт?!.. А ну дай его сюда!'

    menu:
        'Нет, он мой. Да и все равно он хочет играть только со мной. Разве не так, куб-герой? Да, именно так!':
            # r492 # reply22856
            $ _r22856_action(gsm)
            jump dmorte_s224
        'Отложить куб.':
            # r493 # reply22857
            jump show_graphics_menu


# s224 # say22858
label dmorte_s224:  # from 223.0
    SPEAKER 'Я. Просто. Хочу. Подержать. Его. На. Секундочку.'

    menu:
        'Но у тебя все равно нет рук.':
            # r494 # reply22859
            jump dmorte_s225
        'Отложить куб.':
            # r495 # reply22860
            jump show_graphics_menu


# s225 # say22861
label dmorte_s225:  # from 224.0
    SPEAKER 'Я подержу его ЗУБАМИ.'

    menu:
        'Нет, наверное, я просто его отложу.':
            # r496 # reply22862
            jump dmorte_s226


# s226 # say22863
label dmorte_s226:  # from 225.0
    SPEAKER 'Я разнесу этот мордонский куб на куски. [MRT251]'

    menu:
        'Ты что-то слышал, куб-герой? Нет? Я тоже!':
            # r497 # reply22864
            jump show_graphics_menu


# s227 # say22892
label dmorte_s227:  # from - # Check EXTENDS ~DCRADDO~ : 15
    SPEAKER 'Ооооох! Морт восхищенно щелкает зубами, выслушивая умопостроения Крэддока… кажется, ты даже слышишь, как внутри своего черепа он делает пометки. [MRT387]'

    jump show_graphics_menu

# s228 # say24174
label dmorte_s228:  # from -
    SPEAKER 'Знаешь, босс, меня уже начинало тошнить от его… постоянных… пауз… так что хорошо… что он… уже заткнулся.'

    menu:
        'Очень смешно, Морт. Пошли.':
            # r498 # reply24175
            jump show_graphics_menu


# s229 # say24176
label dmorte_s229:  # from -
    SPEAKER 'Босс, а что мы будем делать с бесконечным запасом воды? Где пожар, а?'

    menu:
        'Позже он может пригодиться, Морт. Пошли.':
            # r499 # reply24177
            jump show_graphics_menu
        'Так будет правильно, Морт.':
            # r500 # reply24178
            jump dmorte_s230


# s230 # say24179
label dmorte_s230:  # from 229.1
    SPEAKER 'Так будет правильно? Если ты не забыл, босс, у нас самих есть чем заняться! Хотя что бы ты там не решил — ты тут главный. Тьфу…'

    menu:
        'Спасибо за одобрение, Морт. Пошли.':
            # r501 # reply24180
            jump show_graphics_menu


# s231 # say24903
label dmorte_s231:  # from -
    SPEAKER 'Эй, шеф… Ты в порядке? Я думал, что ты дал дуба.'

    menu:
        'Чт?.. Ты кто?':
            # r502 # reply24904
            $ _r24904_action(gsm)
            jump dmorte_s232
        'Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся и присоединился ко мне НЕМЕДЛЕННО.':
            # r503 # reply24905
            $ _r24905_action(gsm)
            jump show_graphics_menu


# s232 # say24906
label dmorte_s232:  # from 231.0
    SPEAKER 'Э… кто я? А как насчет *тебя* для начала? Кто ты?'

    menu:
        'Я… не знаю. Не могу вспомнить.':
            # r504 # reply24907
            jump dmorte_s233
        'Я *первый* спросил тебя, череп.':
            # r505 # reply24908
            jump dmorte_s234


# s233 # say24909
label dmorte_s233:  # from 232.0 234.0 235.0
    SPEAKER 'Ты не можешь вспомнить свое *имя*? Хе. Что ж, в следующий раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт.'

    menu:
        'Заперт?':
            # r506 # reply24910
            jump dmorte_s236


# s234 # say24911
label dmorte_s234:  # from 232.1
    SPEAKER 'Ага, а я спросил тебя *вторым*. Как твое имя?'

    menu:
        'Я… не знаю. Не могу вспомнить.':
            # r507 # reply24912
            jump dmorte_s233
        'Ты первый, череп. В последний раз спрашиваю.':
            # r508 # reply24913
            jump dmorte_s235


# s235 # say24914
label dmorte_s235:  # from 234.1
    SPEAKER 'Пф-ф… да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Зовут Мортом. А кто ты?'

    menu:
        'Я… не знаю. Не могу вспомнить.':
            # r509 # reply24915
            jump dmorte_s233


# s236 # say24916
label dmorte_s236:  # from 233.0
    SPEAKER 'Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.'

    menu:
        'Мы заперты… где? Что это за место?':
            # r510 # reply24917
            jump dmorte_s237


# s237 # say24918
label dmorte_s237:  # from 236.0
    SPEAKER 'Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.'

    menu:
        'Морг? Постой… я умер?':
            # r511 # reply24919
            jump dmorte_s238


# s238 # say24920
label dmorte_s238:  # from 237.0
    SPEAKER 'Не похоже. Хотя на тебе куча шрамов… выглядит так, словно какой-то пень изрисовал тебя всего ножом. Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу.'

    menu:
        'И как мы выберемся отсюда?':
            # r512 # reply24921
            jump dmorte_s239


# s239 # say24922
label dmorte_s239:  # from 238.0
    SPEAKER 'Ну, если все двери заперты, значит, нам понадобится ключ. Есть шанс, что он есть у одного из ходячих трупов в этой комнате.'

    menu:
        'Ходячих трупов?':
            # r513 # reply24923
            jump dmorte_s240


# s240 # say24924
label dmorte_s240:  # from 28.0 239.0
    SPEAKER 'Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы. Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.'

    menu:
        'А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа.':
            # r514 # reply24925
            $ _r24925_action(gsm)
            jump dmorte_s241
        'Так значит, я должен напасть на одного из этих трупов и забрать у него ключ?':
            # r515 # reply24926
            jump dmorte_s242


# s241 # say24927
label dmorte_s241:  # from 240.0
    SPEAKER 'Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ. Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу.'

    menu:
        'Ну хорошо… Я собью одного из них и заберу ключ.':
            # r516 # reply24928
            jump dmorte_s242


# s242 # say24929
label dmorte_s242:  # from 240.1 241.0
    SPEAKER 'Хорошо, но перед этим неплохо бы вооружиться. Кажется, здесь где-то на полках есть скальпель.'

    menu:
        'Ладно, я поищу его.':
            # r517 # reply24930
            jump dmorte_s243


# s243 # say24931
label dmorte_s243:  # from 242.0
    SPEAKER 'И последнее: эти трупы медлительны, но их удар — все равно что поцелуй тарана. Если они начнут доставать тебя, помни, что ты можешь БЕГАТЬ, а они — нет. Используй это, чтобы держаться на дистанции, если тебе нужно восстановиться.'

    menu:
        'Хорошо. Спасибо за совет.':
            # r518 # reply24932
            $ _r24932_action(gsm)
            jump show_graphics_menu


# s244 # say25962
label dmorte_s244:  # from - # Check EXTENDS ~DCWRUSHF~ : 27Check EXTENDS ~DCWRUSHF~ : 27
    SPEAKER 'Это типа говорящей энциклопедии, шеф. На самом деле, мне не хочется об этом говорить.'

    menu:
        'Но ты ведь НЕ мимир, Морт…' if _r66902_condition(gsm):
            # r519 # reply66902
            jump show_graphics_menu


# s245 # say25964
label dmorte_s245:  # from -
    SPEAKER 'Морт, многозначительно водя бровями, направляется к женщине. А еще я могу…'

    menu:
        'Хватит, Морт.':
            # r520 # reply25965
            jump dmorte_s246


# s246 # say25966
label dmorte_s246:  # from 245.0 # Check EXTENDS ~DCWRUSHF~ : 28Check EXTENDS ~DCWRUSHF~ : 2
    SPEAKER 'Да-да. Хорошо, — Морт закатывает глаза и начинает ворчать. — Тогда уж лучше быть *мертвым*…'

    menu:
        'Постой… ты сказала 'разговаривает сам'? А разве обычно они не разговаривают?' if _r25967_condition(gsm):
            # r521 # reply25967
            jump show_graphics_menu
        'У меня есть несколько вопросов к этой женщине…':
            # r522 # reply25968
            jump show_graphics_menu
        'Оставить женщину в покое.':
            # r523 # reply25969
            jump show_graphics_menu


# s247 # say25970
label dmorte_s247:  # from - # Check EXTENDS ~DCWRUSHF~ : 29Check EXTENDS ~DCWRUSHF~ : 29
    SPEAKER 'Морт перебивает ее: Понимаешь, шеф, есть много признаков *качественного* мимира. Некоторые — например, я — намного лучше других. Более… э-э… 'самосознательные', говоря научным языком.'

    menu:
        'Хм-м.':
            # r524 # reply25971
            jump show_graphics_menu
        'Понятно.':
            # r525 # reply25972
            jump show_graphics_menu


# s248 # say25973
label dmorte_s248:  # from - # Check EXTENDS ~DCWRUSHF~ : 27
    SPEAKER 'Эй! Я всего лишь пытаюсь немного развлечься, шеф!'

    jump show_graphics_menu

# s249 # say27285
label dmorte_s249:  # from -
    SPEAKER 'Небольшой совет, шеф: теперь я бы вел себя потише. Не нужно больше вписывать трупы в книгу мертвых без необходимости… особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей.'

    menu:
        'Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?':
            # r526 # reply27303
            jump dmorte_s250
        'Эти трупы… откуда они все берутся?':
            # r527 # reply27304
            jump dmorte_s252
        'Почему тебя так заботят женские тела?':
            # r528 # reply27305
            jump dmorte_s253
        'Ладно… Я… попробую это запомнить.':
            # r529 # reply27306
            jump dmorte_s257


# s250 # say27286
label dmorte_s250:  # from 249.0 252.0 256.0
    SPEAKER 'Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.'

    menu:
        'Я запутался… какое тленным дело, если я сбегу?':
            # r530 # reply27307
            jump dmorte_s251


# s251 # say27287
label dmorte_s251:  # from 250.0
    SPEAKER 'Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?'

    menu:
        'Эти трупы, которых я видел здесь… откуда они все берутся?':
            # r531 # reply27308
            jump dmorte_s252
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?':
            # r532 # reply27309
            jump dmorte_s253
        'Ладно… Я… попробую это запомнить.':
            # r533 # reply27310
            jump dmorte_s257


# s252 # say27288
label dmorte_s252:  # from 249.1 251.0 256.1
    SPEAKER 'Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.'

    menu:
        'Просвети меня… *кто* такие эти смотрители?':
            # r534 # reply27311
            jump dmorte_s250
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?':
            # r535 # reply27312
            jump dmorte_s253
        'Ладно… Я… попробую это запомнить.':
            # r536 # reply27313
            jump dmorte_s257


# s253 # say27289
label dmorte_s253:  # from 249.2 251.1 252.1
    SPEAKER 'Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.'

    menu:
        'Последний шанс? Погоди… о *чем* это ты толкуешь?':
            # r537 # reply27314
            jump dmorte_s254


# s254 # say27290
label dmorte_s254:  # from 253.0
    SPEAKER 'Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?'

    menu:
        'Нет… не очень, если честно.':
            # r538 # reply27315
            jump dmorte_s255
        'Ты это не серьезно.' if _r27316_condition(gsm):
            # r539 # reply27316
            jump dmorte_s255


# s255 # say27291
label dmorte_s255:  # from 254.0 254.1
    SPEAKER 'Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* по крайней мере один раз умирали: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.'

    menu:
        'Постой… разве ты не говорил до этого, что я *не мертвый*?':
            # r540 # reply27317
            jump dmorte_s256


# s256 # say27292
label dmorte_s256:  # from 255.0
    SPEAKER 'Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…'

    menu:
        'Еще раз, кто эти смотрители?':
            # r541 # reply27318
            jump dmorte_s250
        'Но откуда берутся все эти трупы?':
            # r542 # reply27319
            jump dmorte_s252
        'Ладно… Я попробую это запомнить.':
            # r543 # reply27320
            jump dmorte_s257


# s257 # say27293
label dmorte_s257:  # from 249.3 251.2 252.2 256.2
    SPEAKER 'Послушай, шеф. Ты еще не отошел от свидания со смертью, поэтому у меня для тебя есть два небольших совета. Во-первых, если у тебя возникнет вопрос — *спроси* меня, хорошо?'

    menu:
        'Хорошо… если у меня возникнут вопросы, я спрошу у тебя.':
            # r544 # reply27321
            jump dmorte_s258


# s258 # say27294
label dmorte_s258:  # from 257.0
    SPEAKER 'Во-вторых, если ты хоть *наполовину* такой забывчивый, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.'

    menu:
        'Как в дневнике?':
            # r545 # reply27322
            jump dmorte_s259


# s259 # say27295
label dmorte_s259:  # from 258.0
    SPEAKER 'Да, как в дневнике. Если начнешь забывать важные вещи, вроде того, где ты находишься, открой его и освежи свою память. Понятно?'

    menu:
        'Ладно… Уяснил. Идем.':
            # r546 # reply27323
            jump show_graphics_menu


# s260 # say27296
label dmorte_s260:  # from -
    SPEAKER 'На одной из тех полок должен быть скальпель. Я бы на твоем месте нашел его до того, как начал бодаться с местными трупаками.'

    menu:
        'Ладно… Я поищу.':
            # r547 # reply27324
            jump show_graphics_menu


# s261 # say27297
label dmorte_s261:  # from -
    SPEAKER 'Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами… и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.'

    menu:
        'А, может, ты мне *поможешь*, Морт?':
            # r548 # reply27325
            jump dmorte_s262
        'Хорошо.':
            # r549 # reply27326
            jump show_graphics_menu


# s262 # say27298
label dmorte_s262:  # from 261.0
    SPEAKER 'Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту.'

    menu:
        'Я имел ввиду помощь в нападении на *трупов*.':
            # r550 # reply27327
            jump dmorte_s263
        'Ну ладно.':
            # r551 # reply27328
            jump show_graphics_menu


# s263 # say27299
label dmorte_s263:  # from 262.0
    SPEAKER 'Я? Я романтик, а не солдат. Я только под ногами буду путаться.'

    menu:
        'Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель.':
            # r552 # reply27329
            jump dmorte_s264
        'Ну ладно.':
            # r553 # reply27330
            jump show_graphics_menu


# s264 # say27300
label dmorte_s264:  # from 263.0
    SPEAKER 'Э… без проблем. Я помогу тебе.'

    menu:
        'Рад, что мы друг друга понимаем. За дело.':
            # r554 # reply27331
            jump show_graphics_menu


# s265 # say27301
label dmorte_s265:  # from -
    SPEAKER 'Отлично, похоже, ты позаботился о правильном трупе. Теперь надо найти ключ. Он должен быть на его теле. Как только мы его получим, мы сможем выбраться отсюда.'

    menu:
        'Хорошо.':
            # r555 # reply27332
            jump show_graphics_menu


# s266 # say27302
label dmorte_s266:  # from -
    SPEAKER 'Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.'

    menu:
        'Тогда я перепробую все двери.':
            # r556 # reply27333
            jump show_graphics_menu


# s267 # say27911
label dmorte_s267:  # from - # Check EXTENDS ~DCWCAFEF~ : 15
    SPEAKER 'Морт шипит в твое ухо: Законник-крючкотвор.'

    jump show_graphics_menu

# s268 # say27912
label dmorte_s268:  # from - # Check EXTENDS ~DCWCAFEF~ : 50Check EXTENDS ~DCWCAFEF~ : 50
    SPEAKER 'Это типа говорящей энциклопедии, шеф. На самом деле, мне не хочется об этом говорить.'

    menu:
        'Но ты ведь НЕ мимир, Морт…' if _r65536_condition(gsm):
            # r557 # reply65536
            jump show_graphics_menu


# s269 # say27913
label dmorte_s269:  # from -
    SPEAKER 'Морт, многозначительно водя бровями, направляется к женщине. А еще я могу…'

    menu:
        'Хватит, Морт.':
            # r558 # reply27914
            jump dmorte_s270


# s270 # say27915
label dmorte_s270:  # from 269.0 # Check EXTENDS ~DCWCAFEF~ : 51Check EXTENDS ~DCWCAFEF~ : 4
    SPEAKER 'Да-да. Хорошо, — Морт закатывает глаза и начинает ворчать. — Тогда уж лучше быть *мертвым*…'

    menu:
        'Постой… ты сказала 'разговаривает сам'? А разве обычно они не разговаривают?' if _r27916_condition(gsm):
            # r559 # reply27916
            jump show_graphics_menu
        'У меня есть несколько вопросов к этой женщине…':
            # r560 # reply27917
            jump show_graphics_menu
        'Оставить женщину в покое.':
            # r561 # reply27918
            jump show_graphics_menu


# s271 # say27919
label dmorte_s271:  # from - # Check EXTENDS ~DCWCAFEF~ : 52Check EXTENDS ~DCWCAFEF~ : 52
    SPEAKER 'Морт перебивает ее: Понимаешь, шеф, есть много признаков *качественного* мимира. Некоторые — например, я — намного лучше других. Более… э-э… 'самосознательные', говоря научным языком.'

    menu:
        'Хм-м.':
            # r562 # reply27920
            jump show_graphics_menu
        'Понятно.':
            # r563 # reply27921
            jump show_graphics_menu


# s272 # say27922
label dmorte_s272:  # from - # Check EXTENDS ~DCWCAFEF~ : 50
    SPEAKER 'Эй! Я всего лишь пытаюсь немного развлечься, шеф!'

    jump show_graphics_menu

# s273 # say28036
label dmorte_s273:  # from - # Check EXTENDS ~DMALMANR~ : 13Check EXTENDS ~DMALMANR~ : 14Check EXTENDS ~DMALMANR~ : 15
    SPEAKER 'Морт одобрительно кивает. Эй, а этот парень не так уж плох.'

    menu:
        'Ладно, вот… забирай свои деньги, Малманер.':
            # r564 # reply28041
            $ _r28041_action(gsm)
            jump show_graphics_menu
        'Бросить Малманеру десять медных монет.':
            # r565 # reply28042
            $ _r28042_action(gsm)
            jump show_graphics_menu
        'Правда? Будем считать, что я этого не слышал, Морт. Пошли.':
            # r566 # reply28043
            jump show_graphics_menu


# s274 # say28037
label dmorte_s274:  # from - # Check EXTENDS ~DMALMANR~ : 13Check EXTENDS ~DMALMANR~ : 14Check EXTENDS ~DMALMANR~ : 13Check EXTENDS ~DMALMANR~ : 14Check EXTENDS ~DMALMANR~ : 13Check EXTENDS ~DMALMANR~ : 14Check EXTENDS ~DMALMANR~ : 13Check EXTENDS ~DMALMANR~ : 14Check EXTENDS ~DMALMANR~ : 15
    SPEAKER 'Морт одобрительно кивает. Эй, а этот парень не так уж плох.'

    menu:
        'Ладно, вот… забирай свои деньги, Малманер.' if _r28038_condition(gsm):
            # r567 # reply28038
            $ _r28038_action(gsm)
            jump show_graphics_menu
        'Бросить Малманеру тридцать медных монет.' if _r28039_condition(gsm):
            # r568 # reply28039
            $ _r28039_action(gsm)
            jump show_graphics_menu
        'Ладно, вот… забирай свои деньги, Малманер.' if _r28040_condition(gsm):
            # r569 # reply28040
            $ _r28040_action(gsm)
            jump show_graphics_menu
        'Бросить Малманеру пятьдесят медных монет.' if _r28044_condition(gsm):
            # r570 # reply28044
            $ _r28044_action(gsm)
            jump show_graphics_menu
        'Ладно, вот… забирай свои деньги, Малманер.' if _r28045_condition(gsm):
            # r571 # reply28045
            $ _r28045_action(gsm)
            jump show_graphics_menu
        'Бросить Малманеру пятьдесят медных монет.' if _r28046_condition(gsm):
            # r572 # reply28046
            $ _r28046_action(gsm)
            jump show_graphics_menu
        'Ладно, вот… забирай свои деньги, Малманер.' if _r28047_condition(gsm):
            # r573 # reply28047
            $ _r28047_action(gsm)
            jump show_graphics_menu
        'Бросить Малманеру восемьдесят медных монет.' if _r28048_condition(gsm):
            # r574 # reply28048
            $ _r28048_action(gsm)
            jump show_graphics_menu
        'Правда? Будем считать, что я этого не слышал, Морт. Пошли.':
            # r575 # reply28049
            jump show_graphics_menu


# s275 # say28630
label dmorte_s275:  # from - # Check EXTENDS ~DGRACE~ : 60
    SPEAKER 'Какая скукота.'

    jump show_graphics_menu

# s276 # say28631
label dmorte_s276:  # from - # Check EXTENDS ~DGRACE~ : 72
    SPEAKER 'Шеф, она — танарри… суккуб.'

    jump show_graphics_menu

# s277 # say28632
label dmorte_s277:  # from - # Check EXTENDS ~DANNAH~ : 166
    SPEAKER 'Задвинься, бесовка! — Морт клацает зубами. — Я ЗА то, чтобы суккубка пошла с нами… Видят силы, от *тебя* веселья, как от колючки в кишках.'

    jump show_graphics_menu

# s278 # say28633
label dmorte_s278:  # from -
    SPEAKER 'Эй, минутку! Это *я* лучше всех разбираюсь в планах! Это моя работа, шеф!'

    menu:
        'Двое сведущих в плана людей в нашей команде — довольно неплохо, как по мне. Кроме того, еще я сказал, что она мила, Морт.':
            # r576 # reply28634
            jump dmorte_s279


# s279 # say28635
label dmorte_s279:  # from 278.0 # Check EXTENDS ~DGRACE~ : 79
    SPEAKER 'Пожалуй, только для глаз! Мне почему-то КАЖЕТСЯ, что стоит какой-нибудь цыпочке чуть-чуть оголиться, как ты уже принимаешь ее в команду! — Морт умолкает. — Не то чтобы я против. Просто подумал, что стоит об этом сказать.'

    menu:
        'Заметано, Морт. Госпожа Грация… Может, я слишком забегаю вперед, но ты не хотела бы отправиться с нами в путешествие?':
            # r577 # reply28636
            jump show_graphics_menu


# s280 # say28637
label dmorte_s280:  # from - # Check EXTENDS ~DGRACE~ : 119
    SPEAKER 'Мой товарищ в шрамах хотел сказать: с нами ДВУМЯ… Кстати, я Морт. Прошу простить моего товарища за то, что он не соизволил представить нас друг другу… Мне кажется, ваше присоединение к нам — ОТЛИЧНАЯ идея. У нас много места для суккуба. МНОГО места.'

    jump show_graphics_menu

# s281 # say28738
label dmorte_s281:  # from -
    SPEAKER 'Спасибо, шеф. Не могу выразить свою радость тем, что я снова с тобой. Его голос истекает сарказмом. А еще я научился новому приемчику, пока был там.'

    menu:
        'Ага. Отлично. Я очень рад, что ты вернулся назад.':
            # r578 # reply28743
            $ _r28743_action(gsm)
            jump show_graphics_menu
        'Извини, приятель. Я хотел его обмануть.' if _r28744_condition(gsm):
            # r579 # reply28744
            $ _r28744_action(gsm)
            jump dmorte_s282
        'Извини, приятель. Я хотел его обмануть.' if _r28745_condition(gsm):
            # r580 # reply28745
            $ _r28745_action(gsm)
            jump dmorte_s283


# s282 # say28739
label dmorte_s282:  # from 281.1
    SPEAKER 'Правда? В этом чувствуется твой стиль, босс. Хорошо придумано. Ты условно прощен. Просто не делай так больше.'

    menu:
        'Конечно, Морт. Идем.':
            # r581 # reply28746
            jump show_graphics_menu


# s283 # say28740
label dmorte_s283:  # from 281.2
    SPEAKER 'Почему-то мне в это верится с трудом. Давай просто забудем о случившемся. Идем.'

    menu:
        'Отлично.':
            # r582 # reply28747
            jump show_graphics_menu
        'Морт, я блефовал. Вот увидишь.':
            # r583 # reply28748
            jump show_graphics_menu


# s284 # say28741
label dmorte_s284:  # from -
    SPEAKER 'Спасибо, босс. Давай убираться отсюда! — Морт делает паузу. — А, кстати, босс… Эти ребята действительно соображают. Я научился у них паре острот.'

    menu:
        'Идем.':
            # r584 # reply28749
            jump show_graphics_menu


# s285 # say28962
label dmorte_s285:  # from - # Check EXTENDS ~DQUISAI~ : 5Check EXTENDS ~DQUISAI~ : 3
    SPEAKER 'Э… шеф? Ты ведь раньше видел статуи? Ты ведь знаешь, что они не разговаривают?'

    menu:
        'Подумай, Морт: ты — летающий и говорящий череп, который отрицает существование живых статуй.' if _r28967_condition(gsm):
            # r585 # reply28967
            jump dmorte_s286
        'Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?' if _r28968_condition(gsm):
            # r586 # reply28968
            $ _r28968_action(gsm)
            jump show_graphics_menu
        'Может быть. Я просто к нему прикоснусь…':
            # r587 # reply28969
            jump show_graphics_menu
        'Уйти.':
            # r588 # reply28970
            jump show_graphics_menu


# s286 # say28963
label dmorte_s286:  # from 285.0 # Check EXTENDS ~DQUISAI~ : 5Check EXTENDS ~DQUISAI~ : 3
    SPEAKER 'Ну… э… м-м. Тут ты прав, босс.'

    menu:
        'Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?' if _r28971_condition(gsm):
            # r589 # reply28971
            $ _r28971_action(gsm)
            jump show_graphics_menu
        'Конечно, Морт. Я просто к нему прикоснусь…':
            # r590 # reply28972
            jump show_graphics_menu
        'Уйти.':
            # r591 # reply28973
            jump show_graphics_menu


# s287 # say28964
label dmorte_s287:  # from -
    SPEAKER 'Шеф, может, она слишком анатомически правильная?'

    menu:
        'Это был риторический вопрос, Морт':
            # r592 # reply28974
            jump dmorte_s288


# s288 # say28965
label dmorte_s288:  # from 287.0 # Check EXTENDS ~DQUISAI~ : 5Check EXTENDS ~DQUISAI~ : 23
    SPEAKER 'Конечно, босс. Я это знал.'

    menu:
        'Я встретил здесь мага по имени Салабеш, который говорил о каменном человеке. Это ты?' if _r28975_condition(gsm):
            # r593 # reply28975
            $ _r28975_action(gsm)
            jump show_graphics_menu
        'Ударить статую.':
            # r594 # reply28976
            $ _r28976_action(gsm)
            jump show_graphics_menu
        'Уйти.':
            # r595 # reply28977
            jump show_graphics_menu


# s289 # say28966
label dmorte_s289:  # from - # Check EXTENDS ~DQUISAI~ : 11Check EXTENDS ~DQUISAI~ : 30Check EXTENDS ~DQUISAI~ : 29
    SPEAKER 'Морт закатывает глаза и издает бульканье. О силы, нет, только не еще один пень, говорящий… вот… так!'

    menu:
        'У меня есть вопросы о тебе…':
            # r596 # reply28978
            jump show_graphics_menu
        'У меня есть вопросы об этом месте.':
            # r597 # reply28979
            jump show_graphics_menu
        'Что ты знаешь о Равель Заморочке?' if _r28980_condition(gsm):
            # r598 # reply28980
            jump show_graphics_menu
        'Я потом к тебе загляну. Прощай.':
            # r599 # reply28981
            jump show_graphics_menu


# s290 # say29677
label dmorte_s290:  # from - # Check EXTENDS ~DQUELL~ : 21
    SPEAKER 'Эй, шеф, он скрестил пальцы!'

    jump show_graphics_menu

# s291 # say30527
label dmorte_s291:  # from - # Check EXTENDS ~DIANNIS~ : 10
    SPEAKER 'Морт вклинивается в разговор, шепча: Он говорит, что он юрист, консультант. Один из тех пней, которые трещат своими черепушками в судах.'

    jump show_graphics_menu

# s292 # say30816
label dmorte_s292:  # from - # Check EXTENDS ~DABLE~ : 2
    SPEAKER 'Морт озирается назад. Где?! Где?!'

    jump show_graphics_menu

# s293 # say30817
label dmorte_s293:  # from - # Check EXTENDS ~DABLE~ : 10Check EXTENDS ~DABLE~ : 10Check EXTENDS ~DABLE~ : 10
    SPEAKER 'Морт раскрывает рот. Гляди, за тобой — еще один летающий череп!'

    menu:
        'Самому поискать череп.' if _r30822_condition(gsm):
            # r600 # reply30822
            jump show_graphics_menu
        'Дать Морту повеселиться.' if _r30823_condition(gsm):
            # r601 # reply30823
            jump show_graphics_menu
        'Брось, Морт. У меня к нему вопросы…' if _r30824_condition(gsm):
            # r602 # reply30824
            jump show_graphics_menu


# s294 # say30818
label dmorte_s294:  # from - # Check EXTENDS ~DABLE~ : 11
    SPEAKER 'Вон там, куда я показываю! Вон там!'

    jump show_graphics_menu

# s295 # say30819
label dmorte_s295:  # from - # Check EXTENDS ~DABLE~ : 12
    SPEAKER 'Морт насмешливо произносит: Ты все пропустил! Там был целый *парад* черепов! Такое случается, наверно, раз в миллион циклов Великого Кольца!'

    jump show_graphics_menu

# s296 # say30820
label dmorte_s296:  # from - # Check EXTENDS ~DABLE~ : 16Check EXTENDS ~DABLE~ : 13
    SPEAKER 'Морт покачивается, как будто пожимает плечами. Предпочитаю называть это проницательностью по части человеческой природы.'

    menu:
        'У меня есть несколько вопросов…' if _r30825_condition(gsm):
            # r603 # reply30825
            jump show_graphics_menu
        'Снова привлечь внимание человека.' if _r30826_condition(gsm):
            # r604 # reply30826
            $ _r30826_action(gsm)
            jump show_graphics_menu


# s297 # say30821
label dmorte_s297:  # from - # Check EXTENDS ~DABLE~ : 65
    SPEAKER 'Знаешь, шеф, это НАСТОЛЬКО БЕЗУМНО, ЧТО МОЖЕТ СРАБОТАТЬ!'

    jump show_graphics_menu

# s298 # say31566
label dmorte_s298:  # from -
    SPEAKER 'Клянусь шипастыми сиськами Леди, вот это…  Внезапно все стихает. Остатки твоих чувств меркнут и покидают тебя.  [MRT387]'

    menu:
        'Пасть во тьму, став жертвой страшного проклятья Гангройгидона.':
            # r605 # reply31567
            $ _r31567_action(gsm)
            jump show_graphics_menu


# s299 # say32367
label dmorte_s299:  # from - # Check EXTENDS ~DDEATHAD~ : 1Check EXTENDS ~DDEATHAD~ : 1
    SPEAKER ''Тайнах'?! Секундочку! Мы же не собираемся *слушать* этого пустомелю? Да ладно… пойдем лучше найдем парочку цыпочек-чувствующих, которые еще ни разу не пробовали пламенной страсти от прикосновения губ черепа. Он в предвкушении водит бровями.'

    menu:
        'Тише, Морт. Мы подождем… по крайней мере немного.':
            # r606 # reply32368
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r607 # reply32369
            jump show_graphics_menu
        'Ты прав, Морт, идем отсюда.':
            # r608 # reply32370
            $ _r32370_action(gsm)
            jump show_graphics_menu


# s300 # say32371
label dmorte_s300:  # from - # Check EXTENDS ~DDEATHAD~ : 2Check EXTENDS ~DDEATHAD~ : 2Check EXTENDS ~DDEATHAD~ : 2
    SPEAKER 'Шепот Морта: Начало новых страданий.'

    menu:
        'Молча кивнуть Морту.':
            # r609 # reply32372
            jump show_graphics_menu
        'Морт, помолчи.':
            # r610 # reply32373
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r611 # reply32374
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r612 # reply32375
            $ _r32375_action(gsm)
            jump show_graphics_menu


# s301 # say32376
label dmorte_s301:  # from - # Check EXTENDS ~DDEATHAD~ : 3Check EXTENDS ~DDEATHAD~ : 3
    SPEAKER 'Шепот Морта: Ага, как же.'

    menu:
        'Молча кивнуть Морту.':
            # r613 # reply32377
            jump show_graphics_menu
        'Морт, тише.':
            # r614 # reply32378
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r615 # reply32379
            jump dmorte_s303
        'Точно. Пошли отсюда, Морт.':
            # r616 # reply32380
            $ _r32380_action(gsm)
            jump show_graphics_menu


# s302 # say32381
label dmorte_s302:  # from - # Check EXTENDS ~DDEATHAD~ : 5Check EXTENDS ~DDEATHAD~ : 5Check EXTENDS ~DDEATHAD~ : 5
    SPEAKER 'Шепот Морта: И бесконечной скуки.'

    menu:
        'Молча кивнуть Морту.':
            # r617 # reply32382
            jump show_graphics_menu
        'Морт, пожалуйста, тише.':
            # r618 # reply32383
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r619 # reply32384
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r620 # reply32385
            $ _r32385_action(gsm)
            jump show_graphics_menu


# s303 # say32386
label dmorte_s303:  # from 301.2 # Check EXTENDS ~DDEATHAD~ : 6Check EXTENDS ~DDEATHAD~ : 6Check EXTENDS ~DDEATHAD~ : 6
    SPEAKER 'Шепот Морта: Кажется, теперь мы оба знаем, куда отправимся после смерти.'

    menu:
        'Молча кивнуть Морту.':
            # r621 # reply32387
            jump show_graphics_menu
        'Морт, хватит болтать.':
            # r622 # reply32388
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r623 # reply32389
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r624 # reply32390
            $ _r32390_action(gsm)
            jump show_graphics_menu


# s304 # say32391
label dmorte_s304:  # from - # Check EXTENDS ~DDEATHAD~ : 8Check EXTENDS ~DDEATHAD~ : 8Check EXTENDS ~DDEATHAD~ : 8
    SPEAKER 'Шепот Морта: Это если только повезет.'

    menu:
        'Молча кивнуть Морту.':
            # r625 # reply32392
            jump show_graphics_menu
        'Хватит, Морт.':
            # r626 # reply32393
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r627 # reply32394
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r628 # reply32395
            $ _r32395_action(gsm)
            jump show_graphics_menu


# s305 # say32396
label dmorte_s305:  # from - # Check EXTENDS ~DDEATHAD~ : 9Check EXTENDS ~DDEATHAD~ : 9Check EXTENDS ~DDEATHAD~ : 9
    SPEAKER 'Шепот Морта: И это типа стимул? Чтобы вляпаться в это *опять*? Ха, не могу дождаться, когда я снова стану летающим черепом. Ура! Забей на этого неудачника. Походу, он еще сам никогда не умирал, верно?'

    menu:
        'Молча кивнуть Морту.':
            # r629 # reply32397
            jump show_graphics_menu
        'Хватит, Морт. Тише.':
            # r630 # reply32398
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r631 # reply32399
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r632 # reply32400
            $ _r32400_action(gsm)
            jump show_graphics_menu


# s306 # say32401
label dmorte_s306:  # from - # Check EXTENDS ~DDEATHAD~ : 11Check EXTENDS ~DDEATHAD~ : 11Check EXTENDS ~DDEATHAD~ : 11
    SPEAKER 'Шепот Морта: А, еще один дешевый лозунг.'

    menu:
        'Молча кивнуть Морту.':
            # r633 # reply32402
            jump show_graphics_menu
        'Морт, помолчи.':
            # r634 # reply32403
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r635 # reply32404
            jump show_graphics_menu
        'Точно. Пошли отсюда, Морт.':
            # r636 # reply32405
            $ _r32405_action(gsm)
            jump show_graphics_menu


# s307 # say32406
label dmorte_s307:  # from - # Check EXTENDS ~DDEATHAD~ : 15
    SPEAKER 'Морт громко кричит: Что за фигня!'

    jump show_graphics_menu

# s308 # say32407
label dmorte_s308:  # from - # Check EXTENDS ~DDEATHAD~ : 17Check EXTENDS ~DDEATHAD~ : 16
    SPEAKER 'Морт, увильнув от взгляда докладчика, поворачивается к тебе и шепотом произносит: Давай, шеф. Задай ему жару по этому поводу.'

    menu:
        'Да, у меня есть вопрос…':
            # r637 # reply32408
            jump show_graphics_menu
        'Вопросов нет. Мой приятель ошибся.':
            # r638 # reply32409
            jump show_graphics_menu


# s309 # say32410
label dmorte_s309:  # from - # Check EXTENDS ~DDEATHAD~ : 26Check EXTENDS ~DDEATHAD~ : 17Check EXTENDS ~DDEATHAD~ : 18
    SPEAKER 'Отлично! Еще одна смерть! Подпишите меня! Среди слушателей раздается хохот. Докладчик выглядит сердитым.'

    menu:
        'Что происходит, когда они умирают?':
            # r639 # reply32411
            jump show_graphics_menu
        'У меня есть другие вопросы…':
            # r640 # reply32412
            jump show_graphics_menu
        'Это все, что я хотел узнать.':
            # r641 # reply32413
            jump show_graphics_menu


# s310 # say32651
label dmorte_s310:  # from - # Check EXTENDS ~DSARHAVA~ : 3
    SPEAKER 'Хочешь, я отшлепаю эту пустоголовую цыпочку, шеф?'

    menu:
        'И никакого милосердия, Морт.':
            # r642 # reply32661
            jump dmorte_s316
        'Нет, Морт… Я справлюсь с этим.':
            # r643 # reply32662
            jump show_graphics_menu


# s311 # say32652
label dmorte_s311:  # from - # Check EXTENDS ~DSARHAVA~ : 4
    SPEAKER 'Обожаю твои пустоголовые приемчики, шеф.'

    jump show_graphics_menu

# s312 # say32653
label dmorte_s312:  # from - # Check EXTENDS ~DSARHAVA~ : 14Check EXTENDS ~DSARHAVA~ : 13
    SPEAKER 'Когда ты становишься на колени перед женщиной, Морт кричит: Шеф! Ты шутишь надо мной! То есть, я хочу сказать, ты же не будешь *этого* делать…'

    menu:
        'Не обращать внимания на Морта, вылизать сапог девушки.':
            # r644 # reply32663
            jump show_graphics_menu
        'Просто я не хочу никаких неприятностей, Морт. Если мы будем не осторожны, то я смогу позвать стражу.':
            # r645 # reply32664
            jump dmorte_s313
        'Ты прав, Морт. Идем.':
            # r646 # reply32665
            jump show_graphics_menu


# s313 # say32654
label dmorte_s313:  # from 312.1 # Check EXTENDS ~DSARHAVA~ : 7Check EXTENDS ~DSARHAVA~ : 13
    SPEAKER 'В этом есть что-то… но все же…'

    menu:
        'Забудь, Морт. Послушайте, мадам… Давайте прекратим это, пока я не позвал стражу.':
            # r647 # reply32666
            jump show_graphics_menu
        'Ты прав, Морт. Пошли отсюда.':
            # r648 # reply32667
            jump show_graphics_menu


# s314 # say32655
label dmorte_s314:  # from -
    SPEAKER 'Морт сдавленно смеется и щелкает зубами. Просто обычный дамский угодник, а, шеф?'

    jump show_graphics_menu

# s315 # say32656
label dmorte_s315:  # from -
    SPEAKER 'Ой-ой…'

    jump show_graphics_menu

# s316 # say32657
label dmorte_s316:  # from 310.0 # Check EXTENDS ~DSARHAVA~ : 39
    SPEAKER 'Морт подмигивает тебе и кричит девушке: Эй, ты! Да-да, ты, маленькая дерзкая грубиянка… смотреть на меня, когда я с тобой разговариваю! Чего это ты такая кислая, а?'

    jump show_graphics_menu

# s317 # say32658
label dmorte_s317:  # from - # Check EXTENDS ~DSARHAVA~ : 40
    SPEAKER 'Ааа, наверное, штаны у Пустынной принцессы от того, что султан хотел себе сыночка? Скажи-ка мне, 'принцесса Пустыни', ты так все ночи проводишь, за выпивкой и в драках, в окружении кучи хитрых подхалимов? Наверное, ты так пытаешься оправдать свое существование перед разочарованным отцом?'

    jump show_graphics_menu

# s318 # say32659
label dmorte_s318:  # from - # Check EXTENDS ~DSARHAVA~ : 41
    SPEAKER 'Ты что, вправду думаешь, что от твоих мелких скандальчиков ты станешь о себе лучшего мнения? Думаешь, ты чего-то *стоишь*? А ВОТ И НЕТ! И если тебе, бедняжка, стало легче от того, кто ты *на самом деле*, то я посоветую тебе сдаться, вернуться домой, выйти замуж и податься в какой-нибудь придворный гарем!'

    jump show_graphics_menu

# s319 # say32660
label dmorte_s319:  # from - # Check EXTENDS ~DSARHAVA~ : 42
    SPEAKER 'Морт поворачивается к тебе. Видишь, шеф, я *знаю*, как это все обычно случается. *Всем* известно, что Морт прав в данном вопросе. О нет, только не это, бедная маленькая Пустынная принцесса, оскорбленная, униженн…'

    jump show_graphics_menu

# s320 # say33073
label dmorte_s320:  # from - # Check EXTENDS ~DGHYSIS~ : 1Check EXTENDS ~DGHYSIS~ : 1
    SPEAKER 'Кровавая война? Это еще скучней, чем слушать, как законники декламируют законы. Давай-ка найдем пару молоденьких чувствующих, нуждающихся в просвещении по части любовных страстей! В предвкушении он водит бровями.'

    menu:
        'Нет, Морт… Я хочу послушать это.':
            # r649 # reply33074
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r650 # reply33075
            jump show_graphics_menu
        'Ладно, Морт, пошли.':
            # r651 # reply33076
            $ _r33076_action(gsm)
            jump show_graphics_menu


# s321 # say33300
label dmorte_s321:  # from - # Check EXTENDS ~DGHIVEM~ : 49
    SPEAKER 'Морт закатывает глаза и кричит. Ух ты! Смотри! Говорящая какашка!'

    jump show_graphics_menu

# s322 # say33301
label dmorte_s322:  # from - # Check EXTENDS ~DGHIVEM~ : 51Check EXTENDS ~DGHIVEM~ : 51
    SPEAKER 'Морт качает в твою сторону, обращаясь к мужчине: Я показывал на этого огромного пня, знаток… не на тебя! Без обид, ага?'

    menu:
        'Полегче, Морт…':
            # r652 # reply33302
            jump show_graphics_menu
        'Не обращать внимания на Морта.':
            # r653 # reply33303
            jump show_graphics_menu


# s323 # say33423
label dmorte_s323:  # from - # Check EXTENDS ~DGHIVEF~ : 47
    SPEAKER 'Морт закатывает глаза и кричит. Ух ты! Смотри! Говорящая какашка!'

    jump show_graphics_menu

# s324 # say33429
label dmorte_s324:  # from - # Check EXTENDS ~DGHIVEF~ : 49Check EXTENDS ~DGHIVEF~ : 49
    SPEAKER 'Морт качает в твою сторону, обращаясь к мужчине: Я показывал на этого огромного пня, знаток… не на тебя! Без обид, ага?'

    menu:
        'Полегче, Морт…':
            # r654 # reply33430
            jump show_graphics_menu
        'Не обращать внимания на Морта.':
            # r655 # reply33433
            jump show_graphics_menu


# s325 # say33958
label dmorte_s325:  # from -
    SPEAKER 'Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а? [MRT516]'

    menu:
        'Да… идем.':
            # r656 # reply33959
            $ _r33959_action(gsm)
            jump show_graphics_menu
        'Не сейчас, Морт.':
            # r657 # reply33960
            jump dmorte_s326


# s326 # say33961
label dmorte_s326:  # from 325.1
    SPEAKER 'Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?'

    menu:
        'Морт, у тебя НЕТ ни того, ни другого.':
            # r658 # reply33962
            jump dmorte_s327
        'Ладно. Я передумал. Давай, идем.':
            # r659 # reply33963
            $ _r33963_action(gsm)
            jump show_graphics_menu
        'Не сейчас, Морт. Может быть, потом.':
            # r660 # reply33964
            jump dmorte_s327


# s327 # say33965
label dmorte_s327:  # from 326.0 326.2
    SPEAKER 'Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?'

    menu:
        'Ладно. Я передумал. Давай, идем.':
            # r661 # reply33966
            $ _r33966_action(gsm)
            jump show_graphics_menu
        'Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.':
            # r662 # reply33967
            jump dmorte_s328


# s328 # say33968
label dmorte_s328:  # from 327.1
    SPEAKER 'Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.'

    menu:
        'Я так и сделаю. Прощай, Морт.':
            # r663 # reply33969
            jump show_graphics_menu


# s329 # say33970
label dmorte_s329:  # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    SPEAKER 'Что тебя гложет, шеф?'

    menu:
        'Можешь еще раз прочитать, что у меня вытатуировано на спине?':
            # r664 # reply65539
            jump dmorte_s649
        'Расскажи мне немного о Сигиле.':
            # r665 # reply65540
            jump dmorte_s659
        'Морт… я не хочу навешивать ярлыки на тебя, но умеешь ли ты *еще* что-нибудь, кроме болтовни?' if _r65541_condition(gsm):
            # r666 # reply65541
            jump dmorte_s663
        'Морт… еще раз, какие у тебя есть способности?' if _r65542_condition(gsm):
            # r667 # reply65542
            jump dmorte_s666
        'Морт, почему ты не прочитал последнюю строку татуировки на моей спине?' if _r65543_condition(gsm):
            # r668 # reply65543
            jump dmorte_s654
        'Мне нужен совет. Что, по-твоему, нужно делать дальше?':
            # r669 # reply65544
            jump dmorte_s669
        'Ты говорил, что ты — мимир, верно, Морт?' if _r65545_condition(gsm):
            # r670 # reply65545
            jump dmorte_s684
        'Расскажи мне еще раз, как ты оказался в Колонне Черепов.' if _r65546_condition(gsm):
            # r671 # reply65546
            jump dmorte_s693
        'Морт, почему с тех пор, как я вытащил тебя из Колонны, ты путешествуешь со мной?' if _r65547_condition(gsm):
            # r672 # reply65547
            jump dmorte_s715
        'Что ты знаешь о Кровавой войне?' if _r65548_condition(gsm):
            # r673 # reply65548
            jump dmorte_s723
        'Что тебе известно про ночную ведьму Равель?' if _r65549_condition(gsm):
            # r674 # reply65549
            jump dmorte_s722
        'Как ты умер, Морт?':
            # r675 # reply65550
            jump dmorte_s726
        'Ничего, Морт. Просто проверяю, что ты все еще со мной.':
            # r676 # reply65551
            jump show_graphics_menu


# s330 # say34990
label dmorte_s330:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r677 # reply34991
            $ _r34991_action(gsm)
            jump dmorte_s331
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r678 # reply35001
            $ _r35001_action(gsm)
            jump dmorte_s331


# s331 # say34992
label dmorte_s331:  # from 330.0 330.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r679 # reply34993
            $ _r34993_action(gsm)
            jump dmorte_s332
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r680 # reply34996
            jump dmorte_s333
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r681 # reply34999
            jump dmorte_s333
        'Как знаешь, Морт. Идем.':
            # r682 # reply35000
            jump show_graphics_menu


# s332 # say34994
label dmorte_s332:  # from 331.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r683 # reply34995
            jump show_graphics_menu


# s333 # say34997
label dmorte_s333:  # from 331.1 331.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r684 # reply34998
            jump show_graphics_menu


# s334 # say35022
label dmorte_s334:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r685 # reply35023
            $ _r35023_action(gsm)
            jump dmorte_s335
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r686 # reply35033
            $ _r35033_action(gsm)
            jump dmorte_s335


# s335 # say35024
label dmorte_s335:  # from 334.0 334.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r687 # reply35025
            $ _r35025_action(gsm)
            jump dmorte_s336
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r688 # reply35028
            jump dmorte_s337
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r689 # reply35031
            jump dmorte_s337
        'Как знаешь, Морт. Идем.':
            # r690 # reply35032
            jump show_graphics_menu


# s336 # say35026
label dmorte_s336:  # from 335.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r691 # reply35027
            jump show_graphics_menu


# s337 # say35029
label dmorte_s337:  # from 335.1 335.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r692 # reply35030
            jump show_graphics_menu


# s338 # say35054
label dmorte_s338:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r693 # reply35055
            $ _r35055_action(gsm)
            jump dmorte_s339
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r694 # reply35065
            $ _r35065_action(gsm)
            jump dmorte_s339


# s339 # say35056
label dmorte_s339:  # from 338.0 338.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r695 # reply35057
            $ _r35057_action(gsm)
            jump dmorte_s340
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r696 # reply35060
            jump dmorte_s341
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r697 # reply35063
            jump dmorte_s341
        'Как знаешь, Морт. Идем.':
            # r698 # reply35064
            jump show_graphics_menu


# s340 # say35058
label dmorte_s340:  # from 339.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r699 # reply35059
            jump show_graphics_menu


# s341 # say35061
label dmorte_s341:  # from 339.1 339.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r700 # reply35062
            jump show_graphics_menu


# s342 # say35086
label dmorte_s342:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r701 # reply35087
            $ _r35087_action(gsm)
            jump dmorte_s343
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r702 # reply35097
            $ _r35097_action(gsm)
            jump dmorte_s343


# s343 # say35088
label dmorte_s343:  # from 342.0 342.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r703 # reply35089
            $ _r35089_action(gsm)
            jump dmorte_s344
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r704 # reply35092
            jump dmorte_s345
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r705 # reply35095
            jump dmorte_s345
        'Как знаешь, Морт. Идем.':
            # r706 # reply35096
            jump show_graphics_menu


# s344 # say35090
label dmorte_s344:  # from 343.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r707 # reply35091
            jump show_graphics_menu


# s345 # say35093
label dmorte_s345:  # from 343.1 343.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r708 # reply35094
            jump show_graphics_menu


# s346 # say35118
label dmorte_s346:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r709 # reply35119
            $ _r35119_action(gsm)
            jump dmorte_s347
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r710 # reply35129
            $ _r35129_action(gsm)
            jump dmorte_s347


# s347 # say35120
label dmorte_s347:  # from 346.0 346.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r711 # reply35121
            $ _r35121_action(gsm)
            jump dmorte_s348
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r712 # reply35124
            jump dmorte_s349
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r713 # reply35127
            jump dmorte_s349
        'Как знаешь, Морт. Идем.':
            # r714 # reply35128
            jump show_graphics_menu


# s348 # say35122
label dmorte_s348:  # from 347.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r715 # reply35123
            jump show_graphics_menu


# s349 # say35125
label dmorte_s349:  # from 347.1 347.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r716 # reply35126
            jump show_graphics_menu


# s350 # say35150
label dmorte_s350:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r717 # reply35151
            $ _r35151_action(gsm)
            jump dmorte_s351
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r718 # reply35161
            $ _r35161_action(gsm)
            jump dmorte_s351


# s351 # say35152
label dmorte_s351:  # from 350.0 350.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r719 # reply35153
            $ _r35153_action(gsm)
            jump dmorte_s352
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r720 # reply35156
            jump dmorte_s353
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r721 # reply35159
            jump dmorte_s353
        'Как знаешь, Морт. Идем.':
            # r722 # reply35160
            jump show_graphics_menu


# s352 # say35154
label dmorte_s352:  # from 351.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r723 # reply35155
            jump show_graphics_menu


# s353 # say35157
label dmorte_s353:  # from 351.1 351.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r724 # reply35158
            jump show_graphics_menu


# s354 # say35182
label dmorte_s354:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r725 # reply35183
            $ _r35183_action(gsm)
            jump dmorte_s355
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r726 # reply35193
            $ _r35193_action(gsm)
            jump dmorte_s355


# s355 # say35184
label dmorte_s355:  # from 354.0 354.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r727 # reply35185
            $ _r35185_action(gsm)
            jump dmorte_s356
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r728 # reply35188
            jump dmorte_s357
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r729 # reply35191
            jump dmorte_s357
        'Как знаешь, Морт. Идем.':
            # r730 # reply35192
            jump show_graphics_menu


# s356 # say35186
label dmorte_s356:  # from 355.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r731 # reply35187
            jump show_graphics_menu


# s357 # say35189
label dmorte_s357:  # from 355.1 355.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r732 # reply35190
            jump show_graphics_menu


# s358 # say35214
label dmorte_s358:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r733 # reply35215
            $ _r35215_action(gsm)
            jump dmorte_s359
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r734 # reply35225
            $ _r35225_action(gsm)
            jump dmorte_s359


# s359 # say35216
label dmorte_s359:  # from 358.0 358.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r735 # reply35217
            $ _r35217_action(gsm)
            jump dmorte_s360
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r736 # reply35220
            jump dmorte_s361
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r737 # reply35223
            jump dmorte_s361
        'Как знаешь, Морт. Идем.':
            # r738 # reply35224
            jump show_graphics_menu


# s360 # say35218
label dmorte_s360:  # from 359.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r739 # reply35219
            jump show_graphics_menu


# s361 # say35221
label dmorte_s361:  # from 359.1 359.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r740 # reply35222
            jump show_graphics_menu


# s362 # say35246
label dmorte_s362:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r741 # reply35247
            $ _r35247_action(gsm)
            jump dmorte_s363
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r742 # reply35257
            $ _r35257_action(gsm)
            jump dmorte_s363


# s363 # say35248
label dmorte_s363:  # from 362.0 362.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r743 # reply35249
            $ _r35249_action(gsm)
            jump dmorte_s364
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r744 # reply35252
            jump dmorte_s365
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r745 # reply35255
            jump dmorte_s365
        'Как знаешь, Морт. Идем.':
            # r746 # reply35256
            jump show_graphics_menu


# s364 # say35250
label dmorte_s364:  # from 363.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r747 # reply35251
            jump show_graphics_menu


# s365 # say35253
label dmorte_s365:  # from 363.1 363.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r748 # reply35254
            jump show_graphics_menu


# s366 # say35278
label dmorte_s366:  # from -
    SPEAKER 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r749 # reply35279
            $ _r35279_action(gsm)
            jump dmorte_s367
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r750 # reply35289
            $ _r35289_action(gsm)
            jump dmorte_s367


# s367 # say35280
label dmorte_s367:  # from 366.0 366.1
    SPEAKER 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r751 # reply35281
            $ _r35281_action(gsm)
            jump dmorte_s368
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r752 # reply35284
            jump dmorte_s369
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r753 # reply35287
            jump dmorte_s369
        'Как знаешь, Морт. Идем.':
            # r754 # reply35288
            jump show_graphics_menu


# s368 # say35282
label dmorte_s368:  # from 367.0
    SPEAKER 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r755 # reply35283
            jump show_graphics_menu


# s369 # say35285
label dmorte_s369:  # from 367.1 367.2
    SPEAKER 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r756 # reply35286
            jump show_graphics_menu


# s370 # say35310
label dmorte_s370:  # from 377.3
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r757 # reply35311
            jump dmorte_s371
        'Не думаю, что он имеет что-то против.':
            # r758 # reply35326
            jump dmorte_s372
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r759 # reply35327
            jump dmorte_s373


# s371 # say35312
label dmorte_s371:  # from 370.0
    SPEAKER 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r760 # reply35313
            jump dmorte_s372
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r761 # reply35325
            jump dmorte_s373


# s372 # say35314
label dmorte_s372:  # from 370.1 371.0
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r762 # reply35315
            jump dmorte_s373
        'Ладно. Идем.':
            # r763 # reply35324
            jump show_graphics_menu


# s373 # say35316
label dmorte_s373:  # from 370.2 371.1 372.0
    SPEAKER 'Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r764 # reply35317
            jump dmorte_s374
        'Идем.':
            # r765 # reply35323
            jump show_graphics_menu


# s374 # say35318
label dmorte_s374:  # from 373.0
    SPEAKER 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r766 # reply35319
            $ _r35319_action(gsm)
            jump dmorte_s375
        'Идем.':
            # r767 # reply35322
            jump show_graphics_menu


# s375 # say35320
label dmorte_s375:  # from 374.0
    SPEAKER 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r768 # reply35321
            jump show_graphics_menu


# s376 # say35341
label dmorte_s376:  # from -
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r769 # reply35342
            $ _r35342_action(gsm)
            jump dmorte_s377
        'О… Я не хотел ему навредить.':
            # r770 # reply35360
            $ _r35360_action(gsm)
            jump dmorte_s377
        'Ну, тогда ладно. Может, в другой раз.':
            # r771 # reply35361
            jump dmorte_s377


# s377 # say35343
label dmorte_s377:  # from 376.0 376.1 376.2 # Check EXTENDS ~DS1221~ : 4Check EXTENDS ~DS1221~ : 5Check EXTENDS ~DS1221~ : 6
    SPEAKER 'Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35344_condition(gsm):
            # r772 # reply35344
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35352_condition(gsm):
            # r773 # reply35352
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35355_condition(gsm):
            # r774 # reply35355
            jump show_graphics_menu
        'Неважно, может быть, в другой раз.' if _r35358_condition(gsm):
            # r775 # reply35358
            $ _r35358_action(gsm)
            jump dmorte_s370
        'Неважно, может быть, в другой раз.' if _r35359_condition(gsm):
            # r776 # reply35359
            jump show_graphics_menu


# s378 # say35387
label dmorte_s378:  # from 385.3
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r777 # reply35388
            jump dmorte_s379
        'Не думаю, что он имеет что-то против.':
            # r778 # reply35403
            jump dmorte_s380
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r779 # reply35404
            jump dmorte_s381


# s379 # say35389
label dmorte_s379:  # from 378.0
    SPEAKER 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r780 # reply35390
            jump dmorte_s380
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r781 # reply35402
            jump dmorte_s381


# s380 # say35391
label dmorte_s380:  # from 378.1 379.0
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r782 # reply35392
            jump dmorte_s381
        'Ладно. Идем.':
            # r783 # reply35401
            jump show_graphics_menu


# s381 # say35393
label dmorte_s381:  # from 378.2 379.1 380.0
    SPEAKER 'Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r784 # reply35394
            jump dmorte_s382
        'Идем.':
            # r785 # reply35400
            jump show_graphics_menu


# s382 # say35395
label dmorte_s382:  # from 381.0
    SPEAKER 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r786 # reply35396
            $ _r35396_action(gsm)
            jump dmorte_s383
        'Идем.':
            # r787 # reply35399
            jump show_graphics_menu


# s383 # say35397
label dmorte_s383:  # from 382.0
    SPEAKER 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r788 # reply35398
            jump show_graphics_menu


# s384 # say35418
label dmorte_s384:  # from -
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r789 # reply35419
            $ _r35419_action(gsm)
            jump dmorte_s385
        'О… Я не хотел ему навредить.':
            # r790 # reply35437
            $ _r35437_action(gsm)
            jump dmorte_s385
        'Ну, тогда ладно. Может, в другой раз.':
            # r791 # reply35438
            jump dmorte_s385


# s385 # say35420
label dmorte_s385:  # from 384.0 384.1 384.2 # Check EXTENDS ~DS748~ : 4Check EXTENDS ~DS748~ : 5Check EXTENDS ~DS748~ : 6
    SPEAKER 'Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35421_condition(gsm):
            # r792 # reply35421
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35429_condition(gsm):
            # r793 # reply35429
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35432_condition(gsm):
            # r794 # reply35432
            jump show_graphics_menu
        'Неважно, может быть, в другой раз.' if _r35435_condition(gsm):
            # r795 # reply35435
            $ _r35435_action(gsm)
            jump dmorte_s378
        'Неважно, может быть, в другой раз.' if _r35436_condition(gsm):
            # r796 # reply35436
            jump show_graphics_menu


# s386 # say35464
label dmorte_s386:  # from 393.3
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r797 # reply35465
            jump dmorte_s387
        'Не думаю, что он имеет что-то против.':
            # r798 # reply35480
            jump dmorte_s388
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r799 # reply35481
            jump dmorte_s389


# s387 # say35466
label dmorte_s387:  # from 386.0
    SPEAKER 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r800 # reply35467
            jump dmorte_s388
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r801 # reply35479
            jump dmorte_s389


# s388 # say35468
label dmorte_s388:  # from 386.1 387.0
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r802 # reply35469
            jump dmorte_s389
        'Ладно. Идем.':
            # r803 # reply35478
            jump show_graphics_menu


# s389 # say35470
label dmorte_s389:  # from 386.2 387.1 388.0
    SPEAKER 'Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r804 # reply35471
            jump dmorte_s390
        'Идем.':
            # r805 # reply35477
            jump show_graphics_menu


# s390 # say35472
label dmorte_s390:  # from 389.0
    SPEAKER 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r806 # reply35473
            $ _r35473_action(gsm)
            jump dmorte_s391
        'Идем.':
            # r807 # reply35476
            jump show_graphics_menu


# s391 # say35474
label dmorte_s391:  # from 390.0
    SPEAKER 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r808 # reply35475
            jump show_graphics_menu


# s392 # say35495
label dmorte_s392:  # from -
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r809 # reply35496
            $ _r35496_action(gsm)
            jump dmorte_s393
        'О… Я не хотел ему навредить.':
            # r810 # reply35514
            $ _r35514_action(gsm)
            jump dmorte_s393
        'Ну, тогда ладно. Может, в другой раз.':
            # r811 # reply35515
            jump dmorte_s393


# s393 # say35497
label dmorte_s393:  # from 392.0 392.1 392.2 # Check EXTENDS ~DS996~ : 4Check EXTENDS ~DS996~ : 5Check EXTENDS ~DS996~ : 6
    SPEAKER 'Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35498_condition(gsm):
            # r812 # reply35498
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35506_condition(gsm):
            # r813 # reply35506
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35509_condition(gsm):
            # r814 # reply35509
            jump show_graphics_menu
        'Неважно, может быть, в другой раз.' if _r35512_condition(gsm):
            # r815 # reply35512
            $ _r35512_action(gsm)
            jump dmorte_s386
        'Неважно, может быть, в другой раз.' if _r35513_condition(gsm):
            # r816 # reply35513
            jump show_graphics_menu


# s394 # say35541
label dmorte_s394:  # from 401.3
    SPEAKER 'Хм-м. Интересно, что подумает этот седобородый, если *я* возьму взаймы его тело…'

    menu:
        'Седобородый?':
            # r817 # reply35542
            jump dmorte_s395
        'Не думаю, что он имеет что-то против.':
            # r818 # reply35557
            jump dmorte_s396
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r819 # reply35558
            jump dmorte_s397


# s395 # say35543
label dmorte_s395:  # from 394.0
    SPEAKER 'Седобородый… ну знаешь, старикашка, старичье, рухлядь… старый.'

    menu:
        'Ну, не думаю, что у него есть хоть один аргумент против. Почему бы и не взять его тело?':
            # r820 # reply35544
            jump dmorte_s396
        'Что-то мне подсказывает, что будь у тебя руки, ты бы был в два раза назойливее. Идем.':
            # r821 # reply35556
            jump dmorte_s397


# s396 # say35545
label dmorte_s396:  # from 394.1 395.0
    SPEAKER 'Морт изучает скелет, но затем качает головой. Не… Мне нужно что-нибудь посвежее. И что-нибудь чуть более величественней… а этот какой-то весь скрипучий и в трещинах.'

    menu:
        'А ты, значит, нет?':
            # r822 # reply35546
            jump dmorte_s397
        'Ладно. Идем.':
            # r823 # reply35555
            jump show_graphics_menu


# s397 # say35547
label dmorte_s397:  # from 394.2 395.1 396.0
    SPEAKER 'Ох, да ты просто кладезь хохм, — Морт свирепо смотрит на тебя. — Да и вообще. НА СЕБЯ посмотри. Зеркала молят о пощаде, когда ты проходишь мимо них.'

    menu:
        'Да? Зато у *меня* все при себе.':
            # r824 # reply35548
            jump dmorte_s398
        'Идем.':
            # r825 # reply35554
            jump show_graphics_menu


# s398 # say35549
label dmorte_s398:  # from 397.0
    SPEAKER 'Морт фыркает. Тебе совершенно непонятно, как это ему удалось без легких.'

    menu:
        'Позволь мне сказать, Морт. Нет ничего лучше, чем ходить, размахивать руками, вдыхать свежий воздух через полные легкие. Иметь тело — это ОЧЕНЬ приятно.':
            # r826 # reply35550
            $ _r35550_action(gsm)
            jump dmorte_s399
        'Идем.':
            # r827 # reply35553
            jump show_graphics_menu


# s399 # say35551
label dmorte_s399:  # from 398.0
    SPEAKER 'Да будет тебе известно, что помощь тебе в побеге из препараторской только что добавлена в растущий список моих сожалений, — Морт снова фыркает. — Надо было оставить тебя там гнить… подольше, то есть.'

    menu:
        'Очень приятно это слышать. Идем.':
            # r828 # reply35552
            jump show_graphics_menu


# s400 # say35572
label dmorte_s400:  # from -
    SPEAKER 'Эй, шеф. Это уже вандализм. Эти скобы — возможно, единственное, что не дает рассыпаться этому мешку с костями. Знаешь, с такими приятелями некромантия чудес не творит.'

    menu:
        'И что?':
            # r829 # reply35573
            $ _r35573_action(gsm)
            jump dmorte_s401
        'О… Я не хотел ему навредить.':
            # r830 # reply35591
            $ _r35591_action(gsm)
            jump dmorte_s401
        'Ну, тогда ладно. Может, в другой раз.':
            # r831 # reply35592
            jump dmorte_s401


# s401 # say35574
label dmorte_s401:  # from 400.0 400.1 400.2 # Check EXTENDS ~DS863~ : 4Check EXTENDS ~DS863~ : 5Check EXTENDS ~DS863~ : 6
    SPEAKER 'Да нет, ничего. Морт делает странный жест. Тебе это кажется похожим на пожимание плечами. Просто не был уверен, что ты это знаешь. Валяй, можешь попробовать.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35575_condition(gsm):
            # r832 # reply35575
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35583_condition(gsm):
            # r833 # reply35583
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35586_condition(gsm):
            # r834 # reply35586
            jump show_graphics_menu
        'Неважно, может быть, в другой раз.' if _r35589_condition(gsm):
            # r835 # reply35589
            $ _r35589_action(gsm)
            jump dmorte_s394
        'Неважно, может быть, в другой раз.' if _r35590_condition(gsm):
            # r836 # reply35590
            jump show_graphics_menu


# s402 # say38265
label dmorte_s402:  # from - # Check EXTENDS ~DECCO~ : 7
    SPEAKER 'Я уже втрескался в эту крошку по уши!'

    menu:
        'А написать или показать жестами?':
            # r837 # reply38267
            jump show_graphics_menu


# s403 # say38266
label dmorte_s403:  # from - # Check EXTENDS ~DECCO~ : 34
    SPEAKER 'Ой!'

    menu:
        'А?':
            # r838 # reply38268
            jump show_graphics_menu


# s404 # say39000
label dmorte_s404:  # from - # Check EXTENDS ~DMANYAS1~ : 5
    SPEAKER 'Морт шепчет: Не к добру все это, шеф. Будь осторожен, не то они начисто сотрут твои мозги… чем их больше, тем они сильнее: каждая крыса добавляет свой разум к остальным. Они *смертельно* опасны.'

    jump show_graphics_menu

# s405 # say39001
label dmorte_s405:  # from - # Check EXTENDS ~DMANYAS1~ : 58
    SPEAKER 'Морт шепчет: Не к добру все это, шеф. Будь осторожен, не то они начисто сотрут твои мозги… чем их больше, тем они сильнее: каждая крыса добавляет свой разум к остальным. Они *смертельно* опасны.'

    jump show_graphics_menu

# s406 # say39002
label dmorte_s406:  # from - # Check EXTENDS ~DMANYAS1~ : 78
    SPEAKER 'Морт шепчет: Не знаю, к чему они клонят, шеф, но лучше следи за тем, о чем думаешь. Они — коллективный разум, и каждая крыса добавляет свой разум к остальным, и они дерутся, как… прости за каламбур… как загнанные в угол крысы. Мы у них дома, босс, и им некуда деваться. Так что не наломай дров.'

    jump show_graphics_menu

# s407 # say39564
label dmorte_s407:  # from - # Check EXTENDS ~DYVES~ : 2
    SPEAKER 'Какое совпадение! Я тоже охочусь — только за цыпочками.'

    jump show_graphics_menu

# s408 # say39565
label dmorte_s408:  # from -
    SPEAKER 'Я? Почему это *я* должен травить байки?'

    menu:
        'Тогда забудь.':
            # r839 # reply39713
            jump dmorte_s409
        'Морт, просто расскажи историю.':
            # r840 # reply39714
            jump dmorte_s413


# s409 # say39566
label dmorte_s409:  # from 408.0
    SPEAKER 'Нет-нет, я расскажу… Просто я решил, что стоит немного поныть — согласно обычаю. К тому же, я люблю, когда мне уделяют внимание.'

    menu:
        'Нет уж, Морт. Я не желаю слышать ее.':
            # r841 # reply39715
            jump dmorte_s410
        'Ладно… тогда давай.':
            # r842 # reply39716
            $ _r39716_action(gsm)
            jump dmorte_s414


# s410 # say39567
label dmorte_s410:  # from 409.0
    SPEAKER 'Пожалуйста! Ну? Пожааалуйста! Это отличная история! Много персонажей, много действия, много предзнаменований, и потрясающий *денуэман*!'

    menu:
        'Не может быть, чтобы все было настолько хорошо.':
            # r843 # reply39717
            jump dmorte_s411
        'Что такое денуэман?':
            # r844 # reply39718
            jump dmorte_s412
        'Ладно… валяй.':
            # r845 # reply39719
            $ _r39719_action(gsm)
            jump dmorte_s414


# s411 # say39568
label dmorte_s411:  # from 410.0
    SPEAKER 'Может! Может! *Давай*!'

    menu:
        'Постой… что такое денуэман?':
            # r846 # reply39720
            jump dmorte_s412
        'Ладно, валяй.':
            # r847 # reply39721
            $ _r39721_action(gsm)
            jump dmorte_s414


# s412 # say39569
label dmorte_s412:  # from 410.1 411.0
    SPEAKER 'Понятия не имею! Но *звучит* впечатляюще!'

    menu:
        'Ладно, валяй.':
            # r848 # reply39722
            $ _r39722_action(gsm)
            jump dmorte_s414


# s413 # say39570
label dmorte_s413:  # from 408.1 # ~SetGlobal("Yves_Shared","AR0605",1) ~ GOTO 414
    SPEAKER 'Ладно, ладно…'

    jump show_graphics_menu

# s414 # say39571
label dmorte_s414:  # from 409.1 410.2 411.1 412.0 413.0 # Check EXTENDS ~DYVES~ : 4
    SPEAKER 'Сидел себе старик на краю темной дороги, так? Он не был уверен, в какую сторону идти, и он не помнил, куда он направлялся и кем он был. Он присел ненадолго, чтобы дать отдых своим уставшим ногам, и вдруг видит перед собой старуху. Она беззубо улыбнулась и, хихикая, промолвила: 'А теперь твое третье желание. Каким оно будет?''

    menu:
        'Продолжай, Морт.':
            # r849 # reply39724
            jump dmorte_s415
        'Погоди… У меня есть вопросы к Ив…':
            # r850 # reply39725
            jump show_graphics_menu
        'Морт, мы послушаем ее в другой раз. Счастливо, Ив.':
            # r851 # reply39726
            jump show_graphics_menu


# s415 # say39572
label dmorte_s415:  # from 414.0 # Check EXTENDS ~DYVES~ : 4
    SPEAKER ''Третье желание? — ответил старик в замешательстве. — Как оно может быть третьим, если второго и первого не было?''

    menu:
        'Продолжай, Морт.':
            # r852 # reply39727
            jump dmorte_s416
        'Погоди… У меня есть вопросы к Ив…':
            # r853 # reply39728
            jump show_graphics_menu
        'Морт, мы послушаем ее в другой раз. Счастливо, Ив.':
            # r854 # reply39729
            jump show_graphics_menu


# s416 # say39573
label dmorte_s416:  # from 415.0 # Check EXTENDS ~DYVES~ : 4
    SPEAKER ''Ты уже загадал два желания — со смехом ответила старая карга, — но твоим вторым желанием было, чтобы все стало таким, каким оно было до того, как ты загадал первое желание. Потому ты ничего и не помнишь: ведь все так, как было до того, как ты начал загадывать желания. Так что у тебя осталось одно желание'.'

    menu:
        'Продолжай, Морт.':
            # r855 # reply39752
            jump dmorte_s417
        'Погоди… У меня есть вопросы к Ив…':
            # r856 # reply39753
            jump show_graphics_menu
        'Морт, мы послушаем ее в другой раз. Счастливо, Ив.':
            # r857 # reply39754
            jump show_graphics_menu


# s417 # say39574
label dmorte_s417:  # from 416.0 # Check EXTENDS ~DYVES~ : 55
    SPEAKER ''Ладно, — сказал старик. — Я в это все не верю, но ведь нет ничего страшного, если я загадаю желание. Я хочу знать, кто я такой'.  'Забавно, — сказала старуха, выполнив его. — Таким было твое первое желание, — и исчезла навсегда'.'

    jump show_graphics_menu

# s418 # say39575
label dmorte_s418:  # from - # Check EXTENDS ~DNORDOM~ : 11
    SPEAKER 'Что это была за фигня, тупой полигон?! Это самая нудная история из тех, что я когда-либо слышал!'

    jump show_graphics_menu

# s419 # say39576
label dmorte_s419:  # from - # Check EXTENDS ~DNORDOM~ : 12
    SPEAKER 'Приукрашено?'

    jump show_graphics_menu

# s420 # say39577
label dmorte_s420:  # from - # Check EXTENDS ~DANNAH~ : 196
    SPEAKER '*Давай* уже, чертовка. У тебя уже есть хвост, с которым ты не хочешь расставаться.'

    jump show_graphics_menu

# s421 # say40068
label dmorte_s421:  # from - # Check EXTENDS ~DNENNY~ : 2Check EXTENDS ~DNENNY~ : 2Check EXTENDS ~DNENNY~ : 2Check EXTENDS ~DNENNY~ : 3
    SPEAKER 'Морт вертится вокруг тебя, подшучивая над очевидностью слов девушки. Силы небесные, шеф… а ведь она права! Как я раньше не заметил… ты же весь в *шрамах*!'

    menu:
        'Это все старые шрамы. Я в порядке.' if _r40069_condition(gsm):
            # r858 # reply40069
            jump show_graphics_menu
        'Только немного. Я очень скоро поправлюсь.' if _r40070_condition(gsm):
            # r859 # reply40070
            jump show_graphics_menu
        'Да. И очень сильно.' if _r40071_condition(gsm):
            # r860 # reply40071
            jump show_graphics_menu
        'Не думай об этом. У меня еще вопросы…':
            # r861 # reply40072
            jump show_graphics_menu
        'Не волнуйся об этом. Счастливо.':
            # r862 # reply40073
            jump show_graphics_menu


# s422 # say40074
label dmorte_s422:  # from -
    SPEAKER 'Морт водит бровями. Да ты и впрямь слишком прямая… может, стоит что-нибудь сделать с этими обвисшими, болтающимися гр…'

    menu:
        'Хватит, Морт.':
            # r863 # reply40075
            jump dmorte_s423


# s423 # say40076
label dmorte_s423:  # from 422.0 # Check EXTENDS ~DNENNY~ : 9Check EXTENDS ~DNENNY~ : 9Check EXTENDS ~DNENNY~ : 9Check EXTENDS ~DNENNY~ : 9
    SPEAKER 'Морт умолкает.'

    menu:
        'Нет проблем, Ненни.' if _r40077_condition(gsm):
            # r864 # reply40077
            jump show_graphics_menu
        'Следи, чтобы это больше не повторилось, Ненни.' if _r40078_condition(gsm):
            # r865 # reply40078
            jump show_graphics_menu
        'Нет проблем, барышня.' if _r40079_condition(gsm):
            # r866 # reply40079
            jump show_graphics_menu
        'Следи, чтобы это больше не повторилось, девочка.' if _r40080_condition(gsm):
            # r867 # reply40080
            jump show_graphics_menu


# s424 # say40081
label dmorte_s424:  # from - # Check EXTENDS ~DNENNY~ : 27
    SPEAKER 'Эй!'

    jump show_graphics_menu

# s425 # say40082
label dmorte_s425:  # from - # Check EXTENDS ~DNENNY~ : 3
    SPEAKER 'Морт бурчит себе под нос: Думаю, хорошо, что там *вообще* хоть что-нибудь есть.'

    menu:
        'У меня другой вопрос, Ненни…':
            # r868 # reply40083
            jump show_graphics_menu
        'Это все, что я хотел узнать, Ненни. Прощай.':
            # r869 # reply40084
            jump show_graphics_menu


# s426 # say40222
label dmorte_s426:  # from - # Check EXTENDS ~DBROCUS4~ : 4Check EXTENDS ~DBROCUS4~ : 2
    SPEAKER 'Ооо, нет… ты просто *обязан* нам сейчас же все рассказать.'

    menu:
        'Да… пожалуйста, расскажи нам.':
            # r870 # reply40223
            jump show_graphics_menu
        'Брось это, Морт. У меня к нему другой вопрос…':
            # r871 # reply40224
            jump show_graphics_menu
        'Забудь об этом, Морт. Идем.':
            # r872 # reply40225
            jump show_graphics_menu


# s427 # say40275
label dmorte_s427:  # from - # Check EXTENDS ~DSADJULI~ : 12Check EXTENDS ~DSADJULI~ : 13Check EXTENDS ~DSADJULI~ : 24
    SPEAKER 'Морт подлетает поближе к тебе и шепчет: Мне жаль ее любовника. Он не представляет, как плохо обстоят дела. От таких девчонок, как эта, одни проблемы.'

    menu:
        'Это звучит не очень мудро, Джульетта. Довольствуйся тем, что имеешь.':
            # r873 # reply40276
            jump show_graphics_menu
        'Что у тебя на уме, Джульетта?':
            # r874 # reply40277
            jump show_graphics_menu
        'У меня еще вопросы, Джульетта…':
            # r875 # reply40278
            jump show_graphics_menu
        'Это все, что я хотел узнать, Джульетта. Прощай.':
            # r876 # reply40279
            jump show_graphics_menu


# s428 # say40685
label dmorte_s428:  # from - # Check EXTENDS ~DMARISSA~ : 2Check EXTENDS ~DMARISSA~ : 3
    SPEAKER 'Морт тихонько шепчет: Ух ты… жуткая девчонка.'

    menu:
        'Прошу прощения, миледи… Не думал, что тут кто-нибудь есть.':
            # r877 # reply40686
            jump show_graphics_menu
        'У меня есть несколько вопросов, миледи…':
            # r878 # reply40687
            jump show_graphics_menu
        'В таком случае, прощайте, миледи.':
            # r879 # reply40688
            jump show_graphics_menu


# s429 # say40846
label dmorte_s429:  # from - # Check EXTENDS ~DBROCUS6~ : 3
    SPEAKER 'Брось, шеф! Мы в доме, где полным-полно самых сексуальных цыпочек по эту сторону мультивселенной, а ты останавливаешься, чтобы поболтать с *модронами*?'

    menu:
        'Что ты можешь рассказать о них, Морт?':
            # r880 # reply40847
            jump dmorte_s430
        'Не обращать внимания на Морта и поздороваться с модроном.':
            # r881 # reply40848
            $ _r40848_action(gsm)
            jump show_graphics_menu
        'Прошу прощения, Морт, но я разговариваю с модроном.':
            # r882 # reply40849
            jump dmorte_s431
        'Хорошо. Идем, Морт.':
            # r883 # reply40850
            jump show_graphics_menu


# s430 # say40851
label dmorte_s430:  # from 429.0 # Check EXTENDS ~DBROCUS6~ : 3
    SPEAKER 'Морт издает звук крайнего отвращения. Что тут сказать? Мелкие назойливые механические жучки… без передыху трудятся над навязыванием закона и порядка в мультивселенной. Заметь, не *добра*… только порядка. Давай просто забудем о них и пойдем поболтаем с дамочками, а?'

    menu:
        'Не обращать внимания на Морта и поздороваться с модроном.':
            # r884 # reply40852
            $ _r40852_action(gsm)
            jump show_graphics_menu
        'Прошу прощения, Морт, но я разговариваю с модроном.':
            # r885 # reply40853
            jump dmorte_s431
        'Хорошо. Идем, Морт.':
            # r886 # reply40854
            jump show_graphics_menu


# s431 # say40855
label dmorte_s431:  # from 429.2 430.1 # Check EXTENDS ~DBROCUS6~ : 3
    SPEAKER 'Морт громко вздыхает. Ладно, как знаешь… Только не говори, что я тебя не предупреждал. Хотя ты, наверное, многого от них не добьешься… у них довольно странная манера разговора.'

    menu:
        'Приветствую…':
            # r887 # reply40856
            $ _r40856_action(gsm)
            jump show_graphics_menu


# s432 # say41135
label dmorte_s432:  # from - # Check EXTENDS ~DKESAI~ : 2
    SPEAKER 'Все что угодно! — кричит Морт. — Ты можешь сделать со мной все что захочешь!'

    jump show_graphics_menu

# s433 # say41136
label dmorte_s433:  # from - # Check EXTENDS ~DKESAI~ : 11
    SPEAKER 'Я вот-вот разрыдаюсь… где же была эта крошка, когда у меня было *тело*?!'

    jump show_graphics_menu

# s434 # say41632
label dmorte_s434:  # from - # Check EXTENDS ~DKIMASXI~ : 2
    SPEAKER 'Мой приятель подумал, что ты привлекательная, но *черт*! Так сильно он еще ни разу не ошибался!'

    jump show_graphics_menu

# s435 # say41633
label dmorte_s435:  # from 436.0 # Check EXTENDS ~DKIMASXI~ : 14Check EXTENDS ~DKIMASXI~ : 4
    SPEAKER 'Конечно, шеф, как скажешь. Хороша, чертовка, а? — Морт фыркает, затем двигает бровями. — Это мне *нравится*!'

    menu:
        'Уверен, так оно и есть, Морт, но мне нужно с ней поговорить.':
            # r888 # reply41634
            jump show_graphics_menu
        'Ладно… Тогда идем, Морт.':
            # r889 # reply41635
            jump show_graphics_menu


# s436 # say41636
label dmorte_s436:  # from - # Check EXTENDS ~DKIMASXI~ : 3
    SPEAKER 'Как будто бы я оставил его где-то рядом, если бы оно у меня было! Что, услышала слово бордель и решила, что сможешь срубить здесь немного звенелок, блохастая помойная шлюха? Ха! Поверить не могу, что они пустили тебя внутрь со всеми этими блохами, падающими с твоих лохматых ног!'

    menu:
        'Эй вы, двое. Прекратите.':
            # r890 # reply41637
            jump dmorte_s435
        'Позволить им продолжать.':
            # r891 # reply41638
            jump show_graphics_menu


# s437 # say41639
label dmorte_s437:  # from - # Check EXTENDS ~DKIMASXI~ : 18
    SPEAKER '*Он*! '*ОН*, кажется, и так достаточно грязно ругается', ты, Кимаскси Говноязыкая… грязная козлоногая шлюшка!'

    jump show_graphics_menu

# s438 # say41640
label dmorte_s438:  # from - # Check EXTENDS ~DKIMASXI~ : 20
    SPEAKER 'Да уж получше тебя, да? — Морт двигает бровями. — А? А?'

    jump show_graphics_menu

# s439 # say41641
label dmorte_s439:  # from - # Check EXTENDS ~DKIMASXI~ : 21
    SPEAKER 'Не буду, *тифлинг*. Хотя признаю, что узнал пару новых вещей… неплохо придумано, шеф! [MRT387]'

    menu:
        'Конечно, Морт.':
            # r892 # reply41642
            jump show_graphics_menu


# s440 # say41830
label dmorte_s440:  # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    SPEAKER 'Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя. Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?'

    menu:
        'Хорошо… если у меня возникнут вопросы, я спрошу у тебя.':
            # r893 # reply41831
            jump dmorte_s441


# s441 # say41832
label dmorte_s441:  # from 440.0
    SPEAKER 'Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.'

    menu:
        'Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил.':
            # r894 # reply41833
            jump dmorte_s442


# s442 # say41834
label dmorte_s442:  # from 441.0
    SPEAKER 'Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил.'

    menu:
        'Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый.':
            # r895 # reply41835
            jump dmorte_s443


# s443 # say41836
label dmorte_s443:  # from 442.0
    SPEAKER 'Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты… или, что еще важнее, кто *я*… то воспользуйся им, чтобы освежить свою память.'

    menu:
        'Ладно… Уяснил. Идем.':
            # r896 # reply41837
            $ _r41837_action(gsm)
            jump show_graphics_menu


# s444 # say41838
label dmorte_s444:  # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0
    SPEAKER 'Что тебя гложет, шеф? [MRT515]'

    menu:
        'Можешь еще раз прочитать, что у меня вытатуировано на спине?':
            # r897 # reply41840
            jump dmorte_s445
        'Еще раз, что это за место?':
            # r898 # reply41841
            jump dmorte_s450
        'Это место такое огромное… Кто за ним присматривает?' if _r41842_condition(gsm):
            # r899 # reply41842
            jump dmorte_s451
        'Еще раз, кто эти смотрители?' if _r41843_condition(gsm):
            # r900 # reply41843
            jump dmorte_s451
        'Эти трупы… откуда они все берутся?':
            # r901 # reply41844
            jump dmorte_s454
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?' if _r41845_condition(gsm):
            # r902 # reply41845
            jump dmorte_s455
        'Как мне использовать эти бинты?' if _r41846_condition(gsm):
            # r903 # reply41846
            jump dmorte_s453
        'Пока ничего, Морт. Просто проверяю, что ты еще со мной.' if _r41847_condition(gsm):
            # r904 # reply41847
            jump dmorte_s440
        'Пока ничего, Морт. Просто проверяю, что ты еще со мной.' if _r41848_condition(gsm):
            # r905 # reply41848
            jump show_graphics_menu


# s445 # say41849
label dmorte_s445:  # from 444.0
    SPEAKER 'Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл.'

    menu:
        'Мне просто нужно освежить свою память.':
            # r906 # reply41850
            jump dmorte_s446
        'Ладно, неважно. У меня есть другие вопросы…':
            # r907 # reply41851
            jump dmorte_s444
        'Ладно, забудь. Идем.' if _r41852_condition(gsm):
            # r908 # reply41852
            jump dmorte_s440
        'Ладно, забудь. Идем.' if _r41853_condition(gsm):
            # r909 # reply41853
            jump show_graphics_menu


# s446 # say41854
label dmorte_s446:  # from 445.0
    SPEAKER 'Готов поспорить, что услышу ЭТО много раз, — Морт прочищает горло. — Посмотрим…  'Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых'.'

    menu:
        'Фарод… хм-м. Продолжай.':
            # r910 # reply41855
            jump dmorte_s447
        'Неважно. У меня есть другие вопросы…':
            # r911 # reply41856
            jump dmorte_s444
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41857_condition(gsm):
            # r912 # reply41857
            jump dmorte_s440
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41858_condition(gsm):
            # r913 # reply41858
            jump show_graphics_menu


# s447 # say41859
label dmorte_s447:  # from 446.0
    SPEAKER 'Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.'

    menu:
        'Когда я очнулся, рядом со мной не было дневника?':
            # r914 # reply41860
            jump dmorte_s448
        'Тогда ладно. У меня есть другие вопросы…':
            # r915 # reply41861
            jump dmorte_s444
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41862_condition(gsm):
            # r916 # reply41862
            jump dmorte_s440
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41863_condition(gsm):
            # r917 # reply41863
            jump show_graphics_menu


# s448 # say41864
label dmorte_s448:  # from 447.0
    SPEAKER 'Нет… ты был обобран догола. Как я уже говорил, похоже, что достаточно того дневника, что написан у тебя на теле.'

    menu:
        'Ты уверен, что не знаешь никого по имени Фарод?':
            # r918 # reply41865
            jump dmorte_s449
        'И то правда. У меня есть другие вопросы…':
            # r919 # reply41866
            jump dmorte_s444
        'Ладно. Идем.' if _r41867_condition(gsm):
            # r920 # reply41867
            jump dmorte_s440
        'Ладно. Идем.' if _r41868_condition(gsm):
            # r921 # reply41868
            jump show_graphics_menu


# s449 # say41869
label dmorte_s449:  # from 448.0
    SPEAKER 'Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда.'

    menu:
        'Перед тем как мы пойдем, у меня есть еще вопросы…':
            # r922 # reply41870
            jump dmorte_s444
        'Ладно. Идем.' if _r41871_condition(gsm):
            # r923 # reply41871
            jump dmorte_s440
        'Ладно. Идем.' if _r41872_condition(gsm):
            # r924 # reply41872
            jump show_graphics_menu


# s450 # say41873
label dmorte_s450:  # from 444.1
    SPEAKER 'Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r925 # reply41874
            jump dmorte_s444
        'Это все, что я хотел узнать. Спасибо.' if _r41875_condition(gsm):
            # r926 # reply41875
            jump dmorte_s440
        'Это все, что я хотел узнать. Спасибо.' if _r41876_condition(gsm):
            # r927 # reply41876
            jump show_graphics_menu


# s451 # say41877
label dmorte_s451:  # from 444.2 444.3
    SPEAKER 'Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.'

    menu:
        'Я запутался… какое тленным дело, если я сбегу?':
            # r928 # reply41878
            jump dmorte_s452
        'Ясно. У меня есть другие вопросы к тебе…':
            # r929 # reply41879
            jump dmorte_s444
        'Понятно. Тогда я буду осторожен.' if _r41880_condition(gsm):
            # r930 # reply41880
            jump dmorte_s440
        'Понятно. Тогда я буду осторожен.' if _r41881_condition(gsm):
            # r931 # reply41881
            jump show_graphics_menu


# s452 # say41882
label dmorte_s452:  # from 451.0
    SPEAKER 'Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r932 # reply41883
            jump dmorte_s444
        'Ладно… Я… попробую это запомнить.' if _r41884_condition(gsm):
            # r933 # reply41884
            jump dmorte_s440
        'Ладно… Я… попробую это запомнить.' if _r41885_condition(gsm):
            # r934 # reply41885
            jump show_graphics_menu


# s453 # say41886
label dmorte_s453:  # from 444.6
    SPEAKER 'Нууу… просто *используй* их. Останавливает кровотечение и все такое.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r935 # reply41887
            jump dmorte_s444
        'Спасибо. Думаю, я смогу с ними справиться.' if _r41888_condition(gsm):
            # r936 # reply41888
            jump dmorte_s440
        'Спасибо. Думаю, я смогу с ними справиться.' if _r41889_condition(gsm):
            # r937 # reply41889
            jump show_graphics_menu


# s454 # say41890
label dmorte_s454:  # from 444.4
    SPEAKER 'Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r938 # reply41891
            jump dmorte_s444
        'Ладно… Я… попробую это запомнить.' if _r41892_condition(gsm):
            # r939 # reply41892
            jump dmorte_s440
        'Ладно… Я… попробую это запомнить.' if _r41893_condition(gsm):
            # r940 # reply41893
            jump show_graphics_menu


# s455 # say41894
label dmorte_s455:  # from 444.5
    SPEAKER 'Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.'

    menu:
        'Последняя возможность? Погоди… о *чем* это ты толкуешь?':
            # r941 # reply41895
            jump dmorte_s456
        'Неважно. У меня к тебе еще вопросы…':
            # r942 # reply41896
            jump dmorte_s444
        'Ладно… Я… попробую это запомнить.':
            # r943 # reply41897
            jump show_graphics_menu


# s456 # say41898
label dmorte_s456:  # from 455.0
    SPEAKER 'Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?'

    menu:
        'Нет… не очень, если честно.':
            # r944 # reply41899
            jump dmorte_s457
        'Ты это *несерьезно*.' if _r41900_condition(gsm):
            # r945 # reply41900
            jump dmorte_s457
        'Неважно. У меня к тебе еще вопросы…':
            # r946 # reply41901
            jump dmorte_s444
        'Я достаточно наслушался. Идем.':
            # r947 # reply41902
            jump show_graphics_menu


# s457 # say41903
label dmorte_s457:  # from 456.0 456.1
    SPEAKER 'Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* по крайней мере один раз умирали: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.'

    menu:
        'Постой… разве ты не говорил до этого, что я *не мертвый*?':
            # r948 # reply41904
            jump dmorte_s458
        'Неважно. У меня к тебе еще вопросы…':
            # r949 # reply41905
            jump dmorte_s444
        'Я достаточно наслушался. Идем.':
            # r950 # reply41906
            jump show_graphics_menu


# s458 # say41907
label dmorte_s458:  # from 457.0
    SPEAKER 'Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…'

    menu:
        'У меня есть другие вопросы к тебе, Морт…':
            # r951 # reply41908
            jump dmorte_s444
        'Я достаточно наслушался. Идем.':
            # r952 # reply41909
            jump show_graphics_menu


# s459 # say41910
label dmorte_s459:  # from -
    SPEAKER 'Силы небесные. Это одна из этих ЧЕРТОВЫХ книг.'

    menu:
        'Что такое?':
            # r953 # reply41911
            $ _r41911_action(gsm)
            jump dmorte_s460


# s460 # say41913
label dmorte_s460:  # from 459.0
    SPEAKER 'Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь.'

    menu:
        'А мое имя может быть там?':
            # r954 # reply41914
            jump dmorte_s461


# s461 # say41915
label dmorte_s461:  # from 460.0
    SPEAKER 'Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея.'

    menu:
        'Мне нужны ответы. Я поговорю с ним.':
            # r955 # reply41916
            jump show_graphics_menu


# s462 # say41919
label dmorte_s462:  # from - # Check EXTENDS ~DJUMBLE~ : 2Check EXTENDS ~DJUMBLE~ : 8Check EXTENDS ~DJUMBLE~ : 9
    SPEAKER 'Морт шепчет: В каком-то дурдоме недостает постояльца.'

    menu:
        'Джамбл, у меня несколько вопросов…':
            # r956 # reply41920
            jump show_graphics_menu
        'Ты тот, кто проклял Вонючку, не так ли?' if _r41921_condition(gsm):
            # r957 # reply41921
            $ _r41921_action(gsm)
            jump show_graphics_menu
        'Я хотел бы, чтобы ты снял проклятие с Вонючки.' if _r67864_condition(gsm):
            # r958 # reply67864
            jump show_graphics_menu
        'А теперь я ухожу, Джамбл. Прощай.':
            # r959 # reply41922
            jump show_graphics_menu


# s463 # say41923
label dmorte_s463:  # from - # Check EXTENDS ~DJUMBLE~ : 7Check EXTENDS ~DJUMBLE~ : 7Check EXTENDS ~DJUMBLE~ : 7
    SPEAKER 'Ого… шеф, похоже, что в тебя только что бросили проклятье…'

    menu:
        'Что ты со мной сделал Джамбл?':
            # r960 # reply41924
            jump show_graphics_menu
        'Джамбл… пожалуйста, убери это, что бы ты там не натворил.':
            # r961 # reply41925
            jump show_graphics_menu
        'Что бы ты там не сделал, Джамбл, убери это… или ты об этом горько пожалеешь.':
            # r962 # reply41926
            jump show_graphics_menu
        'Пошли уже, Морт.':
            # r963 # reply41927
            jump show_graphics_menu


# s464 # say42929
label dmorte_s464:  # from - # Check EXTENDS ~DMONTAGU~ : 29
    SPEAKER 'Я бы посоветовал проигнорировать эту цыпочку… веди себя отстраненно и невозмутимо. Вот это уж точно добавит остроты в ваши отношения!'

    jump show_graphics_menu

# s465 # say42930
label dmorte_s465:  # from - # Check EXTENDS ~DMONTAGU~ : 30Check EXTENDS ~DMONTAGU~ : 31
    SPEAKER 'Доверься мне, малыш. Начни игнорировать ее, придумай какие-нибудь придирки, пусть гадает — и тогда она станет из кожи вон лезть, лишь бы понять, в чем дело. Верно, шеф?'

    menu:
        'Да… Она подумает, что что-то не так, и в кои-то веки он превратится из мишени в игрока.':
            # r964 # reply42931
            jump show_graphics_menu
        'Нет… это плохая идея.':
            # r965 # reply42932
            jump show_graphics_menu


# s466 # say43543
label dmorte_s466:  # from - # Check EXTENDS ~DKIINA~ : 35
    SPEAKER 'Именно поэтому гиты и не должны размножаться. Они без конца твердят о чем-то, или о вере во что-то, или там 'где бы найти мозгососа или там гитьянки и убить их' и так далее и тому подобное. Я даже не уверен, что им доставляет удовольствие тыкать друг друга. Они сходят с ума и теряют голову, или наоборот — все время остаются такими прямыми и сосредоточенными, что забывают о чувстве юмора. Они болтают про концентрацию, единый разум и взаимное доверие, и при этом упоминают, что их раса раскололась вскоре после того, как они покончили с мозгососами. Теперь не говори мне, что религия и идеология не разрушит планы.'

    jump show_graphics_menu

# s467 # say43908
label dmorte_s467:  # from - # Check EXTENDS ~DNEML~ : 4Check EXTENDS ~DNEML~ : 6Check EXTENDS ~DNEML~ : 14Check EXTENDS ~DNEML~ : 11
    SPEAKER 'Ух ты.'

    menu:
        'Ты Немель? Мне сказали, что ты знаешь волшебное слово к этому графину.' if _r43909_condition(gsm):
            # r966 # reply43909
            jump show_graphics_menu
        'Немель? Твоя подруга Эльвин ищет тебя.' if _r43910_condition(gsm):
            # r967 # reply43910
            $ _r43910_action(gsm)
            jump show_graphics_menu
        'Ты кого-то ищешь?' if _r43911_condition(gsm):
            # r968 # reply43911
            jump show_graphics_menu
        'У меня есть несколько вопросов…':
            # r969 # reply43912
            jump show_graphics_menu
        'Мне ничего не нужно, Немель. Прощай.':
            # r970 # reply43913
            jump show_graphics_menu


# s468 # say43914
label dmorte_s468:  # from - # Check EXTENDS ~DANNAH~ : 209
    SPEAKER 'Ух ты.'

    jump show_graphics_menu

# s469 # say43915
label dmorte_s469:  # from - # Check EXTENDS ~DANNAH~ : 210
    SPEAKER 'Вай, что за горячая девчонка! Изголодалась по вниманию? Я мог бы и на тебя слюни попускать, раз уж ты ревнуешь… Морт начинает подлетать к Анне, причмокивая…'

    jump show_graphics_menu

# s470 # say43916
label dmorte_s470:  # from - # Check EXTENDS ~DNEML~ : 4Check EXTENDS ~DNEML~ : 6Check EXTENDS ~DNEML~ : 14Check EXTENDS ~DNEML~ : 11
    SPEAKER 'Морт резко останавливается и отворачивается, что-то неразборчиво бормоча.'

    menu:
        'Ты Немель? Мне сказали, что ты знаешь волшебное слово к этому графину.' if _r43917_condition(gsm):
            # r971 # reply43917
            jump show_graphics_menu
        'Немель? Твоя подруга Эльвин ищет тебя.' if _r43918_condition(gsm):
            # r972 # reply43918
            $ _r43918_action(gsm)
            jump show_graphics_menu
        'Ты кого-то ищешь?' if _r43919_condition(gsm):
            # r973 # reply43919
            jump show_graphics_menu
        'У меня есть несколько вопросов…':
            # r974 # reply43920
            jump show_graphics_menu
        'Мне ничего не нужно, Немель. Прощай.':
            # r975 # reply43921
            jump show_graphics_menu


# s471 # say43922
label dmorte_s471:  # from -
    SPEAKER 'Да ладно, шеф… Уверен, мы ведь сможем *что-нибудь* придумать. А? А?'

    menu:
        'Забудь об этом, Морт. Идем.':
            # r976 # reply43923
            jump show_graphics_menu


# s472 # say44244
label dmorte_s472:  # from - # Check EXTENDS ~DGONCAL~ : 20
    SPEAKER 'Морт подлетает поближе и шепчет: Только не мне. Я могу помочь. А, шеф? Подмигну, подтолкну…'

    jump show_graphics_menu

# s473 # say44245
label dmorte_s473:  # from - # Check EXTENDS ~DANNAH~ : 214
    SPEAKER 'Повергнутый в ужас, Морт встревает в разговор. Нет! Мужик, ты *спятил*? Это же полный бред!'

    jump show_graphics_menu

# s474 # say44677
label dmorte_s474:  # from - # Check EXTENDS ~DYI'MINN~ : 47
    SPEAKER 'Морт закатывает глаза. Нашествие дураков…'

    jump show_graphics_menu

# s475 # say44944
label dmorte_s475:  # from - # Check EXTENDS ~DUDESIRE~ : 2
    SPEAKER 'Обожа-а-аю Фестхолл.'

    jump show_graphics_menu

# s476 # say45026
label dmorte_s476:  # from - # Check EXTENDS ~D3PLANEA~ : 1Check EXTENDS ~D3PLANEA~ : 1
    SPEAKER 'Морт громко вздыхает. Брось, шеф, мы что, и впрямь останемся на это?'

    menu:
        'Морт, просто немного помолчи. Я хочу послушать.':
            # r977 # reply45027
            jump show_graphics_menu
        'Не обращать внимания на Морта, продолжать слушать.':
            # r978 # reply45028
            jump show_graphics_menu
        'Ты прав, Морт. Идем.':
            # r979 # reply45029
            $ _r45029_action(gsm)
            jump show_graphics_menu


# s477 # say45088
label dmorte_s477:  # from -
    SPEAKER 'Ха. Кажется, кто-то забыл приказать этому бедолаге прекратить следовать правилу трех.'

    menu:
        'О чем это ты?':
            # r980 # reply45089
            jump dmorte_s478


# s478 # say45091
label dmorte_s478:  # from 477.0
    SPEAKER 'У этих трупов котелок уже почти не варит, так что они могут выполнять не больше одного задания одновременно… если приказать им делать что-то, то они будут это делать до тех пор, пока кто-нибудь их не остановит. Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.'

    menu:
        'А кто отдает им приказы?':
            # r981 # reply45092
            jump dmorte_s481
        'Ты что-то сказал про 'правило трех'. Что ты имел ввиду?':
            # r982 # reply45093
            $ _r45093_action(gsm)
            jump dmorte_s479
        'Ладно. Давай двигаться дальше.':
            # r983 # reply45094
            jump show_graphics_menu


# s479 # say45095
label dmorte_s479:  # from 478.1 481.0
    SPEAKER 'А? Ну, правило трех — это один из пресловутых законов планов, согласно которому все на свете случается по трое… или состоит из трех частей… или что всегда есть выбор из трех вариантов, ну и так далее.'

    menu:
        'Ты так говоришь, как будто не очень веришь в это.':
            # r984 # reply45096
            jump dmorte_s480


# s480 # say45098
label dmorte_s480:  # from 479.0 # Check EXTENDS ~DZM965~ : 1
    SPEAKER 'По мне, так все это фигня. Если ты возьмешь с потолка число, любое число, и попытаешься к нему приделать великий смысл, то ты всегда найдешь кучу каких-нибудь совпадений.'

    menu:
        'Понятно. До этого ты говорил о том, что кто-то отдал этому трупу приказ, а потом забыл его остановить. А кто отдает трупам приказы?':
            # r985 # reply45099
            jump dmorte_s481
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r986 # reply45100
            jump show_graphics_menu
        'Ладно. Давай двигаться дальше.':
            # r987 # reply45101
            jump show_graphics_menu


# s481 # say45102
label dmorte_s481:  # from 478.0 480.0 # Check EXTENDS ~DZM965~ : 1
    SPEAKER 'Их выписал из книги мертвых либо один из здешних смотрителей, либо какой-то некромант. Скорее всего, это один из смотрителей… в конце концов, это им нужна дешевая рабочая сила.'

    menu:
        'Понятно. А что ты там говорил до этого… про 'правило трех'?':
            # r988 # reply45103
            $ _r45103_action(gsm)
            jump dmorte_s479
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r989 # reply45104
            jump show_graphics_menu
        'Ладно. Давай двигаться дальше.':
            # r990 # reply45105
            jump show_graphics_menu


# s482 # say45540
label dmorte_s482:  # from - # Check EXTENDS ~DZM985~ : 3
    SPEAKER 'Э… шеф… осторож…'

    jump show_graphics_menu

# s483 # say45709
label dmorte_s483:  # from - # Check EXTENDS ~DANNAH~ : 215
    SPEAKER 'О-о, аукцион! Может, продадим здесь Анну.'

    jump show_graphics_menu

# s484 # say45710
label dmorte_s484:  # from - # Check EXTENDS ~DDAKKON~ : 163
    SPEAKER 'О-о, аукцион! Может, продадим здесь Даккона.'

    jump show_graphics_menu

# s485 # say45711
label dmorte_s485:  # from - # Check EXTENDS ~DGILTSP~ : 4
    SPEAKER 'О-о, аукцион! Может, подыщем мне здесь тело.'

    menu:
        'Хорошо, Морт. Я не забуду об этом спросить.':
            # r991 # reply45712
            jump show_graphics_menu
        'Тогда давай уходить отсюда.':
            # r992 # reply45713
            jump show_graphics_menu


# s486 # say45714
label dmorte_s486:  # from - # Check EXTENDS ~DGILTSP~ : 4
    SPEAKER 'Должно быть, это любовь. Это ведь любовь, да, босс?'

    menu:
        'Прекратите, вы оба. Мне нужно задать несколько вопросов.':
            # r993 # reply45715
            jump show_graphics_menu
        'Как скажешь, Морт. Давай оставим в покое этого парня.':
            # r994 # reply45716
            jump show_graphics_menu


# s487 # say45996
label dmorte_s487:  # from - # Check EXTENDS ~DVAULT9~ : 0
    SPEAKER 'Эй, смотри! Еще одна летающая голова.'

    jump show_graphics_menu

# s488 # say47813
label dmorte_s488:  # from - # Check EXTENDS ~DJUSTFER~ : 8
    SPEAKER 'Похоже, у этой дубинки что-то вроде зависти к чужой мудрости. Забей, палка.'

    menu:
        'Умолкни. У меня есть другие вопросы…':
            # r995 # reply47814
            jump show_graphics_menu
        'На этом разговор окончен.':
            # r996 # reply47815
            jump show_graphics_menu


# s489 # say49443
label dmorte_s489:  # from -
    SPEAKER 'Оо, гитьянки. Могу поспорить, Даккон будет *так* рад помочь.'

    menu:
        'Спасибо за ценное замечание, Морт. Идем.':
            # r997 # reply49444
            jump show_graphics_menu


# s490 # say50162
label dmorte_s490:  # from - # Check EXTENDS ~DANNAH~ : 242
    SPEAKER 'Ха, да *есть* у них имена. Я уверен в этом.'

    jump show_graphics_menu

# s491 # say50164
label dmorte_s491:  # from - # Check EXTENDS ~DANNAH~ : 240Check EXTENDS ~DADABUS~ : 6
    SPEAKER 'Вот *ты* и скажи, бесовка.'

    menu:
        'Хватит, Морт. Анна, ты можешь задать ему другие вопросы?':
            # r998 # reply50165
            jump show_graphics_menu
        'Забудь. Уходим отсюда.':
            # r999 # reply50166
            $ _r50166_action(gsm)
            jump show_graphics_menu


# s492 # say50263
label dmorte_s492:  # from - # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти козлиные морды пытаются сказать. Нужен переводчик? Поищи коренного сигильца.'

    menu:
        'Понятно.':
            # r1000 # reply50264
            jump show_graphics_menu


# s493 # say50266
label dmorte_s493:  # from - # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси нашу маленькую бесовку, — он кивает на Анну. — Она из Улья.'

    menu:
        'Наверное, так и стоит поступить…':
            # r1001 # reply50267
            jump show_graphics_menu


# s494 # say50269
label dmorte_s494:  # from - # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? — он кивает на Даккона. — Попроси нашего ханжу-молчуна перевести.'

    menu:
        'Наверное, так и стоит поступить…':
            # r1002 # reply50270
            jump show_graphics_menu


# s495 # say50272
label dmorte_s495:  # from - # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Морт усмехается. Да я скорее пройду через кишки танарри, чем разгадаю, что эти летающие козлиные морды пытаются сказать. Нужен переводчик? Попроси танарри, — он кивает на Падшую Грацию. — Наверное, она все время общалась с этими парнями.'

    menu:
        'Наверное, так и стоит поступить…':
            # r1003 # reply50273
            jump show_graphics_menu


# s496 # say50320
label dmorte_s496:  # from -
    SPEAKER 'Ох, силы небесные! Чертов дабус.'

    menu:
        'Что не так?':
            # r1004 # reply50321
            jump dmorte_s497


# s497 # say50322
label dmorte_s497:  # from 496.0
    SPEAKER 'Он — дабус. Они 'разговаривают' ребусами, этими тупыми словесными головоломками. Если *ты* не знаешь, что он говорит, то тогда нам лучше поискать кого-нибудь из местных или какой-нибудь другой способ общаться с ними… если нам это надо. Чертово племя. Знаешь что? Да они *умеют* разговаривать, просто они хотят вывести из себя того, кто пытается разгадать их головоломки.'

    menu:
        'Что за 'дабус'?':
            # r1005 # reply50323
            jump dmorte_s498


# s498 # say50324
label dmorte_s498:  # from 497.0 # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Говорят, что они слуги Леди Боли. Они парят повсюду и ломают, чинят и латают Сигил по ее капризу. Они хуже трупных мух, — Морт вздыхает. — Не нужно их трогать, а не то Леди… рассердится.'

    menu:
        ''Леди Боли'? Кто это?' if _r50325_condition(gsm):
            # r1006 # reply50325
            $ _r50325_action(gsm)
            jump dmorte_s499
        'Что ты можешь рассказать о Леди Боли?' if _r50328_condition(gsm):
            # r1007 # reply50328
            jump dmorte_s499
        'Понятно.' if _r50329_condition(gsm):
            # r1008 # reply50329
            jump show_graphics_menu


# s499 # say50326
label dmorte_s499:  # from 498.0 498.1 # Check EXTENDS ~DADABUS~ : 2
    SPEAKER 'Она заправляет городом. Ты узнаешь ее, когда увидишь: у нее вокруг лица клинки, она ростом с гиганта и парит над землей, совсем как эти парни. Морт кивает на дабуса, смотрящего на вас обоих. Про нее никто почти ничего не знает… она не очень говорлива. Все, что тебе следует знать: не зли ее. Если увидишь ее, мой тебе совет — тикай.'

    menu:
        'Понятно.':
            # r1009 # reply50327
            jump show_graphics_menu


# s500 # say50410
label dmorte_s500:  # from -
    SPEAKER 'Что? Что? Что в ней было, шеф?'

    menu:
        'Не знаю, что и сказать, Морт…':
            # r1010 # reply50411
            jump dmorte_s501
        'Ничто из того, что тебя касается, Морт.':
            # r1011 # reply50412
            jump dmorte_s501
        'Показать ему Кодекс.':
            # r1012 # reply50413
            jump dmorte_s503


# s501 # say50414
label dmorte_s501:  # from 500.0 500.1
    SPEAKER 'ЧТО? Наверно, ты шутишь? Брось, дай посмотреть!'

    menu:
        'Показать ему Кодекс.':
            # r1013 # reply50415
            jump dmorte_s503
        'Нет, Морт. Просто забудь, что ты его видел.':
            # r1014 # reply50416
            $ _r50416_action(gsm)
            jump dmorte_s502


# s502 # say50417
label dmorte_s502:  # from 501.1 # Check EXTENDS ~DCODEXI~ : 2
    SPEAKER 'Морт что-то недовольно бормочет… но прекращает разговор.'

    jump show_graphics_menu

# s503 # say50418
label dmorte_s503:  # from 500.2 501.0 # Check EXTENDS ~DCODEXI~ : 2
    SPEAKER 'Морт взлетает над твоим плечом, чтобы ознакомиться с содержимым Кодекса. Его глаза чуть не вываливаются из глазниц, пробегая по его страницам. О-о-о. О-о-о-о. О, я… но… ого.'

    jump show_graphics_menu

# s504 # say50697
label dmorte_s504:  # from - # Check EXTENDS ~DVRISCH~ : 45Check EXTENDS ~DVRISCH~ : 7
    SPEAKER 'Эй! Эй! Эй! Ты ведь *шутишь*, правда? Ты *не можешь* говорить это серьезно, шеф!'

    menu:
        'Я серьезно. Берешь его, Вришика?':
            # r1015 # reply50698
            jump show_graphics_menu
        'Нет. У меня есть другой вопрос, Вришика…':
            # r1016 # reply50699
            jump show_graphics_menu
        'Ты прав, Морт: это была не лучшая идея. Пошли.':
            # r1017 # reply50700
            jump show_graphics_menu


# s505 # say50701
label dmorte_s505:  # from - # Check EXTENDS ~DVRISCH~ : 46 # ~DropInventory() LeaveParty() ~ EXTERN ~DVRISCH~ 46
    SPEAKER 'Не могу в это поверить… ты и до этого довольно низко падал, шеф, но это уже слишком. Увидимся в Бааторе, ты, искалеченный мелкостручковый вероломный неблагодарный искромсанный говножующий жирноволосый кривозубый жалкий кусок забывчивого мусора! Помяни мои слова, чертов ублюдок, продолжай в том же духе — и уже скоро откинешься *навсегда*… и тогда уж ты свое получишь!'

    jump show_graphics_menu

# s506 # say52571
label dmorte_s506:  # from - # Check EXTENDS ~DRAVEL~ : 126
    SPEAKER 'Она-то его проглотила, но я не уверен, из *того* ли конца он вышел.'

    menu:
        'Довольно… Послушай, Равель. Ты забрала мою смертность, и зла это причинило больше, чем добра. Я хочу вернуть ее обратно: похоже, она у тебя залежалась.':
            # r1018 # reply52572
            jump show_graphics_menu


# s507 # say52573
label dmorte_s507:  # from - # Check EXTENDS ~DRAVEL~ : 189
    SPEAKER 'Мне кажется, я знаю, кому следует сидеть в клетке…'

    jump show_graphics_menu

# s508 # say52574
label dmorte_s508:  # from -
    SPEAKER 'Ну, я не нашел ничего ЛУЧШЕГО, чем согласиться идти в один из лабиринтов Леди и встретиться с одним из злейших созданий, когда-либо ступавших на землю Сигила, так что я сказал 'Конечно! Почему бы…'

    menu:
        'Морт, умолкни. Равель, я…':
            # r1019 # reply52575
            jump dmorte_s509


# s509 # say52576
label dmorte_s509:  # from 508.0 # Check EXTENDS ~DRAVEL~ : 66Check EXTENDS ~DRAVEL~ : 67Check EXTENDS ~DRAVEL~ : 68
    SPEAKER 'Умолкни?! — Морт клацает зубами. — Черта с два! Мне кажется, что мы уже достаточно наслушались, как эта старая карга трясет своей черепушкой, но теперь она уже перегибает палку, говоря, что у меня нет кожи! Ну и ЧТО?! Очевидно, тот факт, что у НЕЕ есть кожа, просто творит чудеса с ЕЕ видом! Она что, думает, мне *нравится* все время быть ГОЛЫМ? И *еще*…'

    menu:
        'Морт! Хватит! Равель, послушай…' if _r52577_condition(gsm):
            # r1020 # reply52577
            $ _r52577_action(gsm)
            jump show_graphics_menu
        'Морт! Хватит! Равель, послушай…' if _r52578_condition(gsm):
            # r1021 # reply52578
            $ _r52578_action(gsm)
            jump show_graphics_menu
        'Морт! Хватит! Равель, послушай…' if _r52579_condition(gsm):
            # r1022 # reply52579
            jump show_graphics_menu


# s510 # say52644
label dmorte_s510:  # from - # Check EXTENDS ~DPREGAL~ : 10
    SPEAKER 'Что за бред. Ну где мы тогда сейчас находимся, технически?'

    menu:
        'Я и правда не хочу об этом знать, Морт.':
            # r1023 # reply52771
            jump show_graphics_menu


# s511 # say53623
label dmorte_s511:  # from - # Check EXTENDS ~DPILLAR~ : 5
    SPEAKER 'О, это просто *здорово*.'

    jump show_graphics_menu

# s512 # say53624
label dmorte_s512:  # from 522.0 523.0 524.0 # Check EXTENDS ~DPILLAR~ : 9
    SPEAKER 'Только ты делаешь шаг к колонне, Морт шепчет тебе: Пссс! Шеф! Шеф… слушай, я не могу позволить этой штуковине увидеть себя. Тебе придется убрать меня отсюда… оставь меня где-нибудь, а потом подбери позже, или еще чего…'

    menu:
        'Забудь об этом, Морт. Я поговорю с ней прямо сейчас…' if _r53625_condition(gsm):
            # r1024 # reply53625
            $ _r53625_action(gsm)
            jump show_graphics_menu
        'Почему, Морт? Что происходит?' if _r53627_condition(gsm):
            # r1025 # reply53627
            jump dmorte_s513
        'Хорошо. Тогда пошли.':
            # r1026 # reply53628
            jump show_graphics_menu


# s513 # say53626
label dmorte_s513:  # from 512.1
    SPEAKER 'Э… Я, правда, не хочу об этом говорить. Пойдем-ка отсюда, а? Голос Морта дрожит от страха. Его глаза бегают, смотря то на тебя, то на огромную колонну из голов.'

    menu:
        'Я не могу позволить тебе держать так много секретов, Морт. Тебе придется рассказать мне, что здесь происходит.':
            # r1027 # reply53629
            $ _r53629_action(gsm)
            jump dmorte_s514
        'Хватит уклоняться от ответа, Морт. *Сейчас же* выкладывай, что здесь происходит, или ты *хочешь*, чтобы мы поболтали с головами?':
            # r1028 # reply53630
            $ _r53630_action(gsm)
            jump dmorte_s514
        'Хорошо. Тогда пошли.':
            # r1029 # reply53631
            jump show_graphics_menu


# s514 # say53632
label dmorte_s514:  # from 513.0 513.1
    SPEAKER 'Морт вздыхает, не в силах встретиться с тобой взглядом. Наконец, он сдается. Ладно, ладно… Я тебе расскажу. На Авернусе, первом слое Баатора, есть колонна, сделанная из голов всех тех, кто своей ложью привел кого-нибудь к смерти. Ну… это и есть она. Видишь ли, когда-то я в ней был. Та еще история.'

    menu:
        'Значит… ты был одной из тех голов?' if _r53662_condition(gsm):
            # r1030 # reply53662
            jump dmorte_s516
        'Значит… ты был одной из тех голов?' if _r53663_condition(gsm):
            # r1031 # reply53663
            jump dmorte_s515


# s515 # say53664
label dmorte_s515:  # from 514.1
    SPEAKER 'Ага. Я преувеличил… пару раз. Просто один из моих советов привел к твоей смерти. Один из них. Может, и другие. Я правда не знаю. Я больше не помню этого.'

    menu:
        'Понятно…':
            # r1032 # reply53665
            jump dmorte_s518


# s516 # say53666
label dmorte_s516:  # from 514.0 # Check EXTENDS ~DANNAH~ : 269
    SPEAKER 'Ага. Я преувеличил… пару раз. Просто один из моих советов…'

    jump show_graphics_menu

# s517 # say53667
label dmorte_s517:  # from -
    SPEAKER 'Морт невозмутимо продолжает: …один из моих *советов* привел к твоей смерти. Одной из них. Может, и к другим. Я правда не знаю. Я больше не помню этого.'

    jump show_graphics_menu

# s518 # say53668
label dmorte_s518:  # from 515.0 517.0 # Check EXTENDS ~DDAKKON~ : 183
    SPEAKER 'Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. Те воспоминания, они… слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны…'

    menu:
        'Продолжай…' if _r54105_condition(gsm):
            # r1033 # reply54105
            jump dmorte_s520


# s519 # say53794
label dmorte_s519:  # from - # Check EXTENDS ~DPILLAR~ : 9
    SPEAKER 'Морт смотрит на Даккона, потом на тебя. Думаю, да. Это именно то, что случается, когда ты умираешь. Ты… забываешь. Я, пожалуй, не был образцовым членом общества при жизни… но, черт, есть ли такие вообще? — Морт снова вздыхает. — Ну, с этим я ничего не могу поделать. Нет ничего хуже, чем все время быть честным. Ладно, слушай, шеф, если та куча голов меня увидит, она захочет меня вернуть, *еще как* захочет. Ты не должен этого допустить!'

    menu:
        'Забудь об этом, Морт. Я поговорю с ней прямо сейчас…':
            # r1034 # reply53795
            $ _r53795_action(gsm)
            jump show_graphics_menu
        'Погоди… как ты освободился из Колонны?':
            # r1035 # reply53796
            jump dmorte_s521
        'Постой… почему там, в Морге, ты не сказал, что знал меня?':
            # r1036 # reply53797
            jump dmorte_s523
        'Минутку. И как давно ты меня знаешь, Морт?':
            # r1037 # reply53798
            jump dmorte_s524
        'Ладно. Пошли, Морт.':
            # r1038 # reply53799
            jump show_graphics_menu


# s520 # say53800
label dmorte_s520:  # from 518.1 # Check EXTENDS ~DPILLAR~ : 9
    SPEAKER 'Как бы там ни было, я, пожалуй, не был образцовым членом общества при жизни… но, черт, есть ли такие вообще? — Морт снова вздыхает. — Ну, с этим я ничего не могу поделать. Нет ничего хуже, чем все время быть честным. Ладно, слушай, шеф, если та куча голов меня увидит, она захочет меня вернуть, *еще как* захочет. Ты не должен этого допустить!'

    menu:
        'Забудь об этом, Морт. Я поговорю с ней прямо сейчас…':
            # r1039 # reply53801
            $ _r53801_action(gsm)
            jump show_graphics_menu
        'Погоди… как ты освободился из Колонны?':
            # r1040 # reply53802
            jump dmorte_s521
        'Постой… почему там, в Морге, ты не сказал, что знал меня?':
            # r1041 # reply53803
            jump dmorte_s523
        'Минутку. И как давно ты меня знаешь, Морт?':
            # r1042 # reply53804
            jump dmorte_s524
        'Ладно. Пошли, Морт.':
            # r1043 # reply53805
            jump show_graphics_menu


# s521 # say53806
label dmorte_s521:  # from 519.1 520.1 523.1 524.1
    SPEAKER 'Ну… ты меня вытащил, шеф. Я пробился на поверхность Колонны — ты ведь был уже здесь раньше — и вопил до тех пор, пока ты меня не заметил. Я умолял освободить себя, клялся, что пойду за тобой, буду делиться с тобой своими знаниями до конца твоих дней… Я просто не представлял, насколько это затянется, пока ты меня не выдернул.'

    menu:
        'А как насчет знаний Колонны?..':
            # r1044 # reply53807
            $ _r53807_action(gsm)
            jump dmorte_s522


# s522 # say53808
label dmorte_s522:  # from 521.0
    SPEAKER 'Ах, это… ну, еще я не осознавал, что потеряю большую часть накопленных Колонной знаний, как только освобожусь. Дьявольские силы, *это* не раз тебя выводило из себя! Но ты все равно держал меня рядом. Сперва я почувствовал 'связь' с тобой… может, это твое волшебство превратило меня в что-то типа приживалы. Но через пару сотен лет я понял, что это нечто *большее*… нечто более глубокое. Не просто чувство долга из благодарности, но, черт, и без него не обошлось, это уж точно. Я просто почувствовал себя *связанным* с тобой каким-то образом. Возможно, это все твои страдания, шеф… твои муки. Не знаю. Может, они напоминали мне мои собственные, когда я был в колонне.'

    menu:
        'А сейчас я поговорю с Колонной…':
            # r1045 # reply53809
            jump dmorte_s512
        'Почему там, в Морге, ты не сказал, что знал меня?':
            # r1046 # reply53810
            jump dmorte_s523
        'И как давно ты меня знаешь, Морт?':
            # r1047 # reply53811
            jump dmorte_s524
        'Хорошо. Идем, Морт.':
            # r1048 # reply53812
            jump show_graphics_menu


# s523 # say53813
label dmorte_s523:  # from 519.2 520.2 522.1 524.2
    SPEAKER 'Неожиданно Морт начинает защищаться. Потому что я никогда не *знал*, кем ты можешь стать! Некоторые твои воплощения были совершенно безумными! Однажды ты проснулся, одержимый идеей, что это *я* был твоим черепом, и преследовал меня вокруг Шпиля, пытаясь разбить и проглотить… к счастью, на улице ты попал под повозку. Другой ты, 'добрый и законопослушный', пытался засунуть меня обратно в Колонну, потому что 'там мне и место', — Морт ухмыляется. — *Вот* почему. Кроме того, твое незнание не принесло вреда…'

    menu:
        'А сейчас я поговорю с Колонной…':
            # r1049 # reply53814
            jump dmorte_s512
        'Как ты освободился из Колонны?':
            # r1050 # reply53815
            jump dmorte_s521
        'И как давно ты меня знаешь, Морт?':
            # r1051 # reply53816
            jump dmorte_s524
        'Хорошо. Идем, Морт.':
            # r1052 # reply53817
            jump show_graphics_menu


# s524 # say53818
label dmorte_s524:  # from 519.3 520.3 522.2 523.2
    SPEAKER 'Не знаю. Наверно, века. Я каждый раз делал все, что мог, чтобы помочь тебе найти свой путь, но… — Морт вздыхает и поднимает взгляд, встречаясь с твоим. — Ты редко добирался так далеко, шеф. Я серьезно. Кажется, всего четыре или пять раз. Должно быть, пришло время… *тебе*, проделавшему весь этот путь, выяснить, что к чему.'

    menu:
        'А сейчас я поговорю с Колонной…':
            # r1053 # reply53819
            jump dmorte_s512
        'Как ты освободился из Колонны?':
            # r1054 # reply53820
            jump dmorte_s521
        'Почему там, в Морге, ты не сказал, что знал меня?':
            # r1055 # reply53821
            jump dmorte_s523
        'Хорошо. Идем, Морт.':
            # r1056 # reply53822
            jump show_graphics_menu


# s525 # say53823
label dmorte_s525:  # from - # Check EXTENDS ~DPILLAR~ : 10
    SPEAKER 'О, нет…'

    jump show_graphics_menu

# s526 # say53824
label dmorte_s526:  # from - # Check EXTENDS ~DPILLAR~ : 2Check EXTENDS ~DPILLAR~ : 2Check EXTENDS ~DPILLAR~ : 12Check EXTENDS ~DPILLAR~ : 50
    SPEAKER 'Морт трясется от страха, его зубы стучат. Я не могу вернуться, шеф! Не могу! Не могу! Не могу!'

    menu:
        'Он не вернется к вам. А у меня есть вопросы…' if _r53825_condition(gsm):
            # r1057 # reply53825
            $ _r53825_action(gsm)
            jump show_graphics_menu
        'Он не вернется к вам. А у меня есть вопросы…' if _r53826_condition(gsm):
            # r1058 # reply53826
            $ _r53826_action(gsm)
            jump show_graphics_menu
        'Он не вернется в Колонну Черепов. А у меня есть вопросы…' if _r53827_condition(gsm):
            # r1059 # reply53827
            jump show_graphics_menu
        'Уходим отсюда, Морт. Давай.':
            # r1060 # reply53828
            jump show_graphics_menu


# s527 # say53829
label dmorte_s527:  # from - # Check EXTENDS ~DPILLAR~ : 14
    SPEAKER '*Брось*, шеф. Разве я тебе *не рассказывал*, что это? Она состоит из голов лжецов, чьи 'советы' привели к смерти других. Она может ответить почти на любой вопрос — она знает очень многое, — но она ожидает непомерную плату за свои услуги. Не задавай ей такие вопросы!'

    jump show_graphics_menu

# s528 # say53830
label dmorte_s528:  # from - # Check EXTENDS ~DPILLAR~ : 17
    SPEAKER 'Не возвращай меня, шеф. Пожалуйста!'

    jump show_graphics_menu

# s529 # say53831
label dmorte_s529:  # from - # Check EXTENDS ~DPILLAR~ : 19Check EXTENDS ~DPILLAR~ : 20Check EXTENDS ~DPILLAR~ : 21Check EXTENDS ~DPILLAR~ : 22Check EXTENDS ~DPILLAR~ : 23Check EXTENDS ~DPILLAR~ : 50
    SPEAKER 'Шеф? Нет! Нет! Ты *не можешь*! Брось это!'

    menu:
        'Не волнуйся, Морт: я заберу тебя позже.' if _r53832_condition(gsm):
            # r1061 # reply53832
            jump dmorte_s530
        'Не волнуйся, Морт: я заберу тебя позже.' if _r53833_condition(gsm):
            # r1062 # reply53833
            jump dmorte_s530
        'Не волнуйся, Морт: я заберу тебя позже.' if _r53834_condition(gsm):
            # r1063 # reply53834
            jump dmorte_s530
        'Не волнуйся, Морт: я заберу тебя позже.' if _r53835_condition(gsm):
            # r1064 # reply53835
            jump dmorte_s531
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53836_condition(gsm):
            # r1065 # reply53836
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53837_condition(gsm):
            # r1066 # reply53837
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53838_condition(gsm):
            # r1067 # reply53838
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53839_condition(gsm):
            # r1068 # reply53839
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53840_condition(gsm):
            # r1069 # reply53840
            jump show_graphics_menu
        'Уходим отсюда, Морт. Давай.':
            # r1070 # reply53841
            $ _r53841_action(gsm)
            jump show_graphics_menu


# s530 # say53842
label dmorte_s530:  # from 529.0 529.1 529.2 # Check EXTENDS ~DPILLAR~ : 19Check EXTENDS ~DPILLAR~ : 20Check EXTENDS ~DPILLAR~ : 21Check EXTENDS ~DPILLAR~ : 22Check EXTENDS ~DPILLAR~ : 23Check EXTENDS ~DPILLAR~ : 50
    SPEAKER 'Морт смотрит на тебя скептически. Ты *уверен*? *Клянешься*? Эй, о чем это я?! Нет! Ни за что! Эй, ты ведь *не можешь* вернуть меня туда?!'

    menu:
        'Схватить Морта и швырнуть его в Колонну Черепов.':
            # r1071 # reply53843
            $ _r53843_action(gsm)
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53844_condition(gsm):
            # r1072 # reply53844
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53863_condition(gsm):
            # r1073 # reply53863
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53864_condition(gsm):
            # r1074 # reply53864
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53865_condition(gsm):
            # r1075 # reply53865
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53866_condition(gsm):
            # r1076 # reply53866
            jump show_graphics_menu
        'Уходим отсюда, Морт. Давай.':
            # r1077 # reply53867
            $ _r53867_action(gsm)
            jump show_graphics_menu


# s531 # say53849
label dmorte_s531:  # from 529.3 # Check EXTENDS ~DPILLAR~ : 19Check EXTENDS ~DPILLAR~ : 20Check EXTENDS ~DPILLAR~ : 21Check EXTENDS ~DPILLAR~ : 22Check EXTENDS ~DPILLAR~ : 23Check EXTENDS ~DPILLAR~ : 50
    SPEAKER 'Морт некоторое время смотрит на тебя, разинув рот. ЧЕГО? Ни за что! Ты уже не такой сильный, каким был, когда… слушай, забудь об этом; ты не сможешь этого сделать, не получится! Эй, ты же *не можешь* вернуть меня туда?!'

    menu:
        'Схватить Морта и швырнуть его в Колонну Черепов.':
            # r1078 # reply53850
            $ _r53850_action(gsm)
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53851_condition(gsm):
            # r1079 # reply53851
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53852_condition(gsm):
            # r1080 # reply53852
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53853_condition(gsm):
            # r1081 # reply53853
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53854_condition(gsm):
            # r1082 # reply53854
            jump show_graphics_menu
        'Ладно, Морт. Колонна Черепов, какие еще подарки вы примете?' if _r53855_condition(gsm):
            # r1083 # reply53855
            jump show_graphics_menu
        'Уходим отсюда, Морт. Давай.':
            # r1084 # reply53856
            $ _r53856_action(gsm)
            jump show_graphics_menu


# s532 # say53857
label dmorte_s532:  # from - # Check EXTENDS ~DPILLAR~ : 19
    SPEAKER 'Эй… постой! Не так быстро! Колонна… Я мог бы рассказать вам, где находится Фьюл Раздвоенный Язык! Ну же, разве вы не это хотите знать? Что, если он расскажет это вместо меня? А? Что скажете?'

    menu:
        'Постой, Морт. Мы не будем выдавать Фьюла.':
            # r1085 # reply53858
            jump dmorte_s533
        'Ждать ответа Колонны.':
            # r1086 # reply53859
            jump show_graphics_menu


# s533 # say53860
label dmorte_s533:  # from 532.0 # Check EXTENDS ~DPILLAR~ : 19Check EXTENDS ~DPILLAR~ : 18
    SPEAKER 'Чего? Ты что, *спятил*? Ты продаешь *меня*, а не того *НЕЧИСТОГО*?! Он помог тебе только потому, что он проклят, принужден к этому! А как же *я*? Кто вытащил тебя из Морга, дружище? Кто будет стоять… э, парить… возле тебя, когда ты встретишь то, что ждет тебя в той Крепости Чего-то-там?! А? А? НЕ ФЬЮЛ ТОЛСТОЗАДЫЙ, ЭТО УЖ ТОЧНО!'

    menu:
        'Ладно, ладно. Колонна, что скажете?':
            # r1087 # reply53861
            jump show_graphics_menu
        'Извини, Морт. Твой выход.':
            # r1088 # reply53862
            jump show_graphics_menu


# s534 # say54155
label dmorte_s534:  # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    SPEAKER 'Почему бы и нет, шеф? — качает головой Морт. — То есть, мы уже были во ВСЕХ ужасных планах мультивселенной, которые только можно вообразить. Так почему бы не сделать еще один шаг в сторону обрыва? — он шумно вздыхает. — ТЫ готов? Потому что если ты не готов…'

    menu:
        'Можешь рассказать еще раз, что ждет нас по ту сторону портала?':
            # r1089 # reply54156
            jump dmorte_s544
        'Я готов, Морт. Лучше мне уже не подготовиться. Ты со мной?':
            # r1090 # reply54157
            jump dmorte_s535
        'Возможно, ты прав… Дай мне подготовиться поосновательней.':
            # r1091 # reply54158
            jump show_graphics_menu


# s535 # say54159
label dmorte_s535:  # from 534.1
    SPEAKER 'Ну… — Морт с тяжелым вздохом смотрит на мерцающий синий занавес. — Конечно. Пошли. Ведь лучше попадать в разные места, чем трясти черепушкой в Морге, верно?'

    menu:
        'Ну хорошо…':
            # r1092 # reply54160
            $ _r54160_action(gsm)
            jump show_graphics_menu


# s536 # say54161
label dmorte_s536:  # from -
    SPEAKER 'Э-э-э… Морт колеблется, переводя взгляд с портала на тебя и снова на портал. Он шумно вздыхает. Слушай, я не собираюсь говорить *очень* много, но, э-э-э… в общем, мне нужно кое-что сказать тебе…'

    menu:
        'В чем дело, Морт?':
            # r1093 # reply54162
            jump dmorte_s537
        'Что? Давай быстрее, Морт, нам нужно идти…':
            # r1094 # reply54163
            jump dmorte_s537


# s537 # say54164
label dmorte_s537:  # from 536.0 536.1 # Check EXTENDS ~DDAKKON~ : 174
    SPEAKER 'Ну, это насчет того места, куда мы собираемся попасть… или, э-э-э, где… мы уже *были*.'

    menu:
        ''Где МЫ уже были?' О чем это ты?' if _r54165_condition(gsm):
            # r1095 # reply54165
            jump dmorte_s540
        ''Где МЫ уже были?' О чем это ты?' if _r54166_condition(gsm):
            # r1096 # reply54166
            jump show_graphics_menu
        ''Где МЫ уже были?' О чем это ты?' if _r54167_condition(gsm):
            # r1097 # reply54167
            jump dmorte_s540


# s538 # say54168
label dmorte_s538:  # from -
    SPEAKER 'Э-э-э… шеф? Морт колеблется, переводя взгляд с портала на тебя и снова на портал. Он шумно вздыхает. Слушай, я не собираюсь говорить *очень* много, но, э-э-э… в общем, мне нужно кое-что сказать тебе…'

    menu:
        'В чем дело, Морт?':
            # r1098 # reply54169
            jump dmorte_s539
        'Что? Давай быстрее, Морт, мне нужно идти…':
            # r1099 # reply54170
            jump dmorte_s539


# s539 # say54171
label dmorte_s539:  # from 538.0 538.1 # Check EXTENDS ~DDAKKON~ : 174
    SPEAKER 'Ну, это насчет того места, куда ты собираешься попасть или, э-э-э, где… ты уже *был*.'

    menu:
        ''Где МЫ уже были?' О чем это ты?' if _r54172_condition(gsm):
            # r1100 # reply54172
            jump dmorte_s540
        ''Где МЫ уже были?' О чем это ты?' if _r54173_condition(gsm):
            # r1101 # reply54173
            jump show_graphics_menu
        ''Где МЫ уже были?' О чем это ты?' if _r54174_condition(gsm):
            # r1102 # reply54174
            jump dmorte_s540


# s540 # say54175
label dmorte_s540:  # from 537.0 537.2 539.0 539.2
    SPEAKER 'Это… э-э-э, мы проходим это уже не в ПЕРВЫЙ раз… понимаешь, мы уже бывали в этой Крепости сожалений… хотя мы… я… не знал об этом.'

    menu:
        'Ты не *знал*? Как такое могло случиться?':
            # r1103 # reply54176
            jump dmorte_s541
        'Так, значит, ты С САМОГО НАЧАЛА мог мне СКАЗАТЬ, где находится портал, ЧЕМ является портальный ключ, ПОЧЕМУ я бессмертен, ЧТО случилось с моей смертностью И что это связано с Крепостью?! Я тебя *УБЬЮ*, Морт!..':
            # r1104 # reply54177
            jump dmorte_s542
        'Морт, я жду объяснений… только без лжи и жульничества, только не сейчас.':
            # r1105 # reply54178
            jump dmorte_s541
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54179_condition(gsm):
            # r1106 # reply54179
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54180_condition(gsm):
            # r1107 # reply54180
            $ _r54180_action(gsm)
            jump show_graphics_menu


# s541 # say54181
label dmorte_s541:  # from 540.0 540.2
    SPEAKER 'Это было очень трудно объяснить, пока ты здесь не *оказался*… Кроме того, ты не знал, э-э-э, *другого* тебя — он точно не был из тех вояк, кто ДЕЛИЛСЯ с нами своими мыслями. То есть, я знал, что он искал КАКОЕ-ТО место, но не знал, почему, где оно находится или ЧТО из себя представляет, так что я НИЧЕГО не мог сказать тебе, потому что НИЧЕГО не знал! Я… только знаю, что случилось, когда мы ПОПАЛИ туда…'

    menu:
        'И… что случилось?' if _r54189_condition(gsm):
            # r1108 # reply54189
            jump dmorte_s544
        'И… что случилось?' if _r54190_condition(gsm):
            # r1109 # reply54190
            jump dmorte_s543
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54191_condition(gsm):
            # r1110 # reply54191
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54192_condition(gsm):
            # r1111 # reply54192
            $ _r54192_action(gsm)
            jump show_graphics_menu


# s542 # say54193
label dmorte_s542:  # from 540.1
    SPEAKER 'Морт явно встревожен. Нет! Нет! Мы… Я… никогда НЕ ЗНАЛ ничего из этого! А ты был не из самых общительных вояк на планах! Тот… тот *другой* ты хранил КУЧУ секретов при себе, и мы даже не знали, ЗАЧЕМ нам нужно попасть в это место или даже ЧТО из себя оно представляет! Я только знаю, что случилось, когда мы ПОПАЛИ туда…'

    menu:
        'И… что случилось?' if _r54194_condition(gsm):
            # r1112 # reply54194
            jump dmorte_s544
        'И… что случилось?' if _r54195_condition(gsm):
            # r1113 # reply54195
            jump dmorte_s543
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54196_condition(gsm):
            # r1114 # reply54196
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54197_condition(gsm):
            # r1115 # reply54197
            $ _r54197_action(gsm)
            jump show_graphics_menu


# s543 # say54198
label dmorte_s543:  # from 541.1 542.1
    SPEAKER 'Ну, мы попали туда — в эту КРЕПОСТЬ, но мы даже не успели встать на ноги, как нас РАЗДЕЛИЛИ, и нам пришлось сражаться за собственные жизни… Так что *первая* вещь, которую я хочу сказать тебе: если ты решил пойти туда, есть большая вероятность, что всякий, кто вступит в этот портал, окажется *очень* далеко от других. Мысль в том, что тебе могут понадобиться твои спутники…'

    menu:
        'Почему ты об этом заговорил?':
            # r1116 # reply54199
            jump dmorte_s545
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54200_condition(gsm):
            # r1117 # reply54200
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54201_condition(gsm):
            # r1118 # reply54201
            $ _r54201_action(gsm)
            jump show_graphics_menu


# s544 # say54202
label dmorte_s544:  # from 534.0 541.0 542.0
    SPEAKER 'Ну, мы попали туда… в эту КРЕПОСТЬ, но мы даже не успели встать на ноги, как нас РАЗДЕЛИЛИ, и нам пришлось сражаться за собственные жизни… — он содрогается. — Так что *первая* вещь, которую я хочу сказать тебе — если ты решил пойти туда, есть большая вероятность, что всякий, кто вступит в этот портал, окажется *очень* далеко от других. Мысль в том, что даже разделенные, мы можем оказаться единственной твоей надеждой…'

    menu:
        'Почему ты об этом заговорил?':
            # r1119 # reply54203
            jump dmorte_s545
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54204_condition(gsm):
            # r1120 # reply54204
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54205_condition(gsm):
            # r1121 # reply54205
            $ _r54205_action(gsm)
            jump show_graphics_menu


# s545 # say54206
label dmorte_s545:  # from 543.0 544.0
    SPEAKER 'Что бы тебя не ждало там, в Крепости, шеф, оно уже побеждало тебя… не знаю, как тогда тебе удалось выжить, но если ты снова падешь, тебе понадобится кто-то, кто сможет вытащить тебя из этой Крепости…'

    menu:
        'Морт, мне нужно, чтобы ты рассказал об этой Крепости все… Это очень важно.' if _r54207_condition(gsm):
            # r1122 # reply54207
            jump dmorte_s547
        'Морт, мне нужно, чтобы ты рассказал об этой Крепости все… Это очень важно.' if _r54208_condition(gsm):
            # r1123 # reply54208
            jump dmorte_s546
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54209_condition(gsm):
            # r1124 # reply54209
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54210_condition(gsm):
            # r1125 # reply54210
            $ _r54210_action(gsm)
            jump show_graphics_menu


# s546 # say54211
label dmorte_s546:  # from 545.1
    SPEAKER 'Эта Крепость сожалений… она тянется на многие ЛИГИ, шеф. Она называется Крепостью, но она очень похожа на ПЛАН. Одни только камни, тьма и тени — тени повсюду. Если ты пойдешь туда… тебе лучше быть готовым.'

    menu:
        'Что произошло, когда мы впервые оказались там?':
            # r1126 # reply54212
            jump dmorte_s548
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54213_condition(gsm):
            # r1127 # reply54213
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54214_condition(gsm):
            # r1128 # reply54214
            $ _r54214_action(gsm)
            jump show_graphics_menu


# s547 # say54215
label dmorte_s547:  # from 545.0
    SPEAKER 'Эта Крепость сожалений… она тянется на многие ЛИГИ, шеф. Она называется Крепостью, но она очень похожа на ПЛАН. Одни только камни, тьма и тени — тени повсюду. Если мы пойдем туда… нам лучше быть готовыми.'

    menu:
        'Что произошло, когда мы впервые оказались там?':
            # r1129 # reply54216
            jump dmorte_s548
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54217_condition(gsm):
            # r1130 # reply54217
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54218_condition(gsm):
            # r1131 # reply54218
            $ _r54218_action(gsm)
            jump show_graphics_menu


# s548 # say54219
label dmorte_s548:  # from 546.0 547.0
    SPEAKER 'Не знаю, что случилось с ТОБОЙ, шеф, но я знаю, что произошло со МНОЙ… Я все время носился от одного укрытия к другому, эти тени ползли вслед за мной, пытаясь пригвоздить меня к земле… а потом я просто… внезапно мы оказались 'снаружи', как будто кто-то нас вытащил…'

    menu:
        'Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.' if _r54220_condition(gsm):
            # r1132 # reply54220
            jump dmorte_s565
        'Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.' if _r54221_condition(gsm):
            # r1133 # reply54221
            jump dmorte_s549
        'Постой минуту. Когда ты говоришь 'нас', не похоже, что ты имеешь в виду меня и себя.' if _r54223_condition(gsm):
            # r1134 # reply54223
            jump dmorte_s550
        'Понятно. Что еще ты можешь сказать?':
            # r1135 # reply54225
            jump dmorte_s552
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54226_condition(gsm):
            # r1136 # reply54226
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54227_condition(gsm):
            # r1137 # reply54227
            $ _r54227_action(gsm)
            jump show_graphics_menu


# s549 # say54229
label dmorte_s549:  # from 548.1
    SPEAKER 'Морт умолкает на некоторое время. Нет… Там были и другие. Там были… Даккон, эта чувствующая цыпочка, Дейонарра, слепой лучник, который почти все время был пьян до беспамятства, ты и я… Было такое ощущение, что мы прыгнули в ад и тут же вернулись. Очевидно, тебе, мне и Даккону это удалось, а те двоим — нет. Даже не знаю, что случилось с ними.'

    menu:
        'Даккон? Но почему?.. Я спрошу его об этом. Ты сказал, что Дейонарра и лучник не вернулись из Крепости?' if _r54230_condition(gsm):
            # r1138 # reply54230
            jump dmorte_s551
        'Даккон? Но почему?.. Я спрошу его об этом. Ты сказал, что те женщина и лучник не вернулись из Крепости?' if _r54231_condition(gsm):
            # r1139 # reply54231
            jump dmorte_s551
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54232_condition(gsm):
            # r1140 # reply54232
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54233_condition(gsm):
            # r1141 # reply54233
            $ _r54233_action(gsm)
            jump show_graphics_menu


# s550 # say54234
label dmorte_s550:  # from 548.2
    SPEAKER 'Морт умолкает на некоторое время. Нет… Там были и другие. Там были… старый гит, Даккон, эта чувствующая цыпочка, Дейонарра, слепой лучник, который почти все время был пьян до беспамятства, ты и я… Было такое ощущение, что мы прыгнули в ад и тут же вернулись. Очевидно, тебе, мне и Даккону это удалось, а те двоим — нет. Даже не знаю, что случилось с ними.'

    menu:
        'Ты сказал, что Дейонарра и лучник не вернулись из Крепости?' if _r54235_condition(gsm):
            # r1142 # reply54235
            jump dmorte_s551
        'Ты сказал, что эта женщина, Дейонарра, и лучник не вернулись из Крепости?' if _r54236_condition(gsm):
            # r1143 # reply54236
            jump dmorte_s551
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54237_condition(gsm):
            # r1144 # reply54237
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54238_condition(gsm):
            # r1145 # reply54238
            $ _r54238_action(gsm)
            jump show_graphics_menu


# s551 # say54239
label dmorte_s551:  # from 549.0 549.1 550.0 550.1
    SPEAKER 'Морт качает головой. По крайней мере, я об этом ничего не знаю.'

    menu:
        'Ты можешь мне еще что-нибудь рассказать об этой Крепости?':
            # r1146 # reply54240
            jump dmorte_s552
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54241_condition(gsm):
            # r1147 # reply54241
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54242_condition(gsm):
            # r1148 # reply54242
            $ _r54242_action(gsm)
            jump show_graphics_menu


# s552 # say54243
label dmorte_s552:  # from 548.3 551.0
    SPEAKER 'Больше ничего, шеф. Кроме того, что мы были вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в Крепости есть нечто гораздо могущественнее *любого* из нас. Больше мне нечего сказать…'

    menu:
        'Ты *уверен*? Возможно, это будет наша последняя возможность поговорить друг с другом…':
            # r1149 # reply54244
            $ _r54244_action(gsm)
            jump dmorte_s553
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54245_condition(gsm):
            # r1150 # reply54245
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54246_condition(gsm):
            # r1151 # reply54246
            $ _r54246_action(gsm)
            jump show_graphics_menu


# s553 # say54249
label dmorte_s553:  # from 552.0
    SPEAKER 'Ну… — Морт делает паузу. — Да, есть еще одна вещь, которую ты должен знать. ТЫ, которого я знал раньше, ТЫ, который привел нас сюда, отличается от тебя. Во всем.'

    menu:
        'О чем это ты?' if _r54250_condition(gsm):
            # r1152 # reply54250
            jump dmorte_s554
        'О чем это ты?' if _r54252_condition(gsm):
            # r1153 # reply54252
            jump dmorte_s555
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54255_condition(gsm):
            # r1154 # reply54255
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54262_condition(gsm):
            # r1155 # reply54262
            $ _r54262_action(gsm)
            jump show_graphics_menu


# s554 # say54263
label dmorte_s554:  # from 553.0
    SPEAKER 'Другой ТЫ, он… он не особенно заботился о других. Ни о ком. Мы могли бы ВСЕ погибнуть в Крепости, а он бы и глазом не моргнул. Так что… я просто хочу, чтобы ты почувствовал разницу… *Ты* нравишься мне больше. ГОРАЗДО больше.'

    menu:
        'Но это не все, что ты хочешь сказать, верно?' if _r54264_condition(gsm):
            # r1156 # reply54264
            jump dmorte_s556
        'Это все?':
            # r1157 # reply54265
            jump dmorte_s556
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54266_condition(gsm):
            # r1158 # reply54266
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54267_condition(gsm):
            # r1159 # reply54267
            $ _r54267_action(gsm)
            jump show_graphics_menu


# s555 # say54268
label dmorte_s555:  # from 553.1
    SPEAKER 'Я только хотел сказать, что несмотря на твое упрямство, ТЫ сильнее духом, чем он когда либо был. Другой ТЫ, он… он был отделен от других. Так что… я просто хочу, чтобы ты об этом знал.'

    menu:
        'Но это не все, что ты хочешь сказать, верно?' if _r54269_condition(gsm):
            # r1160 # reply54269
            jump dmorte_s556
        'Это все?':
            # r1161 # reply54270
            jump dmorte_s556
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54271_condition(gsm):
            # r1162 # reply54271
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54272_condition(gsm):
            # r1163 # reply54272
            $ _r54272_action(gsm)
            jump show_graphics_menu


# s556 # say54273
label dmorte_s556:  # from 554.0 554.1 555.0 555.1
    SPEAKER 'Нет… — Морт делает паузу. — Еще одно — может быть, мне не очень нравился *другой* ты, но он был очень умным воякой, никого умнее я не встречал. У него на все случаи всегда был запасной план. И если он умер в Крепости, это значит… ну…'

    menu:
        'Ты не считаешь, что у меня может получиться?':
            # r1164 # reply54274
            jump dmorte_s557
        'Неважно, Морт. Я готов шагнуть в портал — ты со мной?' if _r54275_condition(gsm):
            # r1165 # reply54275
            jump dmorte_s534
        'Неважно, Морт. Что было — то было. Я собираюсь шагнуть в портал.' if _r54276_condition(gsm):
            # r1166 # reply54276
            $ _r54276_action(gsm)
            jump show_graphics_menu


# s557 # say54277
label dmorte_s557:  # from 556.0
    SPEAKER 'Нет… — Морт качает головой. — Не в этом дело, шеф. Не всегда важно, кто умнее, или могущественнее, или сильнее… Иногда все сводится к тому, кто ты и чего ты хочешь *на самом деле*. То есть, когда-то ты хотел стать бессмертным, но чего ты хотел *на самом деле*? Просто на этот раз будь уверен в том, чего ты хочешь — вот что я хочу сказать.'

    menu:
        'Ладно. Послушай, Морт… Мы ведь никогда об этом не говорили, но ты ведь не хочешь идти в этом место, верно? Я пойму, если ты не пойдешь.' if _r54278_condition(gsm):
            # r1167 # reply54278
            $ _r54278_action(gsm)
            jump dmorte_s558
        'Понятно. Если ты высказался — пошли. Ты готов?' if _r54279_condition(gsm):
            # r1168 # reply54279
            jump dmorte_s534
        'Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.' if _r54280_condition(gsm):
            # r1169 # reply54280
            $ _r54280_action(gsm)
            jump show_graphics_menu


# s558 # say54281
label dmorte_s558:  # from 557.0 # Check EXTENDS ~DGRACE~ : 169Check EXTENDS ~DGRACE~ : 170
    SPEAKER 'Да… Я знаю, шеф. Не буду лгать — я не хочу туда… но я пойду. Просто знай: как только мы войдем в портал, это больше не будет касаться только *тебя*. Наши жизни окажутся в твоих руках, и мы не сможем вернуться, если умрем.'

    menu:
        'Тогда почему же ты…' if _r54282_condition(gsm):
            # r1170 # reply54282
            jump show_graphics_menu
        'Тогда почему же ты…' if _r54283_condition(gsm):
            # r1171 # reply54283
            jump show_graphics_menu
        'Тогда почему же ты…' if _r54284_condition(gsm):
            # r1172 # reply54284
            jump dmorte_s562
        'Тогда почему же ты…' if _r54285_condition(gsm):
            # r1173 # reply54285
            jump dmorte_s563
        'Тогда почему же ты…' if _r54286_condition(gsm):
            # r1174 # reply54286
            jump dmorte_s564


# s559 # say54762
label dmorte_s559:  # from - # Check EXTENDS ~DGRACE~ : 176
    SPEAKER 'Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?'

    jump show_graphics_menu

# s560 # say54763
label dmorte_s560:  # from - # Check EXTENDS ~DGRACE~ : 177
    SPEAKER 'Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?'

    jump show_graphics_menu

# s561 # say54764
label dmorte_s561:  # from - # Check EXTENDS ~DTRIAS~ : 8
    SPEAKER 'Морт делает выпад. Ты пахнешь не лучше. Когда в последний раз ванну-то принимал?'

    jump show_graphics_menu

# s562 # say54831
label dmorte_s562:  # from 558.2
    SPEAKER 'То, что Равель сказала там, в лабиринте… она сказала, что ты притягиваешь страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.'

    menu:
        'Может быть. Значит… ты со мной, Морт?' if _r54832_condition(gsm):
            # r1175 # reply54832
            jump dmorte_s534
        'Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.' if _r54833_condition(gsm):
            # r1176 # reply54833
            $ _r54833_action(gsm)
            jump show_graphics_menu


# s563 # say54834
label dmorte_s563:  # from 558.3
    SPEAKER 'То, что Равель сказала там, в лабиринте, и то, что Фелл сказал о том символе Мучения? Они сказали, что ты страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.'

    menu:
        'Может быть. Значит… ты со мной, Морт?' if _r54835_condition(gsm):
            # r1177 # reply54835
            jump dmorte_s534
        'Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.' if _r54836_condition(gsm):
            # r1178 # reply54836
            $ _r54836_action(gsm)
            jump show_graphics_menu


# s564 # say54837
label dmorte_s564:  # from 558.4
    SPEAKER 'Я знал тебя, шеф, уже долгое время, и есть в тебе *кое-что*: ты притягиваешь страдающих людей как магнит, — Морт качает головой. — Может, это потому что *ты* страдал все это время. Возможно, когда ты со всем разберешься… может, тогда и *мы* обретем чуточку покоя. Возможно.'

    menu:
        'Может быть. Значит… ты со мной, Морт?' if _r54838_condition(gsm):
            # r1179 # reply54838
            jump dmorte_s534
        'Понятно. Спасибо за совет, Морт. Теперь я собираюсь пройти через портал.' if _r54839_condition(gsm):
            # r1180 # reply54839
            $ _r54839_action(gsm)
            jump show_graphics_menu


# s565 # say54840
label dmorte_s565:  # from 548.0 # Check EXTENDS ~DDAKKON~ : 175
    SPEAKER 'Морт умолкает.'

    jump show_graphics_menu

# s566 # say54841
label dmorte_s566:  # from - # Check EXTENDS ~DDAKKON~ : 177
    SPEAKER 'Черепом был я, — тихо произносит Морт. — Женщиной была одна цыпочка по имени Дейонарра. Лучника я не знал…'

    jump show_graphics_menu

# s567 # say54842
label dmorte_s567:  # from - # Check EXTENDS ~DDAKKON~ : 178
    SPEAKER 'Ага… — Морт трясется, почти что трепещет. — Шеф, в этой крепости — там *повсюду* тени…'

    jump show_graphics_menu

# s568 # say54843
label dmorte_s568:  # from - # Check EXTENDS ~DDAKKON~ : 179
    SPEAKER 'Они говорили со мной, как Колонна Черепов… — Морт понижает тон. — Они *знали*…'

    menu:
        'Ладно. Слушайте, вы двое: мне нужно знать все, что вы можете рассказать мне об этой крепости…':
            # r1181 # reply54844
            jump show_graphics_menu


# s569 # say54845
label dmorte_s569:  # from - # Check EXTENDS ~DDAKKON~ : 182
    SPEAKER 'Больше ничего, шеф. Кроме того, что мы были вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в крепости есть нечто гораздо могущественнее *любого* из нас.'

    jump show_graphics_menu

# s570 # say54846
label dmorte_s570:  # from - # Check EXTENDS ~DDAKKON~ : 182
    SPEAKER 'Больше ничего, шеф. Кроме того, что те, кто попадают туда, вынуждены разделиться сразу после прибытия, что это место ОГРОМНО, что оно кишит тенями… и что где-то в крепости есть нечто гораздо могущественнее *любого* из нас.'

    jump show_graphics_menu

# s571 # say55832
label dmorte_s571:  # from -
    SPEAKER 'Шеф, перед нами потенциальный источник неприятностей: этот модрон стал бродягой.'

    menu:
        'Бродягой?':
            # r1182 # reply55833
            jump dmorte_s572


# s572 # say55834
label dmorte_s572:  # from 571.0 # Check EXTENDS ~DNORDOM~ : 21
    SPEAKER 'Да, видишь ли, иногда модроны становятся немного хаотичными, и когда это случается… что ж, полагаю, *лучше* всего объяснить это так: модрон-бродяга — это что-то вроде… модрона наоборот.'

    menu:
        'Так значит, это… модрон наоборот?':
            # r1183 # reply55836
            jump show_graphics_menu


# s573 # say55837
label dmorte_s573:  # from -
    SPEAKER 'Шеф, может, это и кажется весельем, но выбивание барного стула из-под зада баатезу может оказаться куда более полезным занятием, по сравнению с трещанием черепушками с этим дурацким полигоном.'

    menu:
        'Морт, *ты* знаешь, что такое духи механизмов?':
            # r1184 # reply55839
            jump dmorte_s574


# s574 # say55841
label dmorte_s574:  # from 573.0 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Шеф, я понятия не имею, о чем трещит этот куб.'

    menu:
        'А я-то думал, что ты — *эксперт* по планам.':
            # r1185 # reply55842
            jump dmorte_s575
        'Ну хорошо. Нордом, у меня есть к тебе другие вопросы…':
            # r1186 # reply55843
            jump show_graphics_menu
        'Тогда забудь об этом. Пошли дальше.':
            # r1187 # reply55844
            jump show_graphics_menu


# s575 # say55845
label dmorte_s575:  # from 574.0 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Чт… Я знаю побольше *твоего*, шатающийся и ни черта не помнящий хрипун! Кстати, вот тебе еще три сведения, чтобы тарахтели в твоей пустой черепушке: во-первых, НЕ СУЩЕСТВУЕТ экспертов по планам; во-вторых, я — лучшее из того, что ты можешь найти; и, в-третьих, проявляй ко мне хоть немного уважения. Зачем? Смотри пункт второй.'

    menu:
        'Ну хорошо. Нордом, у меня есть к тебе другие вопросы…':
            # r1188 # reply55846
            jump show_graphics_menu
        'Тогда забудь об этом. Пошли дальше.':
            # r1189 # reply55847
            jump show_graphics_menu


# s576 # say55848
label dmorte_s576:  # from - # Check EXTENDS ~DGRACE~ : 184Check EXTENDS ~DNORDOM~ : 65
    SPEAKER 'Механус? Скучный во всех смыслах этого слова, шеф. Представь себе план, наполненный модронами и большими вертящимися шестернями — вот и весь великий, огромный и СКУЧНЫЙ план Механус. Слишком много законов, слишком нудно. О таком месте ты даже и думать не захочешь, не то чтобы посетить.'

    menu:
        'Что имел в виду под 'нулевым домом', Нордом?' if _r55849_condition(gsm):
            # r1190 # reply55849
            jump show_graphics_menu
        'Неважно, Морт. Я достаточно наслушался. Идем.' if _r55850_condition(gsm):
            # r1191 # reply55850
            jump show_graphics_menu


# s577 # say55855
label dmorte_s577:  # from - # Check EXTENDS ~DNORDOM~ : 65
    SPEAKER 'Прошу ПРОЩЕНИЯ, мисс Жрица Благочестивости, но Механус — САМОЕ скучное место в мультивселенной… Единственное интересное событие, которое могло бы там произойти, — это если бы *ты* туда пришла… — Морт закатывает глаза. — Но у меня есть подозрение, что даже *это* утратило бы свое очарование через какое-то время.'

    menu:
        'Что имел в виду под 'нулевым домом', Нордом?':
            # r1192 # reply55857
            jump show_graphics_menu
        'Неважно, Морт. Я достаточно наслушался. Идем.':
            # r1193 # reply55858
            jump show_graphics_menu


# s578 # say55860
label dmorte_s578:  # from - # Check EXTENDS ~DGRACE~ : 186Check EXTENDS ~DNORDOM~ : 67Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Все модроны — части этой 'совокупности', шеф, все равно что огромное хранилище энергии… Когда один из них умирает, энергия, затраченная для создания модрона, возвращается в хранилище, и создается новый модрон. Дело вот в чем… когда модроны съезжают с катушек, они типа обрывают эту связь, при этом оставляя у себя немного энергии.'

    menu:
        'Итак… Нордом, этот Механус — источник энергии?':
            # r1194 # reply55862
            jump show_graphics_menu
        'Ясно. Нордом, у меня есть к тебе другие вопросы…':
            # r1195 # reply55864
            jump show_graphics_menu
        'Это все, что я хотел знать. Пошли.':
            # r1196 # reply55865
            jump show_graphics_menu


# s579 # say55867
label dmorte_s579:  # from - # Check EXTENDS ~DGRACE~ : 187
    SPEAKER 'Морт уставился на Падшую Грацию. *Не возражаешь*? Спасибо, я уже раскрыл вопрос. Здесь *я* источник информации, НЕ ТЫ, понятно?'

    jump show_graphics_menu

# s580 # say55870
label dmorte_s580:  # from - # Check EXTENDS ~DGRACE~ : 191
    SPEAKER 'О, *понятно*! Может, если бы я был суккубом, ты бы больше ко мне прислушивался, правда? Может, если бы я время от времени обнажал ножку, ты бы меня больше уважал, да? Это очень низко, шеф, очень низко! Да я вообще могу…'

    jump show_graphics_menu

# s581 # say55871
label dmorte_s581:  # from -
    SPEAKER 'NULL NODE'

    jump show_graphics_menu

# s582 # say55873
label dmorte_s582:  # from - # Check EXTENDS ~DNORDOM~ : 67Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Вот как?! Я?! Ну… Да, ты совершенно… да-а, ты это слышал, шеф? То, что сказала суккубка? Она права. Меня легче понять, я 'умею подбирать слова', знаю, что говорю. Видишь, как я тебе нужен!'

    menu:
        'Ладно, тогда у меня другой вопрос: вы оба говорите, что Нордом — часть этого Источника, но он от него отрезан. И что когда модрон умирает, он возвращается туда. С Нордомом будет так же?' if _r55875_condition(gsm):
            # r1197 # reply55875
            jump dmorte_s583
        'Я и не отрицаю, Морт. Итак… Нордом, этот источник энергии, о котором ты упоминал… он на Механусе?':
            # r1198 # reply55876
            jump show_graphics_menu
        'Ну хорошо. Нордом, у меня есть другие вопросы к тебе…':
            # r1199 # reply55877
            jump show_graphics_menu
        'Это все, что я хотел знать. Пошли.':
            # r1200 # reply55879
            jump show_graphics_menu


# s583 # say55882
label dmorte_s583:  # from 582.0
    SPEAKER 'Морт кивает.'

    menu:
        'И если он умрет, создается еще один Нордом.':
            # r1201 # reply55884
            jump dmorte_s584


# s584 # say55886
label dmorte_s584:  # from 583.0
    SPEAKER 'Э… нет.'

    menu:
        'Тогда что?':
            # r1202 # reply55887
            jump dmorte_s585


# s585 # say55890
label dmorte_s585:  # from 584.0 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Ну, они заберут его энергию, шеф, и создадут еще одного модрона, но это будет уже не Нордом, потому что он теперь уже *не совсем* модрон, в нем слишком много от планов. Они сделают замену на не-Нордома.'

    menu:
        'Значит… став бродягой, он превратился… в смертного?':
            # r1203 # reply55892
            jump dmorte_s586
        'Ну хорошо. Нордом, у меня есть другие вопросы к тебе…':
            # r1204 # reply55894
            jump show_graphics_menu
        'Это все, что я хотел знать. Пошли.':
            # r1205 # reply55895
            jump show_graphics_menu


# s586 # say55897
label dmorte_s586:  # from 585.0 # Check EXTENDS ~DNORDOM~ : 74Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Морт на миг умолкает. Ну… да, можно и так сказать. То есть, если бы он не устроил свой маленький бродяжный бунт, с ним бы все было в порядке… Если бы он умер, появился бы еще один модрон — точная его копия. Но поскольку он 'обратился'… ну, когда он умрет, эта частичка потеряется.'

    menu:
        'Ну хорошо. Нордом, у меня есть другие вопросы к тебе…':
            # r1206 # reply55898
            jump show_graphics_menu
        'Это все, что я хотел знать. Пошли.':
            # r1207 # reply55900
            jump show_graphics_menu


# s587 # say55901
label dmorte_s587:  # from - # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Аййй! Во имя сил, пожалей мою голову и прекрати это! Если ты продолжишь спрашивать его об этом без конца, у него коленвал погнется!'

    menu:
        'А что, это *идея*, Морт.':
            # r1208 # reply55902
            $ _r55902_action(gsm)
            jump dmorte_s588
        'Ну, я хотел услышать от него ответ, и я добивался этого от него':
            # r1209 # reply55905
            jump dmorte_s589
        'Неважно. У меня есть другие вопросы к Нордому…':
            # r1210 # reply55906
            jump show_graphics_menu
        'Забудь об этом. Идем.':
            # r1211 # reply55907
            jump show_graphics_menu


# s588 # say55909
label dmorte_s588:  # from 587.0 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'О, — Морт 'ухмыляется'. — Мог бы хоть ЧТО-ТО сказать. Пожалуйста, продолжай. Я не против… — Морт щелкает зубами, изображая Нордома. — Если хочешь что-нибудь узнать о модронах — спроси МЕНЯ.'

    menu:
        'Ладно, Морт… Что ты можешь рассказать мне о модронах?':
            # r1212 # reply55910
            jump dmorte_s590
        'Неважно. У меня есть другие вопросы к Нордому…':
            # r1213 # reply55912
            jump show_graphics_menu
        'Забудь об этом. Идем.':
            # r1214 # reply55913
            jump show_graphics_menu


# s589 # say55914
label dmorte_s589:  # from 587.1 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Слушай, шеф, ОБЫЧНЫЕ модроны с трудом понимают что-либо, что не касается их базовых задач, и этот тупой полигон только что попал на планы. Не запутывай куб, хорошо? По крайней мере, пока он вооружен. Если хочешь узнать что-то про модронов, спрашивай меня, а не его.'

    menu:
        'Ладно, Морт… Что ты можешь рассказать мне о модронах?':
            # r1215 # reply55915
            jump dmorte_s590
        'Неважно. У меня есть другие вопросы к Нордому…':
            # r1216 # reply55917
            jump show_graphics_menu
        'Забудь об этом. Идем.':
            # r1217 # reply55918
            jump show_graphics_menu


# s590 # say55921
label dmorte_s590:  # from 588.0 589.0 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Шеф, все выглядит так: модроны — это дурацкие геометрические фигуры, которые бряцают по своему родному плану, Механусу. Они все такие аккуратные, упорядоченные, и хотят, чтобы и ОСТАЛЬНАЯ мультивселенная была такой же. Вот почему они такие надоедливые.'

    menu:
        'Что плохого в том, чтобы попытаться навести порядок в мультивселенной?':
            # r1218 # reply55923
            jump dmorte_s592
        'Что еще за Механус?':
            # r1219 # reply55925
            $ _r55925_action(gsm)
            jump dmorte_s591
        'Неважно. У меня есть другие вопросы к Нордому…':
            # r1220 # reply55926
            jump show_graphics_menu
        'Забудь об этом. Идем.':
            # r1221 # reply55928
            jump show_graphics_menu


# s591 # say55930
label dmorte_s591:  # from 590.1 # Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Это план, откуда происходят все эти механические дармоеды. Спроси его о нем, увидишь, что он скажет. Там они садятся в кружок и без конца все раскладывают по полочкам… Создать перечень, положить на место *то*, положить на место *это*, придумать закон, и так далее и тому подобное.'

    menu:
        'Правда: Похоже, это благородное стремление. Что плохого в том, чтобы попытаться навести порядок в мультивселенной?':
            # r1222 # reply55931
            $ _r55931_action(gsm)
            jump dmorte_s592
        'Кажется, тебе это не кажется захватывающим.':
            # r1223 # reply55935
            jump dmorte_s592
        'У меня есть вопросы к Нордому…':
            # r1224 # reply55936
            jump show_graphics_menu
        'Забудь об этом. Идем.':
            # r1225 # reply55937
            jump show_graphics_menu


# s592 # say55938
label dmorte_s592:  # from 590.0 591.0 591.1
    SPEAKER 'Морт глядит на Нордома, который держит свой левый арбалет у виска, словно слушая его.'

    jump show_graphics_menu

# s593 # say55940
label dmorte_s593:  # from 592.0 # Check EXTENDS ~DNORDOM~ : 74Check EXTENDS ~DNORDOM~ : 74
    SPEAKER 'Потому что, шеф, хаос тоже должен иметь место. Если бы все было так, как это видят *модроны*, это не было бы похоже на жизнь.. по крайней мере, на жизнь, которой я хочу жить. Они только и хотят, чтобы все *структурировать*. Ух-х.'

    menu:
        'Правда: Согласен. Должно быть место и для хаоса… если будет чересчур много законов, получится застой. Слушай, у меня есть другие вопросы к Нордому…':
            # r1226 # reply55941
            $ _r55941_action(gsm)
            jump show_graphics_menu
        'Понятно. Слушай, у меня есть другие вопросы к Нордому…':
            # r1227 # reply55942
            jump show_graphics_menu
        'Тогда ладно. Давай двигаться дальше.':
            # r1228 # reply55944
            jump show_graphics_menu


# s594 # say56029
label dmorte_s594:  # from - # Check EXTENDS ~DFHJULL~ : 27
    SPEAKER 'А мне *нравится*, как она пахнет. Так мило.'

    jump show_graphics_menu

# s595 # say56030
label dmorte_s595:  # from - # Check EXTENDS ~DFHJULL~ : 88
    SPEAKER 'Погоди, шеф… Баатор — это ПЛОХОЕ место. Нечистый, вероятно, что-то утаил от нас… и даже если эта 'Колонна Черепов' и существует, возможно, мы могли бы найти кого-нибудь еще, кто знает, как добраться до Крепости, не побывав при этом на одном из самых опасных планов в мультивселенной.'

    menu:
        'Ты что-то утаил, Раздвоенный Язык?':
            # r1229 # reply56031
            jump show_graphics_menu
        'Почему ты не хочешь туда идти, Морт?':
            # r1230 # reply56032
            jump dmorte_s596


# s596 # say56033
label dmorte_s596:  # from 595.1 # Check EXTENDS ~DFHJULL~ : 46
    SPEAKER 'Там опасно, шеф. Я бы лучше туда не ходил. Я бывал там — не лучшее место. Ясно?'

    menu:
        'Мы еще поговорим об этом позже. Раздвоенный Язык, у меня есть несколько вопросов…':
            # r1231 # reply56034
            jump show_graphics_menu


# s597 # say56936
label dmorte_s597:  # from -
    SPEAKER 'Этот мужик появляется *повсюду*!'

    menu:
        'Да, но он нам помог. Идем.':
            # r1232 # reply56937
            jump show_graphics_menu


# s598 # say59827
label dmorte_s598:  # from -
    SPEAKER '(NULL NODE)'

    jump show_graphics_menu

# s599 # say60950
label dmorte_s599:  # from -
    SPEAKER 'Эй, быть мертвым не так уж плохо. Посмотри на это с другой стороны: по крайней мере, тебе больше не придется разговаривать с этими дурацкими закорючками.'

    menu:
        'Молчи, Морт. Я с этим разберусь. Ты не мог бы сказать, что случилось?':
            # r1233 # reply61111
            jump show_graphics_menu
        'Забудь. Я оставлю тебя здесь.':
            # r1234 # reply61112
            jump show_graphics_menu


# s600 # say61408
label dmorte_s600:  # from - # Check EXTENDS ~DUCHO~ : 9
    SPEAKER 'Э… шеф… что скажешь? Как насчет того, чтобы одолжить старому Морту немного звенелок? Знаешь, прошло уже много времени…'

    menu:
        'Конечно, почему бы и нет. Мисс?' if _r61411_condition(gsm):
            # r1235 # reply61411
            jump show_graphics_menu
        'Извини, Морт, наличность закончилась. Идем.' if _r61412_condition(gsm):
            # r1236 # reply61412
            jump show_graphics_menu
        'Морт, нам правда нужно идти. Прощай, красавица.':
            # r1237 # reply61413
            jump show_graphics_menu


# s601 # say61409
label dmorte_s601:  # from - # Check EXTENDS ~DUCHO~ : 10
    SPEAKER 'Отлично! Спасибо, шеф! Морт поворачивается к уходящей женщине.'

    menu:
        'Подождать, пока он не вернется.':
            # r1238 # reply61414
            $ _r61414_action(gsm)
            jump show_graphics_menu


# s602 # say61410
label dmorte_s602:  # from -
    SPEAKER 'Похоже, Морт лишь смутно осознает твое присутствие: он то глупо хихикает, то томно вздыхает.'

    menu:
        'Хорошо… Думаю, что все прошло хорошо. Прощай, красавица.':
            # r1239 # reply61415
            jump show_graphics_menu


# s603 # say61481
label dmorte_s603:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Моим? Я — голова Векны. [MRT562]'

    jump show_graphics_menu

# s604 # say61482
label dmorte_s604:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Боги услышали мои молитвы! [MRT485]'

    jump show_graphics_menu

# s605 # say61483
label dmorte_s605:  # from - # Check EXTENDS ~BGRACE~ : 3
    SPEAKER 'История головы Векны очень долгая. Я не хочу об этом говорить. [MRT559A]'

    jump show_graphics_menu

# s606 # say61484
label dmorte_s606:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER '*Пожалуйста*, мы можем сменить тему? [MRT559B]'

    jump show_graphics_menu

# s607 # say61485
label dmorte_s607:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Я? Я *ле пети Морт*. [MRT560]'

    jump show_graphics_menu

# s608 # say61486
label dmorte_s608:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Что сказать? Я — *Мементо Морте*. [MRT561]'

    jump show_graphics_menu

# s609 # say61487
label dmorte_s609:  # from - # Check EXTENDS ~BGRACE~ : 7
    SPEAKER 'Только если я отдохну на твоих буферах. [MRT486A]'

    jump show_graphics_menu

# s610 # say61488
label dmorte_s610:  # from - # ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Ничего! Ничего такого. Важного. [MRT486B]'

    jump show_graphics_menu

# s611 # say61489
label dmorte_s611:  # from - # ~SetGlobal("Grace_Talked_Morte","GLOBAL",0) ~ EXIT
    SPEAKER 'Гав! Гав! Хе-хе-хе! [MRT484]'

    jump show_graphics_menu

# s612 # say62890
label dmorte_s612:  # from - # Check EXTENDS ~DGRACE~ : 213
    SPEAKER 'Шеф, она — танарри… суккуб.'

    jump show_graphics_menu

# s613 # say63454
label dmorte_s613:  # from - # Check EXTENDS ~BANNAH~ : 1
    SPEAKER 'Я не могу нигде стоять. Видишь ли, это можно делать только ногами. [MRT482]'

    jump show_graphics_menu

# s614 # say63455
label dmorte_s614:  # from - # Check EXTENDS ~BANNAH~ : 3
    SPEAKER 'Я думал, что ты хорошо выглядишь, но я ошибался. [MRT483]'

    jump show_graphics_menu

# s615 # say63456
label dmorte_s615:  # from - # ~SetGlobal("Annah_Talked_Morte","GLOBAL",3) ~ EXIT
    SPEAKER 'Я перестал дышать с тех пор, как увидел тебя, бесовка. [MRT524]'

    jump show_graphics_menu

# s616 # say63457
label dmorte_s616:  # from - # Check EXTENDS ~BANNAH~ : 6
    SPEAKER 'Знаешь, у меня ведь есть ИМЯ. [MRT526]'

    jump show_graphics_menu

# s617 # say63458
label dmorte_s617:  # from - # Check EXTENDS ~BANNAH~ : 8
    SPEAKER 'Интересно, надо попробовать… на следующий день я у них спрошу, сколько они отвалят за тебя. [MRT531]'

    jump show_graphics_menu

# s618 # say63459
label dmorte_s618:  # from - # Check EXTENDS ~BANNAH~ : 10
    SPEAKER 'Знаешь, когда твой рот закрыт, ты выглядишь намного симпатичней. [MRT530]'

    jump show_graphics_menu

# s619 # say63460
label dmorte_s619:  # from - # Check EXTENDS ~BANNAH~ : 12
    SPEAKER 'О, но у тебя ведь уже есть мое сердце, бесовка. [MRT532]'

    jump show_graphics_menu

# s620 # say63462
label dmorte_s620:  # from - # ~SetGlobal("Annah_Talked_Morte","GLOBAL",8) ~ EXIT
    SPEAKER 'Я могу придумать способы и похуже. [MRT525]'

    jump show_graphics_menu

# s621 # say63463
label dmorte_s621:  # from - # Check EXTENDS ~BANNAH~ : 15
    SPEAKER 'Знаешь, а ведь ты *тоже* отчасти нечисть. [MRT533A]'

    jump show_graphics_menu

# s622 # say63464
label dmorte_s622:  # from - # ~SetGlobal("Annah_Talked_Morte","GLOBAL",0) ~ EXIT
    SPEAKER 'С той точки, где я парю, она выглядит хорошенькой. [MRT533B]'

    jump show_graphics_menu

# s623 # say63666
label dmorte_s623:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Я заметил. Почему бы тебе не поделиться своей проницательностью с шефом, а? [MRT563]'

    jump show_graphics_menu

# s624 # say63667
label dmorte_s624:  # from - # Check EXTENDS ~BNORDOM~ : 2
    SPEAKER 'Метеоризм, глупый полигон. [MRT468A]'

    jump show_graphics_menu

# s625 # say63668
label dmorte_s625:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",3) ~ EXIT
    SPEAKER 'Тогда почему бы тебе не стать чуточку 'эффективнее', пустомеля-полигон. [MRT469A]'

    jump show_graphics_menu

# s626 # say63669
label dmorte_s626:  # from - # Check EXTENDS ~DANNAH~ : 315
    SPEAKER 'Погоди, я-я-я н-ничего такого не говорил! [MRT470B]'

    jump show_graphics_menu

# s627 # say63670
label dmorte_s627:  # from - # Check EXTENDS ~BNORDOM~ : 6
    SPEAKER 'Анна все еще в одежде? [MRT565A]'

    jump show_graphics_menu

# s628 # say63671
label dmorte_s628:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",5) ~ EXIT
    SPEAKER 'Тогда ответ — да. [MRT565B]'

    jump show_graphics_menu

# s629 # say63672
label dmorte_s629:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",6) ~ EXIT
    SPEAKER 'Я сейчас тебе приделаю девятнадцатую, если ты не заткнешь свою пасть. [MRT564]'

    jump show_graphics_menu

# s630 # say63673
label dmorte_s630:  # from - # Check EXTENDS ~BNORDOM~ : 9
    SPEAKER 'Если свобода воли заключается в беспрекословном исполнении моих приказов, то — да. [MRT569A]'

    jump show_graphics_menu

# s631 # say63674
label dmorte_s631:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",7) ~ EXIT
    SPEAKER 'Добро пожаловать на планы, сынок. [MRT569B]'

    jump show_graphics_menu

# s632 # say63675
label dmorte_s632:  # from - # Check EXTENDS ~BNORDOM~ : 11
    SPEAKER 'Падшая Грация голая? [MRT568A]'

    jump show_graphics_menu

# s633 # say63676
label dmorte_s633:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",8) ~ EXIT
    SPEAKER 'Тогда ответ на твой вопрос — да. [MRT568B]'

    jump show_graphics_menu

# s634 # say63677
label dmorte_s634:  # from - # Check EXTENDS ~BNORDOM~ : 13
    SPEAKER 'Купание Анны, Падшей Грации и тебя в киммерийской трясине. [MRT571A]'

    jump show_graphics_menu

# s635 # say63678
label dmorte_s635:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",9) ~ EXIT
    SPEAKER 'Эй. Некоторые читают словарь, а некоторые — его пишут. [MRT572B]'

    jump show_graphics_menu

# s636 # say63679
label dmorte_s636:  # from - # Check EXTENDS ~BNORDOM~ : 15
    SPEAKER 'Анна, бутылка фуриондийского огненного янтарного и номер-люкс в Фестхолле. [MRT573]'

    jump show_graphics_menu

# s637 # say63680
label dmorte_s637:  # from - # Check EXTENDS ~BNORDOM~ : 17
    SPEAKER 'Ох, *заткнись*. [MRT471D]'

    jump show_graphics_menu

# s638 # say63681
label dmorte_s638:  # from - # Check EXTENDS ~BNORDOM~ : 19
    SPEAKER 'Ох, иди беспокой кого-нибудь еще, дурацкая счетная машинка. [MRT576A]'

    jump show_graphics_menu

# s639 # say63682
label dmorte_s639:  # from - # Check EXTENDS ~BNORDOM~ : 20
    SPEAKER 'Я не знаю, ясно? Оно просто… оно… ну понимаешь… просто исчезло. [MRT576B]'

    jump show_graphics_menu

# s640 # say63683
label dmorte_s640:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",1) ~ EXIT
    SPEAKER 'Если ты не заткнешь свою пасть, я тебе сейчас это покажу. [MRT576C]'

    jump show_graphics_menu

# s641 # say63684
label dmorte_s641:  # from - # Check EXTENDS ~DGRACE~ : 373
    SPEAKER 'Иди поцелуй медведя в задницу. [MRT575A]'

    jump show_graphics_menu

# s642 # say63685
label dmorte_s642:  # from - # ~SetGlobal("Nordom_Talked_Morte","GLOBAL",0) ~ EXIT
    SPEAKER 'Поверь мне. Анна заслуживает поцелуя. [MRT575B]'

    jump show_graphics_menu

# s643 # say63686
label dmorte_s643:  # from - # ~SetGlobal("Nordom_Talked_Annah","GLOBAL",0) ~ EXIT
    SPEAKER '::Невинно посвистывает:: [MRT472A]'

    jump show_graphics_menu

# s644 # say63688
label dmorte_s644:  # from - # ~SetGlobal("Nordom_Talked_Grace","GLOBAL",2) ~ EXIT
    SPEAKER 'Никто! Никто ему этого не говорил! [MRT473D]'

    jump show_graphics_menu

# s645 # say63689
label dmorte_s645:  # from - # ~SetGlobal("Nordom_Talked_Grace","GLOBAL",3) ~ EXIT
    SPEAKER 'Это чисто добровольное действие с их стороны, идиот. Э… или я не все знаю. [MRT577]'

    jump show_graphics_menu

# s646 # say63858
label dmorte_s646:  # from - # Check EXTENDS ~BVHAILOR~ : 1
    SPEAKER 'Поверь мне, ты никогда не встречался с ним. [MRT475AA]'

    jump show_graphics_menu

# s647 # say64990
label dmorte_s647:  # from -
    SPEAKER 'Погоди-ка, шеф… взгляни на это. Взглянув вниз, ты замечаешь множество грязных следов, ведущих в арку… и не поворачивающих обратно. Здесь, должно быть, портал или что-то вроде этого.'

    menu:
        'Портал? Как его открыть?':
            # r1240 # reply64991
            jump dmorte_s648
        'Может, и так. Идем.':
            # r1241 # reply64993
            jump show_graphics_menu


# s648 # say64992
label dmorte_s648:  # from 647.0
    SPEAKER 'Без понятия, шеф. Но это должен быть распространенный ключ: гляди, сколько народу через него ходит! Может, кто из местных бандюков подскажет…'

    menu:
        'Тогда я поспрашиваю в округе. Пошли.':
            # r1242 # reply64994
            jump show_graphics_menu


# s649 # say65552
label dmorte_s649:  # from 329.0 729.0
    SPEAKER 'Эй, шеф, *да ладно* тебе. Только не говори, что ты снова все забыл.'

    menu:
        'Мне просто нужно освежить свою память.':
            # r1243 # reply65553
            jump dmorte_s650
        'Нет, просто на этот раз я хочу услышать *всю* историю — давай, освежи мою память.' if _r65554_condition(gsm):
            # r1244 # reply65554
            jump dmorte_s650
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1245 # reply65555
            jump dmorte_s329
        'Ладно, забудь. Идем.':
            # r1246 # reply65556
            jump show_graphics_menu


# s650 # say65557
label dmorte_s650:  # from 649.0 649.1
    SPEAKER 'Готов поспорить, что услышу ЭТО много раз, — Морт прочищает горло. — Посмотрим…  'Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых'.'

    menu:
        'Фарод… хм-м. Продолжай.' if _r65558_condition(gsm):
            # r1247 # reply65558
            jump dmorte_s651
        'Продолжай.' if _r65559_condition(gsm):
            # r1248 # reply65559
            jump dmorte_s651
        'Неважно. У меня есть другие вопросы…':
            # r1249 # reply65560
            jump dmorte_s329
        'Забудь. Я уже достаточно наслушался. Идем.':
            # r1250 # reply65561
            jump show_graphics_menu


# s651 # say65562
label dmorte_s651:  # from 650.0 650.1
    SPEAKER 'Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.'

    menu:
        'А дальше? Что там написано после этого?' if _r65566_condition(gsm):
            # r1251 # reply65566
            jump dmorte_s652
        'Когда я очнулся, рядом со мной не было дневника?' if _r65565_condition(gsm):
            # r1252 # reply65565
            jump dmorte_s682
        'Тогда ладно. У меня есть другие вопросы…':
            # r1253 # reply65567
            jump dmorte_s329
        'Забудь. Я уже достаточно наслушался. Идем.':
            # r1254 # reply65568
            jump show_graphics_menu


# s652 # say65563
label dmorte_s652:  # from 651.1
    SPEAKER 'О чем это ты, шеф? Здесь больше ничего нет.'

    menu:
        'А как насчет 'Не верь черепу'?' if _r65569_condition(gsm):
            # r1255 # reply65569
            $ _r65569_action(gsm)
            jump dmorte_s654
        'А как насчет 'Не верь черепу'?' if _r65570_condition(gsm):
            # r1256 # reply65570
            jump dmorte_s654
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1257 # reply65571
            jump dmorte_s329
        'Ладно. Идем.':
            # r1258 # reply65572
            jump show_graphics_menu


# s653 # say65564
label dmorte_s653:  # from 651.0
    SPEAKER 'И конечно же, в самом конце небольшая приписка: не верить черепам.'

    menu:
        'Как ты думаешь, что означает эта часть? Тебе не кажется, что здесь говорится о *тебе*?':
            # r1259 # reply65574
            jump dmorte_s655
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1260 # reply65575
            jump dmorte_s329
        'Ладно. Идем.':
            # r1261 # reply65576
            jump show_graphics_menu


# s654 # say65577
label dmorte_s654:  # from 329.4 652.0 652.1 729.4
    SPEAKER 'А… *этой* концовке? Я думал, это грязь какая-то пристала, поэтому не стал зачитывать эту строчку.'

    menu:
        'Правда? А как ты думаешь, что это означает? Тебе не кажется, что здесь говорится о *тебе*?':
            # r1262 # reply65578
            jump dmorte_s655
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1263 # reply65579
            jump dmorte_s329
        'Ладно. Идем.':
            # r1264 # reply65580
            jump show_graphics_menu


# s655 # say65581
label dmorte_s655:  # from 653.0 654.0
    SPEAKER 'Навряд ли. То есть, я хочу сказать, что ты можешь *доверять* мне. Ведь правда, шеф?'

    menu:
        'А ты не *лжешь* мне, Морт?':
            # r1265 # reply65582
            jump dmorte_s656
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1266 # reply65583
            jump dmorte_s329
        'Ладно. Идем.':
            # r1267 # reply65584
            jump show_graphics_menu


# s656 # say65585
label dmorte_s656:  # from 655.0
    SPEAKER 'Нет! Да хватит тебе, какие проблемы, шеф? Я же ни разу пока еще тебя не подводил.'

    menu:
        '*Пока*. Мне не нравится тот факт, что ты утаил эту строку от меня. Я хотел бы знать: может, ты *еще* чего-то недосказал с тех пор, как мы путешествуем вместе.':
            # r1268 # reply65587
            jump dmorte_s657
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1269 # reply65586
            jump dmorte_s329
        'Ладно. Идем.':
            # r1270 # reply65588
            jump show_graphics_menu


# s657 # say65589
label dmorte_s657:  # from 656.0
    SPEAKER 'Больше ничего! Я говорил тебе обо всем… ну, ПОЧТИ обо всем, кроме *опасного*, ну ты понимаешь.'

    menu:
        'Если есть ЧТО-ТО еще, то советую тебе побыстрее об этом рассказать.':
            # r1271 # reply65590
            jump dmorte_s658
        'Ладно, неважно. У меня есть другие вопросы…':
            # r1272 # reply65591
            jump dmorte_s329
        'Ладно. Идем.':
            # r1273 # reply65592
            jump show_graphics_menu


# s658 # say65593
label dmorte_s658:  # from 657.0
    SPEAKER 'Шеф, серьезно, больше сказать нечего. Я не хочу от тебя что-либо утаивать.'

    menu:
        'Ладно, Морт. У меня есть другие вопросы…':
            # r1274 # reply65594
            jump dmorte_s329
        'Очень надеюсь на это. Идем.':
            # r1275 # reply65595
            jump show_graphics_menu


# s659 # say65596
label dmorte_s659:  # from 329.1 729.1
    SPEAKER 'Сигил — это кольцеобразный город, который торчит на самой верхушке бесконечно высокого тонкого шпиля, который, как некоторые заявляют, находится в самом центре планов… Конечно, заявления о том, *как* он может быть на верхушке бесконечного тонкого шпиля, и каким образом город может *быть* в центре планов, порождают массу вопросов.'

    menu:
        'Что-нибудь еще?':
            # r1276 # reply65597
            jump dmorte_s660
        'Неважно. У меня есть другие вопросы…':
            # r1277 # reply65598
            jump dmorte_s329
        'Это все, что я хотел знать. Идем.':
            # r1278 # reply65599
            jump show_graphics_menu


# s660 # say65600
label dmorte_s660:  # from 659.0
    SPEAKER 'Сигил называется 'Городом Дверей', главным образом из-за того, что здесь расположена КУЧА дверей, ведущих в него и из него — простая арка, дверной проем, обруч от бочки, книжная полка или открытое окно может стать порталом в определенных обстоятельствах. Все зависит от того, есть ли у тебя ключи, которые откроют его.'

    menu:
        'Ключи?':
            # r1279 # reply65601
            jump dmorte_s661
        'Неважно. У меня есть другие вопросы…':
            # r1280 # reply65602
            jump dmorte_s329
        'Это все, что я хотел знать. Идем.':
            # r1281 # reply65603
            jump show_graphics_menu


# s661 # say65604
label dmorte_s661:  # from 660.0
    SPEAKER 'Смотри, попробую по-доходчивей объяснить. Большинство порталов 'дремлет', понимаешь? Ты можешь ходить сквозь них, через них, по ним, и ничего не произойдет. Так вот, есть нечто, что заставляет портал 'пробудиться'. Это может быть твое посвистывание, кусок хлеба недельной свежести из Байтопии, воспоминание о твоем первом поцелуе, а потом — БАМ — портал наполняется силой, и ты сможешь прыгнуть в него, при этом очутившись в самом неожиданном месте.'

    menu:
        'Где, например?':
            # r1282 # reply65605
            jump dmorte_s662
        'Неважно. У меня есть другие вопросы…':
            # r1283 # reply65606
            jump dmorte_s329
        'Это все, что я хотел знать. Идем.':
            # r1284 # reply65607
            jump show_graphics_menu


# s662 # say65608
label dmorte_s662:  # from 661.0
    SPEAKER 'Да где угодно, шеф. Буквально. В любое место, которое ты можешь себе вообразить, есть портал. Вот почему Сигил так популярен на планах.'

    menu:
        'Понятно. У меня есть другие вопросы…':
            # r1285 # reply65609
            jump dmorte_s329
        'Это все, что я хотел знать. Идем.':
            # r1286 # reply65610
            jump show_graphics_menu


# s663 # say65611
label dmorte_s663:  # from 329.2 729.2
    SPEAKER 'Эй! Чесание языком — моя лучшая черта. Он постукивает зубами, а затем 'скалится'. А? А?'

    menu:
        'О-о, *очень* приятно это слышать.':
            # r1287 # reply65612
            jump dmorte_s664
        'Да-да, я уже знаю о Потоке Проклятий, Морт. Мне очень интересно, чем ты занимался, когда оказался у Лотара.' if _r65613_condition(gsm):
            # r1288 # reply65613
            jump dmorte_s667
        'У меня есть другие вопросы…':
            # r1289 # reply65614
            jump dmorte_s329
        'Неважно Идем.':
            # r1290 # reply65615
            jump show_graphics_menu


# s664 # say65616
label dmorte_s664:  # from 663.0
    SPEAKER 'Нет, серьезно, шеф. Я очень хорошо навострился в словоблудии. Я вообще могу любому скрутить уши в трубочку, если ты хочешь знать. Я знаю выпады, дразнилки — все, что может ввернуть оба уха поглубже в голову любому слушателю.'

    menu:
        'Э… Чем *это* может быть полезно?':
            # r1291 # reply65617
            jump dmorte_s665
        'У меня есть другие вопросы…':
            # r1292 # reply65618
            jump dmorte_s329
        'Неважно Идем.':
            # r1293 # reply65619
            jump show_graphics_menu


# s665 # say65620
label dmorte_s665:  # from 664.0
    SPEAKER 'Это один из моих талантов… Я называю его 'Потоком Проклятий'. Видишь ли, иногда я могу вогнать в краску кого-нибудь, просто пустив в его адрес какую-нибудь колкость. Конечно же, после этого обычно мне приходится долго бегать… но суть ты уловил.'

    menu:
        'А как это действует?':
            # r1294 # reply65621
            $ _r65621_action(gsm)
            jump dmorte_s666
        'Что-нибудь еще?' if _r65622_condition(gsm):
            # r1295 # reply65622
            jump dmorte_s667
        'У меня есть другие вопросы…':
            # r1296 # reply65623
            jump dmorte_s329
        'Хм-м. Это может пригодиться. Идем.':
            # r1297 # reply65624
            jump show_graphics_menu


# s666 # say65626
label dmorte_s666:  # from 329.3 665.0 729.3
    SPEAKER 'Ну, я могу извергать проклятия на любого до тех пор, пока они в припадке безумства не начнут гоняться за мной.'

    menu:
        'А еще что-нибудь ты умеешь?' if _r65627_condition(gsm):
            # r1298 # reply65627
            jump dmorte_s667
        'У меня есть другие вопросы…':
            # r1299 # reply65628
            jump dmorte_s329
        'Хм-м. Это может пригодиться. Идем.':
            # r1300 # reply65629
            jump show_graphics_menu


# s667 # say65630
label dmorte_s667:  # from 663.1 665.1 666.0
    SPEAKER 'Ну, пока я пылился на полке у Лотара в ожидании того, когда ты меня не выкупишь — спасибо за бесцельно проведенное там время, — я завел там несколько друзей, и они сказали, что если мне понадобится помощь, то я могу их позвать.'

    menu:
        'Друзей? О чем это ты?':
            # r1301 # reply65631
            $ _r65631_action(gsm)
            jump dmorte_s668
        'У меня есть другие вопросы…':
            # r1302 # reply65632
            jump dmorte_s329
        'Приятно слышать это. Идем.':
            # r1303 # reply65633
            jump show_graphics_menu


# s668 # say65634
label dmorte_s668:  # from 667.0
    SPEAKER 'Ну, по моему свисту они появляются просто из ниоткуда. Они — та еще кучка драчунов: кусаются как *змеи*.'

    menu:
        'Понятно. У меня есть другие вопросы…':
            # r1304 # reply65635
            jump dmorte_s329
        'Приятно слышать это. Идем.':
            # r1305 # reply65636
            jump show_graphics_menu


# s669 # say65638
label dmorte_s669:  # from 329.5 729.5
    SPEAKER 'Ну, вот как *я* все себе представляю…'

    menu:
        'Продолжай…' if _r65639_condition(gsm):
            # r1306 # reply65639
            jump dmorte_s671
        'Продолжай…' if _r65640_condition(gsm):
            # r1307 # reply65640
            jump dmorte_s672
        'Продолжай…' if _r65641_condition(gsm):
            # r1308 # reply65641
            jump dmorte_s673
        'Продолжай…' if _r65642_condition(gsm):
            # r1309 # reply65642
            jump dmorte_s670
        'Продолжай…' if _r65643_condition(gsm):
            # r1310 # reply65643
            jump dmorte_s674
        'Продолжай…' if _r65644_condition(gsm):
            # r1311 # reply65644
            jump dmorte_s675
        'Продолжай…' if _r65645_condition(gsm):
            # r1312 # reply65645
            jump dmorte_s677
        'Продолжай…' if _r65646_condition(gsm):
            # r1313 # reply65646
            jump dmorte_s680
        'Продолжай…' if _r65647_condition(gsm):
            # r1314 # reply65647
            jump dmorte_s681
        'Неважно. У меня есть другие вопросы…':
            # r1315 # reply65648
            jump dmorte_s329
        'Если подумать, забудь об этом. Пошли.':
            # r1316 # reply65649
            jump show_graphics_menu


# s670 # say65650
label dmorte_s670:  # from 669.3
    SPEAKER 'Как по мне, это твое шоу, шеф. Тут я мало что могу подсказать.'

    menu:
        'Это что-то *новое*. У меня есть другие вопросы…':
            # r1317 # reply65651
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1318 # reply65652
            jump show_graphics_menu


# s671 # say65653
label dmorte_s671:  # from 669.0
    SPEAKER 'Я считаю, что ты должен попробовать отыскать этого 'Фарода', где бы ни находилась его берлога. У тебя бы не было этих указаний на спине, не будь у него хоть какое-то понятие о том, что с тобой стряслось. Кто-нибудь из местных ОБЯЗАТЕЛЬНО должен знать, где он находится.'

    menu:
        'Неплохой совет… У меня есть другие вопросы…':
            # r1319 # reply65654
            jump dmorte_s329
        'Хорошо. Давай тогда искать его.':
            # r1320 # reply65655
            jump show_graphics_menu


# s672 # say65656
label dmorte_s672:  # from 669.1
    SPEAKER 'Скажем, мы могли бы попробовать найти поскорее этот 'бронзовый шар' и принести его старому костылю.'

    menu:
        'Неплохой совет… У меня есть другие вопросы…':
            # r1321 # reply65657
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1322 # reply65658
            jump show_graphics_menu


# s673 # say65659
label dmorte_s673:  # from 669.2
    SPEAKER 'Скажем, мы могли бы выяснить, где нашли твой труп. Возможно, мы смогли бы узнать, кто записал тебя в книгу мертвых.'

    menu:
        'Неплохой совет… У меня есть другие вопросы…':
            # r1323 # reply65660
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1324 # reply65661
            jump show_graphics_menu


# s674 # say65662
label dmorte_s674:  # from 669.4
    SPEAKER 'Скажем, мы могли бы разыскать тех, кто что-нибудь о тебе знает… и как ты стал таким. В районах должны найтись толковые рубаки, которым известно что-нибудь интересное о тебе.'

    menu:
        'Неплохой совет… У меня есть другие вопросы…':
            # r1325 # reply65663
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1326 # reply65664
            jump show_graphics_menu


# s675 # say65665
label dmorte_s675:  # from 669.5
    SPEAKER 'Похоже, нам нужно выяснить больше про эту ночную ведьму, Равель. И должен тебе признаться, шеф: я *не горю* желанием это делать. Однако мудрецы Фестхолла или какие-нибудь камни переживаний могут нам что-то подсказать.'

    menu:
        'Фестхолл? Камни переживаний?' if _r65666_condition(gsm):
            # r1327 # reply65666
            $ _r65666_action(gsm)
            jump dmorte_s676
        'Неплохой совет… У меня есть другие вопросы…':
            # r1328 # reply65667
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1329 # reply65668
            jump show_graphics_menu


# s676 # say65670
label dmorte_s676:  # from 675.0
    SPEAKER 'Извини, шеф, я все забываю, что у тебя знания, как у зеленого первичника. Слушай, Фестхолл — это главная берлога фракции чувствующих в Чиновничьем районе. Там есть библиотеки камней переживаний, а еще куча мудрецов, лекторов и наставников, которые могли бы пролить свет на то, что случилось с Равель.'

    menu:
        'Неплохой совет… У меня есть другие вопросы…':
            # r1330 # reply65671
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1331 # reply65672
            jump show_graphics_menu


# s677 # say65673
label dmorte_s677:  # from 669.6
    SPEAKER 'Ну, Равель попала в лабиринт. И все же возможно есть КАКОЙ-НИБУДЬ ключ и КАКОЙ-НИБУДЬ портал, которые могли бы нас туда доставить, если ты все еще этого хочешь.'

    menu:
        'Ты не знаешь, чем может быть ключ к ее лабиринту?' if _r65674_condition(gsm):
            # r1332 # reply65674
            $ _r65674_action(gsm)
            jump dmorte_s678
        'Ты не знаешь, где мне найти портал в ее лабиринт?':
            # r1333 # reply65675
            jump dmorte_s679
        'У меня есть другие вопросы…':
            # r1334 # reply65676
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1335 # reply65677
            jump show_graphics_menu


# s678 # say65679
label dmorte_s678:  # from 677.0
    SPEAKER 'Без понятия. Я имею в виду 'кусочек Равель'. Это может быть что угодно, начиная с одной из ее высушенных бородавок до слюней изо рта. Слишком туманно. Могу поспорить, что КТО-НИБУДЬ в Чиновничьем районе должен знать, где достать кусок этой чокнутой ведьмы. Если нет, мы можем проверить камни переживаний в Фестхолле: возможно, одна из этих глыб подскажет нам что-нибудь полезное.'

    menu:
        'Ты не знаешь, где мне найти портал в ее лабиринт?':
            # r1336 # reply65680
            jump dmorte_s679
        'Неплохой совет… У меня есть другие вопросы…':
            # r1337 # reply65681
            jump dmorte_s329
        'Ладно. Продолжим поиски.':
            # r1338 # reply65682
            jump show_graphics_menu


# s679 # say65683
label dmorte_s679:  # from 677.1 678.0
    SPEAKER 'Хоть убей, не знаю, шеф. В Сигиле полно порталов. Я бы начал с Фестхолла — сомневаюсь, что он там, но тамошние камни переживаний могут кое-что рассказать об этом. А если не получится, можно все забыть про это и заставить кого-нибудь СДЕЛАТЬ нам портал.'

    menu:
        'Хорошо. У меня есть другие вопросы…':
            # r1339 # reply65684
            jump dmorte_s329
        'Хорошо. Тогда идем.':
            # r1340 # reply65685
            jump show_graphics_menu


# s680 # say65686
label dmorte_s680:  # from 669.7
    SPEAKER 'Скажем, мы могли бы найти то, что нам нужно, и к чертям сваливать отсюда, шеф. От этого места у меня мурашки, хоть у меня и нет кожи. Хорошо?'

    menu:
        'И то правда. У меня есть другие вопросы…':
            # r1341 # reply65687
            jump dmorte_s329
        'Ну хорошо. Продолжим путь.':
            # r1342 # reply65688
            jump show_graphics_menu


# s681 # say65689
label dmorte_s681:  # from 669.8
    SPEAKER 'Ты меня понял, шеф. Это целиком твое шоу, я просто буду рядом.'

    menu:
        'И то правда. У меня есть другие вопросы…':
            # r1343 # reply65690
            jump dmorte_s329
        'Ладно. Идем.':
            # r1344 # reply65691
            jump show_graphics_menu


# s682 # say65692
label dmorte_s682:  # from 651.2
    SPEAKER 'Нет… ты был обобран догола. Как я уже говорил, похоже, что достаточно того дневника, что написан у тебя на теле.'

    menu:
        'Ты уверен, что не знаешь никого по имени Фарод?' if _r65693_condition(gsm):
            # r1345 # reply65693
            jump dmorte_s683
        'И то правда. У меня есть другие вопросы…':
            # r1346 # reply65694
            jump dmorte_s329
        'Ладно. Идем.':
            # r1347 # reply65695
            jump show_graphics_menu


# s683 # say65696
label dmorte_s683:  # from 682.0
    SPEAKER 'Не-а. В общем, какой-нибудь пень должен знать, как добраться до него. Надо поспрашивать местных.'

    menu:
        'Перед тем как мы пойдем, у меня есть еще вопросы…':
            # r1348 # reply65697
            jump dmorte_s329
        'Ладно. Идем.':
            # r1349 # reply65698
            jump show_graphics_menu


# s684 # say65699
label dmorte_s684:  # from 329.6 729.6
    SPEAKER 'Ага… мимир — это летающая энциклопедия. Запихиваешь в него информацию и получаешь обратно.'

    menu:
        'Но разве мимиры не сделаны из серебристого металла?' if _r65700_condition(gsm):
            # r1350 # reply65700
            jump dmorte_s685
        'Понятно. У меня есть другие вопросы…':
            # r1351 # reply65701
            jump dmorte_s329
        'Ладно. Идем.':
            # r1352 # reply65702
            jump show_graphics_menu


# s685 # say65703
label dmorte_s685:  # from 684.0
    SPEAKER 'Ну и что? Может быть, некоторые — да, но *я* — нет. И это не самая странная штука на планах, шеф.'

    menu:
        'Не думаю, что ты — мимир, Морт. Что ты такое?':
            # r1353 # reply65704
            jump dmorte_s686
        'Понятно. У меня есть другие вопросы…':
            # r1354 # reply65705
            jump dmorte_s329
        'Ладно. Идем.':
            # r1355 # reply65706
            jump show_graphics_menu


# s686 # say65707
label dmorte_s686:  # from 685.0
    SPEAKER 'Это что, допрос? Да что *ты* вообще знаешь о мимирах?'

    menu:
        'Я знаю достаточно, чтобы считать, что ты лжешь мне.' if _r65708_condition(gsm):
            # r1356 # reply65708
            jump dmorte_s687
        'Я знаю достаточно, чтобы считать, что ты лжешь мне. Сначала та забытая строчка на моей спине, говорящая не верить тебе, теперь это. И что я должен думать?' if _r65709_condition(gsm):
            # r1357 # reply65709
            jump dmorte_s687
        'Пожалуй, ничего. У меня есть другие вопросы…':
            # r1358 # reply65710
            $ _r65710_action(gsm)
            jump dmorte_s329
        'Тогда неважно. Идем.':
            # r1359 # reply65711
            $ _r65711_action(gsm)
            jump show_graphics_menu


# s687 # say65713
label dmorte_s687:  # from 686.0 686.1
    SPEAKER 'Ну хорошо, я *не мимир*, но я знаю столько всего, что *вполне* мог бы им быть.'

    menu:
        'Чем же тогда ты *являешься*?':
            # r1360 # reply65714
            jump dmorte_s688
        'Неважно. У меня есть другие вопросы…':
            # r1361 # reply65715
            jump dmorte_s329
        'Ладно. Идем.':
            # r1362 # reply65716
            jump show_graphics_menu


# s688 # say65717
label dmorte_s688:  # from 687.0
    SPEAKER 'Я летающий череп, который много знает.'

    menu:
        'А как насчет твоего бааторийского запаха?' if _r65718_condition(gsm):
            # r1363 # reply65718
            jump dmorte_s690
        'А как насчет твоего бааторийского запаха?' if _r65719_condition(gsm):
            # r1364 # reply65719
            jump dmorte_s689
        'Неважно. У меня есть другие вопросы…':
            # r1365 # reply65720
            jump dmorte_s329
        'Ладно. Идем.':
            # r1366 # reply65721
            jump show_graphics_menu


# s689 # say65722
label dmorte_s689:  # from 688.1
    SPEAKER 'А откуда ТЕБЕ знать, как пахнет Баатор?!'

    menu:
        'А я *был* там, Морт. Я бродил по Авернусу.':
            # r1367 # reply65723
            jump dmorte_s691
        'Неважно. У меня есть другие вопросы…':
            # r1368 # reply65724
            jump dmorte_s329
        'Забудь об этом. Идем.':
            # r1369 # reply65725
            jump show_graphics_menu


# s690 # say65726
label dmorte_s690:  # from 688.0
    SPEAKER 'А откуда ТЕБЕ знать, как пахнет Баатор?! Если только… Эй, ты разговаривал обо мне с этой танарри, разве не так?! Что она-то знает?!'

    menu:
        'Она ведь определенно что-то почувствовала — это же бааторийский запах, верно?':
            # r1370 # reply65727
            jump dmorte_s691
        'Неважно. У меня есть другие вопросы…':
            # r1371 # reply65728
            jump dmorte_s329
        'Забудь об этом. Идем.':
            # r1372 # reply65729
            jump show_graphics_menu


# s691 # say65730
label dmorte_s691:  # from 689.0 690.0
    SPEAKER 'Тогда… да, но… ну да. Да, я пахну немного. *Прошу прощения*.'

    menu:
        '*Почему* ты пахнешь как Баатор?':
            # r1373 # reply65731
            $ _r65731_action(gsm)
            jump dmorte_s692


# s692 # say65732
label dmorte_s692:  # from 691.0
    SPEAKER 'Я был в тамошних преисподних. Довольно долго был. А эта вонь въедается в тебя.'

    menu:
        'Ты был в тех преисподних? Что ты там ДЕЛАЛ?':
            # r1374 # reply65733
            $ _r65733_action(gsm)
            jump dmorte_s693


# s693 # say65734
label dmorte_s693:  # from 329.7 692.0 729.7
    SPEAKER 'Знаешь, на Авернусе, первом слое Баатор, есть *колонна*. Она называется Колонна Черепов, но лучше ее называть колонной голов.'

    jump show_graphics_menu

# s694 # say65735
label dmorte_s694:  # from 693.0
    SPEAKER 'Если верить некоторым громилам, она *предположительно* была сделана из голов пней, по большей части мудрецов и ученых, которые использовали свои знания обо всяком, что они знали при жизни, чтобы немного приврать… настолько, что этим им удавалось причинить вред или даже, э, убить кого-нибудь. Так вот, когда я *умер*, я очутился там. Весело, правда?'

    menu:
        'Не очень-то.':
            # r1375 # reply65846
            jump dmorte_s695


# s695 # say65736
label dmorte_s695:  # from 694.0
    SPEAKER 'Э… — Морт на секунду умолкает. — Да, ты прав, в этом нет ничего веселого. Понимаешь, я знал кучу вещей, пока был жив. И может быть, когда я знал что-то, то не всегда говорил об этом правду. Мне кажется, я, возможно, исказить правду пару раз и этим прописать кое-кого в книгу мертвых раньше срока.'

    menu:
        'Ты помнишь, кого?':
            # r1376 # reply65737
            jump dmorte_s697
        'И это был я, не так ли?' if _r65738_condition(gsm):
            # r1377 # reply65738
            jump dmorte_s696
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65739_condition(gsm):
            # r1378 # reply65739
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65740_condition(gsm):
            # r1379 # reply65740
            jump show_graphics_menu


# s696 # say65741
label dmorte_s696:  # from 695.1
    SPEAKER 'Морт задерживает на тебе взгляд. Да. Не знаю, *откуда* мне это известно, шеф, но мне так кажется. Я думаю, что это из-за тебя меня туда послали. Это стало последней каплей. Дело в том, что я не помню, что случилось: я даже не помню, каким был человеком, или какой была моя жизнь до того, как я очнулся в Колонне.'

    menu:
        'Почему ты забыл?':
            # r1380 # reply65742
            jump dmorte_s698
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65743_condition(gsm):
            # r1381 # reply65743
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65744_condition(gsm):
            # r1382 # reply65744
            jump show_graphics_menu


# s697 # say65745
label dmorte_s697:  # from 695.0
    SPEAKER 'Не знаю, *откуда* мне это известно, шеф, но мне так кажется, это был *ты*. По крайней мере однажды. Дело в том, что я не помню, что произошло. я даже не помню, каким был человеком, или какой была моя жизнь до того, как я очнулся в Колонне.'

    menu:
        'Почему ты забыл?':
            # r1383 # reply65746
            jump dmorte_s698
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65747_condition(gsm):
            # r1384 # reply65747
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65748_condition(gsm):
            # r1385 # reply65748
            jump show_graphics_menu


# s698 # say65749
label dmorte_s698:  # from 696.0 697.0
    SPEAKER 'Обычно так происходит, когда ты умираешь. Уверен, что тебе это знакомо. Ты просто… забываешь. Думаю, я был не самым уважаемым членом общества при жизни… но черт возьми, а кто был? — Морт вздыхает. — С этим я ничего не могу поделать. Нет ничего хуже, чем быть *честным* все время.'

    menu:
        'Кроме как быть приговоренным к преисподней. Это гораздо хуже, чем говорить правду.' if _r65750_condition(gsm):
            # r1386 # reply65750
            $ _r65750_action(gsm)
            jump dmorte_s699
        'Да, это так… Но тебе следует подбирать свою ложь поосторожней.' if _r65751_condition(gsm):
            # r1387 # reply65751
            $ _r65751_action(gsm)
            jump dmorte_s699


# s699 # say65752
label dmorte_s699:  # from 698.0 698.1
    SPEAKER 'Да… ты прав. *Снова*. Морт щелкает зубами. Это напоминает похрустывание пальцами. Думаю, все добро, зло, ложь и обман возвращается к нам. И когда меня прописали в книгу мертвых, настал мой черед платить перевозчику.'

    menu:
        'Так как же тебе удалось выбраться из Колонны?':
            # r1388 # reply65753
            $ _r65753_action(gsm)
            jump dmorte_s700
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65754_condition(gsm):
            # r1389 # reply65754
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65755_condition(gsm):
            # r1390 # reply65755
            jump show_graphics_menu


# s700 # say65757
label dmorte_s700:  # from 699.0
    SPEAKER 'Ну… это ты помог мне, шеф. Когда ты объявился перед Колонной Черепов, я пробился наружу. Мои очевидные эрудиция и очарование привлекли твое внимание — ты знал, что именно *я* был головой, которая больше всех знала. Так что я подписался под твою сделку.'

    menu:
        'Сделку?..':
            # r1391 # reply65758
            $ _r65758_action(gsm)
            jump dmorte_s701
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65759_condition(gsm):
            # r1392 # reply65759
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65760_condition(gsm):
            # r1393 # reply65760
            jump show_graphics_menu


# s701 # say65761
label dmorte_s701:  # from 700.0
    SPEAKER 'Пока Морт говорит, твое зрение заволакивает кроваво-красным, ты слышишь оглушительный рев, ужасный *пронзительный* гомон голосов, болтовни, визжания, криков. ВСЕ они молят, кричат об освобождении, а голос Морта… слабый, едва слышный в этой урагане. Он звучит отчаянно, напугано и… жалостно, трагически *потерянно*.'

    menu:
        'Эхо: Ты. Череп. Говори.':
            # r1394 # reply65762
            jump dmorte_s702
        'Стряхнуть с себя воспоминание.':
            # r1395 # reply65763
            $ _r65763_action(gsm)
            jump dmorte_s706


# s702 # say65764
label dmorte_s702:  # from 701.0
    SPEAKER 'Ревущие голоса утихают, ты смотришь на маленький череп, на его трещины в адском свете. Он смотрит на тебя. По его лицу течет кровь и гной, его зубы стучат словно от холода. Я… я с-с-смогу п-п-помочь тебе. Я з-з-знаю, что т-т-тебе надо… все эти головы… их знания… п-п-прошу тебя, *умоляю*, освободи меня. Позволь мне *помочь* тебе. Я расскажу тебе о чем угодно, обо *всем*.'

    menu:
        'Эхо: *Так* ли это? ПОКЛЯНИСЬ в этом, череп. ПОКЛЯНИСЬ, что ты будешь служить мне до конца моих дней, иначе ты останешься здесь.':
            # r1396 # reply65765
            jump dmorte_s703
        'Стряхнуть с себя воспоминание.':
            # r1397 # reply65766
            $ _r65766_action(gsm)
            jump dmorte_s706


# s703 # say65767
label dmorte_s703:  # from 702.0
    SPEAKER 'Клянусь. Клянусь… только, *пожалуйста*, освободи меня… Я… Ты видишь, как Морт тошнотворно глотает, его гордость становится осязаемой. Я… *умоляю* тебя. Позволь мне *помочь* тебе. Пожалуйста.'

    menu:
        'Эхо: Хорошо. Я освобожу тебя.':
            # r1398 # reply65768
            jump dmorte_s704
        'Стряхнуть с себя воспоминание.':
            # r1399 # reply65769
            $ _r65769_action(gsm)
            jump dmorte_s706


# s704 # say65770
label dmorte_s704:  # from 703.0
    SPEAKER 'Твое зрение смещается, как будто ты движешься. Какофония криков и рева начинается снова, кошмарные вопли, рычание, выпады и оскорбления… ты чувствуешь, как твои руки погружаются в грязную трясину колонны, состоящую из кусающих клыков и челюстей. Твои руки хватают небольшой череп и вырывают его из колонны как гнилой зуб…'

    menu:
        'Эхо: ГОТОВО.':
            # r1400 # reply65771
            jump dmorte_s705
        'Стряхнуть с себя воспоминание.':
            # r1401 # reply65772
            $ _r65772_action(gsm)
            jump dmorte_s706


# s705 # say65773
label dmorte_s705:  # from 704.0
    SPEAKER 'Ты смотришь вниз, на кровавый череп в своих израненных руках. Его глаза покрыты гноем колонны, зубы стучат, снова и снова. Он напоминает тебе визжащего новорожденного, беспомощного и — в глазах человека, которым ты когда-то был, — жалкого.'

    menu:
        'Эхо: Я освободил тебя. Теперь твоя жизнь… и смерть — моя… Морт.' if _r65774_condition(gsm):
            # r1402 # reply65774
            $ _r65774_action(gsm)
            jump dmorte_s706
        'Эхо: Я освободил тебя. Теперь твоя жизнь… и смерть — моя… Морт.' if _r65775_condition(gsm):
            # r1403 # reply65775
            $ _r65775_action(gsm)
            jump dmorte_s706


# s706 # say65776
label dmorte_s706:  # from 701.1 702.1 703.1 704.1 705.0 705.1
    SPEAKER 'Видение расплывается, пелена уходит прочь, а Морт все еще продолжает без умолку болтать. Мы поговорили некоторое время, согласовывая обязательства сделки. Думаю, мы произвели друг на друга хорошее впечатление, так что ты предложил мне выйти из Колонны, и с тех пор я рад находится рядом с тобой.'

    menu:
        'Э… И что случилось потом?':
            # r1404 # reply65777
            jump dmorte_s707
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65778_condition(gsm):
            # r1405 # reply65778
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65779_condition(gsm):
            # r1406 # reply65779
            jump show_graphics_menu


# s707 # say65780
label dmorte_s707:  # from 706.0
    SPEAKER 'Я не знаю. Как только я выбрался, я потерял почти все знания Колонны. То есть, я хочу сказать, откуда мне было знать, я ведь ни разу не был вне этой чертовой штуки… но ты отнесся к этому с большим пониманием…'

    menu:
        'Ты потерял все знания, которые имел?..':
            # r1407 # reply65781
            $ _r65781_action(gsm)
            jump dmorte_s708
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65782_condition(gsm):
            # r1408 # reply65782
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65783_condition(gsm):
            # r1409 # reply65783
            jump show_graphics_menu


# s708 # say65784
label dmorte_s708:  # from 707.0
    SPEAKER 'Твое зрение снова затуманивается, голова идет кругом, кишки завязывает в узел. Ты слышишь треск костей и крики Морта: он воет от боли, просит кого-то прекратить, прекратить *убивать* его… а твоя рука продолжает бить, снова и снова…'

    menu:
        'Эхо: Будь ты ПРОКЛЯТ, череп, ты ОБМАНУЛ меня. Я БРОШУ ТЕБЯ НАЗАД В ЭТУ ЧЕРТОВУ КОЛОННУ И ОСТАВЛЮ ТЕБЯ ТАМ *ПОДЫХАТЬ*.':
            # r1410 # reply65785
            jump dmorte_s709
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65786_condition(gsm):
            # r1411 # reply65786
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65787_condition(gsm):
            # r1412 # reply65787
            jump show_graphics_menu


# s709 # say65788
label dmorte_s709:  # from 708.0
    SPEAKER 'Слышится звук удара кости о что-то металлическое, пол или стену. Разлетаются выбитые зубы. Ты слышишь Морта, скулящего как побитый пес, молящего тебя…'

    menu:
        'Эхо: ЗНАЙ, ЧТО ТВОИ СТРАДАНИЯ В КОЛОННЕ БУДУТ *НИЧЕМ* ПО СРАВНЕНИЮ С ТЕМ МУЧЕНИЕМ, КОТОРЫЕ ТЫ *ИСПЫТАЕШЬ* У МЕНЯ.':
            # r1413 # reply65789
            $ _r65789_action(gsm)
            jump dmorte_s710
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65790_condition(gsm):
            # r1414 # reply65790
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65791_condition(gsm):
            # r1415 # reply65791
            jump show_graphics_menu


# s710 # say65792
label dmorte_s710:  # from 709.0
    SPEAKER 'Видение снова отступает, превращая вопль Морта в размеренный ритм его болтовни. И ты понял, что я все еще полезен для тебя, поэтому я до сих пор следую за тобой по пятам.'

    menu:
        'Морт, а что я хотел от Колонны? И сколько прошло времени с тех пор, как я тебя освободил?':
            # r1416 # reply65793
            jump dmorte_s711
        'Э, забудь об этом, Морт… У меня есть другие вопросы…' if _r65794_condition(gsm):
            # r1417 # reply65794
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65795_condition(gsm):
            # r1418 # reply65795
            jump show_graphics_menu


# s711 # say65796
label dmorte_s711:  # from 710.0
    SPEAKER 'Морт задумывается. Ну, достаточно давно, я не знаю точно, шеф. Несколько веков, наверное. Я всегда делал все, что мог, чтобы помочь тебе, но… — Морт вздыхает. — Это не так просто. Я не знаю, что тебе было нужно от Колонны: как только ты меня вырвал из нее, я все забыл.'

    menu:
        'Морт, почему ты ничего не СКАЗАЛ тогда, в Морге?':
            # r1419 # reply65797
            jump dmorte_s712
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65798_condition(gsm):
            # r1420 # reply65798
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65799_condition(gsm):
            # r1421 # reply65799
            jump show_graphics_menu


# s712 # say65800
label dmorte_s712:  # from 711.0
    SPEAKER 'Неожиданно Морт начинает защищаться. Потому что я никогда не *знал*, кем ты можешь стать! Некоторые твои воплощения были совершенно безумными! Однажды ты проснулся, одержимый идеей, что это *я* был твоим черепом, и преследовал меня вокруг Шпиля, пытаясь разбить и проглотить… к счастью, на улице ты попал под повозку. Другой ты, 'добрый и законопослушный', пытался засунуть меня обратно в Колонну, потому что 'там мне и место', — Морт ухмыляется. — *Вот* почему. Кроме того, твое незнание не принесло вреда…'

    menu:
        'Так значит, ты был со мной все это время?' if _r65801_condition(gsm):
            # r1422 # reply65801
            jump dmorte_s713
        'Забудь об этом, Морт. У меня есть несколько вопросов…' if _r65802_condition(gsm):
            # r1423 # reply65802
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.' if _r65803_condition(gsm):
            # r1424 # reply65803
            jump show_graphics_menu


# s713 # say65804
label dmorte_s713:  # from 712.0 # ~SetGlobal("Know_Morte_Pillar","GLOBAL",1) ~ GOTO 714
    SPEAKER 'Ну да, шеф. Я же обещал. Морт всегда держит свои обещания, — он делает паузу. — Ну, почти всегда. Хе-хе. Была одна крошка с Арбореи, которая…'

    jump show_graphics_menu

# s714 # say65805
label dmorte_s714:  # from 713.0
    SPEAKER 'Неожиданно ты понимаешь, что тон Морта изменился. После шутки тебе кажется, что он пытается что-то скрыть. Что-то о том, почему он по-прежнему с тобой.'

    menu:
        'А если серьезно, Морт, почему ты до сих пор путешествуешь со мной?':
            # r1425 # reply65806
            jump dmorte_s715
        'Тогда ладно. У меня есть другие вопросы…':
            # r1426 # reply65807
            jump dmorte_s329
        'Неважно, Морт. Идем дальше.':
            # r1427 # reply65808
            jump show_graphics_menu


# s715 # say65809
label dmorte_s715:  # from 329.8 714.0 729.8
    SPEAKER 'Шеф, я же сказал: потому что я обещал, верно?- он выглядит раздраженным. — Что может быть еще?'

    menu:
        'Не знаю. Тебе ведь не обязательно кружить вокруг меня, раз я тебя освободил.':
            # r1428 # reply65810
            jump dmorte_s716
        'Неважно. У меня есть другие вопросы…':
            # r1429 # reply65811
            jump dmorte_s329
        'Забудь об этом, Морт. Пошли.':
            # r1430 # reply65812
            jump show_graphics_menu


# s716 # say65813
label dmorte_s716:  # from 715.0
    SPEAKER 'Конечно нет, шеф, но я… Внезапно его голос струной режет тебя. Ты знаешь, *почему* он по-прежнему остается рядом с тобой, все это время.'

    menu:
        'Ты чувствуешь себя *виноватым*. Вот почему ты следуешь за мной до моей смерти, верно? И все это время ты страдал.':
            # r1431 # reply65814
            jump dmorte_s717


# s717 # say65815
label dmorte_s717:  # from 716.0
    SPEAKER 'А, да ладно, шеф. Чтоб я чувствовал себя *виноватым*? Я — Морт.'

    menu:
        'Нет, все именно так. Когда я пришел, чтобы освободить тебя от твоей судьбы, ты не мог *помочь* мне, но ты попробовал. А после освобождения, когда ты мог просто уйти, ты остался. Потому что ты чувствовал себя в долгу.':
            # r1432 # reply65816
            jump dmorte_s718


# s718 # say65817
label dmorte_s718:  # from 717.0
    SPEAKER 'Глядя на тебя, Морт на секунду умолкает. Может быть. И знаешь, что самое смешное? Сперва я не знал, что это было за чувство: это как будто тебя что-то медленно поглощает, понимаешь?'

    jump show_graphics_menu

# s719 # say65818
label dmorte_s719:  # from 718.0 # ~SetGlobal("Know_Morte_Pillar","GLOBAL",2) ~ GOTO 720
    SPEAKER 'Я имею в виду, сначала я думал, что это побочный эффект того, что 'связывает' меня с тобой… но спустя несколько сотен лет, я понял, что это нечто *большее*… более глубокое. Я просто почувствовал, что каким-то образом *связан* с тобой. Возможно, это все твои страдания, шеф… твои муки. Я не знаю. Возможно, я чувствую… ну, не знаю… что я *ответственный* за то, что я сделал. Что, если это из-за меня ты стал таким?'

    jump show_graphics_menu

# s720 # say65820
label dmorte_s720:  # from 719.0
    SPEAKER 'Дело в том, что я, кем бы я ни был прежде, не *видел* всех последствий своей лжи и обмана. А когда я в Колонне впервые увидел тебя, я почему-то *знал*, что я тебя однажды предал. Однажды… давным-давно, — Морт вздыхает. — И это все, что я знаю.'

    menu:
        'Понятно. Спасибо за разъяснения, Морт.':
            # r1433 # reply65821
            $ _r65821_action(gsm)
            jump dmorte_s721


# s721 # say65822
label dmorte_s721:  # from 720.0
    SPEAKER 'А, не благодари… Морт вздыхает. К твоему удивлению, его голос каким-то образом стал более твердым и уверенным. Некоторые трещины и сколы в его черепе исчезли, как после исцеления. Это мне нужно тебя благодарить. Я прямо чувствую, как сбросил Планы со своих плеч… образно выражаясь.'

    menu:
        'У меня есть другие вопросы…':
            # r1434 # reply65823
            jump dmorte_s329
        'Отлично, Морт. Пошли.':
            # r1435 # reply65824
            jump show_graphics_menu


# s722 # say65826
label dmorte_s722:  # from 329.10 729.10
    SPEAKER 'Ну, она — ночная ведьма. И она определенно чокнутая настолько, что из всех людей бессмертным сделала ТЕБЯ. То есть, она могла бы выбрать меня, — Морт закатывает глаза. — Тем не менее, вряд ли мы хотим найти того, кто настолько чокнутый, чтобы скрестить клинки с Леди Боли.'

    menu:
        'Понятно. У меня есть другие вопросы…':
            # r1436 # reply65827
            jump dmorte_s329
        'Ладно. Идем.':
            # r1437 # reply65828
            jump show_graphics_menu


# s723 # say65829
label dmorte_s723:  # from 329.9 729.9
    SPEAKER 'Это война. Большая, кровавая, беспощадная война. Она повсюду, несмотря на то, что иногда ты ее не в состоянии заметить.'

    menu:
        'Продолжай…':
            # r1438 # reply65830
            jump dmorte_s724
        'Неважно. У меня есть другие вопросы…':
            # r1439 # reply65831
            jump dmorte_s329
        'Ладно. Идем.':
            # r1440 # reply65832
            jump show_graphics_menu


# s724 # say65833
label dmorte_s724:  # from 723.0
    SPEAKER 'Понимаешь, шеф, это война между двумя ужасными расами — демонами и дьяволами. Когда-то они не подозревали о существовании друг друга. Дьяволы злые, только это 'упорядоченный' вид зла. Демоны тоже злые, но в этом плане они более свободны: более импульсивные, хаотичные, неорганизованные. Дьяволов можно сравнить с политиками, а демонов — с убийцами.'

    jump show_graphics_menu

# s725 # say65834
label dmorte_s725:  # from 724.0
    SPEAKER 'И вот однажды они встретились. Они посмотрели друг на друга, и каждой из рас не понравилось, как другая трактует зло. И с тех пор они воюют. Это один сплошной ночной кошмар. Но покуда обе эти расы заняты друг другом, они не разбегаются по всем планам.'

    menu:
        'Понятно. У меня есть другие вопросы…':
            # r1441 # reply65835
            jump dmorte_s329
        'Это все, что я хотел знать. Идем.':
            # r1442 # reply65836
            jump show_graphics_menu


# s726 # say65837
label dmorte_s726:  # from 329.11 729.11
    SPEAKER 'Без понятия, шеф. Я уже забыл, как я умер. Не могу сказать, что я сильно осуждаю себя за это. По крайней мере, меня хоть что-то ждало после моей смерти, даже если это оказалась жизнь в качестве летающего черепа. Ведь все могло оказаться гораздо хуже.'

    menu:
        'А что случилось с твоим телом?':
            # r1443 # reply65839
            jump dmorte_s727
        'Понятно. У меня есть другие вопросы…':
            # r1444 # reply65840
            jump dmorte_s329
        'Ладно. Идем.':
            # r1445 # reply65841
            jump show_graphics_menu


# s727 # say65838
label dmorte_s727:  # from 726.0
    SPEAKER 'Эх… Я не знаю, ясно? Оно просто пропало — Морт выразительно смотрит на тебя. — Вот только не думай, что я СКУЧАЮ по нему, я рад тому, что я есть, и мне не нужны твои тупые подколки или фальшивые сочувствия, понятно?'

    menu:
        'Понятно. У меня есть другие вопросы…':
            # r1446 # reply65842
            jump dmorte_s329
        'Как бы то ни было, идем. Давай, шевели ногами.':
            # r1447 # reply65843
            jump dmorte_s728


# s728 # say65844
label dmorte_s728:  # from 727.1
    SPEAKER 'Морт сверкает на тебя гневным взглядом. Я уже почти верю, что ты — какое-то ходячее проклятие, обреченное следовать за мной по пятам.'

    menu:
        'Ой-ой, кто бы говорил. Идем.':
            # r1448 # reply65845
            jump show_graphics_menu


# s729 # say66344
label dmorte_s729:  # from -
    SPEAKER 'Что тебя гложет, шеф? [MRT515]'

    menu:
        'Можешь еще раз прочитать, что у меня вытатуировано на спине?':
            # r1449 # reply66345
            jump dmorte_s649
        'Расскажи мне немного о Сигиле.':
            # r1450 # reply66346
            jump dmorte_s659
        'Морт… я не хочу навешивать ярлыки на тебя, но умеешь ли ты *еще* что-нибудь, кроме болтовни?' if _r66347_condition(gsm):
            # r1451 # reply66347
            jump dmorte_s663
        'Морт… еще раз, какие у тебя есть способности?' if _r66348_condition(gsm):
            # r1452 # reply66348
            jump dmorte_s666
        'Морт, почему ты не прочитал последнюю строку татуировки на моей спине?' if _r66349_condition(gsm):
            # r1453 # reply66349
            jump dmorte_s654
        'Мне нужен совет. Что, по-твоему, нужно делать дальше?':
            # r1454 # reply66350
            jump dmorte_s669
        'Ты говорил, что ты — мимир, верно, Морт?' if _r66351_condition(gsm):
            # r1455 # reply66351
            jump dmorte_s684
        'Расскажи мне еще раз, как ты оказался в Колонне Черепов.' if _r66352_condition(gsm):
            # r1456 # reply66352
            jump dmorte_s693
        'Морт, почему с тех пор, как я вытащил тебя из Колонны, ты путешествуешь со мной?' if _r66353_condition(gsm):
            # r1457 # reply66353
            jump dmorte_s715
        'Что ты знаешь о Кровавой войне?' if _r66354_condition(gsm):
            # r1458 # reply66354
            jump dmorte_s723
        'Что тебе известно про ночную ведьму Равель?' if _r66355_condition(gsm):
            # r1459 # reply66355
            jump dmorte_s722
        'Как ты умер, Морт?':
            # r1460 # reply66356
            jump dmorte_s726
        'Ничего, Морт. Просто проверяю, что ты все еще со мной.':
            # r1461 # reply66357
            jump show_graphics_menu


# s730 # say66816
label dmorte_s730:  # from -
    SPEAKER 'Эй, шеф, ты доверяешь этим двум? Они могли бы научить *меня* парочке вещей… [MRT387]'

    menu:
        'Я тоже так думаю, Морт. Пошли.':
            # r1462 # reply66817
            jump show_graphics_menu


# s731 # say67510
label dmorte_s731:  # from - # Check EXTENDS ~DANNAH~ : 418
    SPEAKER 'Шеф, я хотел бы просто вставить свое замечание и заявить, что не собираюсь ничего говорить, дабы не испортить никому настроения. Просто полетаю тут и понаблюдаю. Не обращайте на меня внимания.'

    jump show_graphics_menu

# s732 # say67600
label dmorte_s732:  # from - # Check EXTENDS ~DANNAH~ : 446
    SPEAKER 'Может быть, вы двое уже закончите с этим, а то мне придется позвать дабуса, что вас отцепить друг от дружки! — Морт *фыркает*. — Или хотя бы дайте поучаствовать.'

    jump show_graphics_menu

# s733 # say68171
label dmorte_s733:  # from -
    SPEAKER 'Едва ты собираешься прикоснуться к Морту, как вдруг он произносит: Эй-эй-эй! Погоди, шеф. Э-э-э… мне тебе нужно кое-что тебе сказать. [MRT242]'

    menu:
        'Морт?!.. Ты не мертвый!':
            # r1463 # reply68176
            $ _r68176_action(gsm)
            jump dmorte_s734


# s734 # say68172
label dmorte_s734:  # from 733.0
    SPEAKER 'Ну да. Если бы ты был мертвым столько, сколько я, ты бы тоже хорошо симулировал смерть. Я типа подслушал твой разговор. Используй свою силу на ком-нибудь другом: мне она без надобности.'

    menu:
        'Ты что, собирался *валялся* тут без дела, пока мне надирают задницу?':
            # r1464 # reply68177
            jump dmorte_s735


# s735 # say68173
label dmorte_s735:  # from 734.0 # Check EXTENDS ~DTRANS~ : 142
    SPEAKER 'Ну, *да*, шеф. Ведь ты бы все равно не умер. Я имею в виду, если бы ты пал, тебе бы понадобился кто-то, кто бы запомнил все. К тому же, ты ведь знаешь, какой я бесполезный в бою, если только не оскорбляю какого-нибудь мага или типа того…'

    menu:
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68178_condition(gsm):
            # r1465 # reply68178
            jump dmorte_s736
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68189_condition(gsm):
            # r1466 # reply68189
            $ _r68189_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68190_condition(gsm):
            # r1467 # reply68190
            $ _r68190_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68191_condition(gsm):
            # r1468 # reply68191
            $ _r68191_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68192_condition(gsm):
            # r1469 # reply68192
            $ _r68192_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68193_condition(gsm):
            # r1470 # reply68193
            $ _r68193_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68194_condition(gsm):
            # r1471 # reply68194
            $ _r68194_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68239_condition(gsm):
            # r1472 # reply68239
            $ _r68239_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68438_condition(gsm):
            # r1473 # reply68438
            $ _r68438_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68439_condition(gsm):
            # r1474 # reply68439
            $ _r68439_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68446_condition(gsm):
            # r1475 # reply68446
            $ _r68446_action(gsm)
            jump show_graphics_menu
        'Тогда для тебя может найтись кое-какое дело. Поговорим об этом *позже*, Морт…' if _r68503_condition(gsm):
            # r1476 # reply68503
            jump show_graphics_menu


# s736 # say68174
label dmorte_s736:  # from 735.0
    SPEAKER 'Ты снова используешь свою силу…'

    menu:
        'Возродить Анну.' if _r68175_condition(gsm):
            # r1477 # reply68175
            $ _r68175_action(gsm)
            jump show_graphics_menu
        'Возродить Даккона.' if _r68179_condition(gsm):
            # r1478 # reply68179
            $ _r68179_action(gsm)
            jump show_graphics_menu
        'Возродить Падшую Грацию.' if _r68180_condition(gsm):
            # r1479 # reply68180
            $ _r68180_action(gsm)
            jump show_graphics_menu
        'Возродить Нордома.' if _r68181_condition(gsm):
            # r1480 # reply68181
            $ _r68181_action(gsm)
            jump show_graphics_menu
        'Возродить Игнуса.' if _r68182_condition(gsm):
            # r1481 # reply68182
            $ _r68182_action(gsm)
            jump show_graphics_menu
        'Возродить Вейлора.' if _r68183_condition(gsm):
            # r1482 # reply68183
            $ _r68183_action(gsm)
            jump show_graphics_menu


# s737 # say68310
label dmorte_s737:  # from -
    SPEAKER 'Едва ты собираешься прикоснуться к Морту, как вдруг он взлетает в воздух. Э-э-э… Погоди, шеф. Тебе не нужно возрождать меня. Я, понимаешь, э-э-э, типа просто лежал тут, слушал вас двоих.'

    menu:
        'ТЫ ПРИТВОРЯЛСЯ МЕРТВЫМ.':
            # r1483 # reply68311
            jump dmorte_s738


# s738 # say68312
label dmorte_s738:  # from 737.0
    SPEAKER 'Ну да, я ведь *уже* мертв и… Э-э-э, что случилось с твоим голосом, шеф?'

    menu:
        'Я… ТЕПЕРЬ ДРУГОЙ. ОСТАЛОСЬ МАЛО ВРЕМЕНИ, И СКОРО ВРЕМЯ И СУДЬБА МЕНЯ НАСТИГНУТ. ЕСЛИ ХОЧЕШЬ, Я ВЕРНУ ТЕБЯ В СИГИЛ, МОРТ.':
            # r1484 # reply68313
            jump dmorte_s739


# s739 # say68314
label dmorte_s739:  # from 738.0
    SPEAKER 'Чт?.. Вернуть меня? А как же *ты*? Хватит, шеф, может я и *трус*, но я ни за что не брошу тебя в этом месте.'

    menu:
        'МНОГО ПРЕСТУПЛЕНИЙ БЫЛО СОВЕРШЕНО С ТЕХ ПОР, КАК МОЯ СМЕРТНОСТЬ И Я БЫЛИ РАЗДЕЛЕНЫ. ЗА ЭТИ ПРЕСТУПЛЕНИЯ ПРИДЕТСЯ… ЗАПЛАТИТЬ. НАВЕРНО, ТЫ НЕ ЗАХОЧЕШЬ ПОЙТИ ТУДА, ГДЕ Я СКОРО ОКАЖУСЬ.':
            # r1485 # reply68315
            jump dmorte_s740


# s740 # say68316
label dmorte_s740:  # from 739.0
    SPEAKER 'Я *могу* пойти куда угодно, шеф, если ты этого захочешь. Мы ведь бывали в местах и похуж…'

    menu:
        'НЕ В ЭТОТ РАЗ. ВОЗМОЖНО, ОДНАЖДЫ МЫ СНОВА ВСТРЕТИМСЯ, НА ДРУГОМ ПЛАНЕ. НО НЕ В ЭТОТ РАЗ.':
            # r1486 # reply68317
            jump dmorte_s741


# s741 # say68318
label dmorte_s741:  # from 740.0
    SPEAKER 'Морт молча смотрит на тебя, затем вздыхает. Не то чтобы я сильно растрогался, и все же мне, э-э, было приятно с тобой путешествовать, шеф. [MRT109]'

    menu:
        'ПРОЩАЙ, МОРТ.' if _r68319_condition(gsm):
            # r1487 # reply68319
            $ _r68319_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68320_condition(gsm):
            # r1488 # reply68320
            $ _r68320_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68321_condition(gsm):
            # r1489 # reply68321
            $ _r68321_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68322_condition(gsm):
            # r1490 # reply68322
            $ _r68322_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68323_condition(gsm):
            # r1491 # reply68323
            $ _r68323_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68324_condition(gsm):
            # r1492 # reply68324
            $ _r68324_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68325_condition(gsm):
            # r1493 # reply68325
            $ _r68325_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68490_condition(gsm):
            # r1494 # reply68490
            $ _r68490_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68491_condition(gsm):
            # r1495 # reply68491
            $ _r68491_action(gsm)
            jump show_graphics_menu
        'ПРОЩАЙ, МОРТ.' if _r68492_condition(gsm):
            # r1496 # reply68492
            $ _r68492_action(gsm)
            jump show_graphics_menu


# s742 # say68408
label dmorte_s742:  # from -
    SPEAKER 'Морт молча смотрит на тебя, затем вздыхает. Не то чтобы я сильно растрогался, и все же мне, э-э, было приятно с тобой путешествовать, шеф. [MRT109]'

    menu:
        'Тогда возьмемся за дело…':
            # r1497 # reply68409
            jump show_graphics_menu