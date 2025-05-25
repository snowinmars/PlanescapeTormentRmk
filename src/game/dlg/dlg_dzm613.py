import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel
)
from settings.settings_morgue import (
    current_morgue_settings
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init():
    travel('morgue1')
    _show('dzm613_img default', center_right_down)
def _dispose():
    _hide('dzm613_img')
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
def _r6543_condition():
    return not changed_law_once('zombie_chaotic')
def _r6543_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6544_condition():
    return changed_law_once('zombie_chaotic')
def _r6545_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6546_condition():
    return current_global_settings()['can_speak_with_dead']
###

# DLG/DZM613.DLG
def dlg_dzm613():
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm613         = renpy.store.characters['dzm613']
    EXIT = -1

    # from -
    DialogStateBuilder('DZM613.D_s0') \
        .with_npc_lines() \
            .line(teller, "На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры «613», но на коже между «1» и «3» виден большой пробел шириной с палец.", 's0', 'say6540') \
            .line(teller, "Приглядевшись, ты с трудом различаешь вырезанную «2».", 's0', 'say6540') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r0', 'reply6543').with_condition(lambda: _r6543_condition()).with_action(lambda: _r6543_action()) \
            .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r1', 'reply6544').with_condition(lambda: _r6544_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM613.D_s1', 'r2', 'reply6545').with_condition(lambda: _r6545_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM613.D_s2', 'r3', 'reply6546').with_condition(lambda: _r6546_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6547').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6548').with_action(lambda: _dispose()) \
        .done()

    # from 0.0 0.1 0.2
    DialogStateBuilder('DZM613.D_s1') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6541') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6549').with_action(lambda: _dispose()) \
        .done()

    # from 0.3
    DialogStateBuilder('DZM613.D_s2') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6542') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6550').with_action(lambda: _dispose()) \
        .done()