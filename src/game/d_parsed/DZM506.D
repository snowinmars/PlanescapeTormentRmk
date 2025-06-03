def _r45420_condition(gsm):
    return not gsm.get_has_506_thread()
def _r45421_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45422_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r45480_condition(gsm):
    return gsm.get_has_scalpel()
def _r45480_action(gsm):
    gsm.set_has_506_thread(True) gsm.set_has_needle(True) gsm.inc_exp(100)
def _r45481_condition(gsm):
    return not gsm.get_has_scalpel()
def _r45484_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r45484_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r45496_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r45502_condition(gsm):
    return not gsm.get_zombie_chaotic()
def _r45502_action(gsm):
    gsm.dec_law() gsm.set_zombie_chaotic(True)
def _r45508_condition(gsm):
    return gsm.get_zombie_chaotic()
def _r45510_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45512_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzm506_s0', '# from 3.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот покрытый швами труп вяло передвигается между двумя плитами. Номер 506 вышит у него на лбу… и на боку шеи… и на правой руке… В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.", 's0', 'say45419') \
    .with_responses() \
        .response("Осмотреть швы.", 'dzm506_s3', 'r', 'reply45420').with_condition(lambda: _r45420_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzm506_s1', 'r', 'reply45421').with_condition(lambda: _r45421_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzm506_s2', 'r', 'reply45422').with_condition(lambda: _r45422_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45423').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45424').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm506_s1', '# from 0.1 4.0 4.1 5.0 5.1 5.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп самозабвенно смотрит вперед.", 's1', 'say45425') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45478').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm506_s2', '# from 0.2 5.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say45426') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45479').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm506_s3', '# from 0.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Швы опоясывают тело, пробегая по рукам через весь торс наверх по шее и скрываясь в копне белых волос. Проходя по пересечениям швов, ты замечаешь, что кто-то приколол иголку ко лбу… в иглу вдета нить, которая выходит из шва на черепе. Ты мог бы вытащить ее, если бы у тебя было что-нибудь, чтобы разрезать нить.", 's3', 'say45427') \
    .with_responses() \
        .response("Разрезать швы скальпелем, затем вытащить иголку с ниткой.", 'dzm506_s4', 'r', 'reply45480').with_condition(lambda: _r45480_condition(gsm)).with_action(lambda: _r45480_action(gsm)) \
        .response("Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.", EXIT, 'r', 'reply45481').with_condition(lambda: _r45481_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Снова осмотреть труп.", 'dzm506_s0', 'r', 'reply45482') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45483').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm506_s4', '# from 3.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты аккуратно срезаешь нить с помощью скальпеля, а затем выдергиваешь иголку, распуская швы. Кожа на лбу отваливается, обнажая белый как мел череп. К твоему удивлению, на нем выбит номер 78.", 's4', 'say45428') \
    .with_responses() \
        .response("Похоже, у тебя два разных обозначения, труп.", 'dzm506_s1', 'r', 'reply45484').with_condition(lambda: _r45484_condition(gsm)).with_action(lambda: _r45484_action(gsm)) \
        .response("Похоже, у тебя два разных обозначения, труп.", 'dzm506_s1', 'r', 'reply45496').with_condition(lambda: _r45496_condition(gsm)) \
        .response("Снова осмотреть труп.", 'dzm506_s5', 'r', 'reply50097') \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply66889').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm506_s5', '# from 4.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер 506, в месте, где кожа отвалилась ото лба, на кости выбит номер 78.", 's5', 'say45429') \
    .with_responses() \
        .response("Похоже, у тебя два разных обозначения, труп.", 'dzm506_s1', 'r', 'reply45502').with_condition(lambda: _r45502_condition(gsm)).with_action(lambda: _r45502_action(gsm)) \
        .response("Похоже, у тебя два разных обозначения, труп.", 'dzm506_s1', 'r', 'reply45508').with_condition(lambda: _r45508_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzm506_s1', 'r', 'reply45510').with_condition(lambda: _r45510_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzm506_s2', 'r', 'reply45512').with_condition(lambda: _r45512_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45513').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45514').with_action(lambda: _dispose()) \
    .push(manager)