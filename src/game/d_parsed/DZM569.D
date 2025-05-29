def _r24576_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key() return gsm.get_in_party_morte()
def _r24579_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key() return not gsm.get_in_party_morte()
def _r24580_condition(gsm):
    return not gsm.get_mortuary_walkthrough()
def _r24581_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24584_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24585_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key()
def _r42294_condition(gsm):
    return gsm.get_in_party_morte()
def _r42295_condition(gsm):
    return not gsm.get_in_party_morte()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

######
# Check EXTENDS ~DMORTE1~ : 31
######
DialogStateBuilder().state('DZM569.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер 569 на открывшейся кости.", 's0', 'say24575') \
    .with_responses() \
        .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r', 'reply24576').with_condition(lambda: _r24576_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я ищу ключ… быть может, он у тебя?", 'DZM569.D_s1', 'r', 'reply24579').with_condition(lambda: _r24579_condition(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM569.D_s1', 'r', 'reply24580').with_condition(lambda: _r24580_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM569.D_s1', 'r', 'reply24581').with_condition(lambda: _r24581_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM569.D_s2', 'r', 'reply24584').with_condition(lambda: _r24584_condition(gsm)) \
        .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM569.D_s3', 'r', 'reply24585').with_condition(lambda: _r24585_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply42290').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply42291').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM569.D_s1', '# from 0.1 0.2 0.3 3.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп молчаливо уставился на тебя.", 's1', 'say24577') \
    .with_responses() \
        .response("Тогда неважно. Прощай.", EXIT, 'r', 'reply24578').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply42292').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM569.D_s2', '# from 0.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24582') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply24583').with_action(lambda: _dispose()) \
    .push(manager)

######
# Check EXTENDS ~DMORTE1~ : 31
######
DialogStateBuilder().state('DZM569.D_s3', '# from 0.5') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано… бинтами можно воспользоваться, если снять их с трупа.", 's3', 'say42293') \
    .with_responses() \
        .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", EXIT, 'r', 'reply42294').with_condition(lambda: _r42294_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM569.D_s1', 'r', 'reply42295').with_condition(lambda: _r42295_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply42296').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply42297').with_action(lambda: _dispose()) \
    .push(manager)