def _r6565_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6565_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6566_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6567_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6568_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r6568_action(gsm):
    DO ~set_asonje_state(1) ~
def _r9247_action(gsm):
    DO ~gsm.dec_once_good('evil_asonje_1') set_asonje_state(3) ~
def _r9256_condition(gsm):
    return not gsm.get_meet_pharod()
def _r9276_condition(gsm):
    return not gsm.get_meet_pharod()
def _r9282_condition(gsm):
    return gsm.get_asonje_state() != 2
def _r9286_condition(gsm):
    return gsm.get_asonje_state() == 2
def _r9319_condition(gsm):
    return not gsm.get_meet_pharod()
def _r9289_action(gsm):
    DO ~set_asonje_state(2) ~
def _r9290_action(gsm):
    DO ~set_asonje_state(2) ~
def _r9291_action(gsm):
    DO ~set_asonje_state(2) ~
def _r9304_action(gsm):
    DO ~IncrementGlobal("Adahn","GLOBAL",1) ~
def _r9306_condition(gsm):
    return gsm.get_asonje_state() != 2
def _r9307_condition(gsm):
    return gsm.get_asonje_state() == 2
def _r9312_condition(gsm):
    return not gsm.get_meet_pharod()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM1094.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "У этого ходячего трупа на лбу вырезан номер 1094. Его губы крепко сшиты, от него исходит сильный химический запах свежего формальдегида, окружающего его в виде облака. Несмотря на мертвенно-бледное лицо и впалые безжизненные молочно-белые глаза, совершенно очевидно, что раньше это был красивый молодой человек.", 's0', 'say6562') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1094.D_s1', 'r', 'reply6565').with_condition(lambda: _r6565_condition(gsm)).with_action(lambda: _r6565_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM1094.D_s1', 'r', 'reply6566').with_condition(lambda: _r6566_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1094.D_s1', 'r', 'reply6567').with_condition(lambda: _r6567_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1094.D_s2', 'r', 'reply6568').with_condition(lambda: _r6568_condition(gsm)).with_action(lambda: _r6568_action(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6569').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6570').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s1', '# from 0.0 0.1 0.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6563') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6571').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s2', '# from 0.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Тело на миг вздрагивает, затем замирает: душа еще раз вселяется в когда-то покинутую оболочку. В считанные секунды в глазах зомби появляется некое подобие жизни, и он начинает оглядываться по сторонам с любопытно-озадаченным выражением лица. Все тело теперь окружено мягким золотым свечением.", 's2', 'say6564') \
    .with_responses() \
        .response("Я хотел бы задать тебе вопрос…", 'DZM1094.D_s3', 'r', 'reply6572') \
        .response("Оставить духа.", EXIT, 'r', 'reply9246').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s3', '# from 2.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Внезапно дух обращает на тебя внимание. Он сверкает обезоруживающе-дружелюбной улыбкой, разрывая при этом все швы на рту. Удивившись, он касается руками своих губ, затем пожимает плечами и приветственно кивает. Где… где я? Какое странное место. Я тебя знаю? Он осторожно кашляет, потирая окоченевшую глотку.", 's3', 'say9224') \
    .with_responses() \
        .response("Ты здесь, чтобы отвечать на *мои* вопросы, дух.", 'DZM1094.D_s4', 'r', 'reply9247').with_action(lambda: _r9247_action(gsm)) \
        .response("Ты… по крайней мере твои останки… находятся в морге.", 'DZM1094.D_s13', 'r', 'reply9248') \
        .response("Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…", 'DZM1094.D_s14', 'r', 'reply9249') \
        .response("Вряд ли. Прощай.", EXIT, 'r', 'reply9250').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s4', '# from 3.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Дружелюбность духа моментально испаряется. Он хмурится, разорванные швы лохмотьями свешиваются с его серых иссохших губ. Хорошо, спрашивай, что хотел. Он отстраняет взгляд: ему явно скучно.", 's4', 'say9225') \
    .with_responses() \
        .response("Так кто ты?", 'DZM1094.D_s5', 'r', 'reply9251') \
        .response("Откуда ты?", 'DZM1094.D_s6', 'r', 'reply9252') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s7', 'r', 'reply9253') \
        .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s8', 'r', 'reply9254') \
        .response("Что ты знаешь об этом месте?", 'DZM1094.D_s9', 'r', 'reply9255') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s10', 'r', 'reply9256').with_condition(lambda: _r9256_condition(gsm)) \
        .response("Ничего, неважно.", EXIT, 'r', 'reply9257').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s5', '# from 4.0 11.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Меня зовут Асонж. Я могу уйти?", 's5', 'say9226') \
    .with_responses() \
        .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r', 'reply9258') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9259').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s6', '# from 4.1 11.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Не могу вспомнить. Что-нибудь еще?", 's6', 'say9227') \
    .with_responses() \
        .response("Да, еще один вопрос…", 'DZM1094.D_s11', 'r', 'reply9260') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9261').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s7', '# from 4.2 11.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух пожимает плечами и смотрит вверх. Точно не скажу. Да и какая вообще разница? Он печально сжимает свои губы и бросает на тебя тяжелый взгляд; призрачные искорки в его глазах сверкают гневом. Что-нибудь еще?", 's7', 'say9228') \
    .with_responses() \
        .response("Да, еще один вопрос…", 'DZM1094.D_s11', 'r', 'reply9262') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9263').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s8', '# from 4.3 11.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Мой дух на Арборее… — он на минуту умолкает, теряясь в теплых воспоминаниях. — В данный момент я жажду вернуться домой, подальше от твоего эгоистичного, самовольного и довольно скучного любопытства. Могу ли я вернуться?", 's8', 'say9229') \
    .with_responses() \
        .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r', 'reply9264') \
        .response("Да. Прощай.", EXIT, 'r', 'reply9265').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s9', '# from 4.4 11.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух окидывает тебя раздраженным взглядом. Нет, конечно же! Он раздосадовано мотает головой, от этого движения разорванные швы качаются туда-сюда.", 's9', 'say9230') \
    .with_responses() \
        .response("Тогда как же твое тело попало сюда на работу в эти унылые залы?", 'DZM1094.D_s12', 'r', 'reply9266') \
        .response("У меня есть другие вопросы…", 'DZM1094.D_s11', 'r', 'reply9267') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9268').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s10', '# from 4.5 11.5') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет. Похоже, ты мало его интересуешь.", 's10', 'say9231') \
    .with_responses() \
        .response("Тогда у меня есть другой вопрос…", 'DZM1094.D_s11', 'r', 'reply9269') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9270').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s11', '# from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух шумно вздыхает, наполняя воздух запахом формальдегида из легких трупа. Да-да… спрашивай.", 's11', 'say9232') \
    .with_responses() \
        .response("Так кто ты?", 'DZM1094.D_s5', 'r', 'reply9271') \
        .response("Откуда ты?", 'DZM1094.D_s6', 'r', 'reply9272') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s7', 'r', 'reply9273') \
        .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s8', 'r', 'reply9274') \
        .response("Что ты знаешь об этом месте?", 'DZM1094.D_s9', 'r', 'reply9275') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s10', 'r', 'reply9276').with_condition(lambda: _r9276_condition(gsm)) \
        .response("Ничего, неважно.", EXIT, 'r', 'reply9277').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s12', '# from 9.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Тебе, дорогой мой приятель, остается только предполагать, как и мне. Мне уже пора, если ты не против.", 's12', 'say9233') \
    .with_responses() \
        .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r', 'reply9278') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9279').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s13', '# from 3.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Он немного обдумывает это, затем начинает хохотать. Да! Это все объясняет, не так ли? Постой, я знаю тебя? Он склоняет голову набок, внимательно смотря на тебя. Похоже, для него опознание твоей личности — своего рода увлекательная игра.", 's13', 'say9234') \
    .with_responses() \
        .response("Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…", 'DZM1094.D_s14', 'r', 'reply9280') \
        .response("Вряд ли. Прощай.", EXIT, 'r', 'reply9281').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s14', '# from 3.2 13.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух пожимает плечами и улыбается, слегка посмеиваясь. Возможно, ты прав! Что ты хочешь узнать от меня? Он начинает рассеянно вытягивать остатки швов из своих губ и бросать их на пол, один за одним.", 's14', 'say9235') \
    .with_responses() \
        .response("Так кто ты?", 'DZM1094.D_s15', 'r', 'reply9282').with_condition(lambda: _r9282_condition(gsm)) \
        .response("Так кто ты?", 'DZM1094.D_s25', 'r', 'reply9286').with_condition(lambda: _r9286_condition(gsm)) \
        .response("Откуда ты?", 'DZM1094.D_s16', 'r', 'reply9287') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s17', 'r', 'reply9288') \
        .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s18', 'r', 'reply9317') \
        .response("Что ты знаешь об этом месте?", 'DZM1094.D_s19', 'r', 'reply9318') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s20', 'r', 'reply9319').with_condition(lambda: _r9319_condition(gsm)) \
        .response("Ничего, неважно.", EXIT, 'r', 'reply9320').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s15', '# from 14.0 22.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Меня зовут Асонж. А как тебя?", 's15', 'say9236') \
    .with_responses() \
        .response("Я… не знаю.", 'DZM1094.D_s21', 'r', 'reply9289').with_action(lambda: _r9289_action(gsm)) \
        .response("Я скажу тебе в другой раз. У меня есть вопрос…", 'DZM1094.D_s22', 'r', 'reply9290').with_action(lambda: _r9290_action(gsm)) \
        .response("Может быть в другой раз. Прощай.", EXIT, 'r', 'reply9291').with_action(lambda: _r9291_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s16', '# from 14.2 22.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Я отовсюду! По правде говоря, я не знаю, откуда я родом. В жизни я много путешествовал, и могу назвать своим домом многие места. Сейчас передо мной Арборея… Дух выглядит довольным.", 's16', 'say9237') \
    .with_responses() \
        .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r', 'reply9292') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9293').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s17', '# from 14.3 22.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Улыбка духа угасает, и он на мгновенье выглядит озадаченным. Странно… Я не знаю! Я точно не знаю, как умер, правда, — он пожимает плечами. — Неважно! Его радостная улыбка возвращается, сверкая даже несмотря на то, что она находится на высохшем лице трупа.", 's17', 'say9238') \
    .with_responses() \
        .response("У меня есть другие вопросы…", 'DZM1094.D_s22', 'r', 'reply9294') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9295').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s18', '# from 14.4 22.4') \
    .with_npc_lines() \
        .line(SPEAKER, "В Арборее! О более удивительном месте я и не мечтал. Нигде в моей смертной жизни я встречал места, столь чувственного… столь величественного… — он умолкает, теряясь в приятных воспоминаниях. — Прекрасные земли, прекрасный народ. Если честно, я уже скучаю по ней!", 's18', 'say9239') \
    .with_responses() \
        .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r', 'reply9296') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9297').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s19', '# from 14.5 22.5') \
    .with_npc_lines() \
        .line(SPEAKER, "Не так уж и много. Я подписал контракт с тленной, подчинившись внезапному порыву… Она показала мне какое-то ужасное место, и сказала, что мое тело будет поднято и использовано в качестве работника. Я подумал: ведь оно мне не понадобится, когда я перейду в следующую жизнь, так почему бы и нет? Можно перехватить немного серебра и потратить его на женщин и вино! Он тихонько смеется от этой мысли, в его глазах сверкают веселые призрачные искорки.", 's19', 'say9240') \
    .with_responses() \
        .response("Ты что-нибудь знаешь о городе, окружающем Морг?", 'DZM1094.D_s24', 'r', 'reply9298') \
        .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r', 'reply9299') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9300').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s20', '# from 14.6 22.6') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух на минуту задумывается. Нет, боюсь, что не слышал об этом человеке. Он твой друг?", 's20', 'say9241') \
    .with_responses() \
        .response("Возможно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r', 'reply9301') \
        .response("Не знаю. Прощай.", EXIT, 'r', 'reply9302').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s21', '# from 15.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он выглядит удивленным. Как странно! Мне очень жаль. Я ведь должен тебя *как-то* называть, верно? Дух выжидающе смотрит на тебя.", 's21', 'say9242') \
    .with_responses() \
        .response("Можешь называть меня, как хочешь. У меня есть вопрос…", 'DZM1094.D_s22', 'r', 'reply9303') \
        .response("Придумать имя: Ну, не знаю… 'Адан'?", 'DZM1094.D_s23', 'r', 'reply9304').with_action(lambda: _r9304_action(gsm)) \
        .response("Нет, это неважно. Прощай.", EXIT, 'r', 'reply9305').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s22', '# from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Конечно. Спрашивай! Он довольно улыбается, с интересом ожидая твоего вопроса. Последний шов был убран, и теперь его улыбка не такая зловещая.", 's22', 'say9243') \
    .with_responses() \
        .response("Так кто ты?", 'DZM1094.D_s15', 'r', 'reply9306').with_condition(lambda: _r9306_condition(gsm)) \
        .response("Так кто ты?", 'DZM1094.D_s25', 'r', 'reply9307').with_condition(lambda: _r9307_condition(gsm)) \
        .response("Откуда ты?", 'DZM1094.D_s16', 'r', 'reply9308') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s17', 'r', 'reply9309') \
        .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s18', 'r', 'reply9310') \
        .response("Что ты знаешь об этом месте?", 'DZM1094.D_s19', 'r', 'reply9311') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s20', 'r', 'reply9312').with_condition(lambda: _r9312_condition(gsm)) \
        .response("Ничего, неважно.", EXIT, 'r', 'reply9321').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s23', '# from 21.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Дух, чувствуя твои колебания, начинает хохотать. Вот ведь бедолага! Ну пусть будет Адан, приятель. Так какие у тебя вопросы?", 's23', 'say9244') \
    .with_responses() \
        .response("Да, есть…", 'DZM1094.D_s22', 'r', 'reply9313') \
        .response("Нет, нету. Прощай.", EXIT, 'r', 'reply9314').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s24', '# from 19.0') \
    .with_npc_lines() \
        .line(SPEAKER, "О Сигиле, что ли? — увидев твой кивок, труп растягивает улыбку до ушей. — О, я не собираюсь портить тебе впечатление! Иди и разведай его сам! Затеряйся в его улочках, тавернах, среди людей… но будь внимателен! Это место не только удивительно, но и опасно. Но ведь это и делает все таким захватывающим, не так ли?", 's24', 'say9245') \
    .with_responses() \
        .response("Да… наверное. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r', 'reply9315') \
        .response("Возможно. Прощай.", EXIT, 'r', 'reply9316').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s25', '# from 14.1 22.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Меня зовут Асонж.", 's25', 'say9283') \
    .with_responses() \
        .response("У меня есть другие вопросы…", 'DZM1094.D_s22', 'r', 'reply9284') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9285').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s26', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Снова вернулся, а? Он широко улыбается.", 's26', 'say20061') \
    .with_responses() \
        .response("У меня есть несколько вопросов…", 'DZM1094.D_s22', 'r', 'reply20063') \
        .response("Я просто проходил мимо. Прощай.", EXIT, 'r', 'reply20064').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1094.D_s27', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "А, это ты… снова. Он хмурится, глядя в сторону.", 's27', 'say20062') \
    .with_responses() \
        .response("У меня есть несколько вопросов…", 'DZM1094.D_s11', 'r', 'reply20065') \
        .response("Я просто проходил мимо. Прощай.", EXIT, 'r', 'reply20066').with_action(lambda: _dispose()) \
    .push(manager)