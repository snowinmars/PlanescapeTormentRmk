def _r46757_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r46757_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r46760_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r46761_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r46762_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM1445.D_s0', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни. На лбу у него вытатуирован номер 1445, а его губы крепко сшиты.", 's0', 'say46756') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1445.D_s1', 'r', 'reply46757').with_condition(lambda: _r46757_condition(gsm)).with_action(lambda: _r46757_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM1445.D_s1', 'r', 'reply46760').with_condition(lambda: _r46760_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1445.D_s1', 'r', 'reply46761').with_condition(lambda: _r46761_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1445.D_s2', 'r', 'reply46762').with_condition(lambda: _r46762_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply46765').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46766').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1445.D_s1', '# from 0.0 0.1 0.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say46758') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46759').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1445.D_s2', '# from 0.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say46763') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46764').with_action(lambda: _dispose()) \
    .push(manager)