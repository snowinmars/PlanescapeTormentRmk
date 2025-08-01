init python:
    def _r6533_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_zombie_chaotic(True)
    def _r64271_action(gsm):
        gsm.set_has_tome_ba(True)


init python:
    def _r6533_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6532_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6534_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6535_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM732.DLG
# ###


label dzm732_init:
    return


label dzm732_dispose:
    jump show_graphics_menu


# s0 # say6529
label dzm732_s0:  # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    SPEAKER 'У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер 732. Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после.'

    menu:
        'Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.' if _r6533_condition(gsm):
            # r0 # reply6533
            $ _r6533_action(gsm)
            jump dzm732_s1
        'Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.' if _r6532_condition(gsm):
            # r1 # reply6532
            jump dzm732_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6534_condition(gsm):
            # r2 # reply6534
            jump dzm732_s1
        'Использовать на трупе свою способность История костей.' if _r6535_condition(gsm):
            # r3 # reply6535
            jump dzm732_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6536
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r5 # reply6537
            jump show_graphics_menu


# s1 # say6530
label dzm732_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6538
            jump show_graphics_menu


# s2 # say6531
label dzm732_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6539
            jump show_graphics_menu


# s3 # say64270
label dzm732_s3:  # from - # IF ~  HasItem("TomeBA","ZM732")
    SPEAKER 'У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер 732. Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после. Ты замечаешь, что в руках он несет тяжелую книгу, как будто он где-то ее забрал.'

    menu:
        'Взять том из его рук… осторожно.':
            # r8 # reply64271
            $ _r64271_action(gsm)
            jump dzm732_s4
        'Оставить труп в покое.':
            # r9 # reply64272
            jump show_graphics_menu


# s4 # say64273
label dzm732_s4:  # from 3.0
    SPEAKER 'Ты осторожно берешь книгу из рук трупа — он даже не замечает этого. Похоже, это книга заклинаний и оберегов: она исписана схемами и таблицами, описывающими различные аспекты искусства некромантии. Сама по себе книга очень тяжелая. Каким бы неуклюжим не был зомби, он, должно быть, очень силен.'

    menu:
        'Снова осмотреть труп.':
            # r10 # reply64274
            jump dzm732_s0
        'Оставить труп в покое.':
            # r11 # reply64275
            jump show_graphics_menu
