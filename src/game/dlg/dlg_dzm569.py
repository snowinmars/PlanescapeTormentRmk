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
    _show('dzm569_img default', center_right_down)
def _dispose():
    _hide('dzm569_img')
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
def _r24576_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key'] \
    and current_global_settings()['in_party_morte']
def _r24579_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key'] \
    and not current_global_settings()['in_party_morte']
def _r24580_condition():
    return not current_morgue_settings()['mortuary_walkthrough']
def _r24581_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r24584_condition():
    return current_global_settings()['can_speak_with_dead']
def _r24585_condition():
    return not current_morgue_settings()['mortuary_walkthrough'] \
    and not current_morgue_settings()['has_intro_key']
def _r42294_condition():
    return current_global_settings()['in_party_morte']
def _r42295_condition():
    return not current_global_settings()['in_party_morte']
###

# DLG/DZM569.DLG
def dlg_dzm569(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm569        = renpy.store.characters['dzm569']
    EXIT          = -1

    DialogStateBuilder() \
    .state('DZM569.D_s0', '# from - // # Check EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.", 's0', 'say24575') \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r0', 'reply24576').with_condition(lambda: _r24576_condition()).with_action(lambda: _dispose()) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM569.D_s1', 'r1', 'reply24579').with_condition(lambda: _r24579_condition()) \
            .response("Итак… что тут у нас интересного?", 'DZM569.D_s1', 'r2', 'reply24580').with_condition(lambda: _r24580_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM569.D_s1', 'r3', 'reply24581').with_condition(lambda: _r24581_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM569.D_s2', 'r4', 'reply24584').with_condition(lambda: _r24584_condition()) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM569.D_s3', 'r5', 'reply24585').with_condition(lambda: _r24585_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42290').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r7', 'reply42291').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM569.D_s1', '# from 0.1 0.2 0.3 3.1') \
        .with_npc_lines() \
            .line(teller, "Труп молчаливо уставился на тебя.", 's1', 'say24577') \
        .with_responses() \
            .response("Тогда неважно. Прощай.", EXIT, 'r8', 'reply24578').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r9', 'reply42292').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM569.D_s2', '# from 0.4') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24582') \
        .with_responses() \
            .response("Оставить зомби в покое.", EXIT, 'r10', 'reply24583').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM569.D_s3', '# from 0.5 // # Check EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком.", 's3', 'say42293') \
        .with_responses() \
            .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", EXIT, 'r11', 'reply42294').with_condition(lambda: _r42294_condition()).with_action(lambda: _dispose()) \
            .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM569.D_s1', 'r12', 'reply42295').with_condition(lambda: _r42295_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r13', 'reply42296').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r14', 'reply42297').with_action(lambda: _dispose()) \
        .push(manager)
