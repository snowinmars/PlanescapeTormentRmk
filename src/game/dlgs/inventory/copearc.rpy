init 10 python in copearc:
    from dlgs.inventory.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DCOPEARC.DLG
# ###


label start_copper_earring_closed_talk:
    jump copearc_s0
label copearc_init:
    show copearc_img default at center
    return
label copearc_dispose:
    hide copearc_img
    jump show_graphics_menu


# s0 # say46723
label copearc_s0:  # from - # IF ~  True()
    call copearc_init
    teller 'Эта медная серьга на вид невероятно древняя. Похоже, она предназначена для ношения, но у нее нет ничего, что позволило бы прицепить ее к твоему уху. Тем не менее, на внутренней поверхности серьги есть несколько странных выемок.'

    menu:
        'Осмотреть выемки.':
            # r0 # reply46724
            jump copearc_s1
        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби «79».' if copearcLogic.r46725_condition():
            # r1 # reply46725
            $ copearcLogic.r46725_action()
            jump copearc_s2
        'Отложить серьгу.':
            # r2 # reply46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1:  # from 0.0
    teller 'Выемки равномерно распределены по внутренней поверхности серьги; при более детальном изучении они начинают напоминать небольшие клыки. Они определенно кем-то сделаны, но для чего — непонятно.'

    menu:
        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби #79.' if copearcLogic.r46728_condition():
            # r3 # reply46728
            $ copearcLogic.r46728_action()
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
            $ copearcLogic.r46733_action()
            jump copearc_dispose
