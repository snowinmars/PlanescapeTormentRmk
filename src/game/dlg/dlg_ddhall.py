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
    gsm.set_location('mortuary3')
    _show('morte_img default',  center_left_down)
    _show('dhall_img default', center_right_down)
def _dispose():
    _hide('dhall_img')
    _hide('morte_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dhall(gsm):
    gsm.set_dead_dhall(True)
###
def _r5070_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r5071_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r5072_condition(gsm):
    return gsm.get_meet_deionarra()
def _r5073_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
    and gsm.check_char_prop_lt('protagonist',13,'wis')
def _r5074_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r6064_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r13288_condition(gsm):
    return gsm.get_meet_deionarra()
def _r830_condition(gsm):
    return not gsm.get_vaxis_lawful()
def _r830_action(gsm):
    gsm.set_vaxis_betray(2)
    gsm.update_journal('39468')
def _r831_condition(gsm):
    return gsm.get_vaxis_lawful()
def _r831_action(gsm):
    gsm.set_vaxis_betray(2)
    gsm.inc_once_good('evil_dhall_2', -3)
    gsm.update_journal('39469')
def _r839_condition(gsm):
    return gsm.get_in_party_morte()
def _r835_condition(gsm):
    return not gsm.get_in_party_morte() \
    and not gsm.get_mortualy_alarmed()
def _r5058_condition(gsm):
    return not gsm.get_in_party_morte() \
    and gsm.get_mortualy_alarmed()
def _r842_condition(gsm):
    return gsm.get_meet_dhall()
def _r843_condition(gsm):
    return gsm.get_meet_dhall()
def _r843_action(gsm):
    gsm.dec_once_good('evil_dhall_1')
def _r5062_condition(gsm):
    return not gsm.get_meet_dhall()
def _r854_condition(gsm):
    return gsm.get_meet_vaxis() \
    and not gsm.get_dead_vaxis() \
    and not gsm.get_vaxis_leave() \
    and not gsm.get_vaxis_betrayed()
def _r858_condition(gsm):
    # TODO [snow]: how can they be different?..
    return not gsm.get_escape_mortuary() \
    and not gsm.get_visited_ar0200()
def _r5069_action(gsm):
    gsm.update_journal('39460')
def _r870_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r886_action(gsm):
    gsm.update_journal('39463')
def _r891_condition(gsm):
    return not gsm.get_meet_pharod()
def _r892_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'wis')
def _r898_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'wis')
def _r906_action(gsm):
    gsm.update_journal('39464')
def _r910_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'wis')
def _r921_action(gsm):
    gsm.update_journal('39461')
def _r931_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r931_action(gsm):
    gsm.update_journal('39462')
def _r936_action(gsm):
    gsm.inc_once_good('good_dhall_1')
def _r942_condition(gsm):
    return not gsm.get_journal()
def _r943_condition(gsm):
    return not gsm.get_meet_pharod()
def _r6026_condition(gsm):
    return not gsm.get_meet_pharod()
def _r874_condition(gsm):
    return gsm.get_meet_pharod()
def _r948_condition(gsm):
    return not gsm.get_meet_pharod()
def _r6027_condition(gsm):
    return not gsm.get_meet_pharod()
def _r6066_condition(gsm):
    return gsm.get_meet_pharod()
def _r953_action(gsm):
    gsm.set_meet_dustmen(True)
def _r958_action(gsm):
    gsm.set_meet_dustmen(True)
def _r1301_action(gsm):
    gsm.update_journal('39470')
def _r964_condition(gsm):
    return not gsm.get_meet_pharod()
def _r968_condition(gsm):
    return not gsm.get_meet_pharod()
def _r974_action(gsm):
    gsm.set_meet_dustmen(True)
def _r985_action(gsm):
    gsm.set_meet_dustmen(True)
def _r5076_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r5077_condition(gsm):
    return gsm.get_meet_deionarra()
def _r5078_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
    and gsm.check_char_prop_lt('protagonist',13,'wis')
def _r5079_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r5081_condition(gsm):
    return not gsm.get_meet_deionarra()
def _r5082_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
    and gsm.check_char_prop_lt('protagonist',13,'wis')
def _r5083_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'wis')
def _r1327_action(gsm):
    gsm.set_meet_dhall(True)
def _r5731_action(gsm):
    gsm.update_journal('39459')
def _r5732_action(gsm):
    gsm.update_journal('39459')
def _r6032_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough() == 1
def _r6033_action(gsm):
    gsm.set_meet_dustmen(True)
def _r6051_action(gsm):
    gsm.inc_once_good('good_dhall_2')
def _r6053_action(gsm):
    gsm.dec_once_good('evil_dhall_3')
###

# DLG/DMORTE.DLG
def dlg_ddhall(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dhall         = renpy.store.characters['dhall']
    dhall_unknown = renpy.store.characters['dhall_unknown']
    EXIT          = -1
    gsm           = renpy.store.global_settings_manager

    # Starts with DDHALL.D_s0 DDHALL.D_s5
    DialogStateBuilder() \
    .state('DDHALL.D_s0', '# from - // # Check EXTENDS ~DMORTE~ : 104') \
        .with_npc_lines() \
            .line(morte, "Послушай, трясти черепушкой с трухлявыми — это ПОСЛЕДНЯЯ мысль, которая должна…", 's103', 'say5052').with_action(lambda: _init(gsm)) \
            .line(teller, "Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять.", 's0', 'say822') \
            .line(teller, "Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.", 's0', 'say822') \
            .line(morte, "И мы *тем более* не должны болтать с больными трухляками.", 's104', 'say5053') \
            .line(morte, "Давай, пошли отсюда. Чем быстрее мы свалим отсюда, тем лучш…", 's104', 'say5053') \
            .line(teller, "Прежде чем Морт успевает закончить, взгляд серых глаз писаря падает на тебя.", 's1', 'say826') \
            .line(dhall_unknown, "Бремя прожитых лет лежит на мне тяжелым грузом, Неугомонный.", 's1', 'say826') \
            .line(teller, "Он откладывает перо.", 's1', 'say826') \
            .line(dhall_unknown, "Но глухотой я еще не страдаю.", 's1', 'say826') \
        .with_responses() \
            .response("Неугомонный? Ты меня знаешь?", 'DDHALL.D_s44', 'r0', 'reply827') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s2', '# from 21.0') \
        .with_npc_lines() \
            .line(dhall, "Тебе знакома женщина, чьи останки погребены внизу, в мемориальном зале? Я думаю, что в прошлом она путешествовала вместе с тобой…", 's2', 'say829') \
            .line(teller, "Дхолл начинает кашлять, но ему удается перевести дыхание.", 's2', 'say829') \
            .line(dhall, "Я ошибаюсь?", 's2', 'say829') \
        .with_responses() \
            .response("Где ее тело?", 'DDHALL.D_s42', 'r2', 'reply5070').with_condition(lambda: _r5070_condition(gsm)) \
            .response("Я ничего о ней не знаю.", 'DDHALL.D_s43', 'r3', 'reply5071').with_condition(lambda: _r5071_condition(gsm)) \
            .response("Она узнала меня, но я не смог ее вспомнить.", 'DDHALL.D_s28', 'r4', 'reply5072').with_condition(lambda: _r5072_condition(gsm)) \
            .response("Ты говорил, что здесь есть другие. Кто они?", 'DDHALL.D_s12', 'r5', 'reply5073').with_condition(lambda: _r5073_condition(gsm)) \
            .response("Ты говорил, что здесь есть другие. Кто они?", 'DDHALL.D_s12', 'r6', 'reply5074').with_condition(lambda: _r5074_condition(gsm)) \
            .response("Возможно. У меня есть другие вопросы к тебе…", 'DDHALL.D_s9', 'r7', 'reply6063') \
            .response("Пойду вниз, в мемориальный зал. Может быть, я найду ее тело.", 'DDHALL.D_s11', 'r8', 'reply6064').with_condition(lambda: _r6064_condition(gsm)) \
            .response("Возможно, нет. Прощай.", 'DDHALL.D_s11', 'r9', 'reply13288').with_condition(lambda: _r13288_condition(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s3', '# from 9.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл пристально смотрит на тебя.", 's3', 'say832') \
            .line(dhall, "Ты уверен?", 's3', 'say832') \
        .with_responses() \
            .response("Да. Он очень хорошо замаскировался.", 'DDHALL.D_s4', 'r10', 'reply830').with_condition(lambda: _r830_condition(gsm)).with_action(lambda: _r830_action(gsm)) \
            .response("Да. Он очень хорошо замаскировался.", 'DDHALL.D_s4', 'r11', 'reply831').with_condition(lambda: _r831_condition(gsm)).with_action(lambda: _r831_action(gsm)) \
            .response("Нет, пожалуй, мне просто показалось. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r12', 'reply834') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s4', '# from 3.0 3.1') \
        .with_npc_lines() \
            .line(dhall, "Я…", 's4', 'say833') \
            .line(teller, "У Дхолла начинается очередной приступ кашля. Спустя минуту или две его дыхание становится достаточно спокойным, чтобы он смог продолжить.", 's4', 'say833') \
            .line(dhall, "Я… незамедлительно предупрежу стражу.", 's4', 'say833') \
        .with_responses() \
            .response("Спасибо. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r13', 'reply836') \
            .response("Отлично. Прощай.", 'DDHALL.D_s11', 'r14', 'reply837') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s5', '# from - // # Manually checked EXTENDS ~DMORTE~ : 102') \
        .with_npc_lines() \
            .line(teller, "Этот писарь выглядит очень старым… его кожа морщиниста и имеет желтый оттенок, как у старого пергамента.", 's5', 'say838').with_action(lambda: _init(gsm)) \
            .line(teller, "Темно-серые глаза глубоко посажены на его угловатом лице, длинная белая борода ниспадает на его одежды, подобно водопаду.", 's5', 'say838') \
            .line(teller, "Его дыхание неровно и прерывисто, но даже периодический кашель не может замедлить движение его пера.", 's5', 'say838') \
        .with_responses() \
            .response("Приветствую.", 'DMORTE.D_s102', 'r15', 'reply839').with_condition(lambda: _r839_condition(gsm)) \
            .response("Приветствую.", 'DDHALL.D_s7', 'r16', 'reply835').with_condition(lambda: _r835_condition(gsm)) \
            .response("Приветствую.", 'DDHALL.D_s6', 'r17', 'reply5058').with_condition(lambda: _r5058_condition(gsm)) \
            .response("Оставить старого писаря в покое.", EXIT, 'r18', 'reply5060').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE.D_s102', '# from DDHALL.D_s5') \
        .with_npc_lines() \
            .line(morte, "Эй, шеф! Ты что творишь?!", 's102', 'say5049') \
        .with_responses() \
            .response("Я хотел поговорить с этим писарем. Он может кое-что знать о том, как я попал сюда.", 'DDHALL.D_s0', 'r276', 'reply5050') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s6', '# from 5.2') \
        .with_npc_lines() \
            .line(teller, "Его серые глаза сверкают, когда он отрывает свой взгляд от книги.", 's6', 'say841') \
            .line(dhall, "Подозреваю, что это ты в ответе за нападения в Морге. Это…", 's6', 'say841') \
            .line(teller, "Он тихо кашляет, затем тяжело хрипит.", 's6', 'say841') \
            .line(dhall, "Это не позволит тебе обрести следующую жизнь.", 's6', 'say841') \
        .with_responses() \
            .response("Я всего лишь защищался. У меня есть несколько вопросов перед тем, как я удалюсь…", 'DDHALL.D_s9', 'r19', 'reply842').with_condition(lambda: _r842_condition(gsm)) \
            .response("Как по мне, дарить смерть вам, трупопоклонникам, — не такое уж и не преступление. А теперь у меня есть вопросы к тебе…", 'DDHALL.D_s9', 'r20', 'reply843').with_condition(lambda: _r843_condition(gsm)).with_action(lambda: _r843_action(gsm)) \
            .response("Ты знаешь меня?", 'DDHALL.D_s44', 'r21', 'reply5062').with_condition(lambda: _r5062_condition(gsm)) \
            .response("Прощай.", EXIT, 'r22', 'reply5063').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s7', '# from 5.1') \
        .with_npc_lines() \
            .line(teller, "Писарь прекращает вести записи в стоящую перед ним книгу и оглядывается. Его глаза похожи на два гвоздя, забитые в его череп.", 's7', 'say844') \
            .line(dhall_unknown, "Итак…", 's7', 'say844').with_action(lambda: _init()) \
            .line(teller, "Его голос уставший, как будто он повторял это уже много раз.", 's7', 'say844') \
            .line(dhall_unknown, "Ты пробудился ото сна и вернулся в свои грезы.", 's7', 'say844') \
            .line(teller, "Он продолжает более уважительным голосом.", 's7', 'say844') \
            .line(dhall_unknown, "Приятно встретиться… снова, Неугомонный.", 's7', 'say844') \
        .with_responses() \
            .response("Неугомонный? Ты меня знаешь?", 'DDHALL.D_s44', 'r23', 'reply845') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s8', '# from 22.0') \
        .with_npc_lines() \
            .line(dhall, "Ты должен понять. Твое существование для них — богохульство.", 's8', 'say851') \
            .line(dhall, "Многие из нашей фракции распорядились бы тебя кремировать… если бы узнали о твоем несчастье.", 's8', 'say851') \
        .with_responses() \
            .response("Ты — тленный, и все же не пытаешься убить меня. Почему?", 'DDHALL.D_s23', 'r24', 'reply940') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r25', 'reply911') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r26', 'reply913') \
            .response("Я выслушал достаточно. Прощай, Дхолл.", 'DDHALL.D_s11', 'r27', 'reply6038') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s9', '# from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1') \
        .with_npc_lines() \
            .line(dhall, "Хорошо. Что ты хочешь узнать?", 's9', 'say852') \
        .with_responses() \
            .response("Ты знал, что в восточной комнате находится кто-то, замаскированный под зомби?", 'DDHALL.D_s3', 'r28', 'reply854').with_condition(lambda: _r854_condition(gsm)) \
            .response("Что это за место?", 'DDHALL.D_s10', 'r29', 'reply857') \
            .response("Как я попал сюда?", 'DDHALL.D_s15', 'r30', 'reply855') \
            .response("Не подскажешь, как мне выбраться отсюда?", 'DDHALL.D_s13', 'r31', 'reply858').with_condition(lambda: _r858_condition(gsm)) \
            .response("Ты знаешь, кто я?", 'DDHALL.D_s21', 'r32', 'reply5069').with_action(lambda: _r5069_action(gsm)) \
            .response("Чем ты здесь занимаешься?", 'DDHALL.D_s25', 'r33', 'reply5748') \
            .response("Твой кашель ужасен. Ты хорошо себя чувствуешь?", 'DDHALL.D_s26', 'r34', 'reply6065') \
            .response("Ничего… прощай, Дхолл.", 'DDHALL.D_s11', 'r35', 'reply41663') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s10', '# from 9.1') \
        .with_npc_lines() \
            .line(dhall, "Ты находишься в Морге, Неугомонный. Ты снова… пришел…", 's10', 'say859') \
            .line(teller, "Не успев закончить, Дхолл заходится в приступе кашля.", 's10', 'say859') \
            .line(teller, "Спустя некоторое время он берет себя в руки, и его дыхание снова становится неровным хрипом.", 's10', 'say859') \
            .line(dhall, "…это зал ожидания для тех, кто собирается покинуть тень этой жизни.", 's10', 'say859') \
        .with_responses() \
            .response("Расскажи мне о Морге.", 'DDHALL.D_s32', 'r36', 'reply861') \
            .response("*Неугомонный*?", 'DDHALL.D_s38', 'r37', 'reply860') \
            .response("Тень этой жизни?", 'DDHALL.D_s33', 'r38', 'reply862') \
            .response("Снова?.. Я был здесь раньше?", 'DDHALL.D_s14', 'r39', 'reply863') \
            .response("Как я попал сюда?", 'DDHALL.D_s15', 'r40', 'reply864') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r41', 'reply865') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r42', 'reply866') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s11', '# from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2') \
        .with_npc_lines() \
            .line(teller, "Когда ты собираешься уйти, Дхолл начинает говорить.", 's11', 'say867') \
            .line(dhall, "Знай: я не завидую тебе, Неугомонный. Твои возрождения — проклятье, которого я бы не смог вынести.", 's11', 'say867') \
            .line(dhall, "Ты должен смириться с этим. Когда-нибудь твой путь вернет тебя сюда…", 's11', 'say867') \
            .line(teller, "Дхолл кашляет, из его горла доносятся хрипы.", 's11', 'say867') \
            .line(dhall, "Это путь всех существ из плоти и костей.", 's11', 'say867') \
        .with_responses() \
            .response("Тогда, возможно, мы еще встретимся, Дхолл.", EXIT, 'r43', 'reply41564').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s12', '# from 2.3 2.4 42.2 42.3 43.1 43.2') \
        .with_npc_lines() \
            .line(dhall, "Несомненно, они здесь, но я не знаю ни их имен, ни где они лежат. Ты прошел путь, по которому ходят многие, но немногие выживают.", 's12', 'say868') \
            .line(teller, "Дхолл обводит вокруг тебя рукой.", 's12', 'say868') \
            .line(dhall, "Все умершие прибывают сюда. Кое-кто из них, должно быть, путешествовал с тобой.", 's12', 'say868') \
        .with_responses() \
            .response("Где та женщина, которую ты упомянул?", 'DDHALL.D_s42', 'r44', 'reply870').with_condition(lambda: _r870_condition(gsm)) \
            .response("Я не вижу изъяна в твоих рассуждениях. У меня еще вопросы…", 'DDHALL.D_s9', 'r45', 'reply871') \
            .response("Тогда я поищу их. Возможно, они смогут возродить мою память. Прощай.", 'DDHALL.D_s11', 'r46', 'reply872') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s13', '# from 9.3') \
        .with_npc_lines() \
            .line(dhall, "Хм-м… Главные ворота — самый очевидный выход, но они не выпустят никого, кроме тленных…", 's13', 'say875') \
            .line(teller, "Дхолл заходится в кашле, затем продолжает.", 's13', 'say875') \
            .line(dhall, "У одного из проводников у главных ворот есть ключ к ним, но он вряд ли откроет их для тебя, разве что ты будешь весьма убедительным.", 's13', 'say875') \
        .with_responses() \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r47', 'reply876') \
            .response("Тогда прощай, Дхолл.", EXIT, 'r48', 'reply877').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s14', '# from 10.3') \
        .with_npc_lines() \
            .line(dhall, "Да, *снова*. Ты попадал сюда много раз, Неугомонный.", 's14', 'say878') \
            .line(dhall, "Я надеялся, что этот раз будет последним, учитывая полученные тобой раны.", 's14', 'say878') \
            .line(teller, "Он вздыхает.", 's14', 'say878') \
            .line(dhall, "Когда же ты откажешься от своих страстей и покинешь эту тень жизни?", 's14', 'say878') \
        .with_responses() \
            .response("*Неугомонный*?", 'DDHALL.D_s38', 'r49', 'reply880') \
            .response("Ранен?", 'DDHALL.D_s34', 'r50', 'reply881') \
            .response("Тень жизни?", 'DDHALL.D_s33', 'r51', 'reply883') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r52', 'reply879') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r53', 'reply5751') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r54', 'reply5752') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s15', '# from 9.2 10.4 32.5') \
        .with_npc_lines() \
            .line(teller, "Дхолл презрительно фыркает, как будто его воротит от воспоминания об этом.", 's15', 'say885') \
            .line(dhall, "К Моргу тебя доставила твоя ветхая карета, Неугомонный.", 's15', 'say885') \
            .line(dhall, "Увидев ее, ты мог бы возомнить себя аристократом, учитывая количеств подданных, лежащих в ней зловонной разлагающейся кучей.", 's15', 'say885') \
        .with_responses() \
            .response("Я приехал сюда на повозке?", 'DDHALL.D_s16', 'r55', 'reply886').with_action(lambda: _r886_action(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r56', 'reply887') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r57', 'reply888') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r58', 'reply889') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s16', '# from 15.0') \
        .with_npc_lines() \
            .line(dhall, "Да… твое тело лежало где-то посреди горы трупов.", 's16', 'say890') \
            .line(teller, "Дхолл снова заходится в приступе кашля, который ему удается побороть только несколько минут спустя.", 's16', 'say890') \
            .line(dhall, "Твоим 'сенешалем', как всегда, был Фарод, который был рад доставить твое тело к вратам Морга за несколько медяков.", 's16', 'say890') \
        .with_responses() \
            .response("Кто этот Фарод?", 'DDHALL.D_s17', 'r59', 'reply891').with_condition(lambda: _r891_condition(gsm)) \
            .response("Похоже, тебе не очень-то нравится Фарод.", 'DDHALL.D_s35', 'r60', 'reply892').with_condition(lambda: _r892_condition(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r61', 'reply893') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r62', 'reply894') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r63', 'reply5753') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s17', '# from 16.0') \
        .with_npc_lines() \
            .line(dhall, "Он… сборщик мертвых.", 's17', 'say895') \
            .line(teller, "Дхолл переводит дыхание, затем продолжает.", 's17', 'say895') \
            .line(dhall, "У нас в городе есть такие люди, которые собирают тела тех, кто вступил на путь Истинной Смерти, и приносят их нам для подобающего погребения.", 's17', 'say895') \
        .with_responses() \
            .response("Где я могу найти этого Фарода?", 'DDHALL.D_s18', 'r64', 'reply897') \
            .response("Похоже, тебе не очень-то нравится Фарод.", 'DDHALL.D_s35', 'r65', 'reply898').with_condition(lambda: _r898_condition(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r66', 'reply899') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r67', 'reply5754') \
            .response("Тогда пойду и разыщу этого Фарода. Прощай, Дхолл.", 'DDHALL.D_s19', 'r68', 'reply6031') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s18', '# from 17.0 29.1 31.0 35.1 36.1') \
        .with_npc_lines() \
            .line(dhall, "Если все пойдет своим чередом, Неугомонный, то скорее Фарод найдет тебя и притащит нам сюда, чем ты найдешь ту лужу грязи, в которой он барахтается.", 's18', 'say900') \
        .with_responses() \
            .response("Тем не менее, я должен его найти.", 'DDHALL.D_s19', 'r69', 'reply902') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r70', 'reply903') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r71', 'reply904') \
            .response("У меня такое чувство, что наши пути еще пересекутся. Прощай, Дхолл.", 'DDHALL.D_s19', 'r72', 'reply5755') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s19', '# from 17.4 18.0 18.3 29.3 31.2') \
        .with_npc_lines() \
            .line(teller, "Голос Дхолла начинает звучать предостерегающе.", 's19', 'say901') \
            .line(dhall, "Не ищи Фарода, Неугомонный. Я уверен, что ты попросту пройдешь еще один полный круг, и не станешь от этого мудрее, зато обогатишь Фарода на несколько медяков.", 's19', 'say901') \
            .line(dhall, "Прими смерть, Неугомонный. Не повторяй свой круг страданий.", 's19', 'say901') \
        .with_responses() \
            .response("Мне *нужно* найти его. Ты не знаешь, где он может быть?", 'DDHALL.D_s20', 'r73', 'reply906').with_action(lambda: _r906_action(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r74', 'reply905') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r75', 'reply907') \
            .response("Я не могу больше с тобой говорить. Прощай, Дхолл.", 'DDHALL.D_s11', 'r76', 'reply5756') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s20', '# from 19.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл умолкает на минуту. Когда же он начинает говорить, то становится ясно, что он делает это с явной неохотой.", 's20', 'say908') \
            .line(dhall, "Я не знаю, в каком притоне находится логово Фарода в данный момент, но могу предположить, что оно где-то за воротами Морга, в Улье.", 's20', 'say908') \
            .line(dhall, "Возможно, кто-то из местных знает, где его найти.", 's20', 'say908') \
        .with_responses() \
            .response("Похоже, тебе не очень-то нравится Фарод.", 'DDHALL.D_s35', 'r77', 'reply910').with_condition(lambda: _r910_condition(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r78', 'reply909') \
            .response("Спасибо. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r79', 'reply5757') \
            .response("Тогда я пойду и поспрашиваю тамошних жителей. Прощай.", 'DDHALL.D_s11', 'r80', 'reply6030') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s21', '# from 9.4') \
        .with_npc_lines() \
            .line(dhall, "О тебе, Неугомонный, я знаю совсем немного. О твоих спутниках, лежащих теперь под нашим присмотром, я знаю ненамного больше.", 's21', 'say914') \
            .line(teller, "Дхолл вздыхает.", 's21', 'say914') \
            .line(dhall, "Прошу тебя, Неугомонный, больше не проси никого идти с тобой: за тобой остается только несчастье. Не разделяй свою ношу с другими.", 's21', 'say914') \
        .with_responses() \
            .response("Меня кто-то сопровождал в пути? Они здесь?", 'DDHALL.D_s2', 'r81', 'reply921').with_action(lambda: _r921_action(gsm)) \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r82', 'reply922') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r83', 'reply923') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s22', '# from 47.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл вздыхает.", 's22', 'say915') \
            .line(dhall, "Говорят, что есть души, которые не могут достичь Истинной Смерти. Смерть отказалась от них, и их имена никогда не попадут в книгу мертвых.", 's22', 'say915') \
            .line(dhall, "Подняться из мертвых, как это сделал ты… Это наводит на мысль, что ты — одна из таких душ. Само твое существование неприемлемо для нашей фракции.", 's22', 'say915') \
        .with_responses() \
            .response("Неприемлемо? Похоже, мое положение оставляет желать лучшего.", 'DDHALL.D_s8', 'r84', 'reply917') \
            .response("Ясно. Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r85', 'reply918') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r86', 'reply919') \
            .response("Думаю, я услышал достаточно. Прощай, Дхолл.", 'DDHALL.D_s11', 'r87', 'reply920') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s23', '# from 8.0') \
        .with_npc_lines() \
            .line(dhall, "Потому что заставлять тебя принимать нашу веру несправедливо. Ты должен оставить тень этой жизни по своей воле, а не по нашей.", 's23', 'say924') \
            .line(teller, "Дхолл, кажется, готов разразиться очередным приступом кашля, но с некоторыми усилиями ему удается сдержаться.", 's23', 'say924') \
            .line(dhall, "И покуда я не покину свою должность, я буду защищать твое право искать свою правду.", 's23', 'say924') \
        .with_responses() \
            .response("Каковы твои обязанности?", 'DDHALL.D_s25', 'r88', 'reply927') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r89', 'reply928') \
            .response("Хорошо. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r90', 'reply925') \
            .response("Я выслушал достаточно. Прощай, Дхолл.", 'DDHALL.D_s11', 'r91', 'reply6039') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s24', '# from 25.0') \
        .with_npc_lines() \
            .line(dhall, "Я — единственный, кто регистрирует тела, поступающие в наши залы, Неугомонный.", 's24', 'say929') \
            .line(teller, "Дхолл начинает кашлять, затем успокаивается.", 's24', 'say929') \
            .line(dhall, "Только я вижу лица тех, кто лежит на наших плитах. Тайна твоего существования со мной в безопасности.", 's24', 'say929') \
        .with_responses() \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r92', 'reply1305') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r93', 'reply6041') \
            .response("Кажется, я обязан тебе. Прощай, Дхолл.", 'DDHALL.D_s11', 'r94', 'reply6042') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s25', '# from 9.5 23.0') \
        .with_npc_lines() \
            .line(dhall, "Я — писарь. Я веду учет всех тел, которые поступают в Морг.", 's25', 'say930') \
            .line(teller, "Дхолл снова кашляет, затем глубоко вздыхает.", 's25', 'say930') \
            .line(dhall, "И пока поток трупов идет через Морг, я буду при своей должности.", 's25', 'say930') \
        .with_responses() \
            .response("Ты сказал, что я был здесь много раз. Почему же тленные не узнают меня?", 'DDHALL.D_s24', 'r95', 'reply931').with_condition(lambda: _r931_condition(gsm)).with_action(lambda: _r931_action(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r96', 'reply932') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r97', 'reply933') \
            .response("Отлично. Прощай, Дхолл.", 'DDHALL.D_s11', 'r98', 'reply6040') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s26', '# from 9.6') \
        .with_npc_lines() \
            .line(dhall, "Я уже близок к Истинной Смерти, Неугомонный. Уже скоро я пересеку Границу Вечности и обрету покой, который давно искал. Я устал от этой смертной сферы…", 's26', 'say934') \
            .line(teller, "Дхолл тяжело вздыхает.", 's26', 'say934') \
            .line(dhall, "Для такого, как я, на планах больше нет чудес.", 's26', 'say934') \
        .with_responses() \
            .response("Границу Вечности?", 'DDHALL.D_s41', 'r99', 'reply935') \
            .response("Ты уверен? Должен же быть способ помочь тебе.", 'DDHALL.D_s27', 'r100', 'reply936').with_action(lambda: _r936_action(gsm)) \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r101', 'reply937') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r102', 'reply960') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s27', '# from 26.1') \
        .with_npc_lines() \
            .line(dhall, "Я не желаю жить вечно или возрождаться, Неугомонный. Я не смогу этого вынести.", 's27', 'say938') \
        .with_responses() \
            .response("Хорошо. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r103', 'reply1303') \
            .response("Пусть будет так. Прощай, Дхолл.", 'DDHALL.D_s11', 'r104', 'reply1304') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s28', '# from 2.2 42.1') \
        .with_npc_lines() \
            .line(dhall, "Она *разговаривала* с тобой?", 's28', 'say939') \
            .line(teller, "Дхолл переходит на шепот.", 's28', 'say939') \
            .line(dhall, "Ты случаем не *бредишь*, Неугомонный? Она достигла Истинной Смерти и ушла туда, куда тебе не добраться.", 's28', 'say939') \
        .with_responses() \
            .response("Она разговаривала со мной, Дхолл. Ее душа находится здесь.", 'DDHALL.D_s30', 'r105', 'reply981') \
            .response("Возможно, я это выдумал. У меня есть другие вопросы…", 'DDHALL.D_s9', 'r106', 'reply982') \
            .response("Не уверен, что она достигла Истинной Смерти. Прощай, Дхолл.", 'DDHALL.D_s11', 'r107', 'reply873') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s29', '# from 36.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл умолкает в раздумье.", 's29', 'say941') \
            .line(dhall, "Скорее всего. Ты что-то потерял… что-то особенно ценное?", 's29', 'say941') \
            .line(teller, "Он хмурится, понижая тон.", 's29', 'say941') \
            .line(dhall, "Вряд ли Фарод будет делать исключения для чего либо, кроме вживленных в плоть вещей, но порой даже этого недостаточно, чтобы остановить его жадность.", 's29', 'say941') \
        .with_responses() \
            .response("Я потерял дневник.", 'DDHALL.D_s31', 'r108', 'reply942').with_condition(lambda: _r942_condition(gsm)) \
            .response("Хм-м. Ты не знаешь, где мне найти Фарода?", 'DDHALL.D_s18', 'r109', 'reply943').with_condition(lambda: _r943_condition(gsm)) \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r110', 'reply944') \
            .response("Возможно, мне стоит поговорить с Фародом. Прощай, Дхолл.", 'DDHALL.D_s19', 'r111', 'reply6026').with_condition(lambda: _r6026_condition(gsm)) \
            .response("Понятно. Прощай, Дхолл.", 'DDHALL.D_s11', 'r112', 'reply874').with_condition(lambda: _r874_condition(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s30', '# from 28.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл описывает пальцем полукруг в воздухе перед собой.", 's30', 'say945') \
            .line(dhall, "Это дурное знамение, Неугомонный. Я молюсь о том, чтобы это оказалось твоим сном… и все же боюсь, это не так.", 's30', 'say945') \
        .with_responses() \
            .response("Возможно, мне показалось. У меня еще вопросы.", 'DDHALL.D_s9', 'r113', 'reply946') \
            .response("Возможно, мы поговорим об этом позже. Прощай, Дхолл.", 'DDHALL.D_s11', 'r114', 'reply947') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s31', '# from 29.0') \
        .with_npc_lines() \
            .line(dhall, "Дневник? Если он представляет хоть какую-то ценность, то он наверняка в руках Фарода.", 's31', 'say850') \
        .with_responses() \
            .response("Где мне найти этого Фарода?", 'DDHALL.D_s18', 'r115', 'reply948').with_condition(lambda: _r948_condition(gsm)) \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r116', 'reply949') \
            .response("В таком случае, я должен разыскать его. Прощай, Дхолл.", 'DDHALL.D_s19', 'r117', 'reply6027').with_condition(lambda: _r6027_condition(gsm)) \
            .response("Понятно. Прощай, Дхолл.", 'DDHALL.D_s11', 'r118', 'reply6066').with_condition(lambda: _r6066_condition(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s32', '# from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0') \
        .with_npc_lines() \
            .line(dhall, "Это место, куда мертвых доставляют для погребения или кремации. Забота об умерших, покинувших эту тень жизни и ступивших на путь Истинной Смерти, входит в обязанности тленных.", 's32', 'say950') \
            .line(teller, "Дхолл от волнения понижает тон.", 's32', 'say950') \
            .line(dhall, "Должно быть, ты был тяжело ранен, раз не узнаешь это место. Это практически твой дом.", 's32', 'say950') \
        .with_responses() \
            .response("Тень жизни?", 'DDHALL.D_s33', 'r119', 'reply951') \
            .response("Истинной Смерти?", 'DDHALL.D_s48', 'r120', 'reply953').with_action(lambda: _r953_action(gsm)) \
            .response("Тленных?", 'DDHALL.D_s47', 'r121', 'reply954') \
            .response("Сигил?", 'DDHALL.D_s37', 'r122', 'reply955') \
            .response("Ранен?", 'DDHALL.D_s34', 'r123', 'reply956') \
            .response("Как я попал сюда?", 'DDHALL.D_s15', 'r124', 'reply846') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r125', 'reply5735') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r126', 'reply6062') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s33', '# from 10.2 14.2 32.0 41.0 47.2 49.0') \
        .with_npc_lines() \
            .line(dhall, "Да, тень. Видишь ли, Неугомонный, эта жизнь… она не настоящая.", 's33', 'say957') \
            .line(dhall, "Наши с тобой жизни — всего лишь тени, жалкое подобие от того, что было однажды жизнью. Эта 'жизнь' — то, куда мы попадаем *после* того, как умираем.", 's33', 'say957') \
            .line(dhall, "А здесь мы… в западне. В клетке. До тех пор, пока не достигнем Истинной Смерти.", 's33', 'say957') \
        .with_responses() \
            .response("Истинной Смерти?", 'DDHALL.D_s48', 'r127', 'reply958').with_action(lambda: _r958_action(gsm)) \
            .response("Почему ты решил, что эта жизнь ненастоящая?", 'DDHALL.D_s50', 'r128', 'reply959') \
            .response("Расскажи мне еще о Морге.", 'DDHALL.D_s32', 'r129', 'reply5736') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r130', 'reply5737') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r131', 'reply5738') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s34', '# from 14.1 32.4') \
        .with_npc_lines() \
            .line(dhall, "Да, раны, украшающие твое тело… Получи их более слабый человек, он бы уже был на пути к Истинной Смерти, а у тебя некоторые из них уже зажили.", 's34', 'say961') \
            .line(teller, "Дхолл надрывно кашляет, затем успокаивается.", 's34', 'say961') \
            .line(dhall, "Но это всего лишь поверхностные раны.", 's34', 'say961') \
        .with_responses() \
            .response("Всего лишь поверхностные раны? Что ты имеешь в виду?", 'DDHALL.D_s53', 'r132', 'reply1301').with_action(lambda: _r1301_action(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r133', 'reply1302') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r134', 'reply5746') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r135', 'reply5747') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s35', '# from 16.1 17.1 20.0') \
        .with_npc_lines() \
            .line(dhall, "Есть люди, которых я уважаю, Неугомонный.", 's35', 'say962') \
            .line(teller, "Дхолл успокаивает свое неровное дыхание.", 's35', 'say962') \
            .line(dhall, "Фарод не входит в их число. Он носит свою дурную репутацию как знак гордости и свободно распоряжается имуществом умерших.", 's35', 'say962') \
            .line(dhall, "Он рыцарь легкой наживы, подлая мразь самого низкого пошиба.", 's35', 'say962') \
        .with_responses() \
            .response("Рыцарь легкой наживы?", 'DDHALL.D_s36', 'r136', 'reply963') \
            .response("Ты не знаешь, где я могу найти Фарода?", 'DDHALL.D_s18', 'r137', 'reply964').with_condition(lambda: _r964_condition(gsm)) \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r138', 'reply965') \
            .response("Звучит ободряюще. Прощай, Дхолл.", 'DDHALL.D_s11', 'r139', 'reply6028') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s36', '# from 35.0') \
        .with_npc_lines() \
            .line(dhall, "Рыцарь легкой наживы.", 's36', 'say966') \
            .line(teller, "Дхолл кашляет.", 's36', 'say966') \
            .line(dhall, "Dор. Все, кого Фарод приносит к нашим стенам, лишены всего имущества, которым они обладали при жизни.", 's36', 'say966') \
            .line(dhall, "Фарод присваивает себе все, что ему удается вырвать из их окоченевших пальцев.", 's36', 'say966') \
        .with_responses() \
            .response("Мог ли Фарод взять что-нибудь у *меня*?", 'DDHALL.D_s29', 'r140', 'reply967') \
            .response("Ты не знаешь, где я могу найти Фарода?", 'DDHALL.D_s18', 'r141', 'reply968').with_condition(lambda: _r968_condition(gsm)) \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r142', 'reply969') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r143', 'reply6029') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s37', '# from 32.3') \
        .with_npc_lines() \
            .line(dhall, "Сигил — это наш прекрасный город, Неугомонный.", 's37', 'say970') \
        .with_responses() \
            .response("Расскажи мне еще о Морге.", 'DDHALL.D_s32', 'r144', 'reply971') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r145', 'reply972') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r146', 'reply5758') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s38', '# from 10.1 14.0') \
        .with_npc_lines() \
            .line(dhall, "Неугомонный — имя не хуже других…", 's38', 'say973') \
            .line(teller, "Дхолл переводит дыхание.", 's38', 'say973') \
            .line(dhall, "Ведь что-то держит тебя здесь, не так ли? Какое-то незаконченное дело, какая-то страсть, которая должна быть подавлена, прежде чем ты сможешь достигнуть Истинной Смерти?", 's38', 'say973') \
        .with_responses() \
            .response("Истинной Смерти?", 'DDHALL.D_s48', 'r147', 'reply974').with_action(lambda: _r974_action(gsm)) \
            .response("Расскажи мне еще о Морге.", 'DDHALL.D_s32', 'r148', 'reply975') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r149', 'reply5749') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r150', 'reply5750') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s39', '# from -') \
        .with_npc_lines() \
            .line(dhall, "Ты будешь делать то же, что и раньше, Неугомонный. Разыщешь того любителя звенелок, того плешивого идиота, Червеволосого, и вернешь свое имущество.", 's39', 'say884') \
            .line(dhall, "После продолжишь свои бессмысленные поиски, пытаясь выполнить бессмысленные задания, собирая бессмысленные предметы. Затем ты падешь и вернешься назад к нам.", 's39', 'say884') \
            .line(dhall, "Сэкономь время и поговори с мной сейчас, чтобы нам не пришлось вновь заводить этот разговор, когда твои воспоминания снова покинут тебя.", 's39', 'say884') \
        .with_responses() \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r151', 'reply976') \
            .response("Прощай, Дхолл.", EXIT, 'r152', 'reply977').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s40', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дхолл мельком смотрит на тебя.", 's40', 'say978').with_action(lambda: _init()) \
            .line(dhall, "Итак. Ты вернулся…", 's40', 'say978') \
            .line(teller, "Дхолл начинает хрипло дышать, затем у него начинается удушливый кашель. Спустя минуту кашель прекращается, и он, хрипло дыша, продолжает говорить.", 's40', 'say978') \
            .line(dhall, "…приветствую тебя снова, Неугомонный.", 's40', 'say978') \
        .with_responses() \
            .response("У меня к тебе другие вопросы, Дхолл.", 'DDHALL.D_s9', 'r153', 'reply979') \
            .response("Неважно. Прощай.", EXIT, 'r154', 'reply980').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s41', '# from 26.0 52.0') \
        .with_npc_lines() \
            .line(dhall, "Границу между владениями тени этой жизни и Истинной Смерти.", 's41', 'say983') \
        .with_responses() \
            .response("Тень этой жизни?", 'DDHALL.D_s33', 'r155', 'reply984') \
            .response("Истинной Смерти?", 'DDHALL.D_s48', 'r156', 'reply985').with_action(lambda: _r985_action(gsm)) \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r157', 'reply5739') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r158', 'reply5740') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r159', 'reply5741') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s42', '# from 2.0 12.0 43.0') \
        .with_npc_lines() \
            .line(dhall, "В северо-западном мемориальном зале, этажом ниже. Проверь гробы… ее имя должно быть на одной из мемориальных табличек. Возможно, это оживит твои воспоминания.", 's42', 'say5075') \
        .with_responses() \
            .response("Я не знаю. Не припомню, чтобы даже путешествовал вместе с женщиной.", 'DDHALL.D_s43', 'r160', 'reply5076').with_condition(lambda: _r5076_condition(gsm)) \
            .response("Да, она утверждает, что знает меня, но я не могу ее вспомнить.", 'DDHALL.D_s28', 'r161', 'reply5077').with_condition(lambda: _r5077_condition(gsm)) \
            .response("Ты говорил, что здесь есть другие. Кто они?", 'DDHALL.D_s12', 'r162', 'reply5078').with_condition(lambda: _r5078_condition(gsm)) \
            .response("Ты говорил, что здесь есть другие. Кто они?", 'DDHALL.D_s12', 'r163', 'reply5079').with_condition(lambda: _r5079_condition(gsm)) \
            .response("Возможно, мне стоит найти ее. Перед уходом у меня есть к тебе другие вопросы…", 'DDHALL.D_s9', 'r164', 'reply6067') \
            .response("Пойду вниз, в мемориальный зал. Может быть, я найду ее тело.", 'DDHALL.D_s11', 'r165', 'reply6068') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s43', '# from 2.1 42.0') \
        .with_npc_lines() \
            .line(teller, "Дхолл не отвечает. Он просто молчаливо смотрит на тебя.", 's43', 'say5080') \
        .with_responses() \
            .response("Где я могу найти ее?", 'DDHALL.D_s42', 'r166', 'reply5081').with_condition(lambda: _r5081_condition(gsm)) \
            .response("Ты говорил, что здесь похоронены и другие мои спутники. Где они?", 'DDHALL.D_s12', 'r167', 'reply5082').with_condition(lambda: _r5082_condition(gsm)) \
            .response("Ты говорил, что здесь похоронены и другие мои спутники. Где они?", 'DDHALL.D_s12', 'r168', 'reply5083').with_condition(lambda: _r5083_condition(gsm)) \
            .response("У меня есть другие вопросы к тебе…", 'DDHALL.D_s9', 'r169', 'reply6069') \
            .response("Тогда прощай.", 'DDHALL.D_s11', 'r170', 'reply6070') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s44', '# from 1.0 6.2 7.0') \
        .with_npc_lines() \
            .line(dhall_unknown, "Знаю ли я тебя? Я…", 's44', 'say840') \
            .line(teller, "В голосе писца звучит горечь.", 's44', 'say840') \
            .line(dhall_unknown, "Я *никогда* не знал тебя, Неугомонный. Не больше, чем ты знал о себе сам.", 's44', 'say840') \
            .line(teller, "Он умолкает на секунду.", 's44', 'say840') \
            .line(dhall_unknown, "Ты ведь все забыл, не так ли?", 's44', 'say840') \
        .with_responses() \
            .response("*Кто* ты?", 'DDHALL.D_s45', 'r171', 'reply1327').with_action(lambda: _r1327_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s45', '# from 44.0') \
        .with_npc_lines() \
            .line(dhall_unknown, "Как всегда, вопрос. И как всегда, неправильный.", 's45', 'say5728') \
            .line(dhall_unknown, "Он делает легкий поклон, но движение вызывает у него неожиданный приступ кашля.", 's45', 'say5728') \
            .line(dhall, "Я… Он умолкает на минуту, переводя дыхание. Я… Дхолл.", 's45', 'say5728') \
        .with_responses() \
            .response("Возможно, ты ответишь на некоторые из моих вопросов, Дхолл…", 'DDHALL.D_s9', 'r172', 'reply5731').with_action(lambda: _r5731_action(gsm)) \
            .response("У меня нет времени на это. Прощай.", 'DDHALL.D_s46', 'r173', 'reply5732').with_action(lambda: _r5732_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s46', '# from 45.1') \
        .with_npc_lines() \
            .line(dhall, "Хорошо, Неугомонный.", 's46', 'say5730') \
            .line(teller, "Дхолл кивает.", 's46', 'say5730') \
            .line(dhall, "Но, боюсь, в данном вопросе время тебе не враг.", 's46', 'say5730') \
            .line(teller, "Он снова берется за перо.", 's46', 'say5730') \
            .line(dhall, "Когда ты снова захочешь поговорить, я буду здесь.", 's46', 'say5730') \
        .with_responses() \
            .response("Я еще вернусь. Прощай.", EXIT, 'r174', 'reply40005').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s47', '# from 32.2') \
        .with_npc_lines() \
            .line(dhall, "Мы — тленные, фракция, собравшая всех тех, кто понял иллюзорность этой жизни. Мы ждем следующей жизни и помогаем другим в их путешествии.", 's47', 'say847') \
        .with_responses() \
            .response("Может, ты мне объяснишь, почему тленные хотят моей смерти?", 'DDHALL.D_s22', 'r175', 'reply6032').with_condition(lambda: _r6032_condition(gsm)) \
            .response("Истинной Смерти?", 'DDHALL.D_s48', 'r176', 'reply6033').with_action(lambda: _r6033_action(gsm)) \
            .response("Иллюзорность этой жизни?", 'DDHALL.D_s33', 'r177', 'reply6034') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r178', 'reply6035') \
            .response("У меня есть другие вопросы к тебе…", 'DDHALL.D_s9', 'r179', 'reply6036') \
            .response("Тогда прощай.", 'DDHALL.D_s11', 'r180', 'reply6037') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s48', '# from 32.1 33.0 38.0 41.1 47.1') \
        .with_npc_lines() \
            .line(dhall, "Истинная Смерть — это небытие. Состояние, свободное от мыслей, чувств, страстей.", 's48', 'say848') \
            .line(teller, "Дхолл кашляет, затем восстанавливает неровное дыхание.", 's48', 'say848') \
            .line(dhall, "Состояние чистоты.", 's48', 'say848') \
        .with_responses() \
            .response("Похоже на забвение. И зачем кому-то это нужно?", 'DDHALL.D_s49', 'r181', 'reply6043') \
            .response("Ого. Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r182', 'reply6044') \
            .response("Понятно… У меня есть другие вопросы.", 'DDHALL.D_s9', 'r183', 'reply6045') \
            .response("Я должен идти. Прощай, Дхолл.", 'DDHALL.D_s11', 'r184', 'reply6046') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s49', '# from 48.0') \
        .with_npc_lines() \
            .line(dhall, "По-твоему, лучше оставаться в тени того, что раньше называлось жизнью? Я так не думаю.", 's49', 'say849') \
        .with_responses() \
            .response("Тень жизни?", 'DDHALL.D_s33', 'r185', 'reply6047') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r186', 'reply6048') \
            .response("Понятно… У меня есть другие вопросы.", 'DDHALL.D_s9', 'r187', 'reply6049') \
            .response("Я должен идти. Прощай, Дхолл.", 'DDHALL.D_s11', 'r188', 'reply6050') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s50', '# from 33.1') \
        .with_npc_lines() \
            .line(dhall, "А что заставляет тебя думать, что эта жизнь *настоящая*? Прислушайся к себе. Разве ты не чувствуешь какую-то опустошенность?", 's50', 'say853') \
            .line(teller, "Дхолл качает головой.", 's50', 'say853') \
            .line(dhall, "Это чистилище. Здесь только горе. Несчастье. Страдание. Они не являются элементами 'жизни'. Они — часть клетки, в которой мы заперты в этой тени.", 's50', 'say853') \
        .with_responses() \
            .response("Мне кажется, твой фатализм превзошел тебя самого. Жизнь состоит из этих элементов, но не только из них.", 'DDHALL.D_s51', 'r189', 'reply6051').with_action(lambda: _r6051_action(gsm)) \
            .response("Заперты? Каким образом?", 'DDHALL.D_s51', 'r190', 'reply6052') \
            .response("Довольно этой философии. Как все это относится к тому, что я оказался здесь?", 'DDHALL.D_s51', 'r191', 'reply6053').with_action(lambda: _r6053_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s51', '# from 50.0 50.1 50.2') \
        .with_npc_lines() \
            .line(teller, "Дхолл качает головой.", 's51', 'say5733') \
            .line(dhall, "Страсти — тяжелый груз. Многих они приковали к этой тени жизни.", 's51', 'say5733') \
            .line(dhall, "Цепляясь за эмоции, ты будешь без конца возрождаться в этой 'жизни', в постоянных муках, так никогда и не познав чистоты Истинной Смерти.", 's51', 'say5733') \
        .with_responses() \
            .response("Понимаю… Как же выбраться из этого кольца возрождений и достигнуть этой… Истинной Смерти?", 'DDHALL.D_s52', 'r192', 'reply6054') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r193', 'reply6055') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r194', 'reply6056') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r195', 'reply6057') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s52', '# from 51.0') \
        .with_npc_lines() \
            .line(dhall, "Убей в себе страсти. Отбрось нужду в переживаниях. Когда ты будешь действительно очищен, кольцо возрождений прервется, и ты обретешь покой.", 's52', 'say5734') \
            .line(teller, "Дхолл делает вздох… как будто смерть клокочет в его глотке.", 's52', 'say5734') \
            .line(dhall, "За нашими бренными телами, за Границей Вечности, находится покой, к которому стремится каждая душа.", 's52', 'say5734') \
        .with_responses() \
            .response("Границу Вечности?", 'DDHALL.D_s41', 'r196', 'reply6058') \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r197', 'reply6059') \
            .response("У меня есть другие вопросы…", 'DDHALL.D_s9', 'r198', 'reply6060') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r199', 'reply6061') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDHALL.D_s53', '# from 34.0') \
        .with_npc_lines() \
            .line(dhall, "Я говорю о ранах разума. Ты ведь многое забыл, не так ли? Возможно, настоящие раны гораздо глубже, чем эти шрамы, украшающие твое тело.", 's53', 'say5742') \
            .line(teller, "Дхолл снова кашляет.", 's53', 'say5742') \
            .line(dhall, "Но только ты можешь знать это точно.", 's53', 'say5742') \
        .with_responses() \
            .response("Расскажи мне побольше о Морге.", 'DDHALL.D_s32', 'r200', 'reply5743') \
            .response("Понятно. У меня еще вопросы…", 'DDHALL.D_s9', 'r201', 'reply5744') \
            .response("Прощай, Дхолл.", 'DDHALL.D_s11', 'r202', 'reply5745') \
        .push(manager)

    DialogStateBuilder().state('DDHALL.D_s99999999_k', '-') \
        .with_npc_lines() \
            .line(teller, "Это не должно жить.",'-', '-').with_condition(lambda: not gsm.get_meet_dhall()).with_action(lambda: _kill_dhall(gsm)) \
            .line(teller, "Дхалл не должен жить.",'-', '-').with_condition(lambda: gsm.get_meet_dhall()).with_action(lambda: _kill_dhall(gsm)) \
            .line(teller, "Оно не успевает даже посмотреть на меня. Слишком старо. Слишком слабо.",'-', '-').with_condition(lambda: not gsm.get_meet_dhall()) \
            .line(teller, "Он не успевает даже посмотреть на меня: он слишком стар и слишком слаб.",'-', '-').with_condition(lambda: gsm.get_meet_dhall()) \
            .line(teller, "От моих ударов оно заходится кашлем.",'-', '-').with_condition(lambda: not gsm.get_meet_dhall()) \
            .line(teller, "И ему мешает кашель.",'-', '-').with_condition(lambda: gsm.get_meet_dhall()) \
            .line(teller, "...",'-', '-') \
            .line(teller, "Перо, которое оно до этого держал в руке, упало в тень книги.",'-', '-').with_condition(lambda: not gsm.get_meet_dhall()) \
            .line(teller, "Перо, которое он до этого держал в руке, упало в тень книги.",'-', '-').with_condition(lambda: gsm.get_meet_dhall()) \
        .with_responses() \
            .response("(...)", EXIT, '-', '-').with_action(lambda: _hide('dhall_img')) \
        .push(manager)
