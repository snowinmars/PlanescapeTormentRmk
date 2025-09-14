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
    from game.engine.runtime import (runtime)

    gsm = runtime.global_state_manager
    glm = runtime.global_locations_manager


# ###
# Original:  DLG/DDEATHON.DLG
# Starts:    ddeathon_s0 ddeathon_s8
# ###


label ddeathon_init:
    $ glm.set_location('death_of_names')
    $ gsm.set_meet_death_of_names(True)
    show death_of_names_img default at center_left_down
    return


label ddeathon_dispose:
    hide death_of_names_img
    jump graphics_menu


# s0 # say7288
label ddeathon_s0: # from - # IF ~  Global("Death_of_Names","GLOBAL",0)
    call ddeathon_init from _call_ddeathon_init
    nr 'Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны.'
    nr 'Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.'

    menu:
        'Приветствую.':
            # a0 # r7289
            jump ddeathon_s1
        'Оставить мужчину в покое.':
            # a1 # r7290
            jump ddeathon_dispose


# s1 # say7291
label ddeathon_s1: # from 0.0
    nr 'Глаза тленного скользят по тебе.'
    death_names '«Имя».'
    nr 'Когда он произносит это слово, голос его звучит, как звон колокольчика.'

    menu:
        'Я… не знаю.':
            # a2 # r7292
            jump ddeathon_s2
        'Э… прости, что отвлек.':
            # a3 # r7293
            jump ddeathon_s2


# s2 # say7294
label ddeathon_s2: # from 1.0 1.1 9.0
    death_names '«Нет имени, нет имени, ничем не помогу тебе».'
    nr 'Нараспев произносит тленный.'
    death_names '«Нужно имя, чтобы увидеть, где оно умерло».'

    menu:
        'Что?':
            # a4 # r7295
            $ _r7295_action(gsm)
            jump ddeathon_s3


# s3 # say7296
label ddeathon_s3: # from 2.0
    death_names '«Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен».'
    nr 'Его глаза скользят по монолиту и по стенам.'
    death_names '«Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу».'

    menu:
        'Захария.' if _r7297_condition(gsm):
            # a5 # r7297
            jump ddeathon_s10
        'Дейонарра.' if _r7298_condition(gsm):
            # a6 # r7298
            jump ddeathon_s10
        'Дхолл.' if _r7299_condition(gsm):
            # a7 # r7299
            jump ddeathon_s4
        'Дхолл.' if _r7300_condition(gsm):
            # a8 # r7300
            jump ddeathon_s10
        'Квентин.' if _r7303_condition(gsm):
            # a9 # r7303
            jump ddeathon_s13
        'Э… Не знаю. Попробуй «Адан».':
            # a10 # r7304
            $ _r7304_action(gsm)
            jump ddeathon_s4
        'Хм-м. А ты можешь похоронить для меня имя?':
            # a11 # r9766
            jump ddeathon_s5
        'На сегодня имен нет. Извини, что отвлек тебя.':
            # a12 # r9767
            jump ddeathon_dispose


# s4 # say7305
label ddeathon_s4: # from 3.2 3.5 5.3 5.5 9.4 9.6 9.10
    nr 'Он качает головой.'
    death_names '«Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время».'

    menu:
        'Давай попробуем другое имя…':
            # a13 # r7306
            jump ddeathon_s9
        'Ты можешь похоронить для меня имя?':
            # a14 # r7307
            jump ddeathon_s5
        'Хорошо… Извини, что отвлек.':
            # a15 # r7308
            jump ddeathon_dispose


# s5 # say7309
label ddeathon_s5: # from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
    nr 'Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской.'
    death_names '«Чтоб похоронить, нужно звенелки заплатить. Три медяка, три».'

    menu:
        'Захария.' if _r7310_condition(gsm):
            # a16 # r7310
            jump ddeathon_s12
        'Дейонарра.' if _r7311_condition(gsm):
            # a17 # r7311
            jump ddeathon_s12
        'Дхолл.' if _r7312_condition(gsm):
            # a18 # r7312
            $ _r7312_action(gsm)
            jump ddeathon_s6
        'Дхолл.' if _r7313_condition(gsm):
            # a19 # r7313
            jump ddeathon_s4
        'Квентин.' if _r7317_condition(gsm):
            # a20 # r7317
            $ _r7317_action(gsm)
            jump ddeathon_s15
        'Квентин.' if _r9768_condition(gsm):
            # a21 # r9768
            jump ddeathon_s4
        'Хм-м… Эс-Аннон.' if _r9769_condition(gsm):
            # a22 # r9769
            $ _r9769_action(gsm)
            jump ddeathon_s6
        'У меня нет ни одной… звенелки. Может быть, в другой раз.' if _r9770_condition(gsm):
            # a23 # r9770
            jump ddeathon_dispose
        'На сегодня имен нет. Прощай.' if _r26086_condition(gsm):
            # a24 # r26086
            jump ddeathon_dispose


# s6 # say7350
label ddeathon_s6: # from 5.2 5.6
    nr 'Медяки падают в руку Смерти-Имен, и он прячет ее назад.'
    nr 'Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.'

    menu:
        'Подождать…':
            # a25 # r7351
            jump ddeathon_s7


# s7 # say7352
label ddeathon_s7: # from 6.0
    nr 'Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене.'
    nr 'Спустя несколько минут он завершает работу, поднимается и возвращается к тебе.'
    death_names '«Похоронено».'
    nr 'Последнее слово заставляет тебя почувствовать себя неуютно.'

    menu:
        'Я хотел бы, чтобы ты поискал для меня имя…':
            # a26 # r7353
            jump ddeathon_s9
        'Я хотел бы похоронить другое имя.':
            # a27 # r7354
            jump ddeathon_s5
        'Спасибо. Прощай.':
            # a28 # r7355
            jump ddeathon_dispose


# s8 # say7356
label ddeathon_s8: # from - # GlobalGT("Death_of_Names","GLOBAL",0)
    call ddeathon_init from _call_ddeathon_init_1
    nr 'Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.'

    menu:
        'Приветствую.':
            # a29 # r7357
            jump ddeathon_s9
        'Оставить его в покое.':
            # a30 # r7358
            jump ddeathon_dispose


# s9 # say7359
label ddeathon_s9: # from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
    nr 'И снова глаза тленного глядят на тебя.'
    death_names '«Имя».'
    nr 'Когда он произносит это слово, голос его звучит, как звон колокольчика.'

    menu:
        'Я… не знаю.':
            # a31 # r7360
            jump ddeathon_s2
        'Я хотел бы похоронить имя.':
            # a32 # r7361
            jump ddeathon_s5
        'Захария.' if _r7362_condition(gsm):
            # a33 # r7362
            jump ddeathon_s10
        'Дейонарра.' if _r7363_condition(gsm):
            # a34 # r7363
            jump ddeathon_s10
        'Дхолл.' if _r7364_condition(gsm):
            # a35 # r7364
            jump ddeathon_s4
        'Дхолл.' if _r7365_condition(gsm):
            # a36 # r7365
            jump ddeathon_s10
        'Сиси.' if _r7366_condition(gsm):
            # a37 # r7366
            jump ddeathon_s4
        'Сиси.' if _r7367_condition(gsm):
            # a38 # r7367
            jump ddeathon_s10
        'Квентин.' if _r7368_condition(gsm):
            # a39 # r7368
            jump ddeathon_s13
        'Эс-Аннон.' if _r9771_condition(gsm):
            # a40 # r9771
            jump ddeathon_s10
        'Э… «Адан»?':
            # a41 # r9772
            $ _r9772_action(gsm)
            jump ddeathon_s4
        'Извини за беспокойство. Прощай.':
            # a42 # r26109
            jump ddeathon_dispose


# s10 # say7369
label ddeathon_s10: # from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
    nr 'Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен.'
    death_names '«Похоронено».'

    menu:
        'Осмотреть то место, куда он указывает.':
            # a43 # r7370
            jump ddeathon_s11
        'У меня есть другое имя…':
            # a44 # r7371
            jump ddeathon_s9
        'Я хотел бы похоронить имя.':
            # a45 # r7372
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # a46 # r7373
            jump ddeathon_dispose


# s11 # say7374
label ddeathon_s11: # from 10.0
    nr 'Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.'

    menu:
        'У меня есть другое имя…':
            # a47 # r7375
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # a48 # r7376
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # a49 # r7377
            jump ddeathon_dispose


# s12 # say7378
label ddeathon_s12: # from 5.0 5.1
    nr 'Он качает головой.'
    death_names '«Похоронено».'

    menu:
        'У меня есть другое имя…':
            # a50 # r7380
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # a51 # r7382
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # a52 # r7383
            jump ddeathon_dispose


# s13 # say7384
label ddeathon_s13: # from 3.4 9.8
    nr 'Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен.'
    death_names '«Похоронено».'

    menu:
        'Осмотреть то место, куда он указывает.':
            # a53 # r7386
            jump ddeathon_s14
        'У меня есть другое имя…':
            # a54 # r7387
            jump ddeathon_s9
        'Я хотел бы похоронить имя.':
            # a55 # r7388
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # a56 # r7390
            jump ddeathon_dispose


# s14 # say7391
label ddeathon_s14: # from 13.0
    nr 'Имя Квентина, высеченное на черном камне слегка неровным почерком. К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.'

    menu:
        'У меня есть другое имя…':
            # a57 # r7392
            jump ddeathon_s9
        'Я хотел бы похоронить имя…':
            # a58 # r7394
            jump ddeathon_s5
        'Просто проверяю. Прощай.':
            # a59 # r7403
            jump ddeathon_dispose


# s15 # say7404
label ddeathon_s15: # from 5.4
    nr 'Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.'

    menu:
        'Подождать…':
            # a60 # r7405
            jump ddeathon_s16


# s16 # say7406
label ddeathon_s16: # from 15.0
    nr 'Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать. К несчастью для Квентина, монумент не разломился после его имени..'
    nr 'Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе.'
    death_names '«Похоронено».'
    nr 'Последнее слово заставляет тебя почувствовать себя неуютно.'

    menu:
        'Я хотел бы, чтобы ты поискал для меня имя…':
            # a61 # r7407
            jump ddeathon_s9
        'Я хотел бы похоронить другое имя.':
            # a62 # r7408
            jump ddeathon_s5
        'Спасибо. Прощай.':
            # a63 # r7409
            jump ddeathon_dispose
