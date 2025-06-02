def _r24720_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r24720_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r24737_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r24738_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24739_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24744_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24745_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24746_condition(gsm):
    return gsm.get_morte_quip()
def _r24747_condition(gsm):
    return gsm.get_morte_quip()
def _r24748_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24749_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24722_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24735_condition(gsm):
    return gsm.get_morte_quip()
def _r24736_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24741_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r24742_condition(gsm):
    return gsm.get_morte_quip()
def _r24743_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF916.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 46') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер 916; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24719') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF916.D_s1', 'r', 'reply24720').with_condition(lambda: _r24720_condition(gsm)).with_action(lambda: _r24720_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF916.D_s1', 'r', 'reply24737').with_condition(lambda: _r24737_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF916.D_s1', 'r', 'reply24738').with_condition(lambda: _r24738_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF916.D_s2', 'r', 'reply24739').with_condition(lambda: _r24739_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply24744').with_condition(lambda: _r24744_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24745').with_condition(lambda: _r24745_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply24746').with_condition(lambda: _r24746_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24747').with_condition(lambda: _r24747_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply24748').with_condition(lambda: _r24748_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24749').with_condition(lambda: _r24749_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF916.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 46') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say24721') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply24722').with_condition(lambda: _r24722_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply24735').with_condition(lambda: _r24735_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply24736').with_condition(lambda: _r24736_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF916.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 46') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24740') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply24741').with_condition(lambda: _r24741_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply24742').with_condition(lambda: _r24742_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply24743').with_condition(lambda: _r24743_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF916.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say24750') \
    .with_responses() \
    .push(manager)