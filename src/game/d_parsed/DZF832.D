def _r35147_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r35147_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35164_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35165_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35166_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35171_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35172_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35173_condition(gsm):
    return gsm.get_morte_quip()
def _r35174_condition(gsm):
    return gsm.get_morte_quip()
def _r35175_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35176_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35149_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35162_condition(gsm):
    return gsm.get_morte_quip()
def _r35163_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35168_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35169_condition(gsm):
    return gsm.get_morte_quip()
def _r35170_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF832.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 350') \
    .with_npc_lines() \
        .line(SPEAKER, "Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет. Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер 832 элегантным шрифтом.", 's0', 'say35146') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF832.D_s1', 'r', 'reply35147').with_condition(lambda: _r35147_condition(gsm)).with_action(lambda: _r35147_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF832.D_s1', 'r', 'reply35164').with_condition(lambda: _r35164_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF832.D_s1', 'r', 'reply35165').with_condition(lambda: _r35165_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF832.D_s2', 'r', 'reply35166').with_condition(lambda: _r35166_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35171').with_condition(lambda: _r35171_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35172').with_condition(lambda: _r35172_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35173').with_condition(lambda: _r35173_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35174').with_condition(lambda: _r35174_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35175').with_condition(lambda: _r35175_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35176').with_condition(lambda: _r35176_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF832.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 350') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35148') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35149').with_condition(lambda: _r35149_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35162').with_condition(lambda: _r35162_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35163').with_condition(lambda: _r35163_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF832.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 350') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35167') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35168').with_condition(lambda: _r35168_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35169').with_condition(lambda: _r35169_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35170').with_condition(lambda: _r35170_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF832.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35177') \
    .with_responses() \
    .push(manager)