def _r45516_condition():
    return current_global_settings()['in_party_morte']
def _r45516_action():
    DO ~change_law_once(-1, 'chaotic_zm985_1') change_good_once(-1, 'evil_zm985_1') PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~
def _r45517_condition():
    return not current_global_settings()['in_party_morte']
def _r45517_action():
    DO ~change_law_once(-1, 'chaotic_zm985_1') change_good_once(-1, 'evil_zm985_1') PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~
def _r45518_condition():
    return current_global_settings()['in_party_morte']
def _r45518_action():
    DO ~change_law_once(1, 'lawful_zm985_1') change_good_once(1, 'good_zm985_1') ~
def _r45519_condition():
    return not current_global_settings()['in_party_morte']
def _r45519_action():
    DO ~change_law_once(1, 'lawful_zm985_1') change_good_once(1, 'good_zm985_1') ~
def _r45520_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45521_condition():
    return current_global_settings()['can_speak_with_dead']
def _r45532_condition():
    return not changed_law_once('zombie_chaotic')
def _r45532_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45533_condition():
    return changed_law_once('zombie_chaotic')
def _r45534_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45535_condition():
    return current_global_settings()['can_speak_with_dead']
def _r45539_action():
    DO ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~

EXIT = -1

######
# Check EXTENDS ~DMORTE~ : 482
######
# from -
DialogStateBuilder('DZM985.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп, номер 985, встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью. Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.", 's0', 'say45515') \
    .with_responses() \
        .response("Толкнуть труп.", EXIT, 'r', 'reply45516').with_condition(lambda: _r45516_condition()).with_action(lambda: _r45516_action()).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Толкнуть труп.", 'DZM985.D_s3', 'r', 'reply45517').with_condition(lambda: _r45517_condition()).with_action(lambda: _r45517_action()) \
        .response("Помочь трупу остаться в равновесии.", 'DZM985.D_s4', 'r', 'reply45518').with_condition(lambda: _r45518_condition()).with_action(lambda: _r45518_action()) \
        .response("Помочь трупу остаться в равновесии.", 'DZM985.D_s6', 'r', 'reply45519').with_condition(lambda: _r45519_condition()).with_action(lambda: _r45519_action()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM985.D_s1', 'r', 'reply45520').with_condition(lambda: _r45520_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM985.D_s2', 'r', 'reply45521').with_condition(lambda: _r45521_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45522').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45523').with_action(lambda: _dispose()) \
    .done()

# from 0.4 5.0 5.1 5.2
DialogStateBuilder('DZM985.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.", 's1', 'say45524') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45525').with_action(lambda: _dispose()) \
    .done()

# from 0.5 5.3
DialogStateBuilder('DZM985.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say45526') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45527').with_action(lambda: _dispose()) \
    .done()

# from 0.1 6.0
DialogStateBuilder('DZM985.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево. Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин. К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке смирно. Спустя мгновенье, нога падает с сочным гулким ударом.", 's3', 'say45528') \
    .with_responses() \
    .done()

######
# Check EXTENDS ~DMORTE~ : 482
######
# from 0.2
DialogStateBuilder('DZM985.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…", 's4', 'say45530') \
    .with_responses() \
    .done()

# from -
DialogStateBuilder('DZM985.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.", 's5', 'say45531') \
    .with_responses() \
        .response("Извини, что сбил тебя с ног. Я случайно.", 'DZM985.D_s1', 'r', 'reply45532').with_condition(lambda: _r45532_condition()).with_action(lambda: _r45532_action()) \
        .response("Извини, что сбил тебя с ног. Я случайно.", 'DZM985.D_s1', 'r', 'reply45533').with_condition(lambda: _r45533_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM985.D_s1', 'r', 'reply45534').with_condition(lambda: _r45534_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM985.D_s2', 'r', 'reply45535').with_condition(lambda: _r45535_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45536').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45537').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM985.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…", 's6', 'say45538') \
    .with_responses() \
        .response("Ой-ой…", 'DZM985.D_s3', 'r', 'reply45539').with_action(lambda: _r45539_action()) \
    .done()

# from 3.0
DialogStateBuilder('DZM985.D_s7') \
    .with_npc_lines() \
        .line(SPEAKER, "Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.", 's7', 'say64205') \
    .with_responses() \
        .response("Хм-м. Думаю, я смогу найти применение этой руке…", EXIT, 'r', 'reply64206').with_action(lambda: _dispose()) \
    .done()