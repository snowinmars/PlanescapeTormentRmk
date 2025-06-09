init python:
    def _kill_dzm257(gsm):
        gsm.set_dead_dzm257(True)
    def _know_dzm257_spirit_action(gsm):
        gsm.set_know_dzm257_spirit(True)
    def _know_dzm257_spirit_condition(gsm):
        return gsm.get_know_dzm257_spirit()


init python:
    def _r6510_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)
    def _r9562_action(gsm):
        gsm.dec_once_law('chaotic_zom257_1')


init python:
    def _r6510_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6511_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6512_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6513_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM257.DLG
# ###


label start_dzm257_talk:
    call dzm257_init
    jump dzm257_s0
label start_dzm257_kill:
    call dzm257_init
    jump dzm257_kill
label dzm257_init:
    $ glm.set_location('mortuary_f2r5')
    $ gsm.set_meet_dzm257(True)
    scene bg mortuary5
    show dzm257_img default at center_left_down
    return
label dzm257_dispose:
    hide dzm257_img
    jump show_graphics_menu


# s0 # say6507
label dzm257_s0:  # from -
    teller 'Глаза этого трупа близко посажены и слегка косят: один смотрит влево, а другой — вправо.'
    teller 'Ты с трудом различаешь номер «257» на разбитом лбу: похоже, труп несколько раз получил по голове, из-за чего номер различается с трудом.'

    menu:
        'У тебя голова не кружится из-за глаз?' if _r6510_condition(gsm):
            # r0 # reply6510
            $ _r6510_action(gsm)
            jump dzm257_s1
        'У тебя голова не кружится из-за глаз?' if _r6511_condition(gsm):
            # r1 # reply6511
            jump dzm257_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6512_condition(gsm):
            # r2 # reply6512
            jump dzm257_s1
        'Использовать на трупе свою способность История костей.' if _r6513_condition(gsm):
            # r3 # reply6513
            jump dzm257_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6514
            jump dzm257_dispose
        'Оставить труп в покое.':
            # r5 # reply6515
            jump dzm257_dispose


# s1 # say6508
label dzm257_s1:  # from 0.0 0.1 0.2
    teller 'В глазах трупа нет даже намека на понимание; они продолжают смотреть каждый в свою сторону.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r6513_condition(gsm):
            # r3 # reply6513
            jump dzm257_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6514
            jump dzm257_dispose
        'Оставить труп в покое.':
            # r6 # reply6516
            jump dzm257_dispose


# s2 # say6509
label dzm257_s2:  # from 0.3
    $ _know_dzm257_spirit_action(gsm)
    teller 'Дух врывается назад в тело с такой силой, что труп, охваченный судорогой, отлетает назад!'
    teller 'Тело, извиваясь и мечась в безумном танце, тотчас поднимается на ноги, размахивая руками, разрывая швы и тряся отваливающимися кусками плоти.'
    teller 'Глаза трупа выпучиваются и вращаются, а сам он без конца хихикает как сумасшедший…'

    menu:
        'Э-э… У меня к тебе вопрос, дух…':
            # r7 # reply6517
            jump dzm257_s3
        'Оставить духа в покое.':
            # r8 # reply9558
            jump dzm257_dispose


# s3 # say9553
label dzm257_s3:  # from 2.0
    teller 'Одержимый труп кричит нараспев, громкость и тон его голоса беспорядочно меняются.'
    dzm257 'ТЫ — ДУХ, Я — ЖИВОЙ, это ТЫ ответишь на вопросы мои!'
    teller 'Кажется, твой смущенный вид ему понравился. Он вставляет в рот свои костяные пальцы и растягивается его в зловещей усмешке, одержимо смеясь и высовывая мясистый белый язык.'

    menu:
        'Хорошо… задавай свои вопросы.':
            # r9 # reply9559
            jump dzm257_s4
        'Нет. Это я хотел задать *тебе* вопрос…':
            # r10 # reply9560
            jump dzm257_s5
        'Оставить в покое беспокойного духа.':
            # r11 # reply9561
            jump dzm257_s6


# s4 # say9554
label dzm257_s4:  # from 3.0 4.0 5.0
    teller 'На мгновение дух успокаивается, затем взрывается потоком громкого, сводящего с ума бессмысленного бормотания. Какофония сводит с ума, угрожая поставить тебя на колени.'
    teller 'Так же внезапно, как и началось, все… прекращается. Труп стоит, тихо подергиваясь.'

    menu:
        'Я не совсем уловил последнюю часть. Ты можешь повторить это еще раз?':
            # r12 # reply9562
            $ _r9562_action(gsm)
            jump dzm257_s4
        'Я не понимаю. Тем не менее, у меня есть вопрос…':
            # r13 # reply9563
            jump dzm257_s5
        'Я тебя не понимаю. Прощай.':
            # r14 # reply9564
            jump dzm257_s6


# s5 # say9555
label dzm257_s5:  # from 3.1 4.1 5.1
    teller 'Дух снова кричит нараспев.'
    dzm257 'На вопросы ЖИВЫХ МЕРТВЫЙ ответит. ТАК было, так ЕСТЬ и будет ТАК. На мои ОТВЕТЫ ты задашь вопросы!'
    teller 'Выражение твоего лица очень ему нравится; он пускается в такой дикий пляс, что ты уже начинаешь сомневаться, что труп вынесет такое обращение над собой.'
    teller 'Пока он скачет, ты даже слышишь грохот и треск костей и звук лопающихся сухожилий.'

    menu:
        'Ну хорошо… задавай свои вопросы.':
            # r15 # reply9565
            jump dzm257_s4
        'Ты не понимаешь. У меня вопрос к *тебе*…':
            # r16 # reply9566
            jump dzm257_s5
        'Махнуть рукой и оставить в покое бормочущего духа.':
            # r17 # reply9567
            jump dzm257_s6


# s6 # say9556
label dzm257_s6:  # from 3.2 4.2 5.2
    teller 'Покидая тело, дух растягивает губы в понимающей улыбке. Его дикие сверкающие глаза впиваются в тебя пронизывающим взглядом психопата.'
    teller 'Он шепчет одно единственное слово, старательно произнося каждую букву, будто перебирает жемчужное ожерелье.'
    dzm257 'Лимбо…'

    menu:
        'Что?':
            # r18 # reply9568
            jump dzm257_s7
        'Не обращать на него внимания, отвернуться.':
            # r19 # reply9569
            jump dzm257_dispose


# s7 # say9557
label dzm257_s7:  # from 6.0
    teller '…и он уходит, оставляя тебя в нерешительности и некоторой запутанности. Зомби молча возвращается к своей работе.'

    jump dzm257_dispose



label dzf257_kill:
    teller 'Глаза этого трупа близко посажены и слегка косят: один смотрит влево, а другой — вправо.'
    teller 'Ты с трудом различаешь номер «257» на разбитом лбу: похоже, труп несколько раз получил по голове, из-за чего номер различается с трудом.'
    if _know_dzm257_spirit_condition():
        teller 'Когда ты вернул в него дух, он кричал.'

    menu:
        '(Уйти.)':
            jump dzm257_dispose
        '(Убить зомби).':
            jump dzf257_killed

label dzf257_killed:
    $ _kill_dzf257(gsm)
    teller 'Я бью между глаз. Пустые глаза вращаются в разные стороны, но так ни не могут посмотреть на меня.'
    teller 'В них нет ни жизни, ни разума. Я бью его до тех пор, пока он не падает.'
    jump dzm257_dispose
