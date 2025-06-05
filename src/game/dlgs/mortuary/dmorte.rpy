init python:
    def _r34991_action(gsm):
        gsm.set_morte_quip(True)
    def _r35001_action(gsm):
        gsm.set_morte_quip(True)
    def _r34993_action(gsm):
        gsm.dec_once_law('morte_zombie_1')
    def _r45093_action(gsm):
        gsm.update_journal('39477')
    def _r45103_action(gsm):
        gsm.update_journal('39477')
    def _r4676_action(gsm):
        gsm.update_journal('64512')
    def _r3483_action(gsm):
        gsm.update_journal('38205')
    def _r4678_action(gsm):
        gsm.dec_once_law(3)
    def _r4679_action(gsm):
        gsm.dec_once_law()
    def _r4682_action(gsm):
        gsm.inc_once_law(3)
    def _r4687_action(gsm):
        gsm.inc_once_law()
        gsm.inc_once_good()
    def _r4693_action(gsm):
        gsm.update_journal('64512')
    def _r4695_action(gsm):
        gsm.dec_once_law(3)
    def _r4699_action(gsm):
        gsm.inc_once_law(3)
    def _r64535_action(gsm):      #  FadeToColor([20.0],0) Wait(1)
        gsm.set_looks_like("zombie")# Wait(2) FadeFromColor([20.0],0)
        gsm.inc_exp_custom('party', 500)
    def _r64534_action(gsm):        #FadeToColor([20.0],0) Wait(1)
        gsm.set_looks_like("zombie") #Wait(2) FadeFromColor([20.0],0)
    def _r3474_action(gsm):
        gsm.update_journal('38205')


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DMORTE.DLG
# Starts:    dmorte_s330
# ###


label dmorte_s330_init:
    show morte_img default at center_left_down
    return

label dmorte_s330_dispose:
    hide morte_img
    jump show_graphics_menu


# ### starts extern 330
# ##
# #
# s330 # say34990 # This state was a copypasted state in the original Ps:T as dmorte_s338 dmorte_s358
label dmorte_s330:  # from -
    call dmorte_s330_init
    morte 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

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
    morte 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

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
            jump dmorte_s330_dispose


# s332 # say34994
label dmorte_s332:  # from 331.0
    morte 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до @мускулатуры@, @у меня великолепное тело@ и @я весь в шрамах и круто выгляжу@. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r683 # reply34995
            jump dmorte_s330_dispose


# s333 # say34997
label dmorte_s333:  # from 331.1 331.2
    morte 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r684 # reply34998
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 330


# ### starts extern 477
# ##
# #
# s477 # say45088
label dmorte_s477:  # from -
    morte 'Ха. Кажется, кто-то забыл приказать этому бедолаге прекратить следовать правилу трех.'

    menu:
        'О чем это ты?':
            # r980 # reply45089
            jump dmorte_s478


# s478 # say45091
label dmorte_s478:  # from 477.0
    morte 'У этих трупов котелок уже почти не варит, так что они могут выполнять не больше одного задания одновременно…'
    morte 'Если приказать им делать что-то, то они будут это делать до тех пор, пока кто-нибудь их не остановит. Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.'
    morte 'Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.'

    menu:
        'А кто отдает им приказы?':
            # r981 # reply45092 «965»
            jump dmorte_s481
        'Ты что-то сказал про «правило трех». Что ты имел ввиду?':
            # r982 # reply45093
            $ _r45093_action(gsm)
            jump dmorte_s479
        'Ладно. Давай двигаться дальше.':
            # r983 # reply45094
            jump dmorte_s330_dispose


# s479 # say45095
label dmorte_s479:  # from 478.1 481.0
    morte 'А? Ну, правило трех — это один из пресловутых законов планов, согласно которому все на свете случается по трое…'
    morte '…или состоит из трех частей… или что всегда есть выбор из трех вариантов, ну и так далее.'

    menu:
        'Ты так говоришь, как будто не очень веришь в это.':
            # r984 # reply45096
            jump dmorte_s480


# s480 # say45098
label dmorte_s480:  # from 479.0 # Check EXTERN ~DZM965~ : 1
    morte 'По мне, так все это фигня. Если ты возьмешь с потолка число, любое число, и попытаешься к нему приделать великий смысл, то ты всегда найдешь кучу каких-нибудь совпадений.'

    menu:
        'Понятно. До этого ты говорил о том, что кто-то отдал этому трупу приказ, а потом забыл его остановить. А кто отдает трупам приказы?':
            # r985 # reply45099
            jump dmorte_s481
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r986 # reply45100
            jump dzm965_s1
        'Ладно. Давай двигаться дальше.':
            # r987 # reply45101
            jump dmorte_s330_dispose


# s481 # say45102
label dmorte_s481:  # from 478.0 480.0 # Check EXTERN ~DZM965~ : 1
    morte 'Их выписал из книги мертвых либо один из здешних смотрителей, либо какой-то некромант. Скорее всего, это один из смотрителей… в конце концов, это им нужна дешевая рабочая сила.'

    menu:
        'Понятно. А что ты там говорил до этого… про «правило трех»?':
            # r988 # reply45103
            $ _r45103_action(gsm)
            jump dmorte_s479
        'Понятно. Я хочу еще намного осмотреть этого зомби…':
            # r989 # reply45104
            jump dzm965_s1
        'Ладно. Давай двигаться дальше.':
            # r990 # reply45105
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 477


# ### starts extern 482
# ##
# #
# s482 # say45540
label dmorte_s482:  # from - # Check EXTERN ~DZM985~ : 3
    morte 'Э… шеф… осторож…'

    jump dzm985_s3
# #
# ##
# ### ends extern 482


# ### starts extern 102
# moved into ddhall_s0
# ### ends extern 102


# ### starts extern 85
# ##
# #
# s85 # say4675
label dmorte_s85:  # from -
    teller 'Морт шепотом вклинивается в разговор.'
    morte 'О силы… этот пень — *анархист*. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r235 # reply4676
            $ _r4676_action(gsm)
            jump dmorte_s86


# s86 # say4677
label dmorte_s86:  # from 85.0 # Manually checked EXTERN ~DVAXIS~ : 11 Manually checked EXTERN ~DVAXIS~ : 10
    morte 'Анархисты… это такая фракция…'
    teller 'Похоже, Морт еле сдерживает поток оскорблений, но затем замечает, что зомби смотрит на вас обоих, внимательно слушая.'
    morte '…они, э, хотят *освободить* всех от оков правительства. Свергнуть старый порядок, чтобы установить новый — без никаких порядков.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r236 # reply4678
            $ _r4678_action(gsm)
            jump dvaxis_s11
        'Ложь: Похоже на благородное стремление. Любой анархист, посвятивший себя столь высокой цели, *определенно* является мне другом.':
            # r237 # reply4679
            $ _r4679_action(gsm)
            jump dvaxis_s11
        'Это все довольно… противоречиво.':
            # r238 # reply4680
            jump dvaxis_s10
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r239 # reply4681
            jump dvaxis_s10
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r240 # reply4682
            $ _r4682_action(gsm)
            jump dvaxis_s10
# #
# ##
# ### ends extern 85


# ### starts extern 87
# ##
# #
# s87 # say4683
label dmorte_s87:  # from -
    teller 'Морт шепчет.'
    morte 'Он интересуется, не спятил ли ты, не слетел с катушек, не выжил из ума… и я, кстати, тоже.'
    morte 'А теперь выкинь это «Я очнулся из мертвых» из своего лексикона, хорошо?! Ты ставишь меня в глупое положение.'

    menu:
        'Я смущаю ТЕБЯ?':
            # r241 # reply4684
            jump dmorte_s88
        'Я просто хотел узнать, о чем этот… труп… говорит. Ясно?':
            # r242 # reply4685
            jump dmorte_s88
        'Не моя вина, что никто в этом сумасшедшем… «чокнутом»… месте не говорит нормально… или хотя бы не ВЫГЛЯДИТ так.' if _r4686_condition(gsm):
            # r243 # reply4686
            jump dmorte_s88
        'Слушай, я НЕ хочу лгать этому парню. Лучше говорить с ним напрямую.':
            # r244 # reply4687
            $ _r4687_action(gsm)
            jump dmorte_s88


# s88 # say4688
label dmorte_s88:  # from 87.0 87.1 87.2 87.3 # Manually checked EXTERN ~DVAXIS~ : 15
    teller 'Морт вздыхает.'
    morte 'Слушай, шеф… ты должен понимать свою ситуацию. Ты не сможешь разгуливать, рассказывая всем одну только ПРАВДУ. Мы не должны делать себя целями ловца кроликов, ясно?'

    menu:
        'Ловец кроликов? Цели? Что это… а, неважно.':
            # r245 # reply4689
            jump dvaxis_s15
        'Замолкни, Морт.':
            # r246 # reply4690
            jump dvaxis_s15
        'Я… я запомню это. Мне нужно поговорить с этим «зомби».':
            # r247 # reply4691
            jump dvaxis_s15
# #
# ##
# ### ends extern 87


# ### starts extern 89
# ##
# #
# s89 # say4692
label dmorte_s89:  # from -
    morte 'Погоди…'
    teller 'Морт говорит удивленно.'
    morte 'Да этот пень — *анархист*. Ха. Строить из себя зомби — это первое, что может взбрести в их пустые головы.'

    menu:
        'Анархист?':
            # r248 # reply4693
            $ _r4693_action(gsm)
            jump dmorte_s90


# s90 # say4694
label dmorte_s90:  # from 89.0 # Manually checked EXTERN ~DVAXIS~ : 71
    morte 'Анархисты — это фракция, которая тратит свое время на слежку за представителями власти и на поиски способов низвергнуть все, от чего несет порядком или контролем.'
    teller 'Морт фыркает.'
    morte 'Анархисты считают, что каждый пень на планах должен быть свободен и счастлив искать свою собственную «правду», как только правительство будет сожжено дотла.'
    morte 'Они хотят основать новый порядок, в котором не будет никакого порядка.'

    menu:
        'Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.':
            # r249 # reply4695
            $ _r4695_action(gsm)
            jump dvaxis_s71
        'Это все довольно… противоречиво.':
            # r250 # reply4696
            jump dvaxis_s71
        'Это одна из самых идиотских вещей, которую я когда-либо слышал.':
            # r251 # reply4697
            jump dvaxis_s71
        'Как хочешь.':
            # r252 # reply4698
            jump dvaxis_s71
        'Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.':
            # r253 # reply4699
            $ _r4699_action(gsm)
            jump dvaxis_s71
# #
# ##
# ### ends extern 89

# ### starts extern 91
# ##
# #
# s91 # say4700
label dmorte_s91:  # from - # Check EXTERN ~DVAXIS~ : 43
    morte 'Он говорит, что этот Фарод продал очень много жмуриков… трупов… тленным. Ну, сборщики занимаются этим — находят тела мертвых и продают их тленным.'
    morte 'Похоже, этот Фарод запродал так много жмуриков, что трухлявые начали подозревать, что он записывает жителей Улья в книгу мертвых раньше положенного срока… ну, ты понял, просто убивает их.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r254 # reply4701
            jump dvaxis_s43
        'Да этот Фарод просто святой. Возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r255 # reply4702
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 91


# ### starts extern 92
# ##
# #
# s92 # say4703
label dmorte_s92:  # from - # Check EXTERN ~DVAXIS~ : 43
    morte 'Он хочет знать, не обокрал ли кто тебя. Наверно, интересуется, что случилось.'

    menu:
        'Понятно. Я хотел бы знать кое-что еще…':
            # r256 # reply4704
            jump dvaxis_s43
        'Да, я жду не дождусь поймать этого вора. Слушай, возможно, позже у меня будут другие вопросы. Никуда не уходи.':
            # r257 # reply4705
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 92


# ### starts extern 93
# moved into dvaxis_s39
# ### ends extern 93


# ### starts extern 94
# ##
# #
# s94 # say4708
label dmorte_s94:  # from - # Check EXTERN ~DVAXIS~ : 66
    morte 'Не могу поверить, что ты делаешь это. Ты, что, СОВСЕМ спятил?'

    menu:
        'Бред, как по мне…' if _r64535_condition(gsm):
            # r258 # reply64535
            $ _r64535_action(gsm)
            jump dvaxis_s66
        'Бред, как по мне…' if _r64534_condition(gsm):
            # r259 # reply64534
            $ _r64534_action(gsm)
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 94


# ### starts extern 95
# ##
# #
# s95 # say4710
label dmorte_s95:  # from - # Check EXTERN ~DVAXIS~ : 67
    morte 'А нельзя ли ему зашить рот потуже?'

    menu:
        'Замоокни, Моот…':
            # r260 # reply4711
            jump dvaxis_s67
        'Ммм-ХММФ!':
            # r261 # reply4712
            jump dmorte_s330_dispose
# #
# ##
# ### ends extern 95


# ### starts extern 102
# ##
# #
# s102 # say5049
label dmorte_s102:  # from -
    call ddhall_init
    morte 'Эй, шеф! Ты что творишь?!'

    menu:
        'Я хотел поговорить с этим писарем. Он может кое-что знать о том, как я попал сюда.':
            # r271 # reply5050
            jump dmorte_s103


# s103 # say5052
label dmorte_s103:  # from 102.0 # Manually checked EXTERN ~DDHALL~ : 0 as ddhall_s0
    morte 'Послушай, трясти черепушкой с трухлявыми — это ПОСЛЕДНЯЯ мысль, которая должна…'

    jump ddhall_s0

# s104 # say5053
label dmorte_s104:  # from - # Manually checked EXTERN ~DDHALL~ : 1 as ddhall_s1
    morte 'И мы *тем более* не должны болтать с больными трухляками. Давай, пошли отсюда. Чем быстрее мы свалим отсюда, тем лучш…'

    jump ddhall_s1
# #
# ##
# ### ends extern 102



# ### starts extern 55
# ##
# #
# s55 # say3473
label dmorte_s55:  # from - # Manually checked EXTERN ~DEIVENE~ : 4 as deivene_s4
    morte 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r167 # reply3474
            $ _r3474_action(gsm)
            jump dmorte_s56
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r168 # reply3475
            jump deivene_s4
        'Оставить ее в покое.':
            # r169 # reply3476
            jump dmorte_s330_dispose


# s56 # say3477
label dmorte_s56:  # from 55.0 # Manually checked EXTERN ~DEIVENE~ : 4 as deivene_s4
    morte 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом.'
    morte 'Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Прикоснуться к женщине, привлечь ее внимание.':
            # r170 # reply3478
            jump deivene_s4
        'Оставить ее в покое.':
            # r171 # reply3479
            jump dmorte_s330_dispose


# s57 # say3480
label dmorte_s57:  # from -
    morte 'Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?'

    menu:
        'Что не так с ее руками?':
            # r172 # reply3483
            $ _r3483_action(gsm)
            jump dmorte_s58
        'Уйти.':
            # r173 # reply3484
            jump dmorte_s330_dispose


# s58 # say3481
label dmorte_s58:  # from 57.0
    morte 'Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом. Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.'

    menu:
        'Уйти.':
            # r174 # reply3482
            jump dmorte_s330_dispose


# s59 # say3487
label dmorte_s59:  # from - # Check EXTERN ~DEIVENE~ : 11 as deivene_s11 # Check EXTERN ~DEIVENE~ : 10 as deivene_s10
    morte 'Похоже, у тебя новая подруга, шеф. Может, вас оставить наедине на часок, или?..'

    menu:
        'Замолкни, Морт.':
            # r175 # reply3488
            jump deivene_s11
        'Продолжать строить из себя зомби.':
            # r176 # reply3489
            jump deivene_s11
        'Оттолкнуть женщину.':
            # r177 # reply3490
            jump deivene_s10


# s60 # say3492
label dmorte_s60:  # from - # Check EXTERN ~DEIVENE~ : 14 as deivene_s14
    morte 'Это второй случай в моей жизни, когда я счастлив, что у меня нет носа.'

    jump deivene_s14
# #
# ##
# ### ends extern 55
