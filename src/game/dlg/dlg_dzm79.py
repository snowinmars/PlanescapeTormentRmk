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
    gsm.set_location('morgue2')
    renpy.exports.show("bg mourge1")
    _show('dzm79_img default', center_right_down)
def _dispose():
    _hide('dzm79_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
def _check_char_prop_gt(who, gtValue, prop):
    return True
def _check_char_prop_lt(who, gtValue, prop):
    return True
###
###
def _r34943_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r34946_condition(gsm):
    return not gsm.get_know_copper_earring_secret()
def _r34946_action(gsm):
    gsm.set_know_copper_earring_secret(True)
def _r34947_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r34948_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r64279_condition(gsm):
    return not gsm.get_has_copper_earring()
def _r64279_action(gsm):
    gsm.update_journal('64536')
def _r64280_condition(gsm):
    return gsm.get_has_copper_earring()
def _r64280_action(gsm):
    gsm.update_journal('64537')
###

# DLG/DZM79.DLG
def dlg_dzm79(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm79         = renpy.store.characters['dzm79']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM79.D_s0
    DialogStateBuilder() \
    .state('DZM79.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Голова трупа была отрублена, а после наспех пришита назад.", 's0', 'say34942').with_action(lambda: _init(gsm)) \
            .line(teller, "Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место.", 's0', 'say34942') \
            .line(teller, "На виске вырезан номер «79», рядом с неровным зубчатым кругом, выжженным на лбу.", 's0', 'say34942') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM79.D_s1', 'r0', 'reply34943').with_action(lambda: _r34943_action(gsm)) \
            .response("Осмотреть зубчатый круг.", 'DZM79.D_s3', 'r1', 'reply34946').with_condition(lambda: _r34946_condition(gsm)).with_action(lambda: _r34946_action(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM79.D_s1', 'r2', 'reply34947').with_condition(lambda: _r34947_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM79.D_s2', 'r3', 'reply34948').with_condition(lambda: _r34948_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34951').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply34952').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM79.D_s1', '# from 0.0 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say34944') \
        .with_responses() \
            .response("Осмотреть зубчатый круг.", 'DZM79.D_s3', 'r1', 'reply34946').with_condition(lambda: _r34946_condition(gsm)).with_action(lambda: _r34946_action(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM79.D_s2', 'r3', 'reply34948').with_condition(lambda: _r34948_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34951').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply34945').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM79.D_s2', '# from 0.3 3.0 3.1') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34949') \
        .with_responses() \
            .response("Осмотреть зубчатый круг.", 'DZM79.D_s3', 'r1', 'reply34946').with_condition(lambda: _r34946_condition(gsm)).with_action(lambda: _r34946_action(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM79.D_s1', 'r2', 'reply34947').with_condition(lambda: _r34947_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34951').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply34950').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM79.D_s3', '# from 0.1') \
        .with_npc_lines() \
            .line(teller, "Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак.", 's3', 'say64278') \
            .line(teller, "Ты замечаешь, что в одной из впадин между внутренними зубцами есть маленький треугольник, как будто у него есть какое-то особое назначение.", 's3', 'say64278') \
        .with_responses() \
            .response("Хм-м. Интересно… что здесь делает эта отметина, а, труп?", 'DZM79.D_s2', 'r8', 'reply64279').with_condition(lambda: _r64279_condition(gsm)).with_action(lambda: _r64279_action(gsm)) \
            .response("Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…", 'DZM79.D_s2', 'r9', 'reply64280').with_condition(lambda: _r64280_condition(gsm)).with_action(lambda: _r64280_action(gsm)) \
        .push(manager)
