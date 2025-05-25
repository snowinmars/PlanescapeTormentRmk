def _r45420_condition():
    Global("506_Thread","GLOBAL",0)
def _r45421_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45422_condition():
    return current_morgue_settings()['can_speak_with_dead']
def _r45480_condition():
    return current_morgue_settings()['has_scalpel']
def _r45480_action():
    DO ~SetGlobal("506_Thread","GLOBAL",1) GiveItemCreate("Needle",Protagonist,1,0,0) AddexperienceParty(100) ~
def _r45481_condition():
    return not current_morgue_settings()['has_scalpel']
def _r45484_condition():
    return not changed_law_once('zombie_chaotic')
def _r45484_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45496_condition():
    return changed_law_once('zombie_chaotic')
def _r45502_condition():
    return not changed_law_once('zombie_chaotic')
def _r45502_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45508_condition():
    return changed_law_once('zombie_chaotic')
def _r45510_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45512_condition():
    return current_morgue_settings()['can_speak_with_dead']

EXIT = -1

# from 3.2
DialogStateBuilder('DZM506.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот покрытый швами труп вяло передвигается между двумя плитами. Номер 506 вышит у него на лбу… и на боку шеи… и на правой руке… В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.", 's0', 'say45419') \
    .with_responses() \
        .response("Осмотреть швы.", 'DZM506.D_s3', 'r', 'reply45420').with_condition(lambda: _r45420_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM506.D_s1', 'r', 'reply45421').with_condition(lambda: _r45421_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM506.D_s2', 'r', 'reply45422').with_condition(lambda: _r45422_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45423').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45424').with_action(lambda: _dispose()) \
    .done()

# from 0.1 4.0 4.1 5.0 5.1 5.2
DialogStateBuilder('DZM506.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп самозабвенно смотрит вперед.", 's1', 'say45425') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45478').with_action(lambda: _dispose()) \
    .done()

# from 0.2 5.3
DialogStateBuilder('DZM506.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say45426') \
    .with_responses() \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45479').with_action(lambda: _dispose()) \
    .done()

# from 0.0
DialogStateBuilder('DZM506.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Швы опоясывают тело, пробегая по рукам через весь торс наверх по шее и скрываясь в копне белых волос. Проходя по пересечениям швов, ты замечаешь, что кто-то приколол иголку ко лбу… в иглу вдета нить, которая выходит из шва на черепе. Ты мог бы вытащить ее, если бы у тебя было что-нибудь, чтобы разрезать нить.", 's3', 'say45427') \
    .with_responses() \
        .response("Разрезать швы скальпелем, затем вытащить иголку с ниткой.", 'DZM506.D_s4', 'r', 'reply45480').with_condition(lambda: _r45480_condition()).with_action(lambda: _r45480_action()) \
        .response("Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.", EXIT, 'r', 'reply45481').with_condition(lambda: _r45481_condition()).with_action(lambda: _dispose()) \
        .response("Снова осмотреть труп.", 'DZM506.D_s0', 'r', 'reply45482') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45483').with_action(lambda: _dispose()) \
    .done()

# from 3.0
DialogStateBuilder('DZM506.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты аккуратно срезаешь нить с помощью скальпеля, а затем выдергиваешь иголку, распуская швы. Кожа на лбу отваливается, обнажая белый как мел череп. К твоему удивлению, на нем выбит номер 78.", 's4', 'say45428') \
    .with_responses() \
        .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r', 'reply45484').with_condition(lambda: _r45484_condition()).with_action(lambda: _r45484_action()) \
        .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r', 'reply45496').with_condition(lambda: _r45496_condition()) \
        .response("Снова осмотреть труп.", 'DZM506.D_s5', 'r', 'reply50097') \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply66889').with_action(lambda: _dispose()) \
    .done()

# from 4.2
DialogStateBuilder('DZM506.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер 506, в месте, где кожа отвалилась ото лба, на кости выбит номер 78.", 's5', 'say45429') \
    .with_responses() \
        .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r', 'reply45502').with_condition(lambda: _r45502_condition()).with_action(lambda: _r45502_action()) \
        .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r', 'reply45508').with_condition(lambda: _r45508_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM506.D_s1', 'r', 'reply45510').with_condition(lambda: _r45510_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM506.D_s2', 'r', 'reply45512').with_condition(lambda: _r45512_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45513').with_action(lambda: _dispose()) \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply45514').with_action(lambda: _dispose()) \
    .done()