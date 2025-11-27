init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.inventory.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr 'Эта медная серьга на вид невероятно древняя. Похоже, она предназначена для ношения, но у нее нет ничего, что позволило бы прицепить ее к твоему уху.{#copearc_s0_1}'
    nr 'Тем не менее, на внутренней поверхности серьги есть несколько странных выемок.{#copearc_s0_2}'

    menu:
        'Осмотреть выемки.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби #79.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'Отложить серьгу.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr 'Выемки равномерно распределены по внутренней поверхности серьги; при более детальном изучении они начинают напоминать небольшие клыки.{#copearc_s1_1}'
    nr 'Они определенно кем-то сделаны, но для чего — непонятно.{#copearc_s1_2}'

    menu:
        'Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби #79.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'Отложить серьгу.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr 'Ты помещаешь ноготь в третью выемку сверху. При этом раздается щелчок, и верхняя часть серьги раскрывается.{#copearc_s2_}'
    nr 'Теперь ты можешь ее носить, но это еще не все: похоже, внутри у нее имеется тайник.{#copearc_s2_}'

    menu:
        'Потрясти серьгу: может, что-нибудь выпадет.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr 'Ты трясешь серьгу, но внутри ничего нет. Что бы там ни было раньше, теперь там ничего нет.{#copearc_s3_1}'

    menu:
        'Отложить серьгу.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
