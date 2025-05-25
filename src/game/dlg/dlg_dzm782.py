import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    travel
)
from settings.settings_morgue import (
    pick_up_intro_key,
    ready_to_kill_dummies,
    kill_dummy,
    talk_dummy
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
    _show('dzm782_img default', center_right_down)
def _dispose():
    _hide('dzm782_img')
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
def _r24709_condition():
    return current_global_settings()['in_party_morte']
def _r24712_condition():
    return not current_global_settings()['in_party_morte']
###

# DLG/DZM782.DLG
def dlg_dzm782():
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm782        = renpy.store.characters['dzm782']
    EXIT = -1

    ######
    # Manually checked EXTENDS ~DMORTE1~ : 34
    ######
    # from -
    DialogStateBuilder('DZM782.D_s0') \
        .with_npc_lines() \
            .line(teller, "Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.", 's0', 'say24708') \
            .line(teller, "На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24708') \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r0', 'reply24709').with_condition(lambda: _r24709_condition()).with_action(lambda: _dispose()) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM782.D_s1', 'r1', 'reply24712').with_condition(lambda: _r24712_condition()) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM782.D_s2', 'r2', 'reply24713') \
            .response("Было приятно с тобой поболтать. Прощай.", 'DZM782.D_s2', 'r3', 'reply24714') \
            .response("Оставить труп в покое.", EXIT, 'r4', 'reply24717').with_action(lambda: _dispose()) \
        .done()

    # from 0.1
    DialogStateBuilder('DZM782.D_s1') \
        .with_npc_lines() \
            .line(teller, "Труп не отвечает.", 's1', 'say24710') \
        .with_responses() \
            .response("Тогда неважно. Прощай.", EXIT, 'r5', 'reply24711').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply42304').with_action(lambda: _dispose()) \
        .done()

    # from 0.2 0.3
    DialogStateBuilder('DZM782.D_s2') \
        .with_npc_lines() \
            .line(teller, "Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой.", 's2', 'say24715') \
            .line(teller, "Чтобы взять ключ, тебе придется сломать руку.", 's2', 'say24715') \
        .with_responses() \
            .response("Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.", EXIT, 'r7', 'reply24716').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply42305').with_action(lambda: _dispose()) \
        .done()