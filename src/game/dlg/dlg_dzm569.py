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
    gsm.set_meet_dzm569(True)
    _show('dzm569_img default', center_right_down)
def _dispose():
    _hide('dzm569_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm569(gsm):
    gsm.set_dead_dzm569(True)
###
def _r24576_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key() \
    and gsm.get_in_party_morte()
def _r24579_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key() \
    and not gsm.get_in_party_morte()
def _r24580_condition(gsm):
    return not gsm.get_mortuary_walkthrough()
def _r24581_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24584_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24585_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key()
###

# DLG/DZM569.DLG
def dlg_dzm569(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm569        = renpy.store.characters['dzm569']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM569.D_s0
    DialogStateBuilder().state('DZM569.D_s0', '# from - // # Manually checked EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.", 's0', 'say24575').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", 'DMORTE1.D_s31', 'r0', 'reply24576').with_condition(lambda: _r24576_condition(gsm)) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM569.D_s1', 'r1', 'reply24579').with_condition(lambda: _r24579_condition(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM569.D_s1', 'r2', 'reply24580').with_condition(lambda: _r24580_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM569.D_s1', 'r3', 'reply24581').with_condition(lambda: _r24581_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM569.D_s2', 'r4', 'reply24584').with_condition(lambda: _r24584_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM569.D_s3', 'r5', 'reply24585').with_condition(lambda: _r24585_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42290').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r7', 'reply42291').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM569.D_s1', '# from 0.1 0.2 0.3 3.1') \
        .with_npc_lines() \
            .line(teller, "Труп молчаливо уставился на тебя.", 's1', 'say24577') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM569.D_s2', 'r4', 'reply24584').with_condition(lambda: _r24584_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM569.D_s3', 'r5', 'reply24585').with_condition(lambda: _r24585_condition(gsm)) \
            .response("Тогда неважно. Прощай.", EXIT, 'r8', 'reply24578').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r9', 'reply42292').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM569.D_s2', '# from 0.4') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24582') \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", 'DMORTE1.D_s31', 'r0', 'reply24576').with_condition(lambda: _r24576_condition(gsm)) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM569.D_s1', 'r1', 'reply24579').with_condition(lambda: _r24579_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM569.D_s1', 'r3', 'reply24581').with_condition(lambda: _r24581_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM569.D_s3', 'r5', 'reply24585').with_condition(lambda: _r24585_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42290').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r10', 'reply24583').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM569.D_s3', '# from 0.5 // # Manually checked EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком.", 's3', 'say42293') \
        .with_responses() \
            .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DMORTE1.D_s31', 'r11', 'reply42294').with_condition(lambda: _r24576_condition(gsm)) \
            .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM569.D_s1', 'r12', 'reply42295').with_condition(lambda: _r42295_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM569.D_s1', 'r3', 'reply24581').with_condition(lambda: _r24581_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r13', 'reply42296').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r14', 'reply42297').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE1.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.", 's0', 'say24575') \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_dzm569(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)