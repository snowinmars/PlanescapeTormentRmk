def _r34923_condition():
    return not changed_law_once('zombie_chaotic')
def _r34923_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45070_condition():
    return changed_law_once('zombie_chaotic')
def _r45071_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45072_condition():
    return current_global_settings()['can_speak_with_dead']

EXIT = -1

######
# Check EXTENDS ~DMORTE~ : 477
######
# from -
DialogStateBuilder('DZM965.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.", 's0', 'say34920') \
    .with_responses() \
    .done()

# from -
DialogStateBuilder('DZM965.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.", 's1', 'say34922') \
    .with_responses() \
        .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r', 'reply34923').with_condition(lambda: _r34923_condition()).with_action(lambda: _r34923_action()) \
        .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r', 'reply45070').with_condition(lambda: _r45070_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM965.D_s2', 'r', 'reply45071').with_condition(lambda: _r45071_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM965.D_s3', 'r', 'reply45072').with_condition(lambda: _r45072_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply45073').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45074').with_action(lambda: _dispose()) \
    .done()

# from 1.0 1.1 1.2
DialogStateBuilder('DZM965.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп уставился на тебя невидящим взглядом.", 's2', 'say34927') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply34928').with_action(lambda: _dispose()) \
    .done()

# from 1.3
DialogStateBuilder('DZM965.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say45069') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply45075').with_action(lambda: _dispose()) \
    .done()