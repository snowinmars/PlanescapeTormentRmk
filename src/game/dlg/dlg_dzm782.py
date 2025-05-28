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
def _r99999999_3_action(gsm):
    gsm.set_has_intro_key(True)
def _r24713_condition(gsm):
    return not gsm.get_has_intro_key()
def _r24714_condition(gsm):
    return gsm.get_has_intro_key()
def _r24709_condition(gsm):
    return gsm.get_in_party_morte() \
    and not gsm.get_has_intro_key()
def _r24712_condition(gsm):
    return not gsm.get_in_party_morte() \
    and not gsm.get_has_intro_key()
###

# DLG/DZM782.DLG
def dlg_dzm782(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm782        = renpy.store.characters['dzm782']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM782.D_s0
    DialogStateBuilder().state('DZM782.D_s0', '# from 34.0 // # Manually checked EXTENDS ~DMORTE1~ : 34') \
        .with_npc_lines() \
            .line(teller, "Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом.", 's0', 'say24708').with_action(lambda: _init(gsm)) \
            .line(teller, "На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24708') \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", 'DMORTE1.D_s34', 'r0', 'reply24709').with_condition(lambda: _r24709_condition(gsm)) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM782.D_s1', 'r1', 'reply24712').with_condition(lambda: _r24712_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM782.D_s2', 'r2', 'reply24713').with_condition(lambda: _r24713_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DZM782.D_s2', 'r3', 'reply24714').with_condition(lambda: _r24713_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r3_', 'reply24714').with_condition(lambda: _r24714_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r4', 'reply24717').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM782.D_s1', '# from 0.1') \
        .with_npc_lines() \
            .line(teller, "Труп не отвечает.", 's1', 'say24710') \
        .with_responses() \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM782.D_s2', 'r2', 'reply24713').with_condition(lambda: _r24713_condition(gsm)) \
            .response("Тогда неважно. Прощай.", EXIT, 'r5', 'reply24711').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply42304').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM782.D_s2', '# from 0.2 0.3') \
        .with_npc_lines() \
            .line(teller, "Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой.", 's2', 'say24715') \
        .with_responses() \
            .response("Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.", 'DZM782.D_s99999999_2', 'r7', 'reply24716') \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply42305').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM782.D_s99999999_2', '-') \
        .with_npc_lines() \
            .line(teller, 'Я дёргаю ключ, но пальцы трупа держат его мёртвой хваткой.', '-', '-') \
            .line(teller, "Чтобы взять ключ, мне придется сломать его руку.", 's2', 'say24715') \
        .with_responses() \
            .response("Сломать руку трупа.", 'DZM782.D_s99999999_3', '-', '-') \
    .push(manager)

    DialogStateBuilder() \
    .state('DZM782.D_s99999999_3', '-') \
        .with_npc_lines() \
            .line(teller, 'С лёгким звуком ключ оказывается в моих руках.', 'r99999999_3', '-').with_action(lambda: _r99999999_3_action(gsm)) \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply42305').with_action(lambda: _dispose()) \
    .push(manager)

    DialogStateBuilder() \
    .state('DMORTE1.D_s34', '# from - // # Manually checked EXTENDS ~DZM782~ : 2') \
        .with_npc_lines() \
            .line(morte, "Кажется, просителю повезло, шеф. Смотри… у него в руке ключ.", 's34', 'say42306') \
        .with_responses() \
            .response("(...)", 'DZM782.D_s2', '-', '-') \
    .push(manager)
