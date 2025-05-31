def _r35275_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35275_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35292_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35293_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35294_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35299_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35300_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35301_condition(gsm):
    return gsm.get_morte_quip()
def _r35302_condition(gsm):
    return gsm.get_morte_quip()
def _r35303_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35304_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35277_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35290_condition(gsm):
    return gsm.get_morte_quip()
def _r35291_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35296_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35297_condition(gsm):
    return gsm.get_morte_quip()
def _r35298_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF891.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 366') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ. Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер 891.", 's0', 'say35274') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF891.D_s1', 'r', 'reply35275').with_condition(lambda: _r35275_condition(gsm)).with_action(lambda: _r35275_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF891.D_s1', 'r', 'reply35292').with_condition(lambda: _r35292_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF891.D_s1', 'r', 'reply35293').with_condition(lambda: _r35293_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF891.D_s2', 'r', 'reply35294').with_condition(lambda: _r35294_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35299').with_condition(lambda: _r35299_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35300').with_condition(lambda: _r35300_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35301').with_condition(lambda: _r35301_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35302').with_condition(lambda: _r35302_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35303').with_condition(lambda: _r35303_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35304').with_condition(lambda: _r35304_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF891.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 366') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35276') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35277').with_condition(lambda: _r35277_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35290').with_condition(lambda: _r35290_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35291').with_condition(lambda: _r35291_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF891.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 366') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35295') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35296').with_condition(lambda: _r35296_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35297').with_condition(lambda: _r35297_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35298').with_condition(lambda: _r35298_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF891.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35305') \
    .with_responses() \
    .push(manager)