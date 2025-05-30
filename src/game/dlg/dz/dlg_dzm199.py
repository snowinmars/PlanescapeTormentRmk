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
    _show('dzm199_img default', center_right_down)
def _dispose():
    _hide('dzm199_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r34976_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34976_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r34979_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r34980_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r34981_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM199.DLG
def dlg_dzm199(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm199        = renpy.store.characters['dzm199']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM199.D_s0
    DialogStateBuilder() \
    .state('DZM199.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть.", 's0', 'say34975').with_action(lambda: _init(gsm)) \
            .line(teller, "На его лбу выгравирован номер «199»; его губы сшиты.", 's0', 'say34975') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM199.D_s1', 'r0', 'reply34976').with_condition(lambda: _r34976_condition(gsm)).with_action(lambda: _r34976_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM199.D_s1', 'r1', 'reply34979').with_condition(lambda: _r34979_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM199.D_s1', 'r2', 'reply34980').with_condition(lambda: _r34980_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM199.D_s2', 'r3', 'reply34981').with_condition(lambda: _r34981_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34984').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r5', 'reply34985').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM199.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say34977') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM199.D_s2', 'r3', 'reply34981').with_condition(lambda: _r34981_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34984').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r6', 'reply34978').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM199.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34982') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM199.D_s1', 'r2', 'reply34980').with_condition(lambda: _r34980_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply34984').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r7', 'reply34983').with_action(lambda: _dispose()) \
        .push(manager)
