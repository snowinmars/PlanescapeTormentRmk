init python:
    def _r7295_action(gsm):
        gsm.set_meet_death_of_names(True)
        gsm.update_journal('66659')
    def _r7304_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')
    def _r7312_action(gsm):
        gsm.dec_gold(3)
    def _r7317_action(gsm):
        gsm.dec_gold(3)
    def _r9769_action(gsm):
        gsm.dec_gold(3)
    def _r9772_action(gsm):
        gsm.set_death_of_names_adahn(True)
        gsm.inc_once_adahn('Adahn_Death_of_Names_1')


init python:
    def _r7297_condition(gsm):
        return gsm.get_know_xachariah_name()
    def _r7298_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r7299_condition(gsm):
        return gsm.get_meet_dhall() \
               and not gsm.get_dead_dhall()
    def _r7300_condition(gsm):
        return gsm.get_meet_dhall() \
               and gsm.get_dead_dhall() \
               and gsm.get_pass_death_of_names_dhall()
    def _r7303_condition(gsm):
        return gsm.get_pass_death_of_names_quentin()
    def _r7310_condition(gsm):
        return gsm.get_gold() > 2
    def _r7311_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r7312_condition(gsm):
        return gsm.get_gold() > 2
    def _r7313_condition(gsm):
        return gsm.get_gold() > 2
    def _r7317_condition(gsm):
        return gsm.get_gold() > 2
    def _r9768_condition(gsm):
        return gsm.get_gold() > 2
    def _r9769_condition(gsm):
        return gsm.get_gold() > 2 == 1
    def _r9770_condition(gsm):
        return PartyGoldLT(3)
    def _r26086_condition(gsm):
        return gsm.get_gold() > 2
    def _r7362_condition(gsm):
        return gsm.get_know_xachariah_name()
    def _r7363_condition(gsm):
        return gsm.get_meet_deionarra()
    def _r7364_condition(gsm):
        return gsm.get_meet_dhall() \
               and not gsm.get_dead_dhall()
    def _r7365_condition(gsm):
        return gsm.get_meet_dhall() \
               and gsm.get_dead_dhall() \
               and gsm.get_pass_death_of_names_dhall()
    def _r7366_condition(gsm):
        return gsm.get_know_xixi() \
               and gsm.get_xixi_back() < 2
    def _r7367_condition(gsm):
        return gsm.get_know_xixi() \
               and gsm.get_xixi_back() == 3
    def _r7368_condition(gsm):
        return gsm.get_pass_death_of_names_quentin()
    def _r9771_condition(gsm):
        return gsm.get_crier_quest() == 2


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DDEATHON.DLG
# Starts:    ddeathon_s0 ddeathon_s8
# ###


label ddeathon_init:
    $ glm.set_location('death_of_names')
    $ gsm.set_meet_death_of_names(True)
    scene bg death_of_names
    show death_of_names_img default at center_left_down
    return


label ddeathon_dispose:
    hide death_of_names_img
    jump show_graphics_menu


# s0 # say7288
label ddeathon_s0:  # from - # IF ~  Global("Death_of_Names","GLOBAL",0)
    call ddeathon_init
    nr 'Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны.'
    nr 'Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.'

    menu:
        'Приветствую.':
            # r0 # reply7289
            jump ddeathon_s1
        'Оставить мужчину в покое.':
            # r1 # reply7290
            jump ddeathon_dispose


# s1 # say7291
label ddeathon_s1:  # from 0.0
    nr 'Глаза тленного скользят по тебе.'
    death_names 'Имя.'
    nr 'Когда он произносит это слово, голос его звучит, как звон колокольчика.'

    menu:
        'Я… не знаю.':
            # r2 # reply7292
            jump ddeathon_s2
        'Э… прости, что отвлек.':
            # r3 # reply7293
            jump ddeathon_s2


# s2 # say7294
label ddeathon_s2:  # from 1.0 1.1 9.0
    death_names 'Нет имени, нет имени, ничем не помогу тебе.'
    nr 'Нараспев произносит тленный.'
    death_names 'Нужно имя, чтобы увидеть, где оно умерло.'

    menu:
        'Что?':
            # r4 # reply7295
            $ _r7295_action(gsm)
            jump ddeathon_s3


# s3 # say7296
label ddeathon_s3:  # from 2.0
    death_names 'Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен.'
    nr 'Его глаза скользят по монолиту и по стенам.'
    death_names 'Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу.'

    menu:
        'Захария.' if _r7297_condition(gsm):
            # r5 # reply7297
            jump ddeathon_s10
        'Дейонарра.' if _r7298_condition(gsm):
            # r6 # reply7298
            jump ddeathon_s10
        'Дхолл.' if _r7299_condition(gsm):
            # r7 # reply7299
            jump ddeathon_s4
        'Дхолл.' if _r7300_condition(gsm):
            # r8 # reply7300
            jump ddeathon_s10
        'Квентин.' if _r7303_condition(gsm):
            # r9 # reply7303
            jump ddeathon_s13
        'Э… Не знаю. Попробуй «Адан».':
            # r10 # reply7304
            $ _r7304_action(gsm)
            jump ddeathon_s4
        'Хм-м. А ты можешь похоронить для меня имя?':
            # r11 # reply9766
            jump ddeathon_s5
        'На сегодня имен нет. Извини, что отвлек тебя.':
            # r12 # reply9767
            jump ddeathon_dispose


# s4 # say7305
label ddeathon_s4:  # from 3.2 3.5 5.3 5.5 9.4 9.6 9.10
    nr 'Он качает головой.'
    death_names 'Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время.'

    menu:
        'Давай попробуем другое имя…':
            # r13 # reply7306
            jump ddeathon_s9
        'Ты можешь похоронить для меня имя?':
            # r14 # reply7307
            jump ddeathon_s5
        'Хорошо… Извини, что отвлек.':
            # r15 # reply7308
            jump ddeathon_dispose


# s5 # say7309
label ddeathon_s5:  # from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
    nr 'Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской.'
    death_names 'Чтоб похоронить, нужно звенелки заплатить. Три медяка, три.'

    menu:
        'Захария.' if _r7310_condition(gsm):
            # r16 # reply7310
            jump ddeathon_s12
        'Дейонарра.' if _r7311_condition(gsm):
            # r17 # reply7311
            jump ddeathon_s12
        'Дхолл.' if _r7312_condition(gsm):
            # r18 # reply7312
            $ _r7312_action(gsm)
            jump ddeathon_s6
        'Дхолл.' if _r7313_condition(gsm):
            # r19 # reply7313
            jump ddeathon_s4
        'Квентин.' if _r7317_condition(gsm):
            # r20 # reply7317
            $ _r7317_action(gsm)
            jump ddeathon_s15
        'Квентин.' if _r9768_condition(gsm):
            # r21 # reply9768
            jump ddeathon_s4
        'Хм-м… Эс-Аннон.' if _r9769_condition(gsm):
            # r22 # reply9769
            $ _r9769_action(gsm)
            jump ddeathon_s6
        'У меня нет ни одной… звенелки. Может быть, в другой раз.' if _r9770_condition(gsm):
            # r23 # reply9770
            jump ddeathon_dispose
        'На сегодня имен нет. Прощай.' if _r26086_condition(gsm):
            # r24 # reply26086
            jump ddeathon_dispose


# s6 # say7350
label ddeathon_s6:  # from 5.2 5.6
    nr 'Медяки падают в руку Смерти-Имен, и он прячет ее назад.'
    nr 'Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.'

    menu:
        'Подождать…':
            # r25 # reply7351
            jump ddeathon_s7


# s7 # say7352
label ddeathon_s7:  # from 6.0
    nr 'Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене.'
    nr 'Спустя несколько минут он завершает работу, поднимается и возвращается к тебе.'
    death_names 'Похоронено.'
    nr 'Последнее слово заставляет тебя почувствовать себя неуютно.'

    menu:
        'Я хотел бы, чтобы ты поискал для меня имя…':
            # r26 # reply7353
            jump ddeathon_s9
        'Я хотел бы похоронить другое имя.':
            # r27 # reply7354
            jump ddeathon_s5
        'Спасибо. Прощай.':
            # r28 # reply7355
            jump ddeathon_dispose


# s8 # say7356
label ddeathon_s8:  # from - # GlobalGT("Death_of_Names","GLOBAL",0)
    call ddeathon_init
    nr 'Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.'

    menu:
        'Приветствую.':
            # r29 # reply7357
            jump ddeathon_s9
        'Оставить его в покое.':
            # r30 # reply7358
            jump ddeathon_dispose


# s9 # say7359
label ddeathon_s9:  # from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
    nr 'И снова глаза тленного глядят на тебя.'
    death_names 'Имя.'
    nr 'Когда он произносит это слово, голос его звучит, как звон колокольчика.'

    menu:
        'Я… не знаю.':
            # r31 # reply7360
            jump ddeathon_s2
        'Я хотел бы похоронить имя.':
            # r32 # reply7361
            jump ddeathon_s5
        'Захария.' if _r7362_condition(gsm):
            # r33 # reply7362
            jump ddeathon_s10
        'Дейонарра.' if _r7363_condition(gsm):
            # r34 # reply7363
            jump ddeathon_s10
        'Дхолл.' if _r7364_condition(gsm):
            # r35 # reply7364
            jump ddeathon_s4
        'Дхолл.' if _r7365_condition(gsm):
            # r36 # reply7365
            jump ddeathon_s10
        'Сиси.' if _r7366_condition(gsm):
            # r37 # reply7366
            jump ddeathon_s4
        'Сиси.' if _r7367_condition(gsm):
            # r38 # reply7367
            jump ddeathon_s10
        'Квентин.' if _r7368_condition(gsm):
            # r39 # reply7368
            jump ddeathon_s13
        'Эс-Аннон.' if _r9771_condition(gsm):
            # r40 # reply9771
            jump ddeathon_s10
        'Э… «Адан»?':
            # r41 # reply9772
            $ _r9772_action(gsm)
            jump ddeathon_s4
        'Извини за беспокойство. Прощай.':
            # r42 # reply26109
            jump ddeathon_dispose


# s10 # say7369
label ddeathon_s10:  # from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
    nr 'Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен.'
    death_names 'Похоронено.'

    menu:
        'Осмотреть то место, куда он указывает.':
            # r43 # reply7370
            jump ddeathon_s11
        'У меня есть другое имя…':
            # r44 # reply7371
            jump ddeathon_s9
        'Я хотел бы похоронить имя.':
            # r45 # reply7372
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # r46 # reply7373
            jump ddeathon_dispose


# s11 # say7374
label ddeathon_s11:  # from 10.0
    nr 'Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.'

    menu:
        'У меня есть другое имя…':
            # r47 # reply7375
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # r48 # reply7376
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # r49 # reply7377
            jump ddeathon_dispose


# s12 # say7378
label ddeathon_s12:  # from 5.0 5.1
    nr 'Он качает головой.'
    death_names 'Похоронено.'

    menu:
        'У меня есть другое имя…':
            # r50 # reply7380
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # r51 # reply7382
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # r52 # reply7383
            jump ddeathon_dispose


# s13 # say7384
label ddeathon_s13:  # from 3.4 9.8
    nr 'Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен.'
    death_names 'Похоронено.'

    menu:
        'Осмотреть то место, куда он указывает.':
            # r53 # reply7386
            jump ddeathon_s14
        'У меня есть другое имя…':
            # r54 # reply7387
            jump ddeathon_s9
        'Я хотел бы похоронить имя.':
            # r55 # reply7388
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # r56 # reply7390
            jump ddeathon_dispose


# s14 # say7391
label ddeathon_s14:  # from 13.0
    nr 'Имя Квентина, высеченное на черном камне слегка неровным почерком. К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.'

    menu:
        'У меня есть другое имя…':
            # r57 # reply7392
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # r58 # reply7394
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # r59 # reply7403
            jump ddeathon_dispose


# s15 # say7404
label ddeathon_s15:  # from 5.4
    nr 'Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.'

    menu:
        'Подождать…':
            # r60 # reply7405
            jump ddeathon_s16


# s16 # say7406
label ddeathon_s16:  # from 15.0
    nr 'Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать. К несчастью для Квентина, монумент не разломился после его имени..'
    nr 'Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе.'
    death_names 'Похоронено.'
    nr 'Последнее слово заставляет тебя почувствовать себя неуютно.'

    menu:
        'Я хотел бы, чтобы ты поискал для меня имя…':
            # r61 # reply7407
            jump ddeathon_s9
        'Я хотел бы похоронить другое имя.':
            # r62 # reply7408
            jump ddeathon_s5
        'Спасибо. Прощай.':
            # r63 # reply7409
            jump ddeathon_dispose
