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
    _show('dzm985_img default', center_right_down)
def _dispose():
    _hide('dzm985_img')
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
def _r45516_condition():
    return current_global_settings()['in_party_morte']
def _r45516_action():
    change_law_once(-1, 'chaotic_zm985_1')
    change_good_once(-1, 'evil_zm985_1')
def _r45517_condition():
    return not current_global_settings()['in_party_morte']
def _r45517_action():
    change_law_once(-1, 'chaotic_zm985_1')
    change_good_once(-1, 'evil_zm985_1')
def _r45518_condition():
    return current_global_settings()['in_party_morte']
def _r45518_action():
    change_law_once(1, 'lawful_zm985_1')
    change_good_once(1, 'good_zm985_1')
def _r45519_condition():
    return not current_global_settings()['in_party_morte']
def _r45519_action():
    change_law_once(1, 'lawful_zm985_1')
    change_good_once(1, 'good_zm985_1')
def _r45520_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45521_condition():
    return current_global_settings()['can_speak_with_dead']
def _r45532_condition():
    return not changed_law_once('zombie_chaotic')
def _r45532_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45533_condition():
    return changed_law_once('zombie_chaotic')
def _r45534_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45535_condition():
    return current_global_settings()['can_speak_with_dead']
###

# DLG/DZM985.DLG
def dlg_dzm985(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm985        = renpy.store.characters['dzm985']
    EXIT          = -1

    DialogStateBuilder() \
    .state('DZM985.D_s0', '# from - // # Check EXTENDS ~DMORTE~ : 482') \
        .with_npc_lines() \
            .line(teller, "Этот труп, номер «985», встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью.", 's0', 'say45515') \
            .line(teller, "Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.", 's0', 'say45515') \
        .with_responses() \
            .response("Толкнуть труп.", EXIT, 'r0', 'reply45516').with_condition(lambda: _r45516_condition()).with_action(lambda: _r45516_action()) \
            .response("Толкнуть труп.", 'DZM985.D_s3', 'r1', 'reply45517').with_condition(lambda: _r45517_condition()).with_action(lambda: _r45517_action()) \
            .response("Помочь трупу остаться в равновесии.", 'DZM985.D_s4', 'r2', 'reply45518').with_condition(lambda: _r45518_condition()).with_action(lambda: _r45518_action()) \
            .response("Помочь трупу остаться в равновесии.", 'DZM985.D_s6', 'r3', 'reply45519').with_condition(lambda: _r45519_condition()).with_action(lambda: _r45519_action()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM985.D_s1', 'r4', 'reply45520').with_condition(lambda: _r45520_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM985.D_s2', 'r5', 'reply45521').with_condition(lambda: _r45521_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply45522').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply45523').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s1', '# from 0.4 5.0 5.1 5.2') \
        .with_npc_lines() \
            .line(teller, "Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.", 's1', 'say45524') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply45525').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s2', '# from 0.5 5.3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say45526') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply45527').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s3', '# from 0.1 6.0') \
        .with_npc_lines() \
            .line(teller, "В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево.", 's3', 'say45528') \
            .line(teller, "Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин.", 's3', 'say45528') \
            .line(teller, "К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке смирно.", 's3', 'say45528') \
            .line(teller, "Спустя мгновенье, нога падает с сочным гулким ударом.", 's3', 'say45528') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r10', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s4', '# from 0.2 // # Check EXTENDS ~DMORTE~ : 482') \
        .with_npc_lines() \
            .line(teller, "Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…", 's4', 'say45530') \
        .with_responses() \
                .response("Оставить труп в покое.", EXIT, 'r11', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s5', '# from -') \
        .with_npc_lines() \
            .line(teller, "Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.", 's5', 'say45531') \
        .with_responses() \
            .response("Извини, что сбил тебя с ног. Я случайно.", 'DZM985.D_s1', 'r12', 'reply45532').with_condition(lambda: _r45532_condition()).with_action(lambda: _r45532_action()) \
            .response("Извини, что сбил тебя с ног. Я случайно.", 'DZM985.D_s1', 'r13', 'reply45533').with_condition(lambda: _r45533_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM985.D_s1', 'r14', 'reply45534').with_condition(lambda: _r45534_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM985.D_s2', 'r15', 'reply45535').with_condition(lambda: _r45535_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r16', 'reply45536').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r17', 'reply45537').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s6', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Ты тянешься к левой руке трупа, желая помочь ему устоять.", 's6', 'say45538') \
            .line(teller, "Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…", 's6', 'say45538') \
        .with_responses() \
            .response("Ой-ой…", 'DZM985.D_s3', 'r18', 'reply45539') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM985.D_s7', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута.", 's7', 'say64205') \
            .line(teller, "Она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.", 's7', 'say64205') \
        .with_responses() \
            .response("Хм-м. Думаю, я смогу найти применение этой руке…", EXIT, 'r19', 'reply64206').with_action(lambda: _dispose()) \
        .push(manager)