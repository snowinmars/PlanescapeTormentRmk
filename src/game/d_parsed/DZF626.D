def _r35051_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35051_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35068_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35069_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35070_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35075_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35076_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35077_condition(gsm):
    return gsm.get_morte_quip()
def _r35078_condition(gsm):
    return gsm.get_morte_quip()
def _r35079_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35080_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35053_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35066_condition(gsm):
    return gsm.get_morte_quip()
def _r35067_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35072_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35073_condition(gsm):
    return gsm.get_morte_quip()
def _r35074_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF626.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 338') \
    .with_npc_lines() \
        .line(SPEAKER, "Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе. Номер 626 вышит на правой щеке, прямо под глазом.", 's0', 'say35050') \
    .with_responses() \
        .response("Э… здорово тебе досталось.", 'DZF626.D_s1', 'r', 'reply35051').with_condition(lambda: _r35051_condition(gsm)).with_action(lambda: _r35051_action(gsm)) \
        .response("Э… здорово тебе досталось.", 'DZF626.D_s1', 'r', 'reply35068').with_condition(lambda: _r35068_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF626.D_s1', 'r', 'reply35069').with_condition(lambda: _r35069_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF626.D_s2', 'r', 'reply35070').with_condition(lambda: _r35070_condition(gsm)) \
        .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r', 'reply35075').with_condition(lambda: _r35075_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35076').with_condition(lambda: _r35076_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r', 'reply35077').with_condition(lambda: _r35077_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35078').with_condition(lambda: _r35078_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r', 'reply35079').with_condition(lambda: _r35079_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35080').with_condition(lambda: _r35080_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF626.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 338') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает смотреть на тебя одним уцелевшим глазом.", 's1', 'say35052') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35053').with_condition(lambda: _r35053_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35066').with_condition(lambda: _r35066_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35067').with_condition(lambda: _r35067_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF626.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 338') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35071') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35072').with_condition(lambda: _r35072_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35073').with_condition(lambda: _r35073_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35074').with_condition(lambda: _r35074_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF626.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35081') \
    .with_responses() \
    .push(manager)