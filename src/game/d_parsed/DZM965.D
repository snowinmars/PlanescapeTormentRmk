def _r34923_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34923_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45070_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45071_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45072_condition(gsm):
    return gsm.get_can_speak_with_dead()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

######
# Check EXTENDS ~DMORTE~ : 477
######
DialogStateBuilder().state('DZM965.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.", 's0', 'say34920') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DZM965.D_s1', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.", 's1', 'say34922') \
    .with_responses() \
        .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r', 'reply34923').with_condition(lambda: _r34923_condition(gsm)).with_action(lambda: _r34923_action(gsm)) \
        .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r', 'reply45070').with_condition(lambda: _r45070_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM965.D_s2', 'r', 'reply45071').with_condition(lambda: _r45071_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM965.D_s3', 'r', 'reply45072').with_condition(lambda: _r45072_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45073').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45074').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM965.D_s2', '# from 1.0 1.1 1.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп уставился на тебя невидящим взглядом.", 's2', 'say34927') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34928').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM965.D_s3', '# from 1.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say45069') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45075').with_action(lambda: _dispose()) \
    .push(manager)