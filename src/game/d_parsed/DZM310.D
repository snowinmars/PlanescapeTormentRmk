def _r6499_condition():
    return not gsm.once_tracked('zombie_chaotic')
def _r6499_action():
    gsm.dec_once_law('zombie_chaotic')
def _r6500_condition():
    return gsm.once_tracked('zombie_chaotic')
def _r6501_condition():
    return gsm.get_vaxis_exposed()
def _r6502_condition():
    return gsm.get_can_speak_with_dead()
def _r6502_action():
    DO ~gsm.set_meet_oinosian(True) ~
def _r9664_condition():
    return not gsm.get_meet_pharod()

EXIT = -1

# from -
DialogStateBuilder('DZM310.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Губы этого ходячего трупа крепко сшиты, над бровью вырезан номер 310; воздух вокруг него насыщен формальдегидом. Как только ты встаешь на его пути, он поворачивает к тебе свой безжизненный взгляд.", 's0', 'say6495') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM310.D_s1', 'r', 'reply6499').with_condition(lambda: _r6499_condition()).with_action(lambda: _r6499_action()) \
        .response("Итак… что тут у нас интересного?", 'DZM310.D_s1', 'r', 'reply6500').with_condition(lambda: _r6500_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM310.D_s1', 'r', 'reply6501').with_condition(lambda: _r6501_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM310.D_s2', 'r', 'reply6502').with_condition(lambda: _r6502_condition()).with_action(lambda: _r6502_action()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6503').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6504').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM310.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6496') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6505').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM310.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты уж было решаешь, что труп слишком далек от того, чтобы отвечать… но вдруг ты замечаешь страдания, отпечатанные на его лице, и ощущаешь в них беспредельное отчаяние — дух точно вернулся в свою старую оболочку.", 's2', 'say6498') \
    .with_responses() \
        .response("Я хотел бы задать тебе вопрос…", 'DZM310.D_s3', 'r', 'reply6506') \
        .response("Оставить духа в покое.", 'DZM310.D_s17', 'r', 'reply9657') \
    .done()

# from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
DialogStateBuilder('DZM310.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Он говорит медленно и монотонно, его голос полон страдания и безысходности. Даже сейчас его почти не отличить от бездушного зомби. Что ты хочешь знать, милорд?", 's3', 'say9642') \
    .with_responses() \
        .response("Так кто ты?", 'DZM310.D_s4', 'r', 'reply9658') \
        .response("Откуда ты?", 'DZM310.D_s5', 'r', 'reply9659') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM310.D_s6', 'r', 'reply9660') \
        .response("Где ты… где находится твой дух… теперь?", 'DZM310.D_s7', 'r', 'reply9661') \
        .response("Почему ты говоришь с таким отчаянием?", 'DZM310.D_s8', 'r', 'reply9662') \
        .response("Что ты знаешь об этом месте?", 'DZM310.D_s9', 'r', 'reply9663') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM310.D_s10', 'r', 'reply9664').with_condition(lambda: _r9664_condition()) \
        .response("Ничего, неважно.", 'DZM310.D_s17', 'r', 'reply9665') \
    .done()

# from 3.0
DialogStateBuilder('DZM310.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух говорит так тихо, что ты с трудом его слышишь: губы трупа едва двигаются при каждом слове. Я никто, милорд; бедное насекомое, отчаянно вцепившееся в Башню Утрат в Ойносе. Когда-то меня называли Арабеймом, милорд… давно, очень давно.", 's4', 'say9643') \
    .with_responses() \
        .response("Башне Утрат?", 'DZM310.D_s13', 'r', 'reply9666') \
        .response("Ойносе?", 'DZM310.D_s7', 'r', 'reply9667') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9668') \
        .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9669') \
    .done()

# from 3.1
DialogStateBuilder('DZM310.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Я жил в Сигиле, милорд. В Улье. Это было не самое ужасное место, как теперь мне кажется, по крайней мере, по сравнению с моим новым домом, где я теперь… Ойносом. Труп моргает, так медленно, что на мгновенье тебе кажется, что он просто закрыл глаза.", 's5', 'say9644') \
    .with_responses() \
        .response("В Улье?", 'DZM310.D_s12', 'r', 'reply9670') \
        .response("Ойносе?", 'DZM310.D_s7', 'r', 'reply9671') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9672') \
        .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9673') \
    .done()

# from 3.2
DialogStateBuilder('DZM310.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Я был убит разбойниками, милорд. Я напился и заблудился по улицам Улья. В конце концов, я стал добычей банды головорезов. Вот и все. Наверно, моя жизнь стоила даже меньше тех медяков, которые получил сборщик за мое тело.", 's6', 'say9645') \
    .with_responses() \
        .response("Почему ты такого низкого мнения о своей жизни?", 'DZM310.D_s16', 'r', 'reply9674') \
        .response("Сборщик?", 'DZM310.D_s15', 'r', 'reply9675') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9676') \
        .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9677') \
    .done()

# from 3.3 4.1 5.1 8.0 12.0
DialogStateBuilder('DZM310.D_s7') \
    .with_npc_lines() \
        .line(SPEAKER, "На секунду дух закрывает глаза; труп слегка дрожит. Ужасный Ойнос, милорд. В Серой пустоши. Там, где пребывает моя душа, в тени Хин-Ойна, Башни Утрат.", 's7', 'say9646') \
    .with_responses() \
        .response("Расскажи мне больше об этом… Ойносе.", 'DZM310.D_s11', 'r', 'reply9678') \
        .response("Хин-Ойна?", 'DZM310.D_s13', 'r', 'reply9679') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9680') \
        .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9681') \
    .done()

# from 3.4
DialogStateBuilder('DZM310.D_s8') \
    .with_npc_lines() \
        .line(SPEAKER, "Для меня больше ничего нет, милорд. Я в вечной западне в чумной пустоши, в Ойносе. Для таких, как я, больше нет надежд. Кажется, дух опустился в более чем патетичное состояние, плечи трупа поникли под весом его скорби.", 's8', 'say9647') \
    .with_responses() \
        .response("Ойносе?", 'DZM310.D_s7', 'r', 'reply9682') \
        .response("Понятно. У меня есть другой вопрос…", 'DZM310.D_s3', 'r', 'reply9683') \
        .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9684') \
    .done()

# from 3.5 15.0
DialogStateBuilder('DZM310.D_s9') \
    .with_npc_lines() \
        .line(SPEAKER, "Очень мало, милорд. Только то, что сюда доставляют умерших для погребения или кремации… или в качестве дешевой рабочей силы, как это случилось с моим телом.", 's9', 'say9648') \
    .with_responses() \
        .response("Теперь понятно. Еще вопрос…", 'DZM310.D_s3', 'r', 'reply9685') \
        .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9686') \
    .done()

# from 3.6
DialogStateBuilder('DZM310.D_s10') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп медленно качает головой из стороны в сторону. Нет, милорд. Я не знаю никого с таким именем. Прошу прощения, милорд.", 's10', 'say9649') \
    .with_responses() \
        .response("Не надо извиняться. У меня еще вопрос…", 'DZM310.D_s3', 'r', 'reply9687') \
        .response("Тогда прощай.", 'DZM310.D_s17', 'r', 'reply9688') \
    .done()

# from 7.0
DialogStateBuilder('DZM310.D_s11') \
    .with_npc_lines() \
        .line(SPEAKER, "Мало что можно сказать, милорд. Это земля моего Повелителя, лорда Хин-Ойна… полная боли и страданий, разлагающихся тел и душ. Это место полной безнадеги.", 's11', 'say9650') \
    .with_responses() \
        .response("Кто такой этот… 'Повелитель'?", 'DZM310.D_s14', 'r', 'reply9689') \
        .response("Хин-Ойна?", 'DZM310.D_s13', 'r', 'reply9690') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9691') \
        .response("Безусловно, это так. Прощай, дух.", 'DZM310.D_s17', 'r', 'reply9692') \
    .done()

# from 5.0
DialogStateBuilder('DZM310.D_s12') \
    .with_npc_lines() \
        .line(SPEAKER, "Да, милорд. Плохое место, но там не так страшно, как в Ойносе.", 's12', 'say9651') \
    .with_responses() \
        .response("Ойносе?", 'DZM310.D_s7', 'r', 'reply9693') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9694') \
        .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9695') \
    .done()

# from 4.0 7.1 11.1 14.0
DialogStateBuilder('DZM310.D_s13') \
    .with_npc_lines() \
        .line(SPEAKER, "Да, милорд. Это очень большая башня, намного выше любого здания в Сигиле. Она сделана из кости, милорд, она очень похоже на позвоночник огромного существа. Там я и тружусь, восстанавливая урон, нанесенный армиями мятежных принцев, врагов моего Повелителя.", 's13', 'say9652') \
    .with_responses() \
        .response("Кто такой этот 'Повелитель'?", 'DZM310.D_s14', 'r', 'reply9696') \
        .response("Понятно. У меня есть другой вопрос…", 'DZM310.D_s3', 'r', 'reply9697') \
        .response("Понятно. Теперь мне нужно идти, дух. Прощай.", 'DZM310.D_s17', 'r', 'reply9698') \
    .done()

# from 11.0 13.0
DialogStateBuilder('DZM310.D_s14') \
    .with_npc_lines() \
        .line(SPEAKER, "Я знаю его только как Повелителя, милорд. Он — лорд Хин-Ойна, принц нечисти, несказанно могущественный ультралот. Он тот, кому принадлежит моя душа, и будет принадлежать вечно, обреченная чахнуть под его ступней, пока вечность не будет перемолота в Забвение.", 's14', 'say9653') \
    .with_responses() \
        .response("Расскажи мне об этом 'Хин-Ойне'.", 'DZM310.D_s13', 'r', 'reply9699') \
        .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r', 'reply9700') \
        .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9701') \
    .done()

# from 6.1
DialogStateBuilder('DZM310.D_s15') \
    .with_npc_lines() \
        .line(SPEAKER, "Да, милорд, сборщик. Тот, кто собирает мертвецов Сигила и доставляет их в Морг — там, где мы находимся — за небольшую цену. Дух оглядывает окружающую обстановку, затем тихо вздыхает.", 's15', 'say9654') \
    .with_responses() \
        .response("Что ты знаешь об этом Морге?", 'DZM310.D_s9', 'r', 'reply9702') \
        .response("Понятно. У меня есть другой вопрос к тебе…", 'DZM310.D_s3', 'r', 'reply9703') \
        .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r', 'reply9704') \
    .done()

# from 6.0
DialogStateBuilder('DZM310.D_s16') \
    .with_npc_lines() \
        .line(SPEAKER, "Я не хочу говорить об этом, милорд. Это не тема для разговоров. Похоже, дух непоколебим в данном вопросе.", 's16', 'say9655') \
    .with_responses() \
        .response("Хорошо. Тогда у меня есть вопросы…", 'DZM310.D_s3', 'r', 'reply9705') \
        .response("Тогда прощай.", 'DZM310.D_s17', 'r', 'reply9706') \
    .done()

# from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
DialogStateBuilder('DZM310.D_s17') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты даже не замечаешь, как дух покинул тело, до тех пор, пока зомби, неуклюже шагая, не вернулся к своей работе.", 's17', 'say9656') \
    .with_responses() \
    .done()

# from -
DialogStateBuilder('DZM310.D_s18') \
    .with_npc_lines() \
        .line(SPEAKER, "Похоже, этот труп сгорбился под тяжестью страданий духа.", 's18', 'say20102') \
    .with_responses() \
        .response("У меня есть несколько вопросов…", 'DZM310.D_s3', 'r', 'reply20103') \
        .response("Я просто проходил мимо. Прощай.", EXIT, 'r', 'reply20104').with_action(lambda: _dispose()) \
    .done()