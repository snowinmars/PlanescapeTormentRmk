def _r47003_condition():
    Global("Page_Taken","GLOBAL",0)
def _r47004_condition():
    Global("Page_Taken","GLOBAL",1)
def _r47005_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r47006_condition():
    return current_global_settings()['can_speak_with_dead']
def _r47014_action():
    DO ~GiveItemCreate("Logpage",Protagonist,1,0,0) SetGlobal("Page_Taken","GLOBAL",1) ~

EXIT = -1

# from 5.0
DialogStateBuilder('DZM1664.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот громадный труп тихо стоит в углу комнаты, лицом к стене. Похоже, раньше это был крупный мужчина в расцвете лет и, судя по состоянию тела, умер он совсем недавно. На лбу виден недавно вышитый номер 1664. Кажется, труп служит в качестве библиотекаря: в руках он несет огромную стопку книг.", 's0', 'say47002') \
    .with_responses() \
        .response("Осмотреть книги.", 'DZM1664.D_s3', 'r', 'reply47003').with_condition(lambda: _r47003_condition()) \
        .response("Снова осмотреть книги.", 'DZM1664.D_s6', 'r', 'reply47004').with_condition(lambda: _r47004_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1664.D_s1', 'r', 'reply47005').with_condition(lambda: _r47005_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1664.D_s2', 'r', 'reply47006').with_condition(lambda: _r47006_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply47007').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47008').with_action(lambda: _dispose()) \
    .done()

# from 0.2 6.0
DialogStateBuilder('DZM1664.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби безучастно пялится в стену.", 's1', 'say47009') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47010').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM1664.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп даже не шевелится. Несмотря на недавнюю смерть, похоже, что он не сможет ответить на твои вопросы.", 's2', 'say47011') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47012').with_action(lambda: _dispose()) \
    .done()

# from 0.0
DialogStateBuilder('DZM1664.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Тем не менее, просматривая их, ты обнаруживаешь вырванную страницу между двумя книгами. Неожиданно у тебя возникает ощущение, что кто-то поместил ее сюда, чтобы спрятать.", 's3', 'say47013') \
    .with_responses() \
        .response("Взять страницу.", 'DZM1664.D_s4', 'r', 'reply47014').with_action(lambda: _r47014_action()) \
    .done()

# from 3.0
DialogStateBuilder('DZM1664.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, эта страница не из бухгалтерских книг… похоже, она из какого-то регистрационного журнала. Корешок ровный, как будто страницу срезали ножом, и ты подозреваешь, что ее удалили специально.", 's4', 'say47015') \
    .with_responses() \
        .response("Прочитать ее.", 'DZM1664.D_s5', 'r', 'reply47016') \
    .done()

# from 4.0
DialogStateBuilder('DZM1664.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты бегло осматриваешь страницу… это список тел, доставленных в Морг и зарегистрированных в Приемной комнате. Все записи принадлежат недавно прибывшим телам.", 's5', 'say47017') \
    .with_responses() \
        .response("Снова осмотреть зомби.", 'DZM1664.D_s0', 'r', 'reply47018') \
        .response("Взять страницу с собой и уйти.", EXIT, 'r', 'reply47019').with_action(lambda: _dispose()) \
    .done()

# from 0.1
DialogStateBuilder('DZM1664.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Ты снова просматриваешь тексты, но больше ничего не находишь.", 's6', 'say47021') \
    .with_responses() \
        .response("И как это тебя угораздило стать библиотекарем? Другие места были заняты?", 'DZM1664.D_s1', 'r', 'reply47022') \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply47023').with_action(lambda: _dispose()) \
    .done()