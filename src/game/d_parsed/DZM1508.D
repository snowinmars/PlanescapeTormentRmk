def _r46746_condition():
    return not gsm.once_tracked('zombie_chaotic')
def _r46746_action():
    gsm.dec_once_law('zombie_chaotic')
def _r46749_condition():
    return gsm.once_tracked('zombie_chaotic')
def _r46750_condition():
    return gsm.get_vaxis_exposed()
def _r46751_condition():
    return gsm.get_can_speak_with_dead()

EXIT = -1

# from -
DialogStateBuilder('DZM1508.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной. Номер 1508 вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.", 's0', 'say46745') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r', 'reply46746').with_condition(lambda: _r46746_condition()).with_action(lambda: _r46746_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r', 'reply46749').with_condition(lambda: _r46749_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1508.D_s1', 'r', 'reply46750').with_condition(lambda: _r46750_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1508.D_s2', 'r', 'reply46751').with_condition(lambda: _r46751_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply46754').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46755').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM1508.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say46747') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46748').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM1508.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say46752') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46753').with_action(lambda: _dispose()) \
    .done()