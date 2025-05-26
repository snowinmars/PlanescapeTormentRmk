import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel,
    change_law_once,
    changed_law_once
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
    renpy.exports.show("bg mourge1")
    _show('dzm475_img default', center_right_down)
def _dispose():
    _hide('dzm475_img')
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
def _r6587_condition():
    return not changed_law_once('zombie_chaotic')
def _r6587_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6588_condition():
    return changed_law_once('zombie_chaotic')
def _r6589_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6590_condition():
    return current_global_settings()['can_speak_with_dead']
###

# DLG/DZM475.DLG
def dlg_dzm475(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm475        = renpy.store.characters['dzm475']
    EXIT          = -1

    # Starts: DZM475.D_s0
    DialogStateBuilder() \
    .state('DZM475.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе.", 's0', 'say6584').with_action(lambda: _init()) \
            .line(teller, "На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.", 's0', 'say6584') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM475.D_s1', 'r0', 'reply6587').with_condition(lambda: _r6587_condition()).with_action(lambda: _r6587_action()) \
            .response("Итак… что тут у нас интересного?", 'DZM475.D_s1', 'r1', 'reply6588').with_condition(lambda: _r6588_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM475.D_s1', 'r2', 'reply6589').with_condition(lambda: _r6589_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM475.D_s2', 'r3', 'reply6590').with_condition(lambda: _r6590_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6591').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6592').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM475.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6585') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM475.D_s2', 'r3', 'reply6590').with_condition(lambda: _r6590_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6591').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6593').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM475.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6586') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM475.D_s1', 'r2', 'reply6589').with_condition(lambda: _r6589_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6591').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6594').with_action(lambda: _dispose()) \
        .push(manager)