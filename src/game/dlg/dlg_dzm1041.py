import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel,
    meet_bei,
    change_law_once,
    changed_law_once,
    change_good_once,
    changed_good_once
)
from settings.settings_morgue import (
    current_morgue_settings
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init():
    travel('morgue1')
    renpy.exports.show("bg mourge1")
    _show('dzm1041_img default', center_right_down)
def _dispose():
    _hide('dzm1041_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
def _check_char_prop_gt(who, gtValue, prop):
    return True
def _check_char_prop_lt(who, gtValue, prop):
    return True
###
###
def _r6576_condition():
    return not changed_law_once('zombie_chaotic')
def _r6576_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6577_condition():
    return changed_law_once('zombie_chaotic')
def _r6578_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6579_condition():
    return current_global_settings()['can_speak_with_dead'] \
    and not current_global_settings()['meet_bei']
def _r6580_condition():
    return current_global_settings()['can_speak_with_dead'] \
    and current_global_settings()['meet_bei']
def _r6583_action():
    meet_bei()
def _r9096_action():
    meet_bei()
def _r9097_action():
    meet_bei()
    _dispose()
def _r9109_condition():
    return not current_global_settings()['meet_pharod']
def _r9145_condition():
    return not current_global_settings()['meet_pharod']
def _r9161_action():
    change_good_once(1, 'good_bei_1')
def _r9162_action():
    change_good_once(-1, 'evil_bei_1')
def _r9187_condition():
    return _check_char_prop_gt('protagonist',13,'int')
def _r9200_action():
    change_good_once(1, 'good_bei_2')
def _r9201_action():
    change_law_once(-1, 'chaotic_bei_1')
def _r9207_action():
    change_good_once(1, 'good_bei_3')
    meet_xixi()
def _r9208_action():
    change_good_once(-1, 'evil_bei_2')
    change_law_once(-1, 'chaotic_bei_2')
    meet_xixi()
def _r9209_action():
    meet_xixi()
def _r9210_action():
    meet_xixi()
    _dispose()
###

# DLG/DZM1041.DLG
def dlg_dzm1041(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm1041       = renpy.store.characters['dzm1041']
    bei           = renpy.store.characters['bei']
    EXIT          = -1

    # Starts: DZM1041.D_s0
    DialogStateBuilder() \
    .state('DZM1041.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "У этого поднятого трупа мужчины на лбу вырезан номер «1041». Несмотря на жесткую высушенную плоть, совершенно очевидно, что его лицо когда-то придавало ему довольно экзотическую внешность.", 's0', 'say6573').with_action(lambda: _init()) \
            .line(teller, "Губы зомби крепко зашиты — скорее всего, чтобы не стонал все время, — а сам он сильно пахнет формальдегидом.", 's0', 'say6573') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM1041.D_s1', 'r0', 'reply6576').with_condition(lambda: _r6576_condition()).with_action(lambda: _r6576_action()) \
            .response("Итак… что тут у нас интересного?", 'DZM1041.D_s1', 'r1', 'reply6577').with_condition(lambda: _r6577_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1041.D_s1', 'r2', 'reply6578').with_condition(lambda: _r6578_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1041.D_s2', 'r3', 'reply6579').with_condition(lambda: _r6579_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1041.D_s37', 'r4', 'reply6580').with_condition(lambda: _r6580_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply6581').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply9095').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6574') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM1041.D_s2', 'r3', 'reply6579').with_condition(lambda: _r6579_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1041.D_s37', 'r4', 'reply6580').with_condition(lambda: _r6580_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply6581').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6582').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "В миг, когда дух возвращается в свою прежнюю обитель, труп вздрагивает. Его миндалевидные глаза снова темнеют, бледная кожа приобретает слегка бронзовый оттенок.", 's2', 'say6575') \
            .line(teller, "Он выпрямляется, отряхивая пыль из одежды.  Заметив, наконец, вызывающего, призрак бросает на тебя пытливый взгляд, затем делает легкий поклон.", 's2', 'say6575') \
        .with_responses() \
            .response("Поклониться в ответ.", 'DZM1041.D_s3', 'r8', 'reply6583').with_action(lambda: _r6583_action()) \
            .response("У меня есть вопросы…", 'DZM1041.D_s4', 'r9', 'reply9096').with_action(lambda: _r9096_action()) \
            .response("Оставить духа.", EXIT, 'r10', 'reply9097').with_action(lambda: _r9097_action()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s3', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Несколько мгновений дух удовлетворенно улыбается. Он собирается, закладывает одну руку за спину и начинает тихо, нараспев декламировать.", 's3', 'say9060') \
            .line(dzm1041, "Сян цзянь ши нань, бе и нань Дун фэн у ли, бай хуа цань Чунь цань дао сы, сы фань цзинь Да цзю чэн хуй, лэй ши гань.  Сказав это, он принимает довольный вид, терпеливо ожидая твоей реакции.", 's3', 'say9060') \
            .line(teller, "Сян цзянь ши нань, бе и нань Дун фэн у ли, бай хуа цань Чунь цань дао сы, сы фань цзинь Да цзю чэн хуй, лэй ши гань.", 's3', 'say9060') \
        .with_responses() \
            .response("Я… э-э…", 'DZM1041.D_s5', 'r11', 'reply9098') \
            .response("Я понятия не имею, о чем ты говоришь… Ты вообще понял, что я говорю?", 'DZM1041.D_s5', 'r12', 'reply9099') \
            .response("Я не понимаю тебя. Прощай.", EXIT, 'r13', 'reply9100').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s4', '# from 2.1') \
        .with_npc_lines() \
            .line(teller, "Ты открываешь рот, чтобы задать вопрос, но дух опережает тебя, начав тихо, нараспев декламировать.", 's4', 'say9061') \
            .line(dzm1041, "Сян цзянь ши нань, бе и нань Дун фэн у ли, бай хуа цань Чунь цань дао сы, сы фань цзинь Да цзю чэн хуй, лэй ши гань.", 's4', 'say9061') \
            .line(teller, "Сказав это, он принимает довольный вид, терпеливо ожидая твоей реакции.", 's4', 'say9061') \
        .with_responses() \
            .response("Я… э-э…", 'DZM1041.D_s5', 'r14', 'reply9101') \
            .response("Я понятия не имею, о чем ты говоришь… Ты вообще понял, что я говорю?", 'DZM1041.D_s5', 'r15', 'reply9102') \
            .response("Я не понимаю тебя. Прощай.", EXIT, 'r16', 'reply9103').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s5', '# from 3.0 3.1 4.0 4.1') \
        .with_npc_lines() \
            .line(teller, "Дух на некоторое время умолкает, словно чтобы поразмыслить. Затем он начинает говорить, с сильным акцентом, и все же с весьма изысканным произношением.", 's5', 'say9062') \
            .line(dzm1041, "Прости меня, достопочтенный господин. Прошло немало времени с тех пор, как я говорил на твоем языке.", 's5', 'say9062') \
            .line(dzm1041, "Не сомневаюсь, что мой дух был призван сюда, чтобы отвечать на твои вопросы. Что же ты хотел узнать от меня?", 's5', 'say9062') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1041.D_s6', 'r17', 'reply9104') \
            .response("Откуда ты?", 'DZM1041.D_s7', 'r18', 'reply9105') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1041.D_s8', 'r19', 'reply9106') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1041.D_s11', 'r20', 'reply9107') \
            .response("Что ты знаешь об этом месте?", 'DZM1041.D_s9', 'r21', 'reply9108') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1041.D_s10', 'r22', 'reply9109').with_condition(lambda: _r9109_condition()) \
            .response("Ничего, неважно.", EXIT, 'r23', 'reply9110').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s6', '# from 5.0 14.0') \
        .with_npc_lines() \
            .line(bei, "Трудно объяснить, кто я… а вот кем я *был* — нет. Я был известен как Чжуань Бэй, наставник и телохранитель Лю Сиси, дочери Цензора Ши-аня.", 's6', 'say9063') \
        .with_responses() \
            .response("Наставник *и* телохранитель?", 'DZM1041.D_s12', 'r24', 'reply9111') \
            .response("Хм-м. Звучит впечатляюще.", 'DZM1041.D_s13', 'r25', 'reply9112') \
            .response("Понятно. У меня есть другие вопросы…", 'DZM1041.D_s14', 'r26', 'reply9113') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r27', 'reply9114').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s7', '# from 5.1 14.1') \
        .with_npc_lines() \
            .line(bei, "Я родом из места под названием Шоу Лунь… места, которое я когда-то считал центром вселенной.", 's7', 'say9064') \
            .line(teller, "Похоже, на него накатили теплые воспоминания.", 's7', 'say9064') \
            .line(bei, "Столько мест, столько миров. Раньше я считал себя довольно образованным человеком, и все же перед смертью я знал слишком мало…", 's7', 'say9064') \
        .with_responses() \
            .response("А как ты попал сюда из этого 'Шоу Луня'?", 'DZM1041.D_s16', 'r28', 'reply9115') \
            .response("Понятно. У меня есть другие вопросы…", 'DZM1041.D_s14', 'r29', 'reply9116') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r30', 'reply9117').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s8', '# from 5.2 14.2') \
        .with_npc_lines() \
            .line(bei, "Я был убит одним из тех, с кем я попал в этот мир. Я охотился за ним в этом городе многие недели — за это время я успел изучить ваш язык, — но он нашел меня первым.", 's8', 'say9065') \
            .line(bei, "Он профессиональный убийца; он застигнул меня врасплох и убил меня во сне.", 's8', 'say9065') \
        .with_responses() \
            .response("Попал в этот мир?", 'DZM1041.D_s16', 'r31', 'reply9118') \
            .response("Охотился за убийцами?", 'DZM1041.D_s16', 'r32', 'reply9119') \
            .response("Понятно, но ты знаешь, как твое тело стало здесь работать?", 'DZM1041.D_s17', 'r33', 'reply9120') \
            .response("Ты говоришь достаточно хорошо для того, кто так недолго изучал язык.", 'DZM1041.D_s18', 'r34', 'reply9121') \
            .response("Понятно. У меня есть другие вопросы…", 'DZM1041.D_s14', 'r35', 'reply9122') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r36', 'reply9123').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s9', '# from 5.4 14.4') \
        .with_npc_lines() \
            .line(bei, "Об этом здании? Совершенно ничего. Я слышал о нем, знаю, что мое тело работает здесь, но это все. Я довольно мало знаю об этом великом городе, 'Сигиле'.", 's9', 'say9066') \
            .line(bei, "Недели, проведенные здесь, я потратил на поиски людей, с которыми попал в этот мир, и на изучение языка; хоть это и огорчало меня, но времени на другие вещи у меня не было.", 's9', 'say9066') \
            .line(bei, "А ведь я мог познать мириады чудес этого места…", 's9', 'say9066') \
        .with_responses() \
            .response("Твое тело служит здесь? Как это могло случиться?", 'DZM1041.D_s17', 'r37', 'reply9124') \
            .response("Попал в этот мир?", 'DZM1041.D_s16', '38r', 'reply9125') \
            .response("Ты говоришь достаточно хорошо для того, кто так недолго изучал язык.", 'DZM1041.D_s18', 'r39', 'reply9126') \
            .response("Понятно. У меня есть другие вопросы…", 'DZM1041.D_s14', 'r40', 'reply9127') \
            .response("Хорошо. Возможно, мы еще встретимся.", EXIT, 'r41', 'reply9128').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s10', '# from 5.5 14.5') \
        .with_npc_lines() \
            .line(bei, "Нет, это имя ничего для меня не значит. Я прошу прощения, но в данном вопросе я тебе не помощник.", 's10', 'say9067') \
        .with_responses() \
            .response("Понимаю. У меня еще вопросы…", 'DZM1041.D_s14', 'r42', 'reply9129') \
            .response("Хорошо. Возможно, мы еще встретимся.", EXIT, 'r43', 'reply9130').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s11', '# from 5.3 14.3') \
        .with_npc_lines() \
            .line(bei, "На миг тебе кажется, что дух огорчен.  Я… Мой дух находится во владениях прославленного магистрата Яньвана, в Дворце Правосудия.", 's11', 'say9068') \
        .with_responses() \
            .response("Что-то не так? Это плохое место?", 'DZM1041.D_s15', 'r44', 'reply9131') \
            .response("Понимаю. У меня еще вопросы…", 'DZM1041.D_s14', 'r45', 'reply9132') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r46', 'reply9133').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s12', '# from 6.0 16.1') \
        .with_npc_lines() \
            .line(bei, "Да. Там, откуда я родом, это встречается не так уж редко. Моей обязанностью было все время находиться рядом с госпожой Лю, и не только оберегать ее, но и обучать.", 's12', 'say9069') \
            .line(bei, "Я был уважаемым учителем, а также фехтовальщиком. Возможно, я послужил бы ей лучше, будь я лучшим фехтовальщиком…", 's12', 'say9069') \
        .with_responses() \
            .response("Послужить ей лучше? Ты чем-то ей не услужил?", 'DZM1041.D_s16', 'r', 'reply9134') \
            .response("Возможно. У меня есть еще вопросы…", 'DZM1041.D_s14', 'r', 'reply9135') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r', 'reply9136').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s13', '# from 6.1') \
        .with_npc_lines() \
            .line(bei, "Впечатляюще? Да, как для меня, то даже слишком. Я… я подвел госпожу Лю и Цензора в своей миссии.", 's13', 'say9070') \
        .with_responses() \
            .response("Каким образом?", 'DZM1041.D_s16', 'r50', 'reply9137') \
            .response("У меня есть еще вопросы…", 'DZM1041.D_s14', 'r51', 'reply9138') \
            .response("Ясно. Возможно, мы еще встретимся.", EXIT, 'r52', 'reply9139').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s14', '# from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1') \
        .with_npc_lines() \
            .line(teller, "Дух кивает с неожиданной грацией, как для иссохшего трупа.", 's14', 'say9071') \
            .line(bei, "Пожалуйста, спрашивай все, что пожелаешь.", 's14', 'say9071') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1041.D_s6', 'r53', 'reply9140') \
            .response("Откуда ты?", 'DZM1041.D_s7', 'r54', 'reply9141') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1041.D_s8', 'r55', 'reply9142') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1041.D_s11', 'r56', 'reply9143') \
            .response("Что ты знаешь об этом месте?", 'DZM1041.D_s9', 'r57', 'reply9144') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1041.D_s10', 'r58', 'reply9145').with_condition(lambda: _r9145_condition()) \
            .response("Что ты сказал, когда впервые появился здесь?", 'DZM1041.D_s26', 'r59', 'reply9146') \
            .response("Неважно. Прощай.", EXIT, 'r60', 'reply9147').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s15', '# from 11.0') \
        .with_npc_lines() \
            .line(bei, "Ну, видишь ли…", 's15', 'say9072') \
            .line(teller, "Дух на время умолкает в раздумьях, потирая иссохшие руки трупа.", 's15', 'say9072') \
            .line(bei, "Прибыв туда, после недолгого ожидания меня должны были сопроводить в мое конечное, *истинное* место назначения.", 's15', 'say9072') \
            .line(bei, "Тем не менее, пока меня вели по дворцу, началась какая-то суматоха, и меня оставили в комнате, пообещав, что тотчас же вернутся.", 's15', 'say9072') \
        .with_responses() \
            .response("И?..", 'DZM1041.D_s19', 'r61', 'reply9148') \
            .response("Конечное место назначения? Куда тебя послали?", 'DZM1041.D_s20', 'r62', 'reply9149') \
            .response("Постой… Перед тем, как ты продолжишь, у меня есть еще вопросы…", 'DZM1041.D_s14', 'r63', 'reply9150') \
            .response("Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.", EXIT, 'r64', 'reply9151').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s16', '# from 7.0 8.0 8.1 9.1 12.0 13.0') \
        .with_npc_lines() \
            .line(bei, "Я расскажу тебе всю историю. Как наставник и телохранитель Лю Сиси, я, конечно же, отвечал за ее безопасность и образование.", 's16', 'say9073') \
            .line(bei, "Одним ясным вечером мы стояли на балконе, выходившем во внутренний двор, где я показывал ей различные созвездия.", 's16', 'say9073') \
        .with_responses() \
            .response("Пожалуйста, продолжай.", 'DZM1041.D_s21', 'r65', 'reply9152') \
            .response("Наставник *и* телохранитель?", 'DZM1041.D_s12', 'r66', 'reply9153') \
            .response("Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.", EXIT, 'r67', 'reply9154').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s17', '# from 8.2 9.0') \
        .with_npc_lines() \
            .line(bei, "Ах, это. Однажды ночью я встретил на улице девушку. Она принадлежала к организации под названием Тленные, той самой, что присматривает за этим комплексом.", 's17', 'say9074') \
            .line(bei, "Она сделала мне предложение, согласно которому в обмен за небольшую сумму мое тело может быть… использовано… здесь после моей кончины.", 's17', 'say9074') \
        .with_responses() \
            .response("И это не кажется тебе немного странным?", 'DZM1041.D_s22', 'r68', 'reply9155') \
            .response("Понятно. Еще вопрос, если можно…", 'DZM1041.D_s14', 'r69', 'reply9156') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r70', 'reply9157').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s18', '# from 8.3 9.2') \
        .with_npc_lines() \
            .line(bei, "На самом деле, лингвистика всегда представляла для меня большой интерес. Будучи студентом, я обнаружил, что могу без особых проблем изучать новые наречия.", 's18', 'say9075') \
        .with_responses() \
            .response("Тогда это все объясняет. Еще один вопрос…", 'DZM1041.D_s14', 'r71', 'reply9158') \
            .response("Понятно. Спасибо за разговор. Прощай.", EXIT, 'r72', 'reply9159').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s19', '# from 15.0 20.0') \
        .with_npc_lines() \
            .line(bei, "Видишь ли… за мной так никто и не вернулся. Я терпеливо ждал несколько дней, но безуспешно. В конце концов, я покинул комнату и стал бродить по дворцу в надежде на то, что кто-нибудь проведет меня…", 's19', 'say9076') \
            .line(teller, "Он тихо вздыхает, выдыхая легкое облачко бальзамирующей жидкости.", 's19', 'say9076') \
            .line(bei, "Там девять тысяч и одна комната, и в каждой из них меня направляли в другую. Я словно навеки попал в трясину.", 's19', 'say9076') \
        .with_responses() \
            .response("Понятно. Тогда у меня есть другой вопрос…", 'DZM1041.D_s14', 'r73', 'reply9160') \
            .response("Я могу чем-нибудь помочь?", 'DZM1041.D_s24', 'r74', 'reply9161').with_action(lambda: _r9161_action()) \
            .response("Несчастный глупец… Представляю, как долго тебе придется там бродить!", 'DZM1041.D_s25', 'r75', 'reply9162').with_action(lambda: _r9162_action()) \
            .response("Желаю тебе удачи. Прощай.", EXIT, 'r76', 'reply9163').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s20', '# from 15.1') \
        .with_npc_lines() \
            .line(bei, "Не могу сказать. Все это сильно огорчает меня!", 's20', 'say9077') \
            .line(teller, "Он умолкает, чтобы восстановить самообладание. При этом его закостеневшие суставы и сухожилия тихонько поскрипывают.", 's20', 'say9077') \
        .with_responses() \
            .response("Пожалуйста, продолжай свой рассказ.", 'DZM1041.D_s19', 'r77', 'reply9164') \
            .response("Могу себе представить… У меня есть другой вопрос…", 'DZM1041.D_s14', 'r78', 'reply9165') \
            .response("Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.", EXIT, 'r79', 'reply9166').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s21', '# from 16.0') \
        .with_npc_lines() \
            .line(bei, "Да-да, конечно. Пока мы стояли, с крыши над балконом внезапно спрыгнули двое убийц, скорее всего, чтобы убить или похитить госпожу Лю.", 's21', 'say9078') \
            .line(bei, "Позвав стражу, я обнажил свой клинок и бросился на ее защиту. В разгар битвы перила балкона обломились, и мы вчетвером упали в Нефритовый Портал.", 's21', 'say9078') \
        .with_responses() \
            .response("Куда? В Нефритовый Портал?", 'DZM1041.D_s23', 'r80', 'reply9167') \
            .response("Постой… Перед тем, как ты продолжишь, у меня есть еще вопросы…", 'DZM1041.D_s14', 'r81', 'reply9168') \
            .response("Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.", EXIT, 'r82', 'reply9169').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s22', '# from 17.0') \
        .with_npc_lines() \
            .line(bei, "Пожалуй, только сначала… В конце концов, эта идея немного жутковата. Но поговорив с ней немного, я понял, что они, тленные, разделяют со мной взгляды на смерть.", 's22', 'say9079') \
            .line(bei, "Мое тело? Это всего лишь оболочка, не более.", 's22', 'say9079') \
            .line(bei, "Я верю, что их 'Истинная Смерть' будет тем достойным местом, которого лично я когда-нибудь достигну… полностью освободившись и отделившись от материального мира.", 's22', 'say9079') \
            .line(bei, "И если мое тело, служившее этой цели в качестве моей смертной оболочки, сможет служить здесь каким-нибудь целям, тем лучше.", 's22', 'say9079') \
            .line(teller, " Дух учтиво улыбается тебе.", 's22', 'say9079') \
        .with_responses() \
            .response("Мне ясны твои доводы. Еще один вопрос…", 'DZM1041.D_s14', 'r83', 'reply9170') \
            .response("Интересно. Теперь мне лучше уйти. Прощай.", EXIT, 'r84', 'reply9171').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s23', '# from 21.0') \
        .with_npc_lines() \
            .line(bei, "О! Прошу прощения за упущение… Нефритовый Портал — это круглый водоем во внутреннем дворе.", 's23', 'say9080') \
            .line(bei, "Он выложен зелеными и белыми стеатитами и назван Порталом из-за того, что время от времени в отражении его мерцающих вод можно увидеть совершенно другое место.", 's23', 'say9080') \
        .with_responses() \
            .response("Понятно. Пожалуйста, продолжай свой рассказ.", 'DZM1041.D_s27', 'r85', 'reply9172') \
            .response("Перед тем, как ты продолжишь, у меня есть другие вопросы…", 'DZM1041.D_s14', 'r86', 'reply9173') \
            .response("Пока это все, что я хотел знать. Прощай.", EXIT, 'r87', 'reply9174').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s24', '# from 19.1') \
        .with_npc_lines() \
            .line(bei, "Твое предложение великодушно. Но я боюсь, что здесь ничего нельзя поделать… Я уверен, что со временем все-таки найду свой путь. Так или иначе, благодарю тебя.", 's24', 'say9081') \
        .with_responses() \
            .response("Несомненно. У меня еще вопрос…", 'DZM1041.D_s14', 'r88', 'reply9175') \
            .response("Не стоит беспокоиться. Теперь мне лучше уйти. Прощай.", EXIT, 'r89', 'reply9176').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s25', '# from 19.2 33.1 35.1') \
        .with_npc_lines() \
            .line(teller, "Дух недовольно смотрит на тебя, в глазах трупа вспыхивает призрачный огонек. Кажется, ты его оскорбил.", 's25', 'say9082') \
        .with_responses() \
            .response("Прошу прощения. Можно спросить тебя кое-что еще?", 'DZM1041.D_s14', 'r90', 'reply9177') \
            .response("Отойти, оставить парящего духа.", EXIT, 'r91', 'reply9178').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s26', '# from 14.6') \
        .with_npc_lines() \
            .line(bei, "Ах, это… э-э… это стихи. Трудно перевести. Может, есть другой вопрос?", 's26', 'say9083') \
            .line(teller, "Он неловко улыбается.", 's26', 'say9083') \
        .with_responses() \
            .response("Да… да, конечно же.", 'DZM1041.D_s14', 'r92', 'reply9179') \
            .response("Нет… но я хотел бы побольше знать об этих стихах.", 'DZM1041.D_s28', 'r93', 'reply9180') \
            .response("Нет. Собственно, пожалуй, мне уже пора идти. Прощай.", EXIT, 'r94', 'reply9181').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s27', '# from 23.0') \
        .with_npc_lines() \
            .line(teller, "Как я уже сказал, мы упали в Нефритовый Портал. Я даже и не предполагал, что он *на самом* деле был порталом, во всех смыслах этого слова, и все же это так!", 's27', 'say9084') \
            .line(teller, "Неожиданно я очутился в незнакомом переулке, лежащий со сломанной ногой. Придя в себя, я успел увидеть, как убийцы убегают, унося на плечах Лю Сиси.", 's27', 'say9084') \
        .with_responses() \
            .response("Очень странно. Пожалуйста, продолжай.", 'DZM1041.D_s31', 'r95', 'reply9182') \
            .response("Перед тем, как ты продолжишь, я хотел бы задать другие вопросы…", 'DZM1041.D_s14', 'r96', 'reply9183') \
            .response("Понятно. Спасибо тебе, но мне уже пора.", EXIT, 'r97', 'reply9184').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s28', '# from 26.1') \
        .with_npc_lines() \
            .line(bei, "Хорошо.", 's28', 'say9085') \
            .line(teller, "Он ненадолго задумывается, барабаня длинными костлявыми пальцами трупа. Затем он начинает декламировать в более твердом, выверенном ритме.", 's28', 'say9085') \
            .line(bei, "«Как встречаться нам тяжело, так тяжело расставаться.\nВетер жизни лишился сил, все цветы увядают».", 's28', 'say9085') \
            .line(bei, "«Лишь когда шелкопряд умрет, нити дум прекратятся.\nЛишь когда фитиль догорит, слезы свечи иссякнут».", 's28', 'say9085') \
            .line(teller, "Он учтиво улыбается тебе.", 's28', 'say9085') \
        .with_responses() \
            .response("Ах… У меня есть другой вопрос.", 'DZM1041.D_s14', 'r98', 'reply9185') \
            .response("Интересно. А что это означает?", 'DZM1041.D_s29', 'r99', 'reply9186') \
            .response("Значит, говоришь, я должен оставить твой дух в покое? Я оскорбил тебя, вызвав сюда?", 'DZM1041.D_s30', 'r100', 'reply9187').with_condition(lambda: _r9187_condition()) \
            .response("О. Спасибо, что разъяснил мне это. Прощай.", EXIT, 'r101', 'reply9188').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s29', '# from 28.1') \
        .with_npc_lines() \
            .line(bei, "Ну, мне стыдно признаться, но это было деликатной попыткой сказать…", 's29', 'say9086') \
            .line(bei, "…сказать, что, наверно, лучше бы тебе оставить в покое души мертвых. У меня больше нет желания быть частью этого мира.", 's29', 'say9086') \
            .line(teller, "Дух делает широкий жест, охватывая все, что находится вокруг него.", 's29', 'say9086') \
        .with_responses() \
            .response("Хм-м. Ясно. У меня есть еще кое-какие вопросы.", 'DZM1041.D_s14', 'r102', 'reply9189') \
            .response("Я понимаю. В таком случае, прощай.", EXIT, 'r103', 'reply9190').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s30', '# from 28.2') \
        .with_npc_lines() \
            .line(bei, "А… э-э… нет. Я не хотел быть столь прямолинеен, чтобы избежать конфронтации. Это всего лишь означает, что у меня нет больше желания быть частью этого мира.", 's30', 'say9087') \
            .line(teller, "Дух делает широкий жест, охватывая все, что находится вокруг него.", 's30', 'say9087') \
        .with_responses() \
            .response("Хм-м. Ясно. У меня есть еще кое-какие вопросы…", 'DZM1041.D_s14', 'r104', 'reply9191') \
            .response("Я понимаю. В таком случае, прощай.", EXIT, 'r105', 'reply9192').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s31', '# from 27.0') \
        .with_npc_lines() \
            .line(bei, "Ну, это почти все. Мне пришлось хромать с болью в ноге, пока я не нашел того, кто вылечил мою ногу. Он взял в качестве платы все те небольшие накопления, что у меня были.", 's31', 'say9088') \
            .line(bei, "У этого целителя и у других людей я научился здешнему языку, не переставая разыскивать двух убийц и свою подопечную.", 's31', 'say9088') \
        .with_responses() \
            .response("Значит, ты их не нашел?", 'DZM1041.D_s32', 'r106', 'reply9193') \
            .response("Хм-м. Знаешь, довольно странно, что ты смог так быстро изучить язык…", 'DZM1041.D_s38', 'r107', 'reply9194') \
            .response("Перед тем, как ты продолжишь, я хотел бы задать другие вопросы…", 'DZM1041.D_s14', 'r108', 'reply9195') \
            .response("Я выслушаю оставшуюся часть истории в другой раз. Прощай.", EXIT, 'r109', 'reply9196').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s32', '# from 31.0 38.0') \
        .with_npc_lines() \
            .line(bei, "Я поймал одного из них, но он не пожелал говорить. Я казнил его и положил его голову в шелковый мешок, чтобы преподнести ее Цензору, когда я вернусь назад с его дочерью.", 's32', 'say9089') \
            .line(teller, "На миг он мрачнеет, потом продолжает.", 's32', 'say9089') \
            .line(bei, "Другой убийца… ускользнул от меня. Даже больше: он убил меня, прежде чем я смог убить его и спасти свою подопечную. Мне жаль, но теперь для меня уже все кончено.", 's32', 'say9089') \
        .with_responses() \
            .response("А ты хоть знал, как вернуться назад, на родину, если бы спас эту… 'Сиси'?", 'DZM1041.D_s33', 'r110', 'reply9197') \
            .response("Занятная история. Тем не менее, у меня есть еще вопросы…", 'DZM1041.D_s14', 'r111', 'reply9198') \
            .response("Восхитительно. Теперь мне следует оставить тебя. Прощай.", EXIT, 'r112', 'reply9199').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s33', '# from 32.0') \
        .with_npc_lines() \
            .line(bei, "Нет, но я был уверен, что смог бы найти способ. Хотя теперь это под сомнением.", 's33', 'say9090') \
        .with_responses() \
            .response("Возможно, они все еще в городе. Может быть, я смогу найти и спасти эту девушку.", 'DZM1041.D_s34', 'r113', 'reply9200').with_action(lambda: _r9200_action()) \
            .response("Похоже, тебе легко забыть о своем долге только лишь потому, что ты мертв. Не представляю, как бы я смог допустить подобное.", 'DZM1041.D_s25', 'r114', 'reply9201').with_action(lambda: _r9201_action()) \
            .response("Интересно. Позволь мне спросить кое о чем еще…", 'DZM1041.D_s14', 'r115', 'reply9202') \
            .response("Хм-м. Мне пора. Удачи тебе.", EXIT, 'r116', 'reply9203').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s34', '# from 33.0') \
        .with_npc_lines() \
            .line(teller, "Твое предложение отличает в тебе благородного человека… тем не менее, прошло не меньше семидесяти пяти лет с тех пор, как я был убит.", 's34', 'say9091') \
            .line(teller, "Человек, убивший меня, давно уже мертв, и Сиси, скорее всего, тоже.", 's34', 'say9091') \
        .with_responses() \
            .response("Хм-м. Тогда неважно. У меня есть другой вопрос…", 'DZM1041.D_s14', 'r117', 'reply9205') \
            .response("Тогда неважно. Прощай.", EXIT, 'r118', 'reply9206').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('orphan DZM1041.D_s35', '# from -') \
        .with_npc_lines() \
            .line(bei, "Убийца похож на меня внешне, над бровью у него татуировка лотоса. Заметив твое смятение, он добавляет: Это такой цветок с семью лепестками.", 's35', 'say9092') \
            .line(bei, "Лю Сиси — это молодая девушка, ей всего лишь четырнадцать лет. Возможно, она или убийца знают путь назад и как снова активировать портал.", 's35', 'say9092') \
        .with_responses() \
            .response("Если встречу ее — сделаю все, что в моих силах, чтобы помочь ей — в память о тебе.", 'DZM1041.D_s36', 'r119', 'reply9207').with_action(lambda: _r9207_action()) \
            .response("Неважно. У меня нет времени на это.", 'DZM1041.D_s25', 'r120', 'reply9208').with_action(lambda: _r9208_action()) \
            .response("Хорошо. У меня есть другой вопрос…", 'DZM1041.D_s14', 'r121', 'reply9209').with_action(lambda: _r9209_action()) \
            .response("Это все, что мне нужно. Прощай.", EXIT, 'r122', 'reply9210').with_action(lambda: _r9210_action()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s36', '# from 35.0') \
        .with_npc_lines() \
            .line(bei, "Ты добрый и благородный человек. Однако не делай этого для меня… девушка и ее отец — вот кому нужна твоя помощь.", 's36', 'say9093') \
        .with_responses() \
            .response("Хорошо. У меня еще один вопрос…", 'DZM1041.D_s14', 'r123', 'reply9211') \
            .response("Я понимаю. Прощай, дух.", EXIT, 'r124', 'reply9212').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s37', '# from 0.4') \
        .with_npc_lines() \
            .line(bei, "Я определенно не ожидал увидеть тебя снова.", 's37', 'say9094') \
            .line(teller, "Дух учтиво кланяется, но его лицо остается непроницаемым.", 's37', 'say9094') \
            .line(bei, "Что тебе нужно от меня?", 's37', 'say9094') \
        .with_responses() \
            .response("Вопрос…", 'DZM1041.D_s14', 'r125', 'reply9213') \
            .response("Ничего, я оставляю тебя в покое.", EXIT, 'r126', 'reply9214').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1041.D_s38', '# from 31.1') \
        .with_npc_lines() \
            .line(bei, "На самом деле, лингвистика всегда представляла для меня большой интерес. Будучи студентом, я обнаружил, что могу без особых проблем изучать новые наречия.", 's38', 'say9718') \
        .with_responses() \
            .response("Это многое объясняет. Итак, ты больше не встречал убийц?", 'DZM1041.D_s32', 'r127', 'reply9719') \
            .response("Понятно. Позволь мне спросить кое о чем еще…", 'DZM1041.D_s14', 'r128', 'reply9720') \
            .response("Понятно. Спасибо за разговор. Прощай.", EXIT, 'r129', 'reply9721').with_action(lambda: _dispose()) \
        .push(manager)