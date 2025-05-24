EXIT = -1
######
# Check EXTENDS ~DMORTE1~ : 34
######
# from -
DialogStateBuilder('DZM782.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер 782, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24708') \
    .with_responses() \
        .response("Я ищу ключ… быть может, он у тебя?", EXIT, 'r', 'reply24709').with_condition(lambda: '  NearbyDialog("DMorte1") ') \
        .response("Я ищу ключ… быть может, он у тебя?", 'DZM782.D_s1', 'r', 'reply24712').with_condition(lambda: '  !NearbyDialog("DMorte1") ') \
        .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM782.D_s2', 'r', 'reply24713') \
        .response("Было приятно с тобой поболтать. Прощай.", 'DZM782.D_s2', 'r', 'reply24714') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply24717') \
    .done()

# from 0.1
DialogStateBuilder('DZM782.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп не отвечает.", 's1', 'say24710') \
    .with_responses() \
        .response("Тогда неважно. Прощай.", EXIT, 'r', 'reply24711') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42304') \
    .done()

# from 0.2 0.3
DialogStateBuilder('DZM782.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.", 's2', 'say24715') \
    .with_responses() \
        .response("Мне нужен этот ключ, труп… похоже, тебе уже недолго осталось прозябать в этом мире.", EXIT, 'r', 'reply24716').with_action(lambda: ' DO ~ForceAttack(Protagonist,"ZM782") ~ ') \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply42305') \
    .done()