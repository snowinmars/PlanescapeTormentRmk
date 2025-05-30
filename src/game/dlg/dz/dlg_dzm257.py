import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init(gsm):
    gsm.set_location('mortuary1')
    renpy.exports.show("bg mortuary1")
    _show('dzm257_img default', center_right_down)
def _dispose():
    _hide('dzm257_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r6510_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6510_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6511_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6512_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6513_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r9562_action(gsm):
    gsm.dec_once_law('chaotic_zom257_1')
###

# DLG/DZM257.DLG
def dlg_dzm257(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm257        = renpy.store.characters['dzm257']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM257.D_s0
    DialogStateBuilder() \
    .state('DZM257.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Глаза этого трупа близко посажены и слегка косят: один смотрит влево, а другой — вправо.", 's0', 'say6507').with_action(lambda: _init(gsm)) \
            .line(teller, "Ты с трудом различаешь номер «257» на разбитом лбу: похоже, труп несколько раз получил по голове, из-за чего номер различается с трудом.", 's0', 'say6507') \
        .with_responses() \
            .response("У тебя голова не кружится из-за глаз?", 'DZM257.D_s1', 'r0', 'reply6510').with_condition(lambda: _r6510_condition(gsm)).with_action(lambda: _r6510_action(gsm)) \
            .response("У тебя голова не кружится из-за глаз?", 'DZM257.D_s1', 'r1', 'reply6511').with_condition(lambda: _r6511_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM257.D_s1', 'r2', 'reply6512').with_condition(lambda: _r6512_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM257.D_s2', 'r3', 'reply6513').with_condition(lambda: _r6513_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6514').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6515').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "В глазах трупа нет даже намека на понимание; они продолжают смотреть каждый в свою сторону.", 's1', 'say6508') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM257.D_s2', 'r3', 'reply6513').with_condition(lambda: _r6513_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6514').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6516').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Дух врывается назад в тело с такой силой, что труп, охваченный судорогой, отлетает назад!", 's2', 'say6509') \
            .line(teller, "Тело, извиваясь и мечась в безумном танце, тотчас поднимается на ноги, размахивая руками, разрывая швы и тряся отваливающимися кусками плоти.", 's2', 'say6509') \
            .line(teller, "Глаза трупа выпучиваются и вращаются, а сам он без конца хихикает как сумасшедший…", 's2', 'say6509') \
        .with_responses() \
            .response("Э-э… У меня к тебе вопрос, дух…", 'DZM257.D_s3', 'r7', 'reply6517') \
            .response("Оставить духа в покое.", EXIT, 'r8', 'reply9558').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s3', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Одержимый труп кричит нараспев, громкость и тон его голоса беспорядочно меняются.", 's3', 'say9553') \
            .line(dzm257, "ТЫ — ДУХ, Я — ЖИВОЙ, это ТЫ ответишь на вопросы мои!", 's3', 'say9553') \
            .line(teller, "Кажется, твой смущенный вид ему понравился. Он вставляет в рот свои костяные пальцы и растягивается его в зловещей усмешке, одержимо смеясь и высовывая мясистый белый язык.", 's3', 'say9553') \
        .with_responses() \
            .response("Хорошо… задавай свои вопросы.", 'DZM257.D_s4', 'r9', 'reply9559') \
            .response("Нет. Это я хотел задать *тебе* вопрос…", 'DZM257.D_s5', 'r10', 'reply9560') \
            .response("Оставить в покое беспокойного духа.", 'DZM257.D_s6', 'r11', 'reply9561') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s4', '# from 3.0 4.0 5.0') \
        .with_npc_lines() \
            .line(teller, "На мгновение дух успокаивается, затем взрывается потоком громкого, сводящего с ума бессмысленного бормотания. Какофония сводит с ума, угрожая поставить тебя на колени.", 's4', 'say9554') \
            .line(teller, "Так же внезапно, как и началось, все… прекращается. Труп стоит, тихо подергиваясь.", 's4', 'say9554') \
        .with_responses() \
            .response("Я не совсем уловил последнюю часть. Ты можешь повторить это еще раз?", 'DZM257.D_s4', 'r12', 'reply9562').with_action(lambda: _r9562_action(gsm)) \
            .response("Я не понимаю. Тем не менее, у меня есть вопрос…", 'DZM257.D_s5', 'r13', 'reply9563') \
            .response("Я тебя не понимаю. Прощай.", 'DZM257.D_s6', 'r14', 'reply9564') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s5', '# from 3.1 4.1 5.1') \
        .with_npc_lines() \
            .line(teller, "Дух снова кричит нараспев.", 's5', 'say9555') \
            .line(dzm257, "На вопросы ЖИВЫХ МЕРТВЫЙ ответит. ТАК было, так ЕСТЬ и будет ТАК. На мои ОТВЕТЫ ты задашь вопросы!", 's5', 'say9555') \
            .line(teller, "Выражение твоего лица очень ему нравится; он пускается в такой дикий пляс, что ты уже начинаешь сомневаться, что труп вынесет такое обращение над собой.", 's5', 'say9555') \
            .line(teller, "Пока он скачет, ты даже слышишь грохот и треск костей и звук лопающихся сухожилий.", 's5', 'say9555') \
        .with_responses() \
            .response("Ну хорошо… задавай свои вопросы.", 'DZM257.D_s4', 'r15', 'reply9565') \
            .response("Ты не понимаешь. У меня вопрос к *тебе*…", 'DZM257.D_s5', 'r16', 'reply9566') \
            .response("Махнуть рукой и оставить в покое бормочущего духа.", 'DZM257.D_s6', 'r17', 'reply9567') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s6', '# from 3.2 4.2 5.2') \
        .with_npc_lines() \
            .line(teller, "Покидая тело, дух растягивает губы в понимающей улыбке. Его дикие сверкающие глаза впиваются в тебя пронизывающим взглядом психопата.", 's6', 'say9556') \
            .line(teller, "Он шепчет одно единственное слово, старательно произнося каждую букву, будто перебирает жемчужное ожерелье.", 's6', 'say9556') \
            .line(dzm257, "Лимбо…", 's6', 'say9556') \
        .with_responses() \
            .response("Что?", 'DZM257.D_s7', 'r18', 'reply9568') \
            .response("Не обращать на него внимания, отвернуться.", EXIT, 'r19', 'reply9569').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM257.D_s7', '# from 6.0') \
        .with_npc_lines() \
            .line(teller, "…и он уходит, оставляя тебя в нерешительности и некоторой запутанности. Зомби молча возвращается к своей работе.", 's7', 'say9557') \
        .with_responses() \
            .response("(...)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
