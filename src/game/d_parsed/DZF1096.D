def _r35083_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r35083_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35100_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35101_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35102_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35107_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35108_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35109_condition(gsm):
    return gsm.get_morte_quip()
def _r35110_condition(gsm):
    return gsm.get_morte_quip()
def _r35111_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35112_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35085_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35098_condition(gsm):
    return gsm.get_morte_quip()
def _r35099_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35104_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35105_condition(gsm):
    return gsm.get_morte_quip()
def _r35106_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF1096.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 342') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер 1096 у нее на лбу; ее губы крепко зашиты.", 's0', 'say35082') \
    .with_responses() \
        .response("Э… Красивая коса.", 'DZF1096.D_s1', 'r', 'reply35083').with_condition(lambda: _r35083_condition(gsm)).with_action(lambda: _r35083_action(gsm)) \
        .response("Э… Красивая коса.", 'DZF1096.D_s1', 'r', 'reply35100').with_condition(lambda: _r35100_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF1096.D_s1', 'r', 'reply35101').with_condition(lambda: _r35101_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF1096.D_s2', 'r', 'reply35102').with_condition(lambda: _r35102_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35107').with_condition(lambda: _r35107_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35108').with_condition(lambda: _r35108_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35109').with_condition(lambda: _r35109_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35110').with_condition(lambda: _r35110_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35111').with_condition(lambda: _r35111_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35112').with_condition(lambda: _r35112_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1096.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 342') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.", 's1', 'say35084') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35085').with_condition(lambda: _r35085_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35098').with_condition(lambda: _r35098_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35099').with_condition(lambda: _r35099_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1096.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 342') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35103') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35104').with_condition(lambda: _r35104_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35105').with_condition(lambda: _r35105_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35106').with_condition(lambda: _r35106_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1096.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35113') \
    .with_responses() \
    .push(manager)