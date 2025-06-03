def _r6533_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r6533_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r6532_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r6534_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6535_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r64271_action(gsm):
    gsm.set_has_tome_ba(True)

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzm732_s0', '# from 4.0') \
    .with_npc_lines() \
        .line(SPEAKER, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер 732. Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после.", 's0', 'say6529') \
    .with_responses() \
        .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'dzm732_s1', 'r', 'reply6533').with_condition(lambda: _r6533_condition(gsm)).with_action(lambda: _r6533_action(gsm)) \
        .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'dzm732_s1', 'r', 'reply6532').with_condition(lambda: _r6532_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzm732_s1', 'r', 'reply6534').with_condition(lambda: _r6534_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzm732_s2', 'r', 'reply6535').with_condition(lambda: _r6535_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6536').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6537').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm732_s1', '# from 0.0 0.1 0.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6530') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6538').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm732_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6531') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6539').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm732_s3', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер 732. Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после. Ты замечаешь, что в руках он несет тяжелую книгу, как будто он где-то ее забрал.", 's3', 'say64270') \
    .with_responses() \
        .response("Взять том из его рук… осторожно.", 'dzm732_s4', 'r', 'reply64271').with_action(lambda: _r64271_action(gsm)) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply64272').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm732_s4', '# from 3.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты осторожно берешь книгу из рук трупа — он даже не замечает этого. Похоже, это книга заклинаний и оберегов: она исписана схемами и таблицами, описывающими различные аспекты искусства некромантии. Сама по себе книга очень тяжелая. Каким бы неуклюжим не был зомби, он, должно быть, очень силен.", 's4', 'say64273') \
    .with_responses() \
        .response("Снова осмотреть труп.", 'dzm732_s0', 'r', 'reply64274') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply64275').with_action(lambda: _dispose()) \
    .push(manager)