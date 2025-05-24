import renpy
from engine.dialog import (DialogStateBuilder)
from engine.settings_global import (
    current_global_settings,
    set_in_party_morte,
    change_good,
    change_good_morte,
    travel
)
from engine.settings_morgue import (
    current_morgue_settings,
    pick_up_key,
    ready_to_kill,
    kill_dummy,
    talk_dummy
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

def _init():
    travel('morgue1')
    _show_morte('morte_img smiling1', center_right_down)

def _r16_action():
    change_good_morte(1)
    change_good(1)

def _show_morte(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])

def _hide_morte():
    renpy.exports.hide('morte_img')

def _kick_morte():
    set_in_party_morte(False)

def _join_morte():
    set_in_party_morte(True)

def _ready_to_kill():
    ready_to_kill(True)

def _kill_dummy():
    kill_dummy()

def _pick_up_key():
    pick_up_key(True)
    ready_to_kill(False)

def _talk_dummy():
    talk_dummy()
    kill_dummy()

# DLG/DMORTE1.DLG
# DLG/DZM782.DLG
def dlg_dmorte_one():
    teller        = renpy.store.characters['teller']
    morte_unknown = renpy.store.characters['morte_unknown']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']
    EXIT          = -1

    # from -
    DialogStateBuilder('DMORTE1.D_s0') \
        .with_npc_lines() \
            .line(morte_unknown, "Эй, шеф. Ты в порядке?", 's0', 'say39792').with_action(lambda: _init()) \
            .line(morte_unknown, "Изображаешь из себя труп или пытаешься обмануть трухлявых?", 's0', 'say39792').with_action(lambda: _join_morte()) \
            .line(morte_unknown, "Я уж думал, что ты дал дуба.", 's0', 'say39792').with_action(lambda: _show_morte('morte_img smiling3',  center_left_down)) \
        .with_responses() \
            .response("Чт?.. Ты кто?", 'DMORTE1.D_s1', 'r0', 'reply39793').with_action(lambda: _join_morte()) \
        .done()

    # from 0.0
    DialogStateBuilder('DMORTE1.D_s1') \
        .with_npc_lines() \
            .line(morte_unknown, "Э… кто я? А как насчет *тебя* для начала? Кто ты?", 's1', 'say39795') \
        .with_responses() \
            .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r1', 'reply39796') \
            .response("Я *первый* спросил тебя, череп.", 'DMORTE1.D_s3', 'r2', 'reply39797') \
        .done()

    # from 1.0 3.0 4.0
    DialogStateBuilder('DMORTE1.D_s2') \
        .with_npc_lines() \
            .line(morte_unknown, "Ты не можешь вспомнить свое *имя*? Хе.", 's2', 'say39798') \
            .line(morte, "Что ж, в СЛЕДУЮЩИЙ раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт.", 's2', 'say39798') \
        .with_responses() \
            .response("Заперт?", 'DMORTE1.D_s5', 'r3', 'reply39799') \
        .done()

    # from 1.1
    DialogStateBuilder('DMORTE1.D_s3') \
        .with_npc_lines() \
            .line(morte_unknown, "Ага, а я спросил тебя *вторым*. Как твое имя?", 's3', 'say39800') \
        .with_responses() \
            .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r4', 'reply39801') \
            .response("Ты первый, череп. В последний раз спрашиваю.", 'DMORTE1.D_s4', 'r5', 'reply39802') \
        .done()

    # from 3.1
    DialogStateBuilder('DMORTE1.D_s4') \
        .with_npc_lines() \
            .line(morte_unknown, "Пф-ф… да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Я - летающий череп. А кто ты?", 's4', 'say39803') \
        .with_responses() \
            .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r6', 'reply39804') \
        .done()

    # from 2.0
    DialogStateBuilder('DMORTE1.D_s5') \
        .with_npc_lines() \
            .line(morte, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.", 's5', 'say39805') \
        .with_responses() \
            .response("Мы заперты… где? Что это за место?", 'DMORTE1.D_s6', 'r7', 'reply39806') \
        .done()

    # from 5.0
    DialogStateBuilder('DMORTE1.D_s6') \
        .with_npc_lines() \
            .line(morte, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's6', 'say39807') \
        .with_responses() \
            .response("Морг? Постой… я умер?", 'DMORTE1.D_s7', 'r8', 'reply39808') \
        .done()

    # from 6.0
    DialogStateBuilder('DMORTE1.D_s7') \
        .with_npc_lines() \
            .line(morte, "Не похоже. Хотя на тебе куча шрамов… выглядит так, словно какой-то пень изрисовал тебя всего ножом.", 's7', 'say39809') \
            .line(morte, "Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу.", 's7', 'say39809') \
        .with_responses() \
            .response("Шрамы? Они так плохи?", 'DMORTE1.D_s8', 'r9', 'reply39810') \
        .done()

    # from 7.0
    DialogStateBuilder('DMORTE1.D_s8') \
        .with_npc_lines() \
            .line(morte, "Ну… художество на груди не ТАК уж плохо выглядит… но то, что на спине…", 's8', 'say39811') \
            .line(teller, "Морт делает паузу.", 's8', 'say39811') \
            .line(morte, "Скажем так, шеф, у тебя целая галерея татуировок на спине. Тут что-то написано…", 's8', 'say39811') \
        .with_responses() \
            .response("Татуировки на моей спине? Что там написано?", 'DMORTE1.D_s9', 'r10', 'reply39812') \
        .done()

    # from 8.0
    DialogStateBuilder('DMORTE1.D_s9') \
        .with_npc_lines() \
            .line(morte, "Ха! Похоже, тебя доставили с инструкцией…", 's9', 'say39813') \
            .line(teller, "Морт прочищает горло.", 's9', 'say39813') \
            .line(morte, "Посмотрим… начинается с…", 's9', 'say39813') \
            .line(scares, "«Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ».", 's9', 'say39813') \
            .line(scares, "«Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело».", 's9', 'say39813') \
            .line(scares, "«ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».", 's9', 'say39813') \
        .with_responses() \
            .response("Фарод?.. А там есть еще что-нибудь?", 'DMORTE1.D_s10', 'r11', 'reply39814') \
        .done()

    # from 9.0
    DialogStateBuilder('DMORTE1.D_s10') \
        .with_npc_lines() \
            .line(morte, "Ага, здесь есть еще немного…", 's10', 'say39815') \
            .line(teller, "Морт умолкает.", 's10', 'say39815') \
            .line(morte, "Посмотрим… вот продолжение…", 's10', 'say39815') \
            .line(scares, "«Не потеряй дневник, иначе мы вновь окажемся в Стиксе».", 's10', 'say39815') \
            .line(scares, "«И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий».", 's10', 'say39815') \
            .line(scares, "«Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».", 's10', 'say39815') \
        .with_responses() \
            .response("Неудивительно, что спина так болит: да там целая чертова поэма. А дневник, который должен быть со мной… он был возле меня, пока я здесь валялся?", 'DMORTE1.D_s11', 'r12', 'reply39816') \
        .done()

    # from 10.0
    DialogStateBuilder('DMORTE1.D_s11') \
        .with_npc_lines() \
            .line(morte, "Нет… тебя обобрали догола, когда доставили сюда.", 's11', 'say39817') \
            .line(morte, "Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле.", 's11', 'say39817') \
        .with_responses() \
            .response("А как насчет Фарода? Ты его знаешь?", 'DMORTE1.D_s12', 'r13', 'reply39818') \
        .done()

    # from 11.0
    DialogStateBuilder('DMORTE1.D_s12') \
        .with_npc_lines() \
            .line(morte, "Нет, не знаю… С другой стороны, я вообще мало кого знаю.", 's12', 'say39819') \
            .line(morte, "В общем, КТО-НИБУДЬ да знает, как добраться до этого Фарода… э, то есть, как только мы выберемся отсюда.", 's12', 'say39819') \
        .with_responses() \
            .response("И *как* же мы выберемся отсюда?", 'DMORTE1.D_s13', 'r14', 'reply39820') \
        .done()

    # from 12.0
    DialogStateBuilder('DMORTE1.D_s13') \
        .with_npc_lines() \
            .line(morte, "Ну, если все двери заперты, значит, нам понадобится ключ.", 's13', 'say39821') \
            .line(morte, "Есть шанс, что он есть у одного из ходячих трупов в этой комнате.", 's13', 'say39821') \
        .with_responses() \
            .response("Ходячих трупов?", 'DMORTE1.D_s14', 'r15', 'reply39822') \
        .done()

    # from 13.0
    DialogStateBuilder('DMORTE1.D_s14') \
        .with_npc_lines() \
            .line(morte, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы.", 's14', 'say39823') \
            .line(morte, "Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.", 's14', 'say39823') \
        .with_responses() \
            .response("А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа.", 'DMORTE1.D_s15', 'r16', 'reply39824').with_action(lambda: _r16_action()) \
            .response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ? Ладно.", 'DMORTE1.D_s99999999_18', 'r17', 'reply39825') \
        .done()

    # from 14.0
    DialogStateBuilder('DMORTE1.D_s15') \
        .with_npc_lines() \
            .line(morte, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ.", 's15', 'say39826') \
            .line(morte, "Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу.", 's15', 'say39826') \
        .with_responses() \
            .response("Ну хорошо… Я собью одного из них и заберу ключ.", 'DMORTE1.D_s99999999_18', 'r18', 'reply39827') \
        .done() # was r18 -> s16

    # s16, s17, s18 got removed because these lines is about gameplay mechanics, that the visual novel does not have

    # from 15.0
    DialogStateBuilder('DMORTE1.D_s99999999_18') \
        .with_npc_lines() \
            .line(teller, "На одной из полок вы заметили что-то металлическое. Вы подходите ближе.", '-', '-') \
        .with_responses() \
            .response("(Осмотреть)", 'DMORTE1.D_s19', '-', '-') \
        .done()

    # from 99999999_18.0
    DialogStateBuilder('DMORTE1.D_s19') \
        .with_npc_lines() \
            .line(morte, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами…", 's19', 'say39834') \
            .line(morte, "… и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.", 's19', 'say39834') \
        .with_responses() \
            .response("А, может, ты мне *поможешь*, Морт?", 'DMORTE1.D_s20', 'r22', 'reply39835') \
            .response("Хорошо.", 'DMORTE1.D_s23', 'r23', 'reply39836') \
        .done()

    # from 19.0
    DialogStateBuilder('DMORTE1.D_s20') \
        .with_npc_lines() \
            .line(morte, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту.", 's20', 'say39837') \
        .with_responses() \
            .response("Я имел ввиду помощь в нападении на *трупов*.", 'DMORTE1.D_s21', 'r24', 'reply39838') \
            .response("Ну хорошо тогда.", 'DMORTE1.D_s23', 'r25', 'reply39839') \
        .done()

    # from 20.0
    DialogStateBuilder('DMORTE1.D_s21') \
        .with_npc_lines() \
            .line(morte, "Я? Я романтик, а не солдат. Я только под ногами буду путаться.", 's21', 'say39840') \
        .with_responses() \
            .response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель.", 'DMORTE1.D_s22', 'r26', 'reply39841') \
            .response("Ну хорошо тогда.", 'DMORTE1.D_s23', 'r27', 'reply39842') \
        .done()

    # from 21.0
    DialogStateBuilder('DMORTE1.D_s22') \
        .with_npc_lines() \
            .line(morte, "Э… без проблем. Я помогу тебе.", 's22', 'say39843') \
        .with_responses() \
            .response("Я рад, что мы поняли друг друга.", 'DMORTE1.D_s23', 'r28', 'reply39844') \
        .done()

    # from 19.1 20.1 21.1 22.0
    DialogStateBuilder('DMORTE1.D_s23') \
        .with_npc_lines() \
            .line(morte, "Тогда настало время познакомить этих трупов с их второй смертью…", 's23', 'say39845').with_action(lambda: _ready_to_kill()) \
        .with_responses() \
            .response("Вперед.", EXIT, 'r29', 'reply39846') \
        .done()

    # from -
    DialogStateBuilder('DMORTE1.D_s99999999_23') \
        .with_npc_lines() \
            .line(teller, "Вы втыкаете скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Вы без сожалений вбиваете скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_dummy()) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-') \
        .done()

    # from -
    DialogStateBuilder('DMORTE1.D_s24') \
        .with_npc_lines() \
            .line(morte, "Отлично, похоже, ты позаботился о правильном трупе.", 's24', 'say0') \
            .line(teller, "Вы достаёте из-под тела кусок железа, в котором с трудом можно опознать правильную форму.", '-', '-') \
            .line(morte, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.", 's25', 'say39849').with_action(lambda: _pick_up_key()) \
        .with_responses() \
            .response("Тогда я перепробую все двери.", EXIT, 'r31', 'reply39850') \
        .done()

    # from -
    DialogStateBuilder('DMORTE1.D_s26') \
        .with_npc_lines() \
            .line(morte, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?", 's26', 'say39851') \
        .with_responses() \
            .response("Да… идем.", 'DMORTE1.D_sNaN', 'r32', 'reply39852').with_action(lambda: _join_morte()) \
            .response("Не сейчас, Морт.", 'DMORTE1.D_s27', 'r33', 'reply39853') \
        .done()

    # from 26.1
    DialogStateBuilder('DMORTE1.D_s27') \
        .with_npc_lines() \
            .line(morte, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс.", 's27', 'say39854') \
            .line(morte, "Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's27', 'say39854') \
        .with_responses() \
            .response("Морт, у тебя НЕТ ни того, ни другого.", 'DMORTE1.D_s28', 'r34', 'reply39855') \
            .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r35', 'reply39856').with_action(lambda: _join_morte()) \
            .response("Не сейчас, Морт. Может быть потом.", 'DMORTE1.D_s28', 'r36', 'reply39857') \
        .done()

    # from 27.0 27.2
    DialogStateBuilder('DMORTE1.D_s28') \
        .with_npc_lines() \
            .line(morte, "Ты пытаешься задеть мои чувства, шеф?", 's28', 'say39858') \
            .line(morte, "Погоди, разве я что-то не так сказал?", 's28', 'say39858') \
            .line(morte, "Или это из-за того, что у меня нет рук? Что?", 's28', 'say39858') \
        .with_responses() \
            .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r37', 'reply39859').with_action(lambda: _join_morte()) \
            .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 'DMORTE1.D_s29', 'r38', 'reply39860') \
        .done()

    # from 28.1
    DialogStateBuilder('DMORTE1.D_s29') \
        .with_npc_lines() \
            .line(morte, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", 's29', 'say39861').with_action(lambda: _kick_morte()) \
        .with_responses() \
            .response("Я так и сделаю. Прощай, Морт.", EXIT, 'r39', 'reply39862') \
        .done()

    # from -
    DialogStateBuilder('DMORTE1.D_s30') \
        .with_npc_lines() \
            .line(morte, "Что тебя гложет, шеф?", 's30', 'say39863') \
        .with_responses() \
            .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", EXIT, 'r40', 'reply39864') \
        .done()

    # from -
    DialogStateBuilder('DMORTE1.D_s31') \
        .with_npc_lines() \
            .line(morte, "Э, шеф… они не слышат тебя, понятно? Они мертвы.", 's31', 'say42298') \
        .with_responses() \
            .response("Но ты ведь тоже мертв. И разговариваешь со мной.", 'DMORTE1.D_s32', 'r?', 'reply42299') \
        .done()

    # from 31.0
    DialogStateBuilder('DMORTE1.D_s32') \
        .with_npc_lines() \
            .line(morte, "Ага, но *я* особенный. Смерть не смогла убить мою жажду к жизни. А здешние трупы…", 's32', 'say42300') \
            .line(teller, "Морт обводит комнату взглядом.", 's32', 'say42300') \
            .line(morte, "Они и при жизни из себя ничего не представляли.", 's32', 'say42300') \
        .with_responses() \
            .response("Понятно…", 'DMORTE1.D_s33', 'r?', 'reply42301') \
        .done()

    # from 32.0
    DialogStateBuilder('DMORTE1.D_s33') \
        .with_npc_lines() \
            .line(morte, "Слушай шеф… Наблюдение за тем, как ты пытаешься поболтать с этими трупами, не способствует укреплению моей морали.", 's33', 'say42302') \
            .line(morte, "Давай оставим разговоры с мертвецами сумасшедшим, ладно?", 's33', 'say42302').with_action(lambda: _talk_dummy()) \
        .with_responses() \
            .response("Хорошо. Идем.", EXIT, 'r?', 'reply42303') \
        .done()

    DialogStateBuilder('DMORTE1.D_s99999999_33') \
        .with_npc_lines() \
            .line(teller, "Я вижу ключ - он висит на шее у одного из трупов. Задержав дыхание, я протягиваю руку и срываю ключ резким движением.", '-', '-').with_action(lambda: _pick_up_key()) \
            .line(teller, "Труп слегка поворачивается на меня, но через несколько секунд возвращается к своему бесконечному занятию.", '-', '-').with_action(lambda: _pick_up_key()) \
        .with_responses() \
            .response("(...)", EXIT, '-', '-') \
        .done()
