import renpy
from engine.dialog import (DialogStateBuilder)
from engine.settings import (
    kick_morte,
    join_morte,
    change_good,
    change_good_morte,
    pick_up_key_in_morgue,
    ready_to_kill_in_morgue,
    kill_dummy_in_mougue,
    talk_dummy_in_morgue,
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

def s15_action():
    change_good_morte(1)
    change_good(1)

def show_morte(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])

def hide_morte():
    renpy.exports.hide('morte_img')

def ready_to_kill():
    ready_to_kill_in_morgue(True)

def kill_dummy():
    kill_dummy_in_mougue()

def pick_up_key():
    pick_up_key_in_morgue()
    ready_to_kill_in_morgue(False)

def talk_dummy():
    talk_dummy_in_morgue()
    kill_dummy_in_mougue()

# DLG/DMORTE1.DLG
def dlg_dmorte_one():
    teller        = renpy.store.characters['teller']
    morte_unknown = renpy.store.characters['morte_unknown']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']
    EXIT          = -1

    # from -
    DialogStateBuilder(0) \
        .add_active_npc_line(morte_unknown, "Эй, шеф. Ты в порядке?", lambda: show_morte('morte_img smiling1', center_right_down), 'state0', 'say39792') \
        .add_active_npc_line(morte_unknown, "Изображаешь из себя труп или пытаешься обмануть трухлявых?", lambda: join_morte(), 'state0', 'say39792') \
        .add_active_npc_line(morte_unknown, "Я уж думал, что ты дал дуба.", lambda: show_morte('morte_img smiling3', center_left_down), 'state0', 'say39792') \
        .add_response("Чт?.. Ты кто?", 1, 'response39793') \
        .done()

    # from 0.0
    DialogStateBuilder(1) \
        .add_npc_line(morte_unknown, "Э... кто я? А как насчет *тебя* для начала? Кто ты?", 'state1', 'say39795') \
        .add_response("Я... не знаю. Не могу вспомнить.", 2, 'response39796') \
        .add_response("Я *первый* спросил тебя, череп.", 3, 'response39797') \
        .done()

    # from 1.0 3.0 4.0
    DialogStateBuilder(2) \
        .add_npc_line(morte_unknown, "Ты не можешь вспомнить свое *имя*? Хе.", 'state2', 'say39798') \
        .add_npc_line(morte, "Что ж, в СЛЕДУЮЩИЙ раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт.", 'state2', 'say39798') \
        .add_response("Заперт?", 5, 'response39799') \
        .done()

    # from 1.1
    DialogStateBuilder(3) \
        .add_npc_line(morte, "Ага, а я спросил тебя *вторым*. Как твое имя?", 'state3', 'say39800') \
        .add_response("Я... не знаю. Не могу вспомнить.", 2, 'response39801') \
        .add_response("Ты первый, череп. В последний раз спрашиваю.", 4, 'response39802') \
        .done()

    # from 3.1
    DialogStateBuilder(4) \
        .add_npc_line(morte, "Пф-ф... да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Я - летающий череп. А кто ты?", 'state4', 'say39803') \
        .add_response("Я... не знаю. Не могу вспомнить.", 2, 'response39804') \
        .done()

    # from 2.0
    DialogStateBuilder(5) \
        .add_npc_line(morte, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.", 'state5', 'say39805') \
        .add_response("Мы заперты... где? Что это за место?", 6, 'response39806') \
        .done()

    # from 5.0
    DialogStateBuilder(6) \
        .add_npc_line(morte, "Оно называется 'Моргом'... это такое большое черное здание с чарующей архитектурой беременной паучихи.", 'state6', 'say39807') \
        .add_response("Морг? Постой... я умер?", 7, 'response39808') \
        .done()

    # from 6.0
    DialogStateBuilder(7) \
        .add_npc_line(morte, "Не похоже. Хотя на тебе куча шрамов... выглядит так, словно какой-то пень изрисовал тебя всего ножом.", 'state7', 'say39809') \
        .add_npc_line(morte, "Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу.", 'state7', 'say39809') \
        .add_response("Шрамы? Они так плохи?", 8, 'response39810') \
        .done()

    # from 7.0
    DialogStateBuilder(8) \
        .add_npc_line(morte, "Ну... художество на груди не ТАК уж плохо выглядит... но то, что на спине...", 'state8', 'say39811') \
        .add_npc_line(teller, "Морт делает паузу.", 'state8', 'say39811') \
        .add_npc_line(morte, "Скажем так, шеф, у тебя целая галерея татуировок на спине. Тут что-то написано...", 'state8', 'say39811') \
        .add_response("Татуировки на моей спине? Что там написано?", 9, 'response39812') \
        .done()

    # from 8.0
    DialogStateBuilder(9) \
        .add_npc_line(morte, "Ха! Похоже, тебя доставили с инструкцией...", 'state9', 'say39813') \
        .add_npc_line(teller, "Морт прочищает горло.", 'state9', 'say39813') \
        .add_npc_line(morte, "Посмотрим... начинается с...", 'state9', 'say39813') \
        .add_npc_line(scares, "«Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ».", 'state9', 'say39813') \
        .add_npc_line(scares, "«Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело».", 'state9', 'say39813') \
        .add_npc_line(scares, "«ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».", 'state9', 'say39813') \
        .add_response("Фарод?.. А там есть еще что-нибудь?", 10, 'response39814') \
        .done()

    # from 9.0
    DialogStateBuilder(10) \
        .add_npc_line(morte, "Ага, здесь есть еще немного...", 'state10', 'say39815') \
        .add_npc_line(teller, "Морт умолкает.", 'state10', 'say39815') \
        .add_npc_line(morte, "Посмотрим... вот продолжение...", 'state10', 'say39815') \
        .add_npc_line(scares, "«Не потеряй дневник, иначе мы вновь окажемся в Стиксе».", 'state10', 'say39815') \
        .add_npc_line(scares, "«И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий».", 'state10', 'say39815') \
        .add_npc_line(scares, "«Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».", 'state10', 'say39815') \
        .add_response("Неудивительно, что спина так болит: да там целая чертова поэма. А дневник, который должен быть со мной... он был возле меня, пока я здесь валялся?", 11, 'response39816') \
        .done()

    # from 10.0
    DialogStateBuilder(11) \
        .add_npc_line(morte, "Нет... тебя обобрали догола, когда доставили сюда.", 'state11', 'say39817') \
        .add_npc_line(morte, "Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле.", 'state11', 'say39817') \
        .add_response("А как насчет Фарода? Ты его знаешь?", 12, 'response39818') \
        .done()

    # from 11.0
    DialogStateBuilder(12) \
        .add_npc_line(morte, "Нет, не знаю... С другой стороны, я вообще мало кого знаю.", 'state12', 'say39819') \
        .add_npc_line(morte, "В общем, КТО-НИБУДЬ да знает, как добраться до этого Фарода... э, то есть, как только мы выберемся отсюда.", 'state12', 'say39819') \
        .add_response("И *как* же мы выберемся отсюда?", 13, 'response39820') \
        .done()

    # from 12.0
    DialogStateBuilder(13) \
        .add_npc_line(morte, "Ну, если все двери заперты, значит, нам понадобится ключ.", 'state13', 'say39821') \
        .add_npc_line(morte, "Есть шанс, что он есть у одного из ходячих трупов в этой комнате.", 'state13', 'say39821') \
        .add_response("Ходячих трупов?", 14, 'response39822') \
        .done()

    # from 13.0
    DialogStateBuilder(14) \
        .add_npc_line(morte, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы.", 'state14', 'say39823') \
        .add_npc_line(morte, "Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.", 'state14', 'say39823') \
        .add_response("А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа.", 15, 'response39824') \
        .add_response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ? Ладно.", 99999999_18, 'response39825') \
        .done()

    # from 14.0
    DialogStateBuilder(15) \
        .add_active_npc_line(morte, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ.", lambda: s15_action(), 'state15', 'say39826') \
        .add_npc_line(morte, "Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу.", 'state15', 'say39826') \
        .add_response("Ну хорошо... Я собью одного из них и заберу ключ.", 99999999_18, 'response39827') \
        .done() # was r18 -> s16

    # Removed because these lines is about gameplay mechanics, that the vn does not have

    # from 14.1 15.0
    # DialogStateBuilder(16) \
    #     .add_npc_line(morte, "Хорошо, но перед этим неплохо бы вооружиться. Кажется, здесь где-то на полках есть скальпель.", 's16') \
    #     .add_response("Ладно, я поищу его.", 17, 'r19') \
    #     .done()

    # from 16.0
    # DialogStateBuilder(17) \
    #     .add_npc_line(morte, "И последнее: эти трупы медлительны, но их удар — все равно что поцелуй тарана.", 's17') \
    #     .add_npc_line(morte, "Если они начнут доставать тебя, помни, что ты можешь БЕГАТЬ, а они — нет.", 's17') \
    #     .add_npc_line(morte, "Используй это, чтобы держаться на дистанции, если тебе нужно восстановиться.", 's17') \
    #     .add_response("Хорошо. Спасибо за совет.", 18, 'r20') \
    #     .done()

    # from -
    # DialogStateBuilder(18) \
    #     .add_npc_line(morte, "На одной из тех полок должен быть скальпель. Я бы на твоем месте нашел его до того, как начал бодаться с местными трупаками.", 's18') \
    #     .add_response("Ладно... Я поищу.", 99999999_18, 'r21') \
    #     .done()

    # from 15.0
    DialogStateBuilder(99999999_18) \
        .add_npc_line(teller, "На одной из полок вы заметили что-то металлическое. Вы подходите ближе.", '-', '-') \
        .add_response("(Осмотреть)", 19, '-') \
        .done()

    # from 99999999_18.0
    DialogStateBuilder(19) \
        .add_npc_line(morte, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами...", 'state19', 'say39834') \
        .add_npc_line(morte, "... и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.", 'state19', 'say39834') \
        .add_response("А, может, ты мне *поможешь*, Морт?", 20, 'response39835') \
        .add_response("Хорошо.", 23, 'response39836') \
        .done()

    # from 19.0
    DialogStateBuilder(20) \
        .add_npc_line(morte, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту.", 'state20', 'say39837') \
        .add_response("Я имел ввиду помощь в нападении на *трупов*.", 21, 'response39838') \
        .add_response("Ну хорошо тогда.", 23, 'response39839') \
        .done()

    # from 20.0
    DialogStateBuilder(21) \
        .add_npc_line(morte, "Я? Я романтик, а не солдат. Я только под ногами буду путаться.", 'state21', 'say39840') \
        .add_response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель.", 22, 'response39841') \
        .add_response("Ну хорошо тогда.", 23, 'response39842') \
        .done()

    # from 21.0
    DialogStateBuilder(22) \
        .add_npc_line(morte, "Э... без проблем. Я помогу тебе.", 'state22', 'say0') \
        .add_response("Я рад, что мы поняли друг друга.", 23, 'response39844') \
        .done()

    # from 19.1 20.1 21.1 22.0
    DialogStateBuilder(23) \
        .add_active_npc_line(morte, "Тогда настало время познакомить этих трупов с их второй смертью...", lambda: ready_to_kill(), 'state23', 'say0') \
        .add_response("Вперед.", EXIT, 'response39846') \
        .done()

    # from -
    DialogStateBuilder(99999999_23) \
        .add_npc_line(teller, "Вы втыкаете скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
        .add_active_npc_line(teller, "В них нет ни жизни, ни разума. Вы без сожалений вбиваете скальпель между глаз до тех пор, пока ходячий труп не падает.", lambda: kill_dummy(), '-', '-') \
        .add_response("(...)", EXIT, '-') \
        .done()

    # from -
    DialogStateBuilder(24) \
        .add_npc_line(morte, "Отлично, похоже, ты позаботился о правильном трупе.", 'state24', 'say0') \
        .add_npc_line(teller, "Вы достаёте из-под тела кусок железа, в котором с трудом можно опознать правильную форму.", '-', '-') \
        .add_active_npc_line(morte, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.", lambda: pick_up_key(), 'state25', 'say39849') \
        .add_response("Тогда я перепробую все двери.", EXIT, 'response39850') \
        .done()

    # from -
    DialogStateBuilder(26) \
        .add_npc_line(morte, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?", 'state26', 'say39851') \
        .add_response("Да... идем.", 27, 'response39852') \
        .add_response("Не сейчас, Морт.", 27, 'r33') \
        .done()

    # from 26.1
    DialogStateBuilder(27) \
        .add_npc_line(morte, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс.", 'state27', 'say39854') \
        .add_npc_line(morte, "Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 'state27', 'say39854') \
        .add_response("Морт, у тебя НЕТ ни того, ни другого.", 28, 'response39855') \
        .add_response("Ладно. Я передумал. Давай, идем.", EXIT, 'response39856') \
        .add_response("Не сейчас, Морт. Может быть потом", 28, 'r36') \
        .done()

    # from 27.0 27.2
    DialogStateBuilder(28) \
        .add_npc_line(morte, "Ты пытаешься задеть мои чувства, шеф?", 'state28', 'say39858') \
        .add_npc_line(morte, "Погоди, разве я что-то не так сказал?", 'state28', 'say39858') \
        .add_npc_line(morte, "Или это из-за того, что у меня нет рук? Что?", 'state28', 'say39858') \
        .add_response("Ладно. Я передумал. Давай, идем.", EXIT, 'response39859') \
        .add_response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 29, 'r38') \
        .done()

    # from 28.1
    DialogStateBuilder(29) \
        .add_active_npc_line(morte, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", lambda: kick_morte(), 'state29', 'say39861') \
        .add_response("Я так и сделаю. Прощай, Морт.", EXIT, 'response39862') \
        .done()

    # from -
    DialogStateBuilder(31) \
        .add_npc_line(morte, "Э, шеф... они не слышат тебя, понятно? Они мертвы.", 'state31', 'say42298') \
        .add_response("Но ты ведь тоже мертв. И разговариваешь со мной.", 32, 'response42299') \
        .done()

    # from 31.0
    DialogStateBuilder(32) \
        .add_npc_line(morte, "Ага, но *я* особенный. Смерть не смогла убить мою жажду к жизни. А здешние трупы...", 'state32', 'say42300') \
        .add_npc_line(teller, "Морт обводит комнату взглядом.", 'state32', 'say42300') \
        .add_npc_line(morte, "Они и при жизни из себя ничего не представляли.", 'state32', 'say42300') \
        .add_response("Понятно...", 33, 'response42301') \
        .done()

    # from 32.0
    DialogStateBuilder(33) \
        .add_npc_line(morte, "Слушай шеф... Наблюдение за тем, как ты пытаешься поболтать с этими трупами, не способствует укреплению моей морали.", 'state33', 'say42302') \
        .add_active_npc_line(morte, "Давай оставим разговоры с мертвецами сумасшедшим, ладно?", lambda: talk_dummy(), 'state33', 'say42302') \
        .add_response("Хорошо. Идем.", EXIT, 'response42303') \
        .done()

    # from -
    DialogStateBuilder(34) \
        .add_active_npc_line(morte, "Кажется, просителю повезло, шеф. Смотри... у него в руке ключ».", lambda: pick_up_key(), 'state34', 'say42306') \
        .add_response("Хорошо. Идем.", EXIT, 'response42303') \
        .done()