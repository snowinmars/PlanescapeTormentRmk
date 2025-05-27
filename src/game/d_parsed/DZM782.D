def _r24709_condition():
    return gsm.get_in_party_morte()
def _r24712_condition():
    return not gsm.get_in_party_morte()
def _r24716_action():
    DO ~ForceAttack(Protagonist,"ZM782") ~

EXIT = -1

######
# Check EXTENDS ~DMORTE1~ : 34
######
# from -
DialogStateBuilder('DZM782.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер 782, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24708') \
    .with_responses() \
        .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r', 'reply24709').with_condition(lambda: _r24709_condition()).with_action(lambda: _dispose()) \
        .response("Я ищу ключ… быть может, он у тебя?", 'DZM782.D_s1', 'r', 'reply24712').with_condition(lambda: _r24712_condition()) \
        .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM782.D_s2', 'r', 'reply24713') \
        .response("Было приятно с тобой поболтать. Прощай.", 'DZM782.D_s2', 'r', 'reply24714') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24717').with_action(lambda: _dispose()) \
    .done()

# from 0.1
DialogStateBuilder('DZM782.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не отвечает.", 's1', 'say24710') \
    .with_responses() \
        .response("Тогда неважно. Прощай.", EXIT, 'r', 'reply24711').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42304').with_action(lambda: _dispose()) \
    .done()

# from 0.2 0.3
DialogStateBuilder('DZM782.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.", 's2', 'say24715') \
    .with_responses() \
        .response("Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.", EXIT, 'r', 'reply24716').with_action(lambda: _r24716_action()).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42305').with_action(lambda: _dispose()) \
    .done()