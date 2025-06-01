import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init(gsm):
    return
def _dispose():
    return
###
###
def _r46725_condition(gsm):
    return gsm.get_know_copper_earring_secret()
def _r46728_condition(gsm):
    return gsm.get_know_copper_earring_secret()
def _r46733_action(gsm):
    gsm.set_has_copper_earring_closed(False)
    gsm.set_has_copper_earring_opened(True)
    _dispose()
###

# DLG/COPEARC.DLG
def dlg_copearc(manager):
    teller        = renpy.store.characters['teller']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: COPEARC.D_s0
    DialogStateBuilder().state('COPEARC.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Эта медная серьга на вид невероятно древняя. Похоже, она предназначена для ношения, но у нее нет ничего, что позволило бы прицепить ее к твоему уху.", 's0', 'say46723').with_action(lambda: _init(gsm)) \
            .line(teller, "Тем не менее, на внутренней поверхности серьги есть несколько странных выемок.", 's0', 'say46723') \
        .with_responses() \
            .response("Осмотреть выемки.", 'COPEARC.D_s1', 'r0', 'reply46724') \
            .response("Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби «79».", 'COPEARC.D_s2', 'r1', 'reply46725').with_condition(lambda: _r46725_condition(gsm)) \
            .response("Отложить серьгу.", EXIT, 'r2', 'reply46726').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('COPEARC.D_s1', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Выемки равномерно распределены по внутренней поверхности серьги; при более детальном изучении они начинают напоминать небольшие клыки.", 's1', 'say46727') \
            .line(teller, "Они определенно кем-то сделаны, но для чего — непонятно.", 's1', 'say46727') \
        .with_responses() \
            .response("Вставить ноготь в выемку, указанную треугольником в зубчатом круге, который ты видел на лбу у зомби «79».", 'COPEARC.D_s2', 'r3', 'reply46728').with_condition(lambda: _r46728_condition(gsm)) \
            .response("Отложить серьгу.", EXIT, 'r4', 'reply46729').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('COPEARC.D_s2', '# from 0.1 1.0') \
        .with_npc_lines() \
            .line(teller, "Ты помещаешь ноготь в третью выемку сверху. При этом раздается щелчок, и верхняя часть серьги раскрывается.", 's2', 'say46730') \
            .line(teller, "Теперь ты можешь ее носить, но это еще не все: похоже, внутри у нее имеется тайник.", 's2', 'say46730') \
        .with_responses() \
            .response("Потрясти серьгу: может, что-нибудь выпадет.", 'COPEARC.D_s3', 'r5', 'reply46731') \
        .push(manager)

    DialogStateBuilder().state('COPEARC.D_s3', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Ты трясешь серьгу, но внутри ничего нет. Что бы там ни было раньше, теперь там ничего нет.", 's3', 'say46732') \
        .with_responses() \
            .response("Отложить серьгу.", EXIT, 'r6', 'reply46733').with_action(lambda: _r46733_action(gsm)) \
        .push(manager)