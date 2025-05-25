def _r6510_condition():
    return not changed_law_once('zombie_chaotic')
def _r6510_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6511_condition():
    return changed_law_once('zombie_chaotic')
def _r6512_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6513_condition():
    return current_global_settings()['can_speak_with_dead']
def _r9562_action():
    DO ~change_law_once(-1, 'chaotic_zom257_1') ~

EXIT = -1

# from -
DialogStateBuilder('DZM257.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза этого трупа близко посажены и слегка косят: один смотрит влево, а другой — вправо. Ты с трудом различаешь номер 257 на разбитом лбу: похоже, труп несколько раз получил по голове, из-за чего номер различается с трудом.", 's0', 'say6507') \
    .with_responses() \
        .response("У тебя голова не кружится из-за глаз?", 'DZM257.D_s1', 'r', 'reply6510').with_condition(lambda: _r6510_condition()).with_action(lambda: _r6510_action()) \
        .response("У тебя голова не кружится из-за глаз?", 'DZM257.D_s1', 'r', 'reply6511').with_condition(lambda: _r6511_condition()) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM257.D_s1', 'r', 'reply6512').with_condition(lambda: _r6512_condition()) \
        .response("Использовать на трупе свою способность История костей.", 'DZM257.D_s2', 'r', 'reply6513').with_condition(lambda: _r6513_condition()) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6514').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6515').with_action(lambda: _dispose()) \
    .done()

# from 0.0 0.1 0.2
DialogStateBuilder('DZM257.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "В глазах трупа нет даже намека на понимание; они продолжают смотреть каждый в свою сторону.", 's1', 'say6508') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6516').with_action(lambda: _dispose()) \
    .done()

# from 0.3
DialogStateBuilder('DZM257.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух врывается назад в тело с такой силой, что труп, охваченный судорогой, отлетает назад! Тело, извиваясь и мечась в безумном танце, тотчас поднимается на ноги, размахивая руками, разрывая швы и тряся отваливающимися кусками плоти. Глаза трупа выпучиваются и вращаются, а сам он без конца хихикает как сумасшедший…", 's2', 'say6509') \
    .with_responses() \
        .response("Э-э… У меня к тебе вопрос, дух…", 'DZM257.D_s3', 'r', 'reply6517') \
        .response("Оставить духа в покое.", EXIT, 'r', 'reply9558').with_action(lambda: _dispose()) \
    .done()

# from 2.0
DialogStateBuilder('DZM257.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Одержимый труп кричит нараспев, громкость и тон его голоса беспорядочно меняются. ТЫ — ДУХ, Я — ЖИВОЙ, это ТЫ ответишь на вопросы мои! Кажется, твой смущенный вид ему понравился. Он вставляет в рот свои костяные пальцы и растягивается его в зловещей усмешке, одержимо смеясь и высовывая мясистый белый язык.", 's3', 'say9553') \
    .with_responses() \
        .response("Хорошо… задавай свои вопросы.", 'DZM257.D_s4', 'r', 'reply9559') \
        .response("Нет. Это я хотел задать *тебе* вопрос…", 'DZM257.D_s5', 'r', 'reply9560') \
        .response("Оставить в покое беспокойного духа.", 'DZM257.D_s6', 'r', 'reply9561') \
    .done()

# from 3.0 4.0 5.0
DialogStateBuilder('DZM257.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "На мгновение дух успокаивается, затем взрывается потоком громкого, сводящего с ума бессмысленного бормотания. Какофония сводит с ума, угрожая поставить тебя на колени. Так же внезапно, как и началось, все… прекращается. Труп стоит, тихо подергиваясь.", 's4', 'say9554') \
    .with_responses() \
        .response("Я не совсем уловил последнюю часть. Ты можешь повторить это еще раз?", 'DZM257.D_s4', 'r', 'reply9562').with_action(lambda: _r9562_action()) \
        .response("Я не понимаю. Тем не менее, у меня есть вопрос…", 'DZM257.D_s5', 'r', 'reply9563') \
        .response("Я тебя не понимаю. Прощай.", 'DZM257.D_s6', 'r', 'reply9564') \
    .done()

# from 3.1 4.1 5.1
DialogStateBuilder('DZM257.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух снова кричит нараспев: На вопросы ЖИВЫХ МЕРТВЫЙ ответит. ТАК было, так ЕСТЬ и будет ТАК. На мои ОТВЕТЫ ты задашь вопросы! Выражение твоего лица очень ему нравится; он пускается в такой дикий пляс, что ты уже начинаешь сомневаться, что труп вынесет такое обращение над собой. Пока он скачет, ты даже слышишь грохот и треск костей и звук лопающихся сухожилий.", 's5', 'say9555') \
    .with_responses() \
        .response("Ну хорошо… задавай свои вопросы.", 'DZM257.D_s4', 'r', 'reply9565') \
        .response("Ты не понимаешь. У меня вопрос к *тебе*…", 'DZM257.D_s5', 'r', 'reply9566') \
        .response("Махнуть рукой и оставить в покое бормочущего духа.", 'DZM257.D_s6', 'r', 'reply9567') \
    .done()

# from 3.2 4.2 5.2
DialogStateBuilder('DZM257.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Покидая тело, дух растягивает губы в понимающей улыбке. Его дикие сверкающие глаза впиваются в тебя пронизывающим взглядом психопата. Он шепчет одно единственное слово, старательно произнося каждую букву, будто перебирает жемчужное ожерелье: Лимбо…", 's6', 'say9556') \
    .with_responses() \
        .response("Что?", 'DZM257.D_s7', 'r', 'reply9568') \
        .response("Не обращать на него внимания, отвернуться.", EXIT, 'r', 'reply9569').with_action(lambda: _dispose()) \
    .done()

# from 6.0
DialogStateBuilder('DZM257.D_s7') \
    .with_npc_lines() \
        .line(SPEAKER, "…и он уходит, оставляя тебя в нерешительности и некоторой запутанности. Зомби молча возвращается к своей работе.", 's7', 'say9557') \
    .with_responses() \
    .done()