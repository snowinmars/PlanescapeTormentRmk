def _r35243_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35243_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35260_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35261_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35262_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35267_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35268_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35269_condition(gsm):
    return gsm.get_morte_quip()
def _r35270_condition(gsm):
    return gsm.get_morte_quip()
def _r35271_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35272_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35245_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35258_condition(gsm):
    return gsm.get_morte_quip()
def _r35259_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35264_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35265_condition(gsm):
    return gsm.get_morte_quip()
def _r35266_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF1148.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 362')\
    .with_npc_lines() \
        .line(SPEAKER, "Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер 1148 вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.", 's0', 'say35242') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF1148.D_s1', 'r', 'reply35243').with_condition(lambda: _r35243_condition(gsm)).with_action(lambda: _r35243_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF1148.D_s1', 'r', 'reply35260').with_condition(lambda: _r35260_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF1148.D_s1', 'r', 'reply35261').with_condition(lambda: _r35261_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF1148.D_s2', 'r', 'reply35262').with_condition(lambda: _r35262_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35267').with_condition(lambda: _r35267_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35268').with_condition(lambda: _r35268_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35269').with_condition(lambda: _r35269_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35270').with_condition(lambda: _r35270_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35271').with_condition(lambda: _r35271_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35272').with_condition(lambda: _r35272_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1148.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 362')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35244') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35245').with_condition(lambda: _r35245_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35258').with_condition(lambda: _r35258_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35259').with_condition(lambda: _r35259_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1148.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 362')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35263') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35264').with_condition(lambda: _r35264_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35265').with_condition(lambda: _r35265_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35266').with_condition(lambda: _r35266_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF1148.D_s3', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35273') \
    .with_responses() \
    .push(manager)