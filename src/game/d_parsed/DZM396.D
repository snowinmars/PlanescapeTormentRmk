def _r34932_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34932_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r34935_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r34936_action(gsm):
    DO ~GiveItem("Bandage",Protagonist) ~
def _r34937_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r34940_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r34934_condition(gsm):
    HasItem("Bandage","ZM396")
def _r34934_action(gsm):
    DO ~GiveItem("Bandage",Protagonist) ~
def _r45112_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r45112_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45113_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45114_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45115_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM396.D_s0', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер 396; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов… похоже, они могут пригодиться.", 's0', 'say34931') \
    .with_responses() \
        .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r', 'reply34932').with_condition(lambda: _r34932_condition(gsm)).with_action(lambda: _r34932_action(gsm)) \
        .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r', 'reply34935').with_condition(lambda: _r34935_condition(gsm)) \
        .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r', 'reply34936').with_action(lambda: _r34936_action(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r', 'reply34937').with_condition(lambda: _r34937_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r', 'reply34940').with_condition(lambda: _r34940_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply34941').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45106').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM396.D_s1', '# from 0.0 0.1 0.3 4.0 4.1 4.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say34933') \
    .with_responses() \
        .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r', 'reply34934').with_condition(lambda: _r34934_condition(gsm)).with_action(lambda: _r34934_action(gsm)) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45107').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM396.D_s2', '# from 0.4 4.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34938') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34939').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM396.D_s3', '# from 0.2 1.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.", 's3', 'say45108') \
    .with_responses() \
        .response("Снова осмотреть труп.", 'DZM396.D_s4', 'r', 'reply45109') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45110').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM396.D_s4', '# from 3.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер 396, а его губы крепко зашиты.", 's4', 'say45111') \
    .with_responses() \
        .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r', 'reply45112').with_condition(lambda: _r45112_condition(gsm)).with_action(lambda: _r45112_action(gsm)) \
        .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r', 'reply45113').with_condition(lambda: _r45113_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r', 'reply45114').with_condition(lambda: _r45114_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r', 'reply45115').with_condition(lambda: _r45115_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45116').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45117').with_action(lambda: _dispose()) \
    .push(manager)