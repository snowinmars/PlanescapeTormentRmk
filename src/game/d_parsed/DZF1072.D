def _r35115_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r35115_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35132_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35133_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35134_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35139_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35140_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35141_condition(gsm):
    return gsm.get_morte_quip()
def _r35142_condition(gsm):
    return gsm.get_morte_quip()
def _r35143_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35144_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35117_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35130_condition(gsm):
    return gsm.get_morte_quip()
def _r35131_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35136_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35137_condition(gsm):
    return gsm.get_morte_quip()
def _r35138_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzf1072_s0', '# from - // Check EXTENDS ~DMORTE~ : 346') \
    .with_npc_lines() \
        .line(SPEAKER, "От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения. У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер 1072, выбитый на кости.", 's0', 'say35114') \
    .with_responses() \
        .response("Кажется, у нее бывали деньки и получше…", 'dzf1072_s1', 'r', 'reply35115').with_condition(lambda: _r35115_condition(gsm)).with_action(lambda: _r35115_action(gsm)) \
        .response("Кажется, у нее бывали деньки и получше…", 'dzf1072_s1', 'r', 'reply35132').with_condition(lambda: _r35132_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzf1072_s1', 'r', 'reply35133').with_condition(lambda: _r35133_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzf1072_s2', 'r', 'reply35134').with_condition(lambda: _r35134_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35139').with_condition(lambda: _r35139_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35140').with_condition(lambda: _r35140_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35141').with_condition(lambda: _r35141_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35142').with_condition(lambda: _r35142_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35143').with_condition(lambda: _r35143_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35144').with_condition(lambda: _r35144_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf1072_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 346') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.", 's1', 'say35116') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35117').with_condition(lambda: _r35117_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35130').with_condition(lambda: _r35130_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35131').with_condition(lambda: _r35131_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf1072_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 346') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35135') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35136').with_condition(lambda: _r35136_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35137').with_condition(lambda: _r35137_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35138').with_condition(lambda: _r35138_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf1072_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35145') \
    .with_responses() \
    .push(manager)