def _r34943_action():
    DO ~gsm.dec_once_law('zombie_chaotic') ~
def _r34946_condition():
    return not gsm.get_know_copper_earring_secret()
def _r34946_action():
    DO ~know_copper_earring_secret() ~
def _r34947_condition():
    return gsm.get_vaxis_exposed()
def _r34948_condition():
    return gsm.get_can_speak_with_dead()
def _r64279_condition():
    return not gsm.get_has_copper_earring()
def _r64279_action():
    gsm.update_journal('64536')    # '64536': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. По каким-то причинам этот знак кажется мне важным, однако я не знаю, почему.~ '
def _r64280_condition():
    return gsm.get_has_copper_earring()
def _r64280_action():
    gsm.update_journal('64537')    # '64537': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. Символ по виду напоминает старую медную сережку, которую я нашел в юго-восточной препараторской — возможно, они как-то связаны между собой.~ '

EXIT = -1

# from -
DialogStateBuilder('DZM79.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Голова трупа была отрублена, а после наспех пришита назад. Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место. На виске вырезан номер 79, рядом с неровным зубчатым кругом, выжженным на лбу.", 's0', 'say34942') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM79.D_s1', 'r', 'reply34943').with_action(lambda: _r34943_action()) \
        .response("Осмотреть зубчатый круг.", 'DZM79.D_s3', 'r', 'reply34946').with_condition(lambda: _r34946_condition()).with_action(lambda: _r34946_action()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM79.D_s1', 'r', 'reply34947').with_condition(lambda: _r34947_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM79.D_s2', 'r', 'reply34948').with_condition(lambda: _r34948_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply34951').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34952').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.2
DialogStateBuilder('DZM79.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say34944') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34945').with_action(lambda: _dispose()) \
    .done()

# from 0.3 3.0 3.1
DialogStateBuilder('DZM79.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34949') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34950').with_action(lambda: _dispose()) \
    .done()

# from 0.1
DialogStateBuilder('DZM79.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак. Ты замечаешь, что в одной из впадин между внутренними зубцами есть маленький треугольник, как будто у него есть какое-то особое назначение.", 's3', 'say64278') \
    .with_responses() \
        .response("Хм-м. Интересно… что здесь делает эта отметина, а, труп?", 'DZM79.D_s2', 'r', 'reply64279').with_condition(lambda: _r64279_condition()).with_action(lambda: _r64279_action()) \
        .response("Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…", 'DZM79.D_s2', 'r', 'reply64280').with_condition(lambda: _r64280_condition()).with_action(lambda: _r64280_action()) \
    .done()