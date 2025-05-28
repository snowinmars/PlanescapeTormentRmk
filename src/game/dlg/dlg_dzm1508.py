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
    gsm.set_location('morgue1')
    renpy.exports.show("bg mourge1")
    _show('dzm1508_img default', center_right_down)
def _dispose():
    _hide('dzm1508_img')
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
def _r46746_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r46746_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r46749_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r46750_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r46751_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM1508.DLG
def dlg_dzm1508(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm1508       = renpy.store.characters['dzm1508']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    DialogStateBuilder().state('DZM1508.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной.", 's0', 'say46745').with_action(lambda: _init(gsm)) \
            .line(teller, "Номер «1508» вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.", 's0', 'say46745') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r0', 'reply46746').with_condition(lambda: _r46746_condition(gsm)).with_action(lambda: _r46746_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r1', 'reply46749').with_condition(lambda: _r46749_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1508.D_s1', 'r2', 'reply46750').with_condition(lambda: _r46750_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1508.D_s2', 'r3', 'reply46751').with_condition(lambda: _r46751_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply46754').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply46755').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1508.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say46747') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply46748').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1508.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say46752') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply46753').with_action(lambda: _dispose()) \
        .push(manager)