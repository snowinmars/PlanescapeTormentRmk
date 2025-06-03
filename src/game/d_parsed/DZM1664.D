def _r47003_condition(gsm):
    return not gsm.get_has_dzm1664_page()
def _r47004_condition(gsm):
    return gsm.get_has_dzm1664_page()
def _r47005_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r47006_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r47014_action(gsm):
    gsm.set_has_logpage(True) gsm.set_has_dzm1664_page(True)

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('dzm1664_s0', '# from 5.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Этот громадный труп тихо стоит в углу комнаты, лицом к стене. Похоже, раньше это был крупный мужчина в расцвете лет и, судя по состоянию тела, умер он совсем недавно. На лбу виден недавно вышитый номер 1664. Кажется, труп служит в качестве библиотекаря: в руках он несет огромную стопку книг.", 's0', 'say47002') \
    .with_responses() \
        .response("Осмотреть книги.", 'dzm1664_s3', 'r', 'reply47003').with_condition(lambda: _r47003_condition(gsm)) \
        .response("Снова осмотреть книги.", 'dzm1664_s6', 'r', 'reply47004').with_condition(lambda: _r47004_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'dzm1664_s1', 'r', 'reply47005').with_condition(lambda: _r47005_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'dzm1664_s2', 'r', 'reply47006').with_condition(lambda: _r47006_condition(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply47007').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47008').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm1664_s1', '# from 0.2 6.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Зомби безучастно пялится в стену.", 's1', 'say47009') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47010').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm1664_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп даже не шевелится. Несмотря на недавнюю смерть, похоже, что он не сможет ответить на твои вопросы.", 's2', 'say47011') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply47012').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm1664_s3', '# from 0.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Тем не менее, просматривая их, ты обнаруживаешь вырванную страницу между двумя книгами. Неожиданно у тебя возникает ощущение, что кто-то поместил ее сюда, чтобы спрятать.", 's3', 'say47013') \
    .with_responses() \
        .response("Взять страницу.", 'dzm1664_s4', 'r', 'reply47014').with_action(lambda: _r47014_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('dzm1664_s4', '# from 3.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, эта страница не из бухгалтерских книг… похоже, она из какого-то регистрационного журнала. Корешок ровный, как будто страницу срезали ножом, и ты подозреваешь, что ее удалили специально.", 's4', 'say47015') \
    .with_responses() \
        .response("Прочитать ее.", 'dzm1664_s5', 'r', 'reply47016') \
    .push(manager)

DialogStateBuilder().state('dzm1664_s5', '# from 4.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты бегло осматриваешь страницу… это список тел, доставленных в Морг и зарегистрированных в Приемной комнате. Все записи принадлежат недавно прибывшим телам.", 's5', 'say47017') \
    .with_responses() \
        .response("Снова осмотреть зомби.", 'dzm1664_s0', 'r', 'reply47018') \
        .response("Взять страницу с собой и уйти.", EXIT, 'r', 'reply47019').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('dzm1664_s6', '# from 0.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Ты снова просматриваешь тексты, но больше ничего не находишь.", 's6', 'say47021') \
    .with_responses() \
        .response("И как это тебя угораздило стать библиотекарем? Другие места были заняты?", 'dzm1664_s1', 'r', 'reply47022') \
        .response("Оставить зомби в покое.", EXIT, 'r', 'reply47023').with_action(lambda: _dispose()) \
    .push(manager)