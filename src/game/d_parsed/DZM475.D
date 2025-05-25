def _r6587_condition():
    return not changed_law_once('zombie_chaotic')
def _r6587_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6588_condition():
    return changed_law_once('zombie_chaotic')
def _r6589_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6590_condition():
    return current_global_settings()['can_speak_with_dead']

EXIT = -1

# from -
DialogStateBuilder('DZM475.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе. На проржавевшей табличке над его левым глазом выбит номер 475. Его рот намертво закрыт; от него несет бальзамирующей жидкостью.", 's0', 'say6584') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM475.D_s1', 'r', 'reply6587').with_condition(lambda: _r6587_condition()).with_action(lambda: _r6587_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM475.D_s1', 'r', 'reply6588').with_condition(lambda: _r6588_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM475.D_s1', 'r', 'reply6589').with_condition(lambda: _r6589_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM475.D_s2', 'r', 'reply6590').with_condition(lambda: _r6590_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6591').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6592').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM475.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6585') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6593').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM475.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6586') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6594').with_action(lambda: _dispose()) \
    .done()