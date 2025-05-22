import renpy
from engine.dialog import (DialogStateBuilder)
from engine.settings import (
    pick_morgue_key,
    kick_morte,
    join_morte,
    change_good,
    change_good_morte
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

# DLG/DMORTE1.DLG
def dlg_dmorte_one():
    teller        = renpy.store.characters['teller']
    morte_unknown = renpy.store.characters['morte_unknown']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']

    DialogStateBuilder(0) \
        .add_active_npc_line(morte_unknown, "Эй, шеф. Ты в порядке?", lambda: show_morte('morte_img smiling1', center_right_down), 's0') \
        .add_active_npc_line(morte_unknown, "Изображаешь из себя труп или пытаешься обмануть трухлявых?", lambda: join_morte(), 's0') \
        .add_active_npc_line(morte_unknown, "Я уж думал, что ты дал дуба.", lambda: show_morte('morte_img smiling3', center_left_down), 's0') \
        .add_response("Чт?.. Ты кто?", 1, 'r0') \
        .done()

    DialogStateBuilder(1) \
        .add_npc_line(morte_unknown, "Э... кто я? А как насчет *тебя* для начала? Кто ты?", 's1') \
        .add_response("Я... не знаю. Не могу вспомнить.", 2, 'r1') \
        .add_response("Я *первый* спросил тебя, череп", 3, 'r2') \
        .done()

    DialogStateBuilder(2) \
        .add_npc_line(morte_unknown, "Ты не можешь вспомнить свое *имя*? Хе.", 's2') \
        .add_active_npc_line(morte, "Что ж, в СЛЕДУЮЩИЙ раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт", lambda: show_morte('morte_img smiling3', center_left_down),'s2') \
        .add_response("Заперт?", 6, 'r3') \
        .done()

    DialogStateBuilder(3) \
        .add_active_npc_line(morte_unknown, "Ага, а я спросил тебя *вторым*. Как твое имя?", lambda: show_morte('morte_img exited', center_left_down), 's3') \
        .add_response("Я... не знаю. Не могу вспомнить", 2, 'r4') \
        .add_response("Ты первый, череп. В последний раз спрашиваю", 4, 'r5') \
        .done()

    DialogStateBuilder(4) \
        .add_active_npc_line(morte, "Пф-ф... да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Я - летающий череп. А кто ты?", lambda: show_morte('morte_img grumpy', center_left_down), 's4') \
        .add_response("Я... не знаю. Не могу вспомнить", 2, 'r6') \
        .done()

    DialogStateBuilder(5) \
        .add_npc_line(morte, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.", 's5') \
        .add_response("Мы заперты... где? Что это за место?", 6, 'r7') \
        .done()

    DialogStateBuilder(6) \
        .add_npc_line(morte, "Оно называется 'Моргом'... это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's6') \
        .add_response("Морг? Постой... я умер?", 7, 'r8') \
        .done()

    DialogStateBuilder(7) \
        .add_npc_line(morte, "Не похоже. Хотя на тебе куча шрамов... выглядит так, словно какой-то пень изрисовал тебя всего ножом.", 's7') \
        .add_npc_line(morte, "Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу", 's7') \
        .add_response("Шрамы? Они так плохи?", 8, 'r9') \
        .done()

    DialogStateBuilder(8) \
        .add_npc_line(morte, "Ну... художество на груди не ТАК уж плохо выглядит... но то, что на спине...", 's8') \
        .add_npc_line(teller, "Морт делает паузу.", 's8') \
        .add_npc_line(morte, "Скажем так, шеф, у тебя целая галерея татуировок на спине. Тут что-то написано...", 's8') \
        .add_response("Татуировки на моей спине? Что там написано?", 9, 'r10') \
        .done()

    DialogStateBuilder(9) \
        .add_npc_line(morte, "Ха! Похоже, тебя доставили с инструкцией...", 's9') \
        .add_npc_line(teller, "Морт прочищает горло.", 's9') \
        .add_npc_line(morte, "Посмотрим... начинается с...", 's9') \
        .add_npc_line(scares, "«Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ.", 's9') \
        .add_npc_line(scares, "Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело.", 's9') \
        .add_npc_line(scares, "ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».", 's9') \
        .add_response("Фарод?.. А там есть еще что-нибудь?", 10, 'r11') \
        .done()

    DialogStateBuilder(10) \
        .add_npc_line(morte, "Ага, здесь есть еще немного...", 's10') \
        .add_npc_line(teller, "Морт умолкает.", 's10') \
        .add_npc_line(morte, "Посмотрим... вот продолжение...", 's10') \
        .add_npc_line(scares, "«Не потеряй дневник, иначе мы вновь окажемся в Стиксе.", 's10') \
        .add_npc_line(scares, "И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий.", 's10') \
        .add_npc_line(scares, "Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».", 's10') \
        .add_response("Неудивительно, что спина так болит: да там целая чертова поэма. А дневник, который должен быть со мной... он был возле меня, пока я здесь валялся?", 11, 'r12') \
        .done()

    DialogStateBuilder(11) \
        .add_npc_line(morte, "Нет... тебя обобрали догола, когда доставили сюда.", 's11') \
        .add_npc_line(morte, "Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле", 's11') \
        .add_response("А как насчет Фарода? Ты его знаешь?", 12, 'r13') \
        .done()

    DialogStateBuilder(12) \
        .add_npc_line(morte, "Нет, не знаю... С другой стороны, я вообще мало кого знаю.", 's12') \
        .add_npc_line(morte, "В общем, КТО-НИБУДЬ да знает, как добраться до этого Фарода... э, то есть, как только мы выберемся отсюда", 's12') \
        .add_response("И *как* же мы выберемся отсюда?", 13, 'r14') \
        .done()

    DialogStateBuilder(13) \
        .add_npc_line(morte, "Ну, если все двери заперты, значит, нам понадобится ключ.", 's13') \
        .add_npc_line(morte, "Есть шанс, что он есть у одного из ходячих трупов в этой комнате.", 's13') \
        .add_response("Ходячих трупов?", 14, 'r15') \
        .done()

    DialogStateBuilder(14) \
        .add_npc_line(morte, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы.", 's14') \
        .add_npc_line(morte, "Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.", 's14') \
        .add_response("А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа", 15, 'r16') \
        .add_response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ?", 99999999_18, 'r17') \
        .done() # was r17 -> s16

    DialogStateBuilder(15) \
        .add_active_npc_line(morte, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ.", lambda: s15_action(), 's15') \
        .add_npc_line(morte, "Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу", 's15') \
        .add_response("Ну хорошо... Я собью одного из них и заберу ключ.", 99999999_18, 'r18') \
        .done() # was r18 -> s16

    # Removed because these lines is about gameplay mechanics, that the vn does not have

    # DialogStateBuilder(16) \
    #     .add_npc_line(morte, "Хорошо, но перед этим неплохо бы вооружиться. Кажется, здесь где-то на полках есть скальпель.", 's16') \
    #     .add_response("Ладно, я поищу его.", 17, 'r19') \
    #     .done()

    # DialogStateBuilder(17) \
    #     .add_npc_line(morte, "И последнее: эти трупы медлительны, но их удар — все равно что поцелуй тарана.", 's17') \
    #     .add_npc_line(morte, "Если они начнут доставать тебя, помни, что ты можешь БЕГАТЬ, а они — нет.", 's17') \
    #     .add_npc_line(morte, "Используй это, чтобы держаться на дистанции, если тебе нужно восстановиться.", 's17') \
    #     .add_response("Хорошо. Спасибо за совет.", 18, 'r20') \
    #     .done()

    # DialogStateBuilder(18) \
    #     .add_npc_line(morte, "На одной из тех полок должен быть скальпель. Я бы на твоем месте нашел его до того, как начал бодаться с местными трупаками.", 's18') \
    #     .add_response("Ладно... Я поищу.", 99999999_18, 'r21') \
    #     .done()

    DialogStateBuilder(99999999_18) \
        .add_npc_line(teller, "На одной из полок вы заметили что-то металлическое. Вы подходите ближе.", '-') \
        .add_response("(Осмотреть)", 19, '-') \
        .done()

    DialogStateBuilder(19) \
        .add_npc_line(morte, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами...", 's19') \
        .add_npc_line(morte, "...и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.", 's19') \
        .add_response("А, может, ты мне *поможешь*, Морт?", 20, 'r22') \
        .add_response("Хорошо", 23, 'r23') \
        .done()

    DialogStateBuilder(20) \
        .add_npc_line(morte, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту", 's20') \
        .add_response("Я имел ввиду помощь в нападении на *трупов*", 21, 'r24') \
        .add_response("Ну хорошо тогда", 23, 'r25') \
        .done()

    DialogStateBuilder(21) \
        .add_npc_line(morte, "Я? Я романтик, а не солдат. Я только под ногами буду путаться", 's21') \
        .add_response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель", 22, 'r26') \
        .add_response("Ну хорошо тогда", 23, 'r27') \
        .done()

    DialogStateBuilder(22) \
        .add_npc_line(morte, "Э... без проблем. Я помогу тебе", 's22') \
        .add_response("Я рад, что мы поняли друг друга", 23, 'r28') \
        .done()

    DialogStateBuilder(23) \
        .add_npc_line(morte, "Тогда настало время познакомить этих трупов с их второй смертью...", 's23') \
        .add_response("Вперед", 99999999_23, 'r29') \
        .done()

    DialogStateBuilder(99999999_23) \
        .add_npc_line(teller, "Вы втыкаете скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-') \
        .add_npc_line(teller, "В них нет ни жизни, ни разума. Вы без сожалений вбиваете скальпель между глаз до тех пор, пока ходячий труп не падает.", '-') \
        .add_npc_line(teller, "Вы осматриваете его, но ключа не обнаруживаете.", '-') \
        .add_npc_line(teller, "Зато следующий труп при падении подозрительно звякает.", '-') \
        .add_response("(Осмотреть)", 24, 'r29') \
        .done()

    DialogStateBuilder(24) \
        .add_npc_line(morte, "Отлично, похоже, ты позаботился о правильном трупе.", 's24') \
        .add_npc_line(teller, "Вы поднимаете кусок железа, в котором с трудом можно опознать правильную форму.", '-') \
        .add_active_npc_line(morte, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.", lambda: pick_morgue_key(),'s25') \
        .add_response("Тогда я перепробую все двери", -1, 'r31') \
        .done()

    DialogStateBuilder(26) \
        .add_npc_line(morte, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?", 's26') \
        .add_response("Да... идем.", -1, 'r32') \
        .add_response("Не сейчас, Морт.", 27, 'r33') \
        .done()

    DialogStateBuilder(27) \
        .add_npc_line(morte, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс.", 's27') \
        .add_npc_line(morte, "Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's27') \
        .add_response("Морт, у тебя НЕТ ни того, ни другого", 28, 'r32') \
        .add_response("Ладно. Я передумал. Давай, идем", -1, 'r35') \
        .add_response("Не сейчас, Морт. Может быть потом", 28, 'r36') \
        .done()

    DialogStateBuilder(28) \
        .add_npc_line(morte, "Ты пытаешься задеть мои чувства, шеф?", 's28') \
        .add_npc_line(morte, "Погоди, разве я что-то не так сказал?", 's28') \
        .add_npc_line(morte, "Или это из-за того, что у меня нет рук? Что?", 's28') \
        .add_response("Ладно. Я передумал. Давай, идем.", -1, 'r37') \
        .add_response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 29, 'r38') \
        .done()

    DialogStateBuilder(29) \
        .add_active_npc_line(morte, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", lambda: kick_morte(), 's29') \
        .add_response("Я так и сделаю. Прощай, Морт", -1, 'r39') \
        .done()
