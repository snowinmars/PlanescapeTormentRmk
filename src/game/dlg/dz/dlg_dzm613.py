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
    _show('dzm613_img default', center_right_down)
    gsm.set_meet_dzm613(True)
def _dispose():
    _hide('dzm613_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r6543_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6543_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6544_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6545_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6546_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM613.DLG
def dlg_dzm613(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm613        = renpy.store.characters['dzm613']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM613.D_s0
    DialogStateBuilder() \
    .state('DZM613.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры «613», но на коже между «1» и «3» виден большой пробел шириной с палец.", 's0', 'say6540').with_action(lambda: _init(gsm)) \
            .line(teller, "Приглядевшись, ты с трудом различаешь вырезанную «2».", 's0', 'say6540') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r0', 'reply6543').with_condition(lambda: _r6543_condition(gsm)).with_action(lambda: _r6543_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r1', 'reply6544').with_condition(lambda: _r6544_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM613.D_s1', 'r2', 'reply6545').with_condition(lambda: _r6545_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM613.D_s2', 'r3', 'reply6546').with_condition(lambda: _r6546_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6547').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6548').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM613.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6541') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM613.D_s2', 'r3', 'reply6546').with_condition(lambda: _r6546_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6547').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6549').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM613.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6542') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM613.D_s1', 'r2', 'reply6545').with_condition(lambda: _r6545_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6547').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6550').with_action(lambda: _dispose()) \
        .push(manager)
