def _r34954_condition():
    Global("1201_Note_Retrieved","GLOBAL",0)
def _r34957_condition():
    return gsm.get_vaxis_exposed()
def _r34958_condition():
    return gsm.get_can_speak_with_dead()
def _r34956_condition():
    return gsm.get_has_scalpel()
def _r34956_action():
    DO ~SetGlobal("1201_Note_Retrieved","GLOBAL",1) GiveItemCreate("N1201",Protagonist,1,0,0)  ~
def _r45122_condition():
    return not gsm.get_has_scalpel()
def _r45129_condition():
    return not gsm.once_tracked('zombie_chaotic')
def _r45129_action():
    gsm.dec_once_law('zombie_chaotic')
def _r45130_condition():
    return gsm.once_tracked('zombie_chaotic')
def _r45131_condition():
    return gsm.get_vaxis_exposed()
def _r45132_condition():
    return gsm.get_can_speak_with_dead()

EXIT = -1

# from -
DialogStateBuilder('DZM1201.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого трупа чернилами написан номер 1201, чернила стекли на глаза, щеки и челюсти. Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.", 's0', 'say34953') \
    .with_responses() \
        .response("Попробовать вытащить записку.", 'DZM1201.D_s1', 'r', 'reply34954').with_condition(lambda: _r34954_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1201.D_s3', 'r', 'reply34957').with_condition(lambda: _r34957_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1201.D_s4', 'r', 'reply34958').with_condition(lambda: _r34958_condition()) \
        .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r', 'reply34959').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34962').with_action(lambda: _dispose()) \
    .done()

# from 0.0
DialogStateBuilder('DZM1201.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Записка во рту зомби заляпана гноем. Если ты попытаешься вытащить бумагу сквозь стежки, она порвется на части. Попытка вскрыть зомби уничтожит записку — тебе нужно найти деликатный способ удалить швы перед тем, как достать записку.", 's1', 'say34955') \
    .with_responses() \
        .response("Срезать швы скальпелем.", 'DZM1201.D_s2', 'r', 'reply34956').with_condition(lambda: _r34956_condition()).with_action(lambda: _r34956_action()) \
        .response("Хм-м. Если бы у меня было что-нибудь, чтобы разрезать эти швы…", EXIT, 'r', 'reply45122').with_condition(lambda: _r45122_condition()).with_action(lambda: _dispose()) \
    .done()

# from 1.0
DialogStateBuilder('DZM1201.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты ловко перерезаешь швы на рту зомби, и его челюсти раскрываются. Ты осторожно вынимаешь записку изо рта трупа… несмотря на состояние бумаги, записи все еще можно разобрать.", 's2', 'say34960') \
    .with_responses() \
        .response("Снова осмотреть труп.", 'DZM1201.D_s5', 'r', 'reply34961') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45123').with_action(lambda: _dispose()) \
    .done()

# from 0.1 5.0 5.1 5.2
DialogStateBuilder('DZM1201.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Молочно-белые глаза трупа смотрят на тебя без выражения.", 's3', 'say45124') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45125').with_action(lambda: _dispose()) \
    .done()

# from 0.2 5.3
DialogStateBuilder('DZM1201.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's4', 'say45126') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45127').with_action(lambda: _dispose()) \
    .done()

# from 2.0
DialogStateBuilder('DZM1201.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого трупа чернилами написан номер 1201, чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет. Его челюсть распахнута, из уголка рта течет струйка гноя.", 's5', 'say45128') \
    .with_responses() \
        .response("Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.", 'DZM1201.D_s3', 'r', 'reply45129').with_condition(lambda: _r45129_condition()).with_action(lambda: _r45129_action()) \
        .response("Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.", 'DZM1201.D_s3', 'r', 'reply45130').with_condition(lambda: _r45130_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1201.D_s3', 'r', 'reply45131').with_condition(lambda: _r45131_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1201.D_s4', 'r', 'reply45132').with_condition(lambda: _r45132_condition()) \
        .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r', 'reply45133').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45134').with_action(lambda: _dispose()) \
    .done()