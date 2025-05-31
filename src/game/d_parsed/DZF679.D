def _r35179_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35179_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35196_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35197_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35198_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35203_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35204_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35205_condition(gsm):
    return gsm.get_morte_quip()
def _r35206_condition(gsm):
    return gsm.get_morte_quip()
def _r35207_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35208_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35181_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35194_condition(gsm):
    return gsm.get_morte_quip()
def _r35195_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35200_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35201_condition(gsm):
    return gsm.get_morte_quip()
def _r35202_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF679.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 354') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, это труп довольно таки старой, даже древней женщины. Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер 679, вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.", 's0', 'say35178') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF679.D_s1', 'r', 'reply35179').with_condition(lambda: _r35179_condition(gsm)).with_action(lambda: _r35179_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF679.D_s1', 'r', 'reply35196').with_condition(lambda: _r35196_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF679.D_s1', 'r', 'reply35197').with_condition(lambda: _r35197_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF679.D_s2', 'r', 'reply35198').with_condition(lambda: _r35198_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35203').with_condition(lambda: _r35203_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35204').with_condition(lambda: _r35204_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35205').with_condition(lambda: _r35205_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35206').with_condition(lambda: _r35206_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35207').with_condition(lambda: _r35207_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35208').with_condition(lambda: _r35208_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF679.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 354') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35180') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35181').with_condition(lambda: _r35181_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35194').with_condition(lambda: _r35194_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35195').with_condition(lambda: _r35195_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF679.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 354') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35199') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35200').with_condition(lambda: _r35200_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35201').with_condition(lambda: _r35201_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35202').with_condition(lambda: _r35202_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF679.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35209') \
    .with_responses() \
    .push(manager)