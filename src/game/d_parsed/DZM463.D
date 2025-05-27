def _r6485_condition():
    return not gsm.once_tracked('zombie_chaotic')
def _r6485_action():
    gsm.dec_once_law('zombie_chaotic')
def _r6488_condition():
    return gsm.once_tracked('zombie_chaotic')
def _r6489_condition():
    return gsm.get_vaxis_exposed()
def _r6490_condition():
    return gsm.get_can_speak_with_dead()

EXIT = -1

# from -
DialogStateBuilder('DZM463.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 463, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say6484') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM463.D_s1', 'r', 'reply6485').with_condition(lambda: _r6485_condition()).with_action(lambda: _r6485_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM463.D_s1', 'r', 'reply6488').with_condition(lambda: _r6488_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM463.D_s1', 'r', 'reply6489').with_condition(lambda: _r6489_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM463.D_s2', 'r', 'reply6490').with_condition(lambda: _r6490_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6491').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6492').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM463.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6486') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6493').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM463.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6487') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6494').with_action(lambda: _dispose()) \
    .done()