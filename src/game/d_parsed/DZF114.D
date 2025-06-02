def _r34987_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r34987_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35004_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35005_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35006_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35011_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35012_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35013_condition(gsm):
    return gsm.get_morte_quip()
def _r35014_condition(gsm):
    return gsm.get_morte_quip()
def _r35015_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35016_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r34989_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35002_condition(gsm):
    return gsm.get_morte_quip()
def _r35003_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35008_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35009_condition(gsm):
    return gsm.get_morte_quip()
def _r35010_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZF114.D_s0', '# from - // Check EXTENDS ~DMORTE~ : 330') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер 114, вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.", 's0', 'say34986') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'DZF114.D_s1', 'r', 'reply34987').with_condition(lambda: _r34987_condition(gsm)).with_action(lambda: _r34987_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'DZF114.D_s1', 'r', 'reply35004').with_condition(lambda: _r35004_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF114.D_s1', 'r', 'reply35005').with_condition(lambda: _r35005_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZF114.D_s2', 'r', 'reply35006').with_condition(lambda: _r35006_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35011').with_condition(lambda: _r35011_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35012').with_condition(lambda: _r35012_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35013').with_condition(lambda: _r35013_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35014').with_condition(lambda: _r35014_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35015').with_condition(lambda: _r35015_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35016').with_condition(lambda: _r35016_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF114.D_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 330') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say34988') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply34989').with_condition(lambda: _r34989_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35002').with_condition(lambda: _r35002_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35003').with_condition(lambda: _r35003_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF114.D_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 330') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35007') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35008').with_condition(lambda: _r35008_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35009').with_condition(lambda: _r35009_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35010').with_condition(lambda: _r35010_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZF114.D_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say35017') \
    .with_responses() \
    .push(manager)