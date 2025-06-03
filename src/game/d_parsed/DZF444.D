def _r35211_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r35211_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r35228_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r35229_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35230_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35235_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35236_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35237_condition(gsm):
    return gsm.get_morte_quip()
def _r35238_condition(gsm):
    return gsm.get_morte_quip()
def _r35239_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35240_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35213_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35226_condition(gsm):
    return gsm.get_morte_quip()
def _r35227_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35232_condition(gsm):
    return gsm.get_in_party_morte() return not gsm.get_morte_quip()
def _r35233_condition(gsm):
    return gsm.get_morte_quip()
def _r35234_condition(gsm):
    return not gsm.get_in_party_morte() return not gsm.get_morte_quip()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzf444_s0', '# from - // Check EXTENDS ~DMORTE~ : 358') \
    .with_npc_lines() \
        .line(SPEAKER, "У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер 444.", 's0', 'say35210') \
    .with_responses() \
        .response("Итак… чем занимаешься вечером?", 'dzf444_s1', 'r', 'reply35211').with_condition(lambda: _r35211_condition(gsm)).with_action(lambda: _r35211_action(gsm)) \
        .response("Итак… чем занимаешься вечером?", 'dzf444_s1', 'r', 'reply35228').with_condition(lambda: _r35228_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzf444_s1', 'r', 'reply35229').with_condition(lambda: _r35229_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzf444_s2', 'r', 'reply35230').with_condition(lambda: _r35230_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35235').with_condition(lambda: _r35235_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35236').with_condition(lambda: _r35236_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35237').with_condition(lambda: _r35237_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35238').with_condition(lambda: _r35238_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply35239').with_condition(lambda: _r35239_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply35240').with_condition(lambda: _r35240_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf444_s1', '# from 0.0 0.1 0.2 // Check EXTENDS ~DMORTE~ : 358') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say35212') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35213').with_condition(lambda: _r35213_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35226').with_condition(lambda: _r35226_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35227').with_condition(lambda: _r35227_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf444_s2', '# from 0.3 // Check EXTENDS ~DMORTE~ : 358') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.", 's2', 'say35231') \
    .with_responses() \
        .response("Тогда прощай.", EXIT, 'r', 'reply35232').with_condition(lambda: _r35232_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35233').with_condition(lambda: _r35233_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Тогда прощай.", EXIT, 'r', 'reply35234').with_condition(lambda: _r35234_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzf444_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.", 's3', 'say35241') \
    .with_responses() \
    .push(manager)