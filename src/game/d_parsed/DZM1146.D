def _r6521_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6521_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6522_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6523_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6524_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r6524_action(gsm):
    DO ~gsm.set_meet_crispy(True) ~
def _r9415_action(gsm):
    DO ~gsm.inc_once_good('good_crispy_1') ~
def _r9426_action(gsm):
    DO ~gsm.dec_once_good('evil_crispy_1') gsm.dec_once_law('chaotic_crispy_1') ~
def _r9434_condition(gsm):
    return not gsm.get_meet_pharod()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DZM1146.D_s0', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "На лбу этого ходячего трупа вырезан номер 1146, губы зашиты грубой черной ниткой. Все тело покрыто ужасающими шрамами — даже хуже, чем у тебя самого. Кажется, хозяин тела сгорел заживо. У него нет носа, ушей и нескольких пальцев, вероятно, потерянных в давнем пожаре. Когда ты загораживаешь ему путь, чтобы привлечь его внимание, он останавливается и смотрит на тебя пустым взглядом.", 's0', 'say6518') \
    .with_responses() \
        .response("Итак… что тут у нас интересного?", 'DZM1146.D_s1', 'r', 'reply6521').with_condition(lambda: _r6521_condition(gsm)).with_action(lambda: _r6521_action(gsm)) \
        .response("Итак… что тут у нас интересного?", 'DZM1146.D_s1', 'r', 'reply6522').with_condition(lambda: _r6522_condition(gsm)) \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1146.D_s1', 'r', 'reply6523').with_condition(lambda: _r6523_condition(gsm)) \
        .response("Использовать на трупе свою способность История костей.", 'DZM1146.D_s2', 'r', 'reply6524').with_condition(lambda: _r6524_condition(gsm)).with_action(lambda: _r6524_action(gsm)) \
        .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r', 'reply6525').with_action(lambda: _dispose()) \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6526').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s1', '# from 0.0 0.1 0.2')\
    .with_npc_lines() \
        .line(SPEAKER, "Труп продолжает пялиться на тебя.", 's1', 'say6519') \
    .with_responses() \
        .response("Оставить труп в покое.", EXIT, 'r', 'reply6527').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s2', '# from 0.3')\
    .with_npc_lines() \
        .line(SPEAKER, "Когда дух возвращается в свою бывшую обитель, тебе в нос ударяет запах серы, паленых волос и запекшейся крови. Почти сразу же мертвец падает на пол, неистово содрогаясь, словно в чьей-то хватке, и жалобно стеная. Ты буквально видишь тонкие струйки вонючего дыма, исходящие от его туловища и конечностей.", 's2', 'say6520') \
    .with_responses() \
        .response("С тобой… все в порядке?", 'DZM1146.D_s3', 'r', 'reply6528') \
        .response("У меня есть вопросы к тебе…", 'DZM1146.D_s9', 'r', 'reply9413') \
        .response("Оставить горящего духа.", EXIT, 'r', 'reply9414').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s3', '# from 2.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Дух открывает один глаз, белым пятном выделяющимся на серой и сморщенной плоти. Он медленно поворачивает к тебе голову; обожженная и израненная плоть его лица и шеи туго натянута на кости. Наконец, ему удается выдавить слова из поврежденной глотки: Нет. Не… в порядке… ты… чертов… пустоголовый.", 's3', 'say9398') \
    .with_responses() \
        .response("Я могу тебе чем-нибудь помочь?", 'DZM1146.D_s4', 'r', 'reply9415').with_action(lambda: _r9415_action(gsm)) \
        .response("У меня вопрос…", 'DZM1146.D_s9', 'r', 'reply9416') \
        .response("Поделом тебе, вонючий дымящийся кусок мяса. Скорее всего, ты заслужил такую участь. Прощай.", 'DZM1146.D_s6', 'r', 'reply9417') \
        .response("Оставить измученного духа.", EXIT, 'r', 'reply9418').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s4', '# from 3.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Хе, хехе-ХУРХ! — хохот духа резко прерывается тяжелыми спазмами, и он изрыгает поток бальзамирующей жидкости и черной гнили. Корчась от боли, дух начинает безудержно кашлять, периодически сплевывая желтоватую жидкость и оборванные швы с губ.", 's4', 'say9399') \
    .with_responses() \
        .response("Терпеливо ждать окончания процесса.", 'DZM1146.D_s5', 'r', 'reply9419') \
        .response("У меня есть другие вопросы…", 'DZM1146.D_s9', 'r', 'reply9421') \
        .response("Оставить измученного духа его страданиям.", EXIT, 'r', 'reply9422').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s5', '# from 4.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Ужасный кашель духа наконец-то утихает. Нет, пень… ты… не можешь. Если… если только не махнешь в Баатор и не спасешь меня, я попал… по полной. Настало время… покаяться, — дух закрывает глаз и откидывает голову на пол.", 's5', 'say9400') \
    .with_responses() \
        .response("Понятно. У меня есть другой вопрос…", 'DZM1146.D_s9', 'r', 'reply9423') \
        .response("Ладно. Прощай.", EXIT, 'r', 'reply9424').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s6', '# from 3.2 17.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Дух издает хлюпающее рычание, потемневшие губы обнажают неровные желтые зубы. Ну… ну погоди у меня… как только выберусь из этой дыры… я… с тобой первым разберусь, пень…", 's6', 'say9401') \
    .with_responses() \
        .response("Да пожалуйста. Я не из тех, кто боится таких как ты.", 'DZM1146.D_s7', 'r', 'reply9425') \
        .response("Ударить его.", 'DZM1146.D_s8', 'r', 'reply9426').with_action(lambda: _r9426_action(gsm)) \
        .response("Не обращать внимания на бедолагу, отвернуться и уйти.", EXIT, 'r', 'reply9427').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s7', '# from 6.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Духу издает утробное рычание и плюет в тебя. Мерзкая жидкость приземляется в нескольких дюймах от твоих ног. Полностью обессилев, существо падает назад на пол: жизнь снова покинула тело.", 's7', 'say9402') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s8', '# from 6.1')\
    .with_npc_lines() \
        .line(SPEAKER, "Ты резко бьешь мертвеца по почкам, но безуспешно: духа ты не задел. Хе, хе-хе-хе, — ехидно булькает существо, после чего, наконец, полностью покидает тело. Ты стоишь со смутным ощущением неудовлетворенности.", 's8', 'say9403') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s9', '# from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Что… да чего тебе *вообще* от меня надо, пень? Дух все еще изредка подергивается, хлопая себя по телу, как будто пытается сбить языки пламени.", 's9', 'say9404') \
    .with_responses() \
        .response("Кто ты?", 'DZM1146.D_s10', 'r', 'reply9428') \
        .response("Откуда ты?", 'DZM1146.D_s11', 'r', 'reply9429') \
        .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1146.D_s12', 'r', 'reply9430') \
        .response("Где ты… где находится твой дух… сейчас?", 'DZM1146.D_s13', 'r', 'reply9431') \
        .response("Что же ты натворил, чтобы заслужить такие муки?", 'DZM1146.D_s14', 'r', 'reply9432') \
        .response("Что ты знаешь об этом месте?", 'DZM1146.D_s15', 'r', 'reply9433') \
        .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1146.D_s16', 'r', 'reply9434').with_condition(lambda: _r9434_condition(gsm)) \
        .response("Ничего, неважно.", EXIT, 'r', 'reply9435').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s10', '# from 9.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Не твое дело… оставь меня… в покое…", 's10', 'say9405') \
    .with_responses() \
        .response("Нет. У меня другой вопрос…", 'DZM1146.D_s9', 'r', 'reply9436') \
        .response("Тогда прощай.", EXIT, 'r', 'reply9437').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s11', '# from 9.1')\
    .with_npc_lines() \
        .line(SPEAKER, "А? Во имя сил, да кому это… надо? Ну, из Сигила, ты… неудачник.", 's11', 'say9406') \
    .with_responses() \
        .response("У меня есть другие вопросы…", 'DZM1146.D_s9', 'r', 'reply9438') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9439').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s12', '# from 9.2')\
    .with_npc_lines() \
        .line(SPEAKER, "А ты как думаешь, бестолочь? — вспышка гнева вызвала у духа резкий болезненный кашель. — Продал мясо… в обмен на пару звенелок. Чертовым трухлякам… И тут же, представляешь, ТУТ ЖЕ какой-то тупоголовый маг решил сжечь Улей дотла, а я оказался в самом пекле! Дух что-то злобно бормочет, изрыгая жидкость из уголков рта.", 's12', 'say9407') \
    .with_responses() \
        .response("Волшебник сжег Улей?", 'DZM1146.D_s18', 'r', 'reply9440') \
        .response("У меня есть другие вопросы…", 'DZM1146.D_s9', 'r', 'reply9441') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9465').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s13', '# from 9.3')\
    .with_npc_lines() \
        .line(SPEAKER, "А ты… ты как думаешь, недоумок? В Бааторе, в вонючей дыре под названием Флегетос. Огонь, огонь… огонь… я без конца горю. Я сгорел заживо при жизни, теперь я горю после смерти. Аргх! — дух яростно скрежещет зубами. — Какая жестокая ирония! Когда я выберусь отсюда, уж я-то самолично отправлю немного бедолаг в эту чертову дыру. Хе, хе-хе-хе… *буль*.", 's13', 'say9408') \
    .with_responses() \
        .response("Почему ты хочешь навязать свою судьбу другим?", 'DZM1146.D_s17', 'r', 'reply9442') \
        .response("У меня есть другие вопросы…", 'DZM1146.D_s9', 'r', 'reply9443') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9444').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s14', '# from 9.4')\
    .with_npc_lines() \
        .line(SPEAKER, "Заслужить? ЭТО? Да ничего! Я… *гуэк*… ничего не сделал. Просто пытался сводить концы с концами… как и все остальные… А потом ПУФ! Этот козлина-маг начинает жечь весь Улей!", 's14', 'say9409') \
    .with_responses() \
        .response("Маг… сжег… Улей?", 'DZM1146.D_s18', 'r', 'reply9445') \
        .response("Понятно. У меня есть другой вопрос…", 'DZM1146.D_s9', 'r', 'reply9446') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9745').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s15', '# from 9.5')\
    .with_npc_lines() \
        .line(SPEAKER, "Ничего. Ничего я не скажу *тебе*, пень. Просто… просто оставь меня гореть дальше…", 's15', 'say9410') \
    .with_responses() \
        .response("Хорошо. Тогда у меня другой вопрос…", 'DZM1146.D_s9', 'r', 'reply9447') \
        .response("Тогда прощай.", EXIT, 'r', 'reply9448').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s16', '# from 9.6')\
    .with_npc_lines() \
        .line(SPEAKER, "Кого? Чего? Нет! С чего… с чего ты решил, что я бы тебе сказал, если бы знал, ты… пустоголовый пень? Пф…", 's16', 'say9411') \
    .with_responses() \
        .response("Хорошо. У меня есть другие вопросы…", 'DZM1146.D_s9', 'r', 'reply9449') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9450').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s17', '# from 13.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Месть, пустая твоя башка! Я доберусь… до всех доберусь, кто перешел мне дорогу. Особенно до того мага! Буду отрывать от него по кусочку и запихивать ему прямо в глотку! А потом сброшу его по кускам в эту вонючую дыру! Его и еще кого-нибудь, для… для ровного счета! Хе, хе-хе-хе…", 's17', 'say9412') \
    .with_responses() \
        .response("Ты злобный ничтожный человек. Ты заслужил свою участь.", 'DZM1146.D_s6', 'r', 'reply9420') \
        .response("Понятно. У меня к тебе еще вопросы…", 'DZM1146.D_s9', 'r', 'reply9451') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9452').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s18', '# from 12.0 14.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Да, Улей… самую худшую часть Сигила. Никогда в жизни не видел столько огня… Я себе шел, никого не трогал — и вдруг все вокруг загорелось! Дома, улицы, люди, их дети… а это проклятый маг только хохотал, все время! Я махнул за угол и вроде немного оторвался, а следующее, что я помню — моя чертова голова загорелась! С того времени все стало… только хуже… — открытый глаз духа злобно сверкает.", 's18', 'say9458') \
    .with_responses() \
        .response("Кем был тот волшебник?", 'DZM1146.D_s19', 'r', 'reply9459') \
        .response("Понятно. У меня к тебе еще вопросы…", 'DZM1146.D_s9', 'r', 'reply9464') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9746').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s19', '# from 18.0')\
    .with_npc_lines() \
        .line(SPEAKER, "Без понятия. Я был уже порядочно поджарен, прежде чем его остановили, если это кому и удалось. Кажется, припоминаю, как за ним в самом начале гнались люди, выкрикивали его имя… э-э… а! Игнис, кажется так. Игнис. Или типа того. Надеюсь, этому неудачнику досталось больше, чем мне!", 's19', 'say9744') \
    .with_responses() \
        .response("Понятно. У меня к тебе еще вопросы…", 'DZM1146.D_s9', 'r', 'reply9747') \
        .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9748').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DZM1146.D_s20', '# from -')\
    .with_npc_lines() \
        .line(SPEAKER, "Опять?!", 's20', 'say20099') \
    .with_responses() \
        .response("У меня есть вопросы…", 'DZM1146.D_s9', 'r', 'reply20100') \
        .response("Ничего, я просто проходил мимо. Прощай.", EXIT, 'r', 'reply20101').with_action(lambda: _dispose()) \
    .push(manager)