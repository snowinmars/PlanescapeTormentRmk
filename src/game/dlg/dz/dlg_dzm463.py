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
    gsm.set_location('mortuary1')
    renpy.exports.show("bg mortuary1")
    _show('dzm463_img default', center_right_down)
def _dispose():
    _hide('dzm463_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r6485_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6485_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6488_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6489_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6490_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM463.DLG
def dlg_dzm463(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm463        = renpy.store.characters['dzm463']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM463.D_s0
    DialogStateBuilder() \
    .state('DZM463.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «463», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say6484').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM463.D_s1', 'r0', 'reply6485').with_condition(lambda: _r6485_condition(gsm)).with_action(lambda: _r6485_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM463.D_s1', 'r1', 'reply6488').with_condition(lambda: _r6488_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM463.D_s1', 'r2', 'reply6489').with_condition(lambda: _r6489_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM463.D_s2', 'r3', 'reply6490').with_condition(lambda: _r6490_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6491').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6492').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM463.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6486') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM463.D_s2', 'r3', 'reply6490').with_condition(lambda: _r6490_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6491').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6493').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM463.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6487') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM463.D_s1', 'r2', 'reply6489').with_condition(lambda: _r6489_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6491').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6494').with_action(lambda: _dispose()) \
        .push(manager)
