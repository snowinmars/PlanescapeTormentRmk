init python:
    def _r47014_action(gsm):
        gsm.set_has_logpage(True)
        gsm.set_has_dzm1664_page(True)


init python:
    def _r47003_condition(gsm):
        return not gsm.get_has_dzm1664_page()
    def _r47004_condition(gsm):
        return gsm.get_has_dzm1664_page()
    def _r47005_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r47006_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM1664.DLG
# ###


label dzm1664_init:
    return


label dzm1664_dispose:
    jump show_graphics_menu


# s0 # say47002
label dzm1664_s0:  # from 5.0 # IF ~  True()
    SPEAKER 'Этот громадный труп тихо стоит в углу комнаты, лицом к стене. Похоже, раньше это был крупный мужчина в расцвете лет и, судя по состоянию тела, умер он совсем недавно. На лбу виден недавно вышитый номер 1664. Кажется, труп служит в качестве библиотекаря: в руках он несет огромную стопку книг.'

    menu:
        'Осмотреть книги.' if _r47003_condition(gsm):
            # r0 # reply47003
            jump dzm1664_s3
        'Снова осмотреть книги.' if _r47004_condition(gsm):
            # r1 # reply47004
            jump dzm1664_s6
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r47005_condition(gsm):
            # r2 # reply47005
            jump dzm1664_s1
        'Использовать на трупе свою способность История костей.' if _r47006_condition(gsm):
            # r3 # reply47006
            jump dzm1664_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply47007
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r5 # reply47008
            jump show_graphics_menu


# s1 # say47009
label dzm1664_s1:  # from 0.2 6.0
    SPEAKER 'Зомби безучастно пялится в стену.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply47010
            jump show_graphics_menu


# s2 # say47011
label dzm1664_s2:  # from 0.3
    SPEAKER 'Труп даже не шевелится. Несмотря на недавнюю смерть, похоже, что он не сможет ответить на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply47012
            jump show_graphics_menu


# s3 # say47013
label dzm1664_s3:  # from 0.0
    SPEAKER 'Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Тем не менее, просматривая их, ты обнаруживаешь вырванную страницу между двумя книгами. Неожиданно у тебя возникает ощущение, что кто-то поместил ее сюда, чтобы спрятать.'

    menu:
        'Взять страницу.':
            # r8 # reply47014
            $ _r47014_action(gsm)
            jump dzm1664_s4


# s4 # say47015
label dzm1664_s4:  # from 3.0
    SPEAKER 'Кажется, эта страница не из бухгалтерских книг… похоже, она из какого-то регистрационного журнала. Корешок ровный, как будто страницу срезали ножом, и ты подозреваешь, что ее удалили специально.'

    menu:
        'Прочитать ее.':
            # r9 # reply47016
            jump dzm1664_s5


# s5 # say47017
label dzm1664_s5:  # from 4.0
    SPEAKER 'Ты бегло осматриваешь страницу… это список тел, доставленных в Морг и зарегистрированных в Приемной комнате. Все записи принадлежат недавно прибывшим телам.'

    menu:
        'Снова осмотреть зомби.':
            # r10 # reply47018
            jump dzm1664_s0
        'Взять страницу с собой и уйти.':
            # r11 # reply47019
            jump show_graphics_menu


# s6 # say47021
label dzm1664_s6:  # from 0.1
    SPEAKER 'Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Ты снова просматриваешь тексты, но больше ничего не находишь.'

    menu:
        'И как это тебя угораздило стать библиотекарем? Другие места были заняты?':
            # r12 # reply47022
            jump dzm1664_s1
        'Оставить зомби в покое.':
            # r13 # reply47023
            jump show_graphics_menu
