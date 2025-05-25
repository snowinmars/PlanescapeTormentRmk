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
    _show('dzm825_img default', center_right_down)
def _dispose():
    _hide('dzm825_img')
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
def _r24565_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key'] \
    and current_global_settings()['in_party_morte']
def _r24568_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key'] \
    and not current_global_settings()['in_party_morte']
def _r24569_condition():
    return not current_morgue_settings()['mortuary_walkthrough']
def _r24570_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r24573_condition():
    return current_global_settings()['can_speak_with_dead']
def _r24574_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key']
def _r42312_condition():
    return current_global_settings()['in_party_morte']
def _r42313_condition():
    return not current_global_settings()['in_party_morte']
###

# DLG/DZM825.DLG
def dlg_dzm825():
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm825        = renpy.store.characters['dzm825']
    EXIT = -1

    ######
    # Check EXTENDS ~DMORTE1~ : 31
    ######
    # from -
    DialogStateBuilder('DZM825.D_s0') \
        .with_npc_lines() \
            .line(teller, "Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».", 's0', 'say24564') \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r0', 'reply24565').with_condition(lambda: _r24565_condition()).with_action(lambda: _dispose()) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM825.D_s1', 'r1', 'reply24568').with_condition(lambda: _r24568_condition()) \
            .response("Итак… что тут у нас интересного?", 'DZM825.D_s1', 'r2', 'reply24569').with_condition(lambda: _r24569_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM825.D_s1', 'r3', 'reply24570').with_condition(lambda: _r24570_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM825.D_s2', 'r4', 'reply24573').with_condition(lambda: _r24573_condition()) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM825.D_s3', 'r5', 'reply24574').with_condition(lambda: _r24574_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42308').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply42309').with_action(lambda: _dispose()) \
        .done()

    # from 0.1 0.2 0.3 3.1
    DialogStateBuilder('DZM825.D_s1') \
        .with_npc_lines() \
            .line(teller, "Труп уставился в землю и не отвечает.", 's1', 'say24566') \
        .with_responses() \
            .response("Тогда неважно. Прощай.", EXIT, 'r8', 'reply24567').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply42310').with_action(lambda: _dispose()) \
        .done()

    # from 0.4
    DialogStateBuilder('DZM825.D_s2') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24571') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r10', 'reply24572').with_action(lambda: _dispose()) \
        .done()

    ######
    # Check EXTENDS ~DMORTE1~ : 31
    ######
    # from 0.5
    DialogStateBuilder('DZM825.D_s3') \
        .with_npc_lines() \
            .line(teller, "У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны.", 's3', 'say42311') \
        .with_responses() \
            .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", EXIT, 'r11', 'reply42312').with_condition(lambda: _r42312_condition()).with_action(lambda: _dispose()) \
            .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM825.D_s1', 'r12', 'reply42313').with_condition(lambda: _r42313_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r13', 'reply42314').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r14', 'reply42315').with_action(lambda: _dispose()) \
        .done()