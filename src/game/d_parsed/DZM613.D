def _r6543_condition():
    return not changed_law_once('zombie_chaotic')
def _r6543_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6544_condition():
    return changed_law_once('zombie_chaotic')
def _r6545_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6546_condition():
    return current_morgue_settings()['can_speak_with_dead']

EXIT = -1

# from -
DialogStateBuilder('DZM613.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры 613, но на коже между 1 и 3 виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную 2.", 's0', 'say6540') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r', 'reply6543').with_condition(lambda: _r6543_condition()).with_action(lambda: _r6543_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r', 'reply6544').with_condition(lambda: _r6544_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM613.D_s1', 'r', 'reply6545').with_condition(lambda: _r6545_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM613.D_s2', 'r', 'reply6546').with_condition(lambda: _r6546_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6547').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6548').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM613.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6541') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6549').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM613.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6542') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6550').with_action(lambda: _dispose()) \
    .done()