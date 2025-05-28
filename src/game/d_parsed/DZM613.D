def _r6543_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6543_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6544_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6545_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6546_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager

EXIT          = -1

DialogStateBuilder().state('DZM613.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры 613, но на коже между 1 и 3 виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную 2.", 's0', 'say6540') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r', 'reply6543').with_condition(lambda: _r6543_condition(gsm)).with_action(lambda: _r6543_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM613.D_s1', 'r', 'reply6544').with_condition(lambda: _r6544_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM613.D_s1', 'r', 'reply6545').with_condition(lambda: _r6545_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM613.D_s2', 'r', 'reply6546').with_condition(lambda: _r6546_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6547').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6548').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM613.D_s1', '# from 0.0 0.1 0.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6541') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6549').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM613.D_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6542') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6550').with_action(lambda: _dispose()) \
    .push(manager)