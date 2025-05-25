def _r34932_condition():
    return not changed_law_once('zombie_chaotic')
def _r34932_action():
    change_law_once(-1, 'zombie_chaotic')
def _r34935_condition():
    return changed_law_once('zombie_chaotic')
def _r34936_action():
    DO ~GiveItem("Bandage",Protagonist) ~
def _r34937_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r34940_condition():
    return current_morgue_settings()['can_speak_with_dead']
def _r34934_condition():
    HasItem("Bandage","ZM396")
def _r34934_action():
    DO ~GiveItem("Bandage",Protagonist) ~
def _r45112_condition():
    return not changed_law_once('zombie_chaotic')
def _r45112_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45113_condition():
    return changed_law_once('zombie_chaotic')
def _r45114_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45115_condition():
    return current_morgue_settings()['can_speak_with_dead']

EXIT = -1

# from -
DialogStateBuilder('DZM396.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер 396; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов… похоже, они могут пригодиться.", 's0', 'say34931') \
    .with_responses() \
        .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r', 'reply34932').with_condition(lambda: _r34932_condition()).with_action(lambda: _r34932_action()) \
        .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r', 'reply34935').with_condition(lambda: _r34935_condition()) \
        .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r', 'reply34936').with_action(lambda: _r34936_action()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r', 'reply34937').with_condition(lambda: _r34937_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r', 'reply34940').with_condition(lambda: _r34940_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply34941').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45106').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.3 4.0 4.1 4.2
DialogStateBuilder('DZM396.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say34933') \
    .with_responses() \
        .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r', 'reply34934').with_condition(lambda: _r34934_condition()).with_action(lambda: _r34934_action()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45107').with_action(lambda: _dispose()) \
    .done()

# from 0.4 4.3
DialogStateBuilder('DZM396.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34938') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34939').with_action(lambda: _dispose()) \
    .done()

# from 0.2 1.0
DialogStateBuilder('DZM396.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.", 's3', 'say45108') \
    .with_responses() \
        .response("Снова осмотреть труп.", 'DZM396.D_s4', 'r', 'reply45109') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45110').with_action(lambda: _dispose()) \
    .done()

# from 3.0
DialogStateBuilder('DZM396.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер 396, а его губы крепко зашиты.", 's4', 'say45111') \
    .with_responses() \
        .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r', 'reply45112').with_condition(lambda: _r45112_condition()).with_action(lambda: _r45112_action()) \
        .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r', 'reply45113').with_condition(lambda: _r45113_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r', 'reply45114').with_condition(lambda: _r45114_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r', 'reply45115').with_condition(lambda: _r45115_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45116').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45117').with_action(lambda: _dispose()) \
    .done()