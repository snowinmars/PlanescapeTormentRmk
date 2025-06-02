def _r46746_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r46746_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r46749_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r46750_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r46751_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM1508.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной. Номер 1508 вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.", 's0', 'say46745') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r', 'reply46746').with_condition(lambda: _r46746_condition(gsm)).with_action(lambda: _r46746_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM1508.D_s1', 'r', 'reply46749').with_condition(lambda: _r46749_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1508.D_s1', 'r', 'reply46750').with_condition(lambda: _r46750_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1508.D_s2', 'r', 'reply46751').with_condition(lambda: _r46751_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply46754').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46755').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1508.D_s1', '# from 0.0 0.1 0.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say46747') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46748').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1508.D_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say46752') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46753').with_action(lambda: _dispose()) \
    .push(manager)