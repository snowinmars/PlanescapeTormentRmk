import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    change_adahn_once,
    set_crier_quest,
    meet_death_of_names,
    pass_death_of_names_adahn,
    pass_death_of_names_dhall,
    pass_death_of_names_quentin,
    travel,
    update_journal
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

global global_settings_manager

###
def _init():
    travel('death_names')
def _dispose():
    return
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
def _r7295_action():
    meet_death_of_names()
    update_journal('66659')
def _r7297_condition():
    return current_global_settings()['know_xachariah_name']
def _r7298_condition():
    return current_global_settings()['meet_deionarra']
def _r7299_condition():
    return current_global_settings()['meet_dhall'] \
    and not current_global_settings()['dead_dhall']
def _r7300_condition():
    return current_global_settings()['meet_dhall'] \
    and current_global_settings()['dead_dhall'] \
    and current_global_settings()['pass_death_of_names_dhall']
def _r7303_condition():
    return current_global_settings()['pass_death_of_names_quentin']
def _r7304_action():
    pass_death_of_names_adahn()
    change_adahn_once('Adahn_Death_of_Names_1')
def _r7310_condition():
    return current_global_settings()['know_xachariah_name']
def _r7311_condition():
    return current_global_settings()['meet_deionarra']
def _r7312_condition():
    return current_global_settings()['meet_dhall'] \
    and current_global_settings()['dead_dhall'] \
    and not current_global_settings()['pass_death_of_names_dhall']
def _r7312_action():
    return current_global_settings()['pass_death_of_names_dhall']
def _r7313_condition():
    return current_global_settings()['meet_dhall'] \
    and not current_global_settings()['dead_dhall']
def _r7317_condition():
    return current_global_settings()['quentin'] \
    and current_global_settings()['dead_quentin'] \
    and not current_global_settings()['death_of_names_quentin']
def _r7317_action():
    pass_death_of_names_quentin()
def _r9768_condition():
    return current_global_settings()['quentin'] \
    and not current_global_settings()['dead_quentin']
def _r9769_condition():
    return current_global_settings()['crier_quest'] == 1
def _r9769_action():
    set_crier_quest(2)
    update_journal('26108')
def _r7362_condition():
    return current_global_settings()['know_xachariah_name']
def _r7363_condition():
    return current_global_settings()['meet_deionarra']
def _r7364_condition():
    return current_global_settings()['meet_dhall'] \
    and not current_global_settings()['dead_dhall']
def _r7365_condition():
    return current_global_settings()['meet_dhall'] \
    and current_global_settings()['dead_dhall'] \
    and current_global_settings()['pass_death_of_names_dhall']
def _r7366_condition():
    return current_global_settings()['meet_xixi'] \
    and current_global_settings()['xixi_back'] <= 2
def _r7367_condition():
    return current_global_settings()['meet_xixi'] \
    and current_global_settings()['xixi_back'] == 3
def _r7368_condition():
    return current_global_settings()['pass_death_of_names_quentin']
def _r9771_condition():
    return current_global_settings()['crier_quest'] == 2
def _r9772_action():
    pass_death_of_names_adahn()
    change_adahn_once('Adahn_Death_of_Names_1')
###

# DLG/DDEATHON.DLG
def dlg_ddeathon(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    death_names   = renpy.store.characters['death_names']
    EXIT          = -1

    DialogStateBuilder() \
    .state('DDEATHON.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны.", 's0', 'say7288').with_action(lambda: _init()) \
            .line(teller, "Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.", 's0', 'say7288') \
        .with_responses() \
            .response("Приветствую.", 'DDEATHON.D_s1', 'r0', 'reply7289') \
            .response("Оставить мужчину в покое.", EXIT, 'r1', 'reply7290').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s1', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Глаза тленного скользят по тебе.", 's1', 'say7291') \
            .line(death_names, "Имя.", 's1', 'say7291') \
            .line(teller, "Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's1', 'say7291') \
        .with_responses() \
            .response("Я… не знаю.", 'DDEATHON.D_s2', 'r2', 'reply7292') \
            .response("Э… прости, что отвлек.", 'DDEATHON.D_s2', 'r3', 'reply7293') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s2', '# from 1.0 1.1 9.0') \
        .with_npc_lines() \
            .line(death_names, "Нет имени, нет имени, ничем не помогу тебе.", 's2', 'say7294') \
            .line(teller, "Тленный произносит слова нараспев.", 's2', 'say7294') \
            .line(death_names, "Нужно имя, чтобы увидеть, где оно умерло.", 's2', 'say7294') \
        .with_responses() \
            .response("Что?", 'DDEATHON.D_s3', 'r4', 'reply7295').with_action(lambda: _r7295_action()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s3', '# from 2.0') \
        .with_npc_lines() \
            .line(death_names, "Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен.", 's3', 'say7296') \
            .line(teller, "Его глаза скользят по монолиту и по стенам.", 's3', 'say7296') \
            .line(death_names, "Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу.", 's3', 'say7296') \
        .with_responses() \
            .response("Захария.", 'DDEATHON.D_s10', 'r5', 'reply7297').with_condition(lambda: _r7297_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s10', 'r6', 'reply7298').with_condition(lambda: _r7298_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r7', 'reply7299').with_condition(lambda: _r7299_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s10', 'r8', 'reply7300').with_condition(lambda: _r7300_condition()) \
            .response("Квентин.", 'DDEATHON.D_s13', 'r9', 'reply7303').with_condition(lambda: _r7303_condition()) \
            .response("Э… Не знаю. Попробуй 'Адан'.", 'DDEATHON.D_s4', 'r10', 'reply7304').with_action(lambda: _r7304_action()) \
            .response("Хм-м. А ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r11', 'reply9766') \
            .response("На сегодня имен нет. Извини, что отвлек тебя.", EXIT, 'r12', 'reply9767').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s4', '# from 3.2 3.5 5.3 5.5 9.4 9.6 9.10') \
        .with_npc_lines() \
            .line(teller, "Он качает головой.", 's4', 'say7305') \
            .line(death_names, "Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время.", 's4', 'say7305') \
        .with_responses() \
            .response("Давай попробуем другое имя…", 'DDEATHON.D_s9', 'r13', 'reply7306') \
            .response("Ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r14', 'reply7307') \
            .response("Хорошо… Извини, что отвлек.", EXIT, 'r15', 'reply7308').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s5', '# from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1') \
        .with_npc_lines() \
            .line(teller, "Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской.", 's5', 'say7309') \
            .line(death_names, "Чтоб похоронить, нужно звенелки заплатить. Три медяка, три.", 's5', 'say7309') \
        .with_responses() \
            .response("Захария.", 'DDEATHON.D_s12', 'r16', 'reply7310').with_condition(lambda: _r7310_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s12', 'r17', 'reply7311').with_condition(lambda: _r7311_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s6', 'r18', 'reply7312').with_condition(lambda: _r7312_condition()).with_action(lambda: _r7312_action()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r19', 'reply7313').with_condition(lambda: _r7313_condition()) \
            .response("Квентин.", 'DDEATHON.D_s15', 'r20', 'reply7317').with_condition(lambda: _r7317_condition()).with_action(lambda: _r7317_action()) \
            .response("Квентин.", 'DDEATHON.D_s4', 'r21', 'reply9768').with_condition(lambda: _r9768_condition()) \
            .response("Хм-м… Эс-Аннон.", 'DDEATHON.D_s6', 'r22', 'reply9769').with_condition(lambda: _r9769_condition()).with_action(lambda: _r9769_action()) \
            .response("У меня нет ни одной… звенелки. Может быть, в другой раз.", EXIT, 'r23', 'reply9770').with_action(lambda: _dispose()) \
            .response("На сегодня имен нет. Прощай.", EXIT, 'r24', 'reply26086').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s6', '# from 5.2 5.6') \
        .with_npc_lines() \
            .line(teller, "Медяки падают в руку Смерти-Имен, и он прячет ее назад.", 's6', 'say7350') \
            .line(teller, "Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's6', 'say7350') \
        .with_responses() \
            .response("Подождать…", 'DDEATHON.D_s7', 'r25', 'reply7351') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s7', '# from 6.0') \
        .with_npc_lines() \
            .line(teller, "Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене.", 's7', 'say7352') \
            .line(teller, "Спустя несколько минут он завершает работу, поднимается и возвращается к тебе.", 's7', 'say7352') \
            .line(death_names, "Похоронено.", 's7', 'say7352') \
            .line(teller, "Последнее слово заставляет тебя почувствовать себя неуютно.", 's7', 'say7352') \
        .with_responses() \
            .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r26', 'reply7353') \
            .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r27', 'reply7354') \
            .response("Спасибо. Прощай.", EXIT, 'r28', 'reply7355').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s8', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.", 's8', 'say7356') \
        .with_responses() \
            .response("Приветствую.", 'DDEATHON.D_s9', 'r29', 'reply7357') \
            .response("Оставить его в покое.", EXIT, 'r30', 'reply7358').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s9', '# from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0') \
        .with_npc_lines() \
            .line(teller, "И снова глаза тленного глядят на тебя.", 's9', 'say7359') \
            .line(death_names, "Имя.", 's9', 'say7359') \
            .line(teller, "Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's9', 'say7359') \
        .with_responses() \
            .response("Я… не знаю.", 'DDEATHON.D_s2', 'r31', 'reply7360') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r32', 'reply7361') \
            .response("Захария.", 'DDEATHON.D_s10', 'r33', 'reply7362').with_condition(lambda: _r7362_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s10', 'r34', 'reply7363').with_condition(lambda: _r7363_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r35', 'reply7364').with_condition(lambda: _r7364_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s10', 'r36', 'reply7365').with_condition(lambda: _r7365_condition()) \
            .response("Сиси.", 'DDEATHON.D_s4', 'r37', 'reply7366').with_condition(lambda: _r7366_condition()) \
            .response("Сиси.", 'DDEATHON.D_s10', 'r38', 'reply7367').with_condition(lambda: _r7367_condition()) \
            .response("Квентин.", 'DDEATHON.D_s13', 'r39', 'reply7368').with_condition(lambda: _r7368_condition()) \
            .response("Эс-Аннон.", 'DDEATHON.D_s10', 'r40', 'reply9771').with_condition(lambda: _r9771_condition()) \
            .response("Э… 'Адан'?", 'DDEATHON.D_s4', 'r41', 'reply9772').with_action(lambda: _r9772_action()) \
            .response("Извини за беспокойство. Прощай.", EXIT, 'r42', 'reply26109').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s10', '# from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9') \
        .with_npc_lines() \
            .line(teller, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена.", 's10', 'say7369') \
            .line(teller, "Затем он указывает на одну из стен.", 's10', 'say7369') \
            .line(death_names, "Похоронено.", 's10', 'say7369') \
        .with_responses() \
            .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s11', 'r43', 'reply7370') \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r44', 'reply7371') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r45', 'reply7372') \
            .response("Просто проверяю. Прощай.", EXIT, 'r46', 'reply7373').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s11', '# from 10.0') \
        .with_npc_lines() \
            .line(teller, "Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.", 's11', 'say7374') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r47', 'reply7375') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r78', 'reply7376') \
            .response("Просто проверяю. Прощай.", EXIT, 'r49', 'reply7377').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s12', '# from 5.0 5.1') \
        .with_npc_lines() \
            .line(teller, "Он качает головой.", 's12', 'say7378') \
            .line(death_names, "Похоронено.", 's12', 'say7378') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r50', 'reply7380') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r51', 'reply7382') \
            .response("Просто проверяю. Прощай.", EXIT, 'r52', 'reply7383').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s13', '# from 3.4 9.8') \
        .with_npc_lines() \
            .line(teller, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена.", 's13', 'say7384') \
            .line(teller, "Затем он указывает на одну из стен.", 's13', 'say7384') \
            .line(death_names, "Похоронено.", 's13', 'say7384') \
        .with_responses() \
            .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s14', 'r53', 'reply7386') \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r54', 'reply7387') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r55', 'reply7388') \
            .response("Просто проверяю. Прощай.", EXIT, 'r56', 'reply7390').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s14', '# from 13.0') \
        .with_npc_lines() \
            .line(teller, "Имя Квентина, высеченное на черном камне слегка неровным почерком.", 's14', 'say7391') \
            .line(teller, "К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.", 's14', 'say7391') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r57', 'reply7392') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r58', 'reply7394') \
            .response("Просто проверяю. Прощай.", EXIT, 'r59', 'reply7403').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s15', '# from 5.4') \
        .with_npc_lines() \
            .line(teller, "Медяки падают в руку Смерти-Имен, и он прячет ее назад.", 's15', 'say7404') \
            .line(teller, "Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's15', 'say7404') \
        .with_responses() \
            .response("Подождать…", 'DDEATHON.D_s16', 'r60', 'reply7405') \
        .push(manager)

    DialogStateBuilder() \
    .state('DDEATHON.D_s16', '# from 15.0') \
        .with_npc_lines() \
            .line(teller, "Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать.", 's16', 'say7406') \
            .line(teller, "К несчастью для Квентина, монумент не разломился после его имени. Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе.", 's16', 'say7406') \
            .line(death_names, "Похоронено.", 's16', 'say7406') \
            .line(teller, "Последнее слово заставляет тебя почувствовать себя неуютно.", 's16', 'say7406') \
        .with_responses() \
            .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r61', 'reply7407') \
            .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r62', 'reply7408') \
            .response("Спасибо. Прощай.", EXIT, 'r63', 'reply7409').with_action(lambda: _dispose()) \
        .push(manager)
