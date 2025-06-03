def _r6587_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r6587_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r6588_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r6589_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6590_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzm475_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе. На проржавевшей табличке над его левым глазом выбит номер 475. Его рот намертво закрыт; от него несет бальзамирующей жидкостью.", 's0', 'say6584') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'dzm475_s1', 'r', 'reply6587').with_condition(lambda: _r6587_condition(gsm)).with_action(lambda: _r6587_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'dzm475_s1', 'r', 'reply6588').with_condition(lambda: _r6588_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzm475_s1', 'r', 'reply6589').with_condition(lambda: _r6589_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzm475_s2', 'r', 'reply6590').with_condition(lambda: _r6590_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6591').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6592').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm475_s1', '# from 0.0 0.1 0.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6585') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6593').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm475_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6586') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6594').with_action(lambda: _dispose()) \
    .push(manager)