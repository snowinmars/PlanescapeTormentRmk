def _r46757_condition():
    return not changed_law_once('zombie_chaotic')
def _r46757_action():
    change_law_once(-1, 'zombie_chaotic')
def _r46760_condition():
    return changed_law_once('zombie_chaotic')
def _r46761_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r46762_condition():
    return current_morgue_settings()['can_speak_with_dead']

EXIT = -1

# from -
DialogStateBuilder('DZM1445.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни. На лбу у него вытатуирован номер 1445, а его губы крепко сшиты.", 's0', 'say46756') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1445.D_s1', 'r', 'reply46757').with_condition(lambda: _r46757_condition()).with_action(lambda: _r46757_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM1445.D_s1', 'r', 'reply46760').with_condition(lambda: _r46760_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1445.D_s1', 'r', 'reply46761').with_condition(lambda: _r46761_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1445.D_s2', 'r', 'reply46762').with_condition(lambda: _r46762_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply46765').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46766').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM1445.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say46758') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46759').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM1445.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say46763') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply46764').with_action(lambda: _dispose()) \
    .done()