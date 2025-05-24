import renpy
from engine.dialog import (DialogStateBuilder)
from engine.settings_global import (
    current_global_settings,
    set_morte_in_party,
    change_good,
    change_good_morte,
    travel,
    meet_death_of_names,
    set_xachariah_name,
    meet_deionarra,
    meet_dhall,
    kill_dhall,
    pass_death_of_names_quentin,
    pass_death_of_names_dhall,
    pass_death_of_names_adahn,
    increment_crier_quest,
    increment_adahn
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
    travel('morgue2')

def _r4_action():
    meet_death_of_names()
    update_journal('66659')

def _r5_r16_r33_condition():
    return current_global_settings()['xachariah_name']
def _r6_r17_r34_condition():
    return current_global_settings()['deionarra']
def _r7_r19_r35_condition():
    return current_global_settings()['dhall'] \
    and not current_global_settings()['dead_dhall']
def _r8_r36_condition():
    return current_global_settings()['dhall'] \
    and current_global_settings()['dead_dhall'] \
    and current_global_settings()['death_of_names_dhall']
def _r9_r39_condition():
    return current_global_settings()['set_death_of_names_quentin']
def _r10_r41_action():
    set_death_of_names_adahn()
    increment_adahn()
def _r18_condition():
     return current_global_settings()['dhall'] \
    and current_global_settings()['dead_dhall'] \
    and not current_global_settings()['death_of_names_dhall']
def _r18_action():
    set_death_of_names_dhall()
def _r20_condition():
    return current_global_settings()['quentin'] \
    and current_global_settings()['dead_quentin'] \
    and not current_global_settings()['death_of_names_quentin']
def _r20_action():
    pass_death_of_names_quentin()
def _r21_condition():
    return current_global_settings()['quentin'] \
    and not current_global_settings()['dead_quentin']
def _r22_condition():
    return current_global_settings()['crier_quest'] > 0
def _r22_action():
    increment_crier_quest()
    update_journal('26108')
def _r37_condition():
    return current_global_settings()['know_xixi'] \
    and current_global_settings()['xixi_back'] <= 2
def _r38_condition():
    return current_global_settings()['know_xixi'] \
    and current_global_settings()['xixi_back'] == 3
def _r40_condition():
    return current_global_settings()['crier_quest'] == 2

def dlg_ddeathon():
    teller        = renpy.store.characters['teller']
    morte_unknown = renpy.store.characters['morte_unknown']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']
    death_names   = renpy.store.characters['death_names']
    EXIT          = -1

    # from -
    DialogStateBuilder('DDEATHON.D_s0') \
        .with_npc_lines() \
            .line(teller, "Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны.", 's0', 'say7288') \
            .line(teller, "Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.", 's0', 'say7288') \
        .with_responses() \
            .response("Приветствую.", 'DDEATHON.D_s1', 'r0', 'reply7289') \
            .response("Оставить мужчину в покое.", EXIT, 'r1', 'reply7290') \
        .done()

    # from 0.0
    DialogStateBuilder('DDEATHON.D_s1') \
        .with_npc_lines() \
            .line(teller, "Глаза тленного скользят по тебе.", 's1', 'say7291') \
            .line(death_names, "Имя.", 's1', 'say7291') \
            .line(teller, "Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's1', 'say7291') \
        .with_responses() \
            .response("Я… не знаю.", 'DDEATHON.D_s2', 'r2', 'reply7292') \
            .response("Э… прости, что отвлек.", 'DDEATHON.D_s2', 'r3', 'reply7293') \
        .done()

    # from 1.0 1.1 9.0
    DialogStateBuilder('DDEATHON.D_s2') \
        .with_npc_lines() \
            .line(death_names, "Нет имени, нет имени, ничем не помогу тебе.", 's2', 'say7294') \
            .line(teller, "Тленный произносит слова нараспев.", 's2', 'say7294') \
            .line(death_names, "Нужно имя, чтобы увидеть, где оно умерло.", 's2', 'say7294') \
        .with_responses() \
            .response("Что?", 'DDEATHON.D_s3', 'r4', 'reply7295').with_action(lambda: _r4_action()) \
        .done()

    # from 2.0
    DialogStateBuilder('DDEATHON.D_s3') \
        .with_npc_lines() \
            .line(death_names, "Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен.", 's3', 'say7296') \
            .line(teller, "Его глаза скользят по монолиту и по стенам.", 's3', 'say7296') \
            .line(death_names, "Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу.", 's3', 'say7296') \
        .with_responses() \
            .response("Захария.", 'DDEATHON.D_s10', 'r5', 'reply7297').with_condition(lambda: _r5_r16_r33_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s10', 'r6', 'reply7298').with_condition(lambda: _r6_r17_r34_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r7', 'reply7299').with_condition(lambda: _r7_r19_r35_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s10', 'r8', 'reply7300').with_condition(lambda: _r8_r36_condition()) \
            .response("Квентин.", 'DDEATHON.D_s13', 'r9', 'reply7303').with_condition(lambda: _r9_r39_condition()) \
            .response("Э… Не знаю. Попробуй 'Адан'.", 'DDEATHON.D_s4', 'r10', 'reply7304').with_action(lambda: _r10_r41_action()) \
            .response("Хм-м. А ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r11', 'reply9766') \
            .response("На сегодня имен нет. Извини, что отвлек тебя.", EXIT, 'r12', 'reply9767') \
        .done()

    # from 3.2 3.5 5.3 5.5 9.4 9.6 9.10
    DialogStateBuilder('DDEATHON.D_s4') \
        .with_npc_lines() \
            .line(teller, "Он качает головой.", 's4', 'say7305') \
            .line(death_names, "Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время.", 's4', 'say7305') \
        .with_responses() \
            .response("Давай попробуем другое имя…", 'DDEATHON.D_s9', 'r13', 'reply7306') \
            .response("Ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r14', 'reply7307') \
            .response("Хорошо… Извини, что отвлек.", EXIT, 'r15', 'reply7308') \
        .done()

    # from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
    DialogStateBuilder('DDEATHON.D_s5') \
        .with_npc_lines() \
            .line(teller, "Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской.", 's5', 'say7309') \
            .line(death_names, "Чтоб похоронить, нужно звенелки заплатить. Три медяка, три.", 's5', 'say7309') \
        .with_responses() \
            .response("Захария.", 'DDEATHON.D_s12', 'r16', 'reply7310').with_condition(lambda: _r5_r16_r33_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s12', 'r17', 'reply7311').with_condition(lambda: _r6_r17_r34_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s6', 'r18', 'reply7312').with_condition(lambda: _r18_condition()).with_action(lambda: _r18_action()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r19', 'reply7313').with_condition(lambda: _r7_r19_r35_condition()) \
            .response("Квентин.", 'DDEATHON.D_s15', 'r20', 'reply7317').with_condition(lambda: _r20_condition()).with_action(lambda: _r20_action()) \
            .response("Квентин.", 'DDEATHON.D_s4', 'r21', 'reply9768').with_condition(lambda: _r21_condition()) \
            .response("Хм-м… Эс-Аннон.", 'DDEATHON.D_s6', 'r22', 'reply9769').with_condition(lambda: _r22_condition()).with_action(lambda: _r22_action()) \
            .response("У меня нет ни одной… звенелки. Может быть, в другой раз.", EXIT, 'r23', 'reply9770') \
            .response("На сегодня имен нет. Прощай.", EXIT, 'r24', 'reply26086') \
        .done()

    # from 5.2 5.6
    DialogStateBuilder('DDEATHON.D_s6') \
        .with_npc_lines() \
            .line(teller, "Медяки падают в руку Смерти-Имен, и он прячет ее назад.", 's6', 'say7350') \
            .line(teller, "Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's6', 'say7350') \
        .with_responses() \
            .response("Подождать…", 'DDEATHON.D_s7', 'r25', 'reply7351') \
        .done()

    # from 6.0
    DialogStateBuilder('DDEATHON.D_s7') \
        .with_npc_lines() \
            .line(teller, "Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене.", 's7', 'say7352') \
            .line(teller, "Спустя несколько минут он завершает работу, поднимается и возвращается к тебе.", 's7', 'say7352') \
            .line(death_names, "Похоронено.", 's7', 'say7352') \
            .line(teller, "Последнее слово заставляет тебя почувствовать себя неуютно.", 's7', 'say7352') \
        .with_responses() \
            .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r26', 'reply7353') \
            .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r27', 'reply7354') \
            .response("Спасибо. Прощай.", EXIT, 'r28', 'reply7355') \
        .done()

    # from -
    DialogStateBuilder('DDEATHON.D_s8') \
        .with_npc_lines() \
            .line(teller, "Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.", 's8', 'say7356') \
        .with_responses() \
            .response("Приветствую.", 'DDEATHON.D_s9', 'r29', 'reply7357') \
            .response("Оставить его в покое.", EXIT, 'r30', 'reply7358') \
        .done()

    # from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
    DialogStateBuilder('DDEATHON.D_s9') \
        .with_npc_lines() \
            .line(teller, "И снова глаза тленного глядят на тебя.", 's9', 'say7359') \
            .line(death_names, "Имя.", 's9', 'say7359') \
            .line(teller, "Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's9', 'say7359') \
        .with_responses() \
            .response("Я… не знаю.", 'DDEATHON.D_s2', 'r31', 'reply7360') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r32', 'reply7361') \
            .response("Захария.", 'DDEATHON.D_s10', 'r33', 'reply7362').with_condition(lambda: _r5_r16_r33_condition()) \
            .response("Дейонарра.", 'DDEATHON.D_s10', 'r34', 'reply7363').with_condition(lambda: _r6_r17_r34_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s4', 'r35', 'reply7364').with_condition(lambda: _r7_r19_r35_condition()) \
            .response("Дхолл.", 'DDEATHON.D_s10', 'r36', 'reply7365').with_condition(lambda: _r8_r36_condition()) \
            .response("Сиси.", 'DDEATHON.D_s4', 'r37', 'reply7366').with_condition(lambda: _r37_condition()) \
            .response("Сиси.", 'DDEATHON.D_s10', 'r38', 'reply7367').with_condition(lambda: _r38_condition()) \
            .response("Квентин.", 'DDEATHON.D_s13', 'r39', 'reply7368').with_condition(lambda: _r9_r39_condition()) \
            .response("Эс-Аннон.", 'DDEATHON.D_s10', 'r40', 'reply9771').with_condition(lambda: _r40_condition()) \
            .response("Э… 'Адан'?", 'DDEATHON.D_s4', 'r41', 'reply9772').with_action(lambda: _r10_r41_action()) \
            .response("Извини за беспокойство. Прощай.", EXIT, 'r42', 'reply26109') \
        .done()

    # from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
    DialogStateBuilder('DDEATHON.D_s10') \
        .with_npc_lines() \
            .line(teller, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена.", 's10', 'say7369') \
            .line(teller, "Затем он указывает на одну из стен.", 's10', 'say7369') \
            .line(death_names, "Похоронено.", 's10', 'say7369') \
        .with_responses() \
            .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s11', 'r', 'reply7370') \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7371') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7372') \
            .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7373') \
        .done()

    # from 10.0
    DialogStateBuilder('DDEATHON.D_s11') \
        .with_npc_lines() \
            .line(teller, "Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.", 's11', 'say7374') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7375') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7376') \
            .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7377') \
        .done()

    # from 5.0 5.1
    DialogStateBuilder('DDEATHON.D_s12') \
        .with_npc_lines() \
            .line(teller, "Он качает головой.", 's12', 'say7378') \
            .line(death_names, "Похоронено.", 's12', 'say7378') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7380') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7382') \
            .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7383') \
        .done()

    # from 3.4 9.8
    DialogStateBuilder('DDEATHON.D_s13') \
        .with_npc_lines() \
            .line(teller, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена.", 's13', 'say7384') \
            .line(teller, "Затем он указывает на одну из стен.", 's13', 'say7384') \
            .line(death_names, "Похоронено.", 's13', 'say7384') \
        .with_responses() \
            .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s14', 'r', 'reply7386') \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7387') \
            .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7388') \
            .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7390') \
        .done()

    # from 13.0
    DialogStateBuilder('DDEATHON.D_s14') \
        .with_npc_lines() \
            .line(teller, "Имя Квентина, высеченное на черном камне слегка неровным почерком.", 's14', 'say7391') \
            .line(teller, "К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.", 's14', 'say7391') \
        .with_responses() \
            .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7392') \
            .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7394') \
            .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7403') \
        .done()

    # from 5.4
    DialogStateBuilder('DDEATHON.D_s15') \
        .with_npc_lines() \
            .line(teller, "Медяки падают в руку Смерти-Имен, и он прячет ее назад.", 's15', 'say7404') \
            .line(teller, "Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's15', 'say7404') \
        .with_responses() \
            .response("Подождать…", 'DDEATHON.D_s16', 'r', 'reply7405') \
        .done()

    # from 15.0
    DialogStateBuilder('DDEATHON.D_s16') \
        .with_npc_lines() \
            .line(teller, "Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать.", 's16', 'say7406') \
            .line(teller, "К несчастью для Квентина, монумент не разломился после его имени. Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе.", 's16', 'say7406') \
            .line(death_names, "Похоронено.", 's16', 'say7406') \
            .line(teller, "Последнее слово заставляет тебя почувствовать себя неуютно.", 's16', 'say7406') \
        .with_responses() \
            .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r', 'reply7407') \
            .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r', 'reply7408') \
            .response("Спасибо. Прощай.", EXIT, 'r', 'reply7409') \
        .done()