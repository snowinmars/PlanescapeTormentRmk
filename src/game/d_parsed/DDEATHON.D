def _r7295_action(gsm):
    gsm.set_meet_death_of_names(True) gsm.update_journal('66659')    # '66659': ' ~Я встретил искалеченного тленного возле мемориала тленных. Его зовут «Смерть-Имен», и он занимается похоронами имен, нанося их на стены мемориала. От этого места мне становится не по себе. Мемориал — это огромное кладбище имен, и каждая из стен — как огромный черный могильный камень.~ '
def _r7297_condition(gsm):
    return gsm.get_know_xachariah_name()
def _r7298_condition(gsm):
    return gsm.get_meet_deionarra()
def _r7299_condition(gsm):
    return gsm.get_meet_dhall() return not gsm.get_dead_dhall()
def _r7300_condition(gsm):
    return gsm.get_meet_dhall() return gsm.get_dead_dhall() return gsm.get_pass_death_of_names_dhall()
def _r7303_condition(gsm):
    return gsm.get_pass_death_of_names_quentin()
def _r7304_action(gsm):
    DO ~gsm.set_death_of_names_adahn(True)
    gsm.inc_once_adahn('Adahn_Death_of_Names_1') ~
def _r7310_condition(gsm):
    PartyGoldGT(2) return gsm.get_know_xachariah_name()
def _r7311_condition(gsm):
    return gsm.get_meet_deionarra()
def _r7312_condition(gsm):
    PartyGoldGT(2) return gsm.get_meet_dhall() return gsm.get_dead_dhall() return not gsm.get_pass_death_of_names_dhall()
def _r7312_action(gsm):
    DO ~TakePartyGold(3) gsm.set_pass_death_of_names_dhall(True) ~
def _r7313_condition(gsm):
    PartyGoldGT(2) return gsm.get_meet_dhall() return not gsm.get_dead_dhall()
def _r7317_condition(gsm):
    PartyGoldGT(2) return gsm.get_quentin() return gsm.get_dead_quentin() return not gsm.get_death_of_names_quentin()
def _r7317_action(gsm):
    DO ~TakePartyGold(3) gsm.set_pass_death_of_names_quentin(True) ~
def _r9768_condition(gsm):
    PartyGoldGT(2) return gsm.get_quentin() return not gsm.get_dead_quentin()
def _r9769_condition(gsm):
    PartyGoldGT(2) return gsm.get_crier_quest() == 1
def _r9769_action(gsm):
    DO ~TakePartyGold(3) AddexperienceParty(500) gsm.set_crier_quest(2) ~ gsm.update_journal('26108')    # '26108': ' ~Имя города Эс-Аннона было высечено в мемориале тленных у Морга. Теперь я должен вернуться и сообщить плакальщику Эс-Аннона, что он избавлен от бремени напоминания.~ '
def _r9770_condition(gsm):
    PartyGoldLT(3)
def _r26086_condition(gsm):
    PartyGoldGT(2)
def _r7362_condition(gsm):
    return gsm.get_know_xachariah_name()
def _r7363_condition(gsm):
    return gsm.get_meet_deionarra()
def _r7364_condition(gsm):
    return gsm.get_meet_dhall() return not gsm.get_dead_dhall()
def _r7365_condition(gsm):
    return gsm.get_meet_dhall() return gsm.get_dead_dhall() return gsm.get_pass_death_of_names_dhall()
def _r7366_condition(gsm):
    return gsm.get_meet_xixi() return gsm.get_xixi_back() <= 2
def _r7367_condition(gsm):
    return gsm.get_meet_xixi() return gsm.get_xixi_back() == 3
def _r7368_condition(gsm):
    return gsm.get_pass_death_of_names_quentin()
def _r9771_condition(gsm):
    return gsm.get_crier_quest() == 2
def _r9772_action(gsm):
    DO ~gsm.set_death_of_names_adahn(True)
    gsm.inc_once_adahn('Adahn_Death_of_Names_1') ~

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DDEATHON.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны. Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.", 's0', 'say7288') \
    .with_responses() \
        .response("Приветствую.", 'DDEATHON.D_s1', 'r', 'reply7289') \
        .response("Оставить мужчину в покое.", EXIT, 'r', 'reply7290').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s1', '# from 0.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза тленного скользят по тебе. Имя. Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's1', 'say7291') \
    .with_responses() \
        .response("Я… не знаю.", 'DDEATHON.D_s2', 'r', 'reply7292') \
        .response("Э… прости, что отвлек.", 'DDEATHON.D_s2', 'r', 'reply7293') \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s2', '# from 1.0 1.1 9.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет имени, нет имени, ничем не помогу тебе, — нараспев произносит тленный. — Нужно имя, чтобы увидеть, где оно умерло.", 's2', 'say7294') \
    .with_responses() \
        .response("Что?", 'DDEATHON.D_s3', 'r', 'reply7295').with_action(lambda: _r7295_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s3', '# from 2.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен. Его глаза скользят по монолиту и по стенам. Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу.", 's3', 'say7296') \
    .with_responses() \
        .response("Захария.", 'DDEATHON.D_s10', 'r', 'reply7297').with_condition(lambda: _r7297_condition(gsm)) \
        .response("Дейонарра.", 'DDEATHON.D_s10', 'r', 'reply7298').with_condition(lambda: _r7298_condition(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7299').with_condition(lambda: _r7299_condition(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s10', 'r', 'reply7300').with_condition(lambda: _r7300_condition(gsm)) \
        .response("Квентин.", 'DDEATHON.D_s13', 'r', 'reply7303').with_condition(lambda: _r7303_condition(gsm)) \
        .response("Э… Не знаю. Попробуй 'Адан'.", 'DDEATHON.D_s4', 'r', 'reply7304').with_action(lambda: _r7304_action(gsm)) \
        .response("Хм-м. А ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r', 'reply9766') \
        .response("На сегодня имен нет. Извини, что отвлек тебя.", EXIT, 'r', 'reply9767').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s4', '# from 3.2 3.5 5.3 5.5 9.4 9.6 9.10') \
    .with_npc_lines() \
        .line(SPEAKER, "Он качает головой. Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время.", 's4', 'say7305') \
    .with_responses() \
        .response("Давай попробуем другое имя…", 'DDEATHON.D_s9', 'r', 'reply7306') \
        .response("Ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r', 'reply7307') \
        .response("Хорошо… Извини, что отвлек.", EXIT, 'r', 'reply7308').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s5', '# from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской. Чтоб похоронить, нужно звенелки заплатить. Три медяка, три.", 's5', 'say7309') \
    .with_responses() \
        .response("Захария.", 'DDEATHON.D_s12', 'r', 'reply7310').with_condition(lambda: _r7310_condition(gsm)) \
        .response("Дейонарра.", 'DDEATHON.D_s12', 'r', 'reply7311').with_condition(lambda: _r7311_condition(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s6', 'r', 'reply7312').with_condition(lambda: _r7312_condition(gsm)).with_action(lambda: _r7312_action(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7313').with_condition(lambda: _r7313_condition(gsm)) \
        .response("Квентин.", 'DDEATHON.D_s15', 'r', 'reply7317').with_condition(lambda: _r7317_condition(gsm)).with_action(lambda: _r7317_action(gsm)) \
        .response("Квентин.", 'DDEATHON.D_s4', 'r', 'reply9768').with_condition(lambda: _r9768_condition(gsm)) \
        .response("Хм-м… Эс-Аннон.", 'DDEATHON.D_s6', 'r', 'reply9769').with_condition(lambda: _r9769_condition(gsm)).with_action(lambda: _r9769_action(gsm)) \
        .response("У меня нет ни одной… звенелки. Может быть, в другой раз.", EXIT, 'r', 'reply9770').with_condition(lambda: _r9770_condition(gsm)).with_action(lambda: _dispose()) \
        .response("На сегодня имен нет. Прощай.", EXIT, 'r', 'reply26086').with_condition(lambda: _r26086_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s6', '# from 5.2 5.6') \
    .with_npc_lines() \
        .line(SPEAKER, "Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's6', 'say7350') \
    .with_responses() \
        .response("Подождать…", 'DDEATHON.D_s7', 'r', 'reply7351') \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s7', '# from 6.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене. Спустя несколько минут он завершает работу, поднимается и возвращается к тебе. Похоронено. Последнее слово заставляет тебя почувствовать себя неуютно.", 's7', 'say7352') \
    .with_responses() \
        .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r', 'reply7353') \
        .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r', 'reply7354') \
        .response("Спасибо. Прощай.", EXIT, 'r', 'reply7355').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s8', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.", 's8', 'say7356') \
    .with_responses() \
        .response("Приветствую.", 'DDEATHON.D_s9', 'r', 'reply7357') \
        .response("Оставить его в покое.", EXIT, 'r', 'reply7358').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s9', '# from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0') \
    .with_npc_lines() \
        .line(SPEAKER, "И снова глаза тленного глядят на тебя. Имя. Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's9', 'say7359') \
    .with_responses() \
        .response("Я… не знаю.", 'DDEATHON.D_s2', 'r', 'reply7360') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7361') \
        .response("Захария.", 'DDEATHON.D_s10', 'r', 'reply7362').with_condition(lambda: _r7362_condition(gsm)) \
        .response("Дейонарра.", 'DDEATHON.D_s10', 'r', 'reply7363').with_condition(lambda: _r7363_condition(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7364').with_condition(lambda: _r7364_condition(gsm)) \
        .response("Дхолл.", 'DDEATHON.D_s10', 'r', 'reply7365').with_condition(lambda: _r7365_condition(gsm)) \
        .response("Сиси.", 'DDEATHON.D_s4', 'r', 'reply7366').with_condition(lambda: _r7366_condition(gsm)) \
        .response("Сиси.", 'DDEATHON.D_s10', 'r', 'reply7367').with_condition(lambda: _r7367_condition(gsm)) \
        .response("Квентин.", 'DDEATHON.D_s13', 'r', 'reply7368').with_condition(lambda: _r7368_condition(gsm)) \
        .response("Эс-Аннон.", 'DDEATHON.D_s10', 'r', 'reply9771').with_condition(lambda: _r9771_condition(gsm)) \
        .response("Э… 'Адан'?", 'DDEATHON.D_s4', 'r', 'reply9772').with_action(lambda: _r9772_action(gsm)) \
        .response("Извини за беспокойство. Прощай.", EXIT, 'r', 'reply26109').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s10', '# from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9') \
    .with_npc_lines() \
        .line(SPEAKER, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. Похоронено.", 's10', 'say7369') \
    .with_responses() \
        .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s11', 'r', 'reply7370') \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7371') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7372') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7373').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s11', '# from 10.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.", 's11', 'say7374') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7375') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7376') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7377').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s12', '# from 5.0 5.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Он качает головой. Похоронено.", 's12', 'say7378') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7380') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7382') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7383').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s13', '# from 3.4 9.8') \
    .with_npc_lines() \
        .line(SPEAKER, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. Похоронено.", 's13', 'say7384') \
    .with_responses() \
        .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s14', 'r', 'reply7386') \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7387') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7388') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7390').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s14', '# from 13.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Имя Квентина, высеченное на черном камне слегка неровным почерком. К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.", 's14', 'say7391') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7392') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7394') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7403').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s15', '# from 5.4') \
    .with_npc_lines() \
        .line(SPEAKER, "Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's15', 'say7404') \
    .with_responses() \
        .response("Подождать…", 'DDEATHON.D_s16', 'r', 'reply7405') \
    .push(manager)

DialogStateBuilder().state('DDEATHON.D_s16', '# from 15.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать. К несчастью для Квентина, монумент не разломился после его имени. Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе. Похоронено. Последнее слово заставляет тебя почувствовать себя неуютно.", 's16', 'say7406') \
    .with_responses() \
        .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r', 'reply7407') \
        .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r', 'reply7408') \
        .response("Спасибо. Прощай.", EXIT, 'r', 'reply7409').with_action(lambda: _dispose()) \
    .push(manager)