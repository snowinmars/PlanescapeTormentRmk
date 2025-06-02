def _r35019_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r35019_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35036_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35037_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35038_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35043_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35044_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35045_condition(gsm):
    return gsm.get_morte_quip()
def _r35046_condition(gsm):
    return gsm.get_morte_quip()
def _r35047_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35048_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35021_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35034_condition(gsm):
    return gsm.get_morte_quip()
def _r35035_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35040_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35041_condition(gsm):
    return gsm.get_morte_quip()
def _r35042_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF594.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 334') \
    .with_npc_lines() \
        .line(SPEAKER, "Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер 594.", 's0', 'say35018') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF594.D_s1', 'r', 'reply35019').with_condition(lambda: _r35019_condition(gsm)).with_action(lambda: _r35019_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF594.D_s1', 'r', 'reply35036').with_condition(lambda: _r35036_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF594.D_s1', 'r', 'reply35037').with_condition(lambda: _r35037_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF594.D_s2', 'r', 'reply35038').with_condition(lambda: _r35038_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35043').with_condition(lambda: _r35043_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35044').with_condition(lambda: _r35044_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35045').with_condition(lambda: _r35045_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35046').with_condition(lambda: _r35046_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35047').with_condition(lambda: _r35047_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35048').with_condition(lambda: _r35048_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF594.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 334') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35020') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35021').with_condition(lambda: _r35021_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35034').with_condition(lambda: _r35034_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35035').with_condition(lambda: _r35035_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF594.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 334') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35039') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35040').with_condition(lambda: _r35040_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35041').with_condition(lambda: _r35041_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35042').with_condition(lambda: _r35042_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF594.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35049') \
    .with_responses() \
    .push(manager)