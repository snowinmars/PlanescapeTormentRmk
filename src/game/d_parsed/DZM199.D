def _r34976_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34976_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r34979_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r34980_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r34981_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM199.D_s0', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть. На его лбу выгравирован номер 199; его губы сшиты.", 's0', 'say34975') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM199.D_s1', 'r', 'reply34976').with_condition(lambda: _r34976_condition(gsm)).with_action(lambda: _r34976_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM199.D_s1', 'r', 'reply34979').with_condition(lambda: _r34979_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM199.D_s1', 'r', 'reply34980').with_condition(lambda: _r34980_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM199.D_s2', 'r', 'reply34981').with_condition(lambda: _r34981_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply34984').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply34985').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM199.D_s1', '# from 0.0 0.1 0.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say34977') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply34978').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM199.D_s2', '# from 0.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34982') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply34983').with_action(lambda: _dispose()) \
    .push(manager)