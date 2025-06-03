init python:
    def _r46725_action(gsm):
        gsm.inc_exp(250)
    def _r46728_action(gsm):
        gsm.inc_exp(250)
    def _r46733_action(gsm):
        gsm.set_has_copper_earring_closed(False)
        gsm.set_has_copper_earring_opened(True)

init python:
    def _r46725_condition(gsm):
        return gsm.get_know_copper_earring_secret()
    def _r46728_condition(gsm):
        return gsm.get_know_copper_earring_secret()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DCOPEARC.DLG
# Starts:    copearc_s0
# ###


label copearc_init:
    return


label copearc_dispose:
    jump show_graphics_menu


# s0 # say46723
label copearc_s0:  # from -
    call copearc_init
    teller 'Эта медная серьга на вид невероятно древняя. Похоже, она предназначена для ношения, но у нее нет ничего, что позволило бы прицепить ее к твоему уху. Тем не менее, на внутренней поверхности серьги есть несколько странных выемок.'

    menu:
        'Осмотреть выемки.':
            # r0 # reply46724
            jump copearc_s1
        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби «79».' if _r46725_condition(gsm):
            # r1 # reply46725
            $ _r46725_action(gsm)
            jump copearc_s2
        'Отложить серьгу.':
            # r2 # reply46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1:  # from 0.0
    teller 'Выемки равномерно распределены по внутренней поверхности серьги; при более детальном изучении они начинают напоминать небольшие клыки. Они определенно кем-то сделаны, но для чего — непонятно.'

    menu:
        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби #79.' if _r46728_condition(gsm):
            # r3 # reply46728
            $ _r46728_action(gsm)
            jump copearc_s2
        'Отложить серьгу.':
            # r4 # reply46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2:  # from 0.1 1.0
    teller 'Ты помещаешь ноготь в третью выемку сверху. При этом раздается щелчок, и верхняя часть серьги раскрывается. Теперь ты можешь ее носить, но это еще не все: похоже, внутри у нее имеется тайник.'

    menu:
        'Потрясти серьгу: может, что-нибудь выпадет.':
            # r5 # reply46731
            jump copearc_s3


# s3 # say46732
label copearc_s3:  # from 2.0
    teller 'Ты трясешь серьгу, но внутри ничего нет. Что бы там ни было раньше, теперь там ничего нет.'

    menu:
        'Отложить серьгу.':
            # r6 # reply46733
            $ _r46733_action(gsm)
            jump copearc_dispose
