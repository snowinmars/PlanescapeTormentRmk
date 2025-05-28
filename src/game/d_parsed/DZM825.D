def _r24565_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key() return gsm.get_in_party_morte()
def _r24568_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key() return not gsm.get_in_party_morte()
def _r24569_condition(gsm):
    return not gsm.get_mortuary_walkthrough()
def _r24570_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24573_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24574_condition(gsm):
    return not gsm.get_mortuary_walkthrough() return not gsm.get_has_intro_key()
def _r42312_condition(gsm):
    return gsm.get_in_party_morte()
def _r42313_condition(gsm):
    return not gsm.get_in_party_morte()

gsm           = renpy.store.global_settings_manager

EXIT          = -1

######
# Check EXTENDS ~DMORTE1~ : 31
######
DialogStateBuilder().state('DZM825.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер 825.", 's0', 'say24564') \
    .with_responses() \
        .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r', 'reply24565').with_condition(lambda: _r24565_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Я ищу ключ… быть может, он у тебя?", 'DZM825.D_s1', 'r', 'reply24568').with_condition(lambda: _r24568_condition(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM825.D_s1', 'r', 'reply24569').with_condition(lambda: _r24569_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM825.D_s1', 'r', 'reply24570').with_condition(lambda: _r24570_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM825.D_s2', 'r', 'reply24573').with_condition(lambda: _r24573_condition(gsm)) \
        .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM825.D_s3', 'r', 'reply24574').with_condition(lambda: _r24574_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply42308').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42309').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM825.D_s1', '# from 0.1 0.2 0.3 3.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп уставился в землю и не отвечает.", 's1', 'say24566') \
    .with_responses() \
        .response("Тогда неважно. Прощай.", EXIT, 'r', 'reply24567').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42310').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM825.D_s2', '# from 0.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24571') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24572').with_action(lambda: _dispose()) \
    .push(manager)

######
# Check EXTENDS ~DMORTE1~ : 31
######
DialogStateBuilder().state('DZM825.D_s3', '# from 0.5') \
    .with_npc_lines() \
        .line(SPEAKER, "У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.", 's3', 'say42311') \
    .with_responses() \
        .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", EXIT, 'r', 'reply42312').with_condition(lambda: _r42312_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM825.D_s1', 'r', 'reply42313').with_condition(lambda: _r42313_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply42314').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42315').with_action(lambda: _dispose()) \
    .push(manager)