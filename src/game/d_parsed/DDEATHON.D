EXIT = -1
# from -
DialogStateBuilder('DDEATHON.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны. Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.", 's0', 'say7288') \
    .with_responses() \
        .response("Приветствую.", 'DDEATHON.D_s1', 'r', 'reply7289') \
        .response("Оставить мужчину в покое.", EXIT, 'r', 'reply7290') \
    .done()

# from 0.0
DialogStateBuilder('DDEATHON.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Глаза тленного скользят по тебе. Имя. Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's1', 'say7291') \
    .with_responses() \
        .response("Я… не знаю.", 'DDEATHON.D_s2', 'r', 'reply7292') \
        .response("Э… прости, что отвлек.", 'DDEATHON.D_s2', 'r', 'reply7293') \
    .done()

# from 1.0 1.1 9.0
DialogStateBuilder('DDEATHON.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет имени, нет имени, ничем не помогу тебе, — нараспев произносит тленный. — Нужно имя, чтобы увидеть, где оно умерло.", 's2', 'say7294') \
    .with_responses() \
        .response("Что?", 'DDEATHON.D_s3', 'r', 'reply7295').with_action(lambda: ' DO ~SetGlobal("Death_of_Names","GLOBAL",1) ~ JOURNAL #66659 /* ~Я встретил искалеченного тленного возле мемориала тленных. Его зовут «Смерть-Имен», и он занимается похоронами имен, нанося их на стены мемориала. От этого места мне становится не по себе. Мемориал — это огромное кладбище имен, и каждая из стен — как огромный черный могильный камень.~ */ ') \
    .done()

# from 2.0
DialogStateBuilder('DDEATHON.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен. Его глаза скользят по монолиту и по стенам. Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу.", 's3', 'say7296') \
    .with_responses() \
        .response("Захария.", 'DDEATHON.D_s10', 'r', 'reply7297').with_condition(lambda: '  GlobalGT("Xachariah_Name","GLOBAL",0) ') \
        .response("Дейонарра.", 'DDEATHON.D_s10', 'r', 'reply7298').with_condition(lambda: '  GlobalGT("Deionarra","GLOBAL",0) ') \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7299').with_condition(lambda: '  GlobalGT("Dhall","GLOBAL",0) !Dead("Dhall") ') \
        .response("Дхолл.", 'DDEATHON.D_s10', 'r', 'reply7300').with_condition(lambda: '  GlobalGT("Dhall","GLOBAL",0) Dead("Dhall") Global("Death_of_Names_Dhall","GLOBAL",1) ') \
        .response("Квентин.", 'DDEATHON.D_s13', 'r', 'reply7303').with_condition(lambda: '  Global("Death_of_Names_Quentin","GLOBAL",1) ') \
        .response("Э… Не знаю. Попробуй 'Адан'.", 'DDEATHON.D_s4', 'r', 'reply7304').with_action(lambda: ' DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1) ~ ') \
        .response("Хм-м. А ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r', 'reply9766') \
        .response("На сегодня имен нет. Извини, что отвлек тебя.", EXIT, 'r', 'reply9767') \
    .done()

# from 3.2 3.5 5.3 5.5 9.4 9.6 9.10
DialogStateBuilder('DDEATHON.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Он качает головой. Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время.", 's4', 'say7305') \
    .with_responses() \
        .response("Давай попробуем другое имя…", 'DDEATHON.D_s9', 'r', 'reply7306') \
        .response("Ты можешь похоронить для меня имя?", 'DDEATHON.D_s5', 'r', 'reply7307') \
        .response("Хорошо… Извини, что отвлек.", EXIT, 'r', 'reply7308') \
    .done()

# from 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
DialogStateBuilder('DDEATHON.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована… по размерам не больше детской. Чтоб похоронить, нужно звенелки заплатить. Три медяка, три.", 's5', 'say7309') \
    .with_responses() \
        .response("Захария.", 'DDEATHON.D_s12', 'r', 'reply7310').with_condition(lambda: '  PartyGoldGT(2) GlobalGT("Xachariah_Name","GLOBAL",0) ') \
        .response("Дейонарра.", 'DDEATHON.D_s12', 'r', 'reply7311').with_condition(lambda: '  GlobalGT("Deionarra","GLOBAL",0) ') \
        .response("Дхолл.", 'DDEATHON.D_s6', 'r', 'reply7312').with_condition(lambda: '  PartyGoldGT(2) GlobalGT("Dhall","GLOBAL",0) Dead("Dhall") Global("Death_of_Names_Dhall","GLOBAL",0) ').with_action(lambda: ' DO ~TakePartyGold(3) SetGlobal("Death_of_Names_Dhall","GLOBAL",1) ~ ') \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7313').with_condition(lambda: '  PartyGoldGT(2) GlobalGT("Dhall","GLOBAL",0) !Dead("Dhall") ') \
        .response("Квентин.", 'DDEATHON.D_s15', 'r', 'reply7317').with_condition(lambda: '  PartyGoldGT(2) GlobalGT("Quentin","GLOBAL",0) Dead("Quentin") Global("Death_of_Names_Quentin","GLOBAL",0) ').with_action(lambda: ' DO ~TakePartyGold(3) SetGlobal("Death_of_Names_Quentin","GLOBAL",1) ~ ') \
        .response("Квентин.", 'DDEATHON.D_s4', 'r', 'reply9768').with_condition(lambda: '  PartyGoldGT(2) GlobalGT("Quentin","GLOBAL",0) !Dead("Quentin") ') \
        .response("Хм-м… Эс-Аннон.", 'DDEATHON.D_s6', 'r', 'reply9769').with_condition(lambda: '  PartyGoldGT(2) Global("Crier_Quest","GLOBAL",1) ').with_action(lambda: ' DO ~TakePartyGold(3) AddexperienceParty(500) SetGlobal("Crier_Quest","GLOBAL",2) ~ JOURNAL #26108 /* ~Имя города Эс-Аннона было высечено в мемориале тленных у Морга. Теперь я должен вернуться и сообщить плакальщику Эс-Аннона, что он избавлен от бремени напоминания.~ */ ') \
        .response("У меня нет ни одной… звенелки. Может быть, в другой раз.", EXIT, 'r', 'reply9770').with_condition(lambda: '  PartyGoldLT(3) ') \
        .response("На сегодня имен нет. Прощай.", EXIT, 'r', 'reply26086').with_condition(lambda: '  PartyGoldGT(2) ') \
    .done()

# from 5.2 5.6
DialogStateBuilder('DDEATHON.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's6', 'say7350') \
    .with_responses() \
        .response("Подождать…", 'DDEATHON.D_s7', 'r', 'reply7351') \
    .done()

# from 6.0
DialogStateBuilder('DDEATHON.D_s7') \
    .with_npc_lines() \
        .line(SPEAKER, "Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене. Спустя несколько минут он завершает работу, поднимается и возвращается к тебе. Похоронено. Последнее слово заставляет тебя почувствовать себя неуютно.", 's7', 'say7352') \
    .with_responses() \
        .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r', 'reply7353') \
        .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r', 'reply7354') \
        .response("Спасибо. Прощай.", EXIT, 'r', 'reply7355') \
    .done()

# from -
DialogStateBuilder('DDEATHON.D_s8') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.", 's8', 'say7356') \
    .with_responses() \
        .response("Приветствую.", 'DDEATHON.D_s9', 'r', 'reply7357') \
        .response("Оставить его в покое.", EXIT, 'r', 'reply7358') \
    .done()

# from 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
DialogStateBuilder('DDEATHON.D_s9') \
    .with_npc_lines() \
        .line(SPEAKER, "И снова глаза тленного глядят на тебя. Имя. Когда он произносит это слово, голос его звучит, как звон колокольчика.", 's9', 'say7359') \
    .with_responses() \
        .response("Я… не знаю.", 'DDEATHON.D_s2', 'r', 'reply7360') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7361') \
        .response("Захария.", 'DDEATHON.D_s10', 'r', 'reply7362').with_condition(lambda: '  GlobalGT("Xachariah_Name","GLOBAL",0) ') \
        .response("Дейонарра.", 'DDEATHON.D_s10', 'r', 'reply7363').with_condition(lambda: '  GlobalGT("Deionarra","GLOBAL",0) ') \
        .response("Дхолл.", 'DDEATHON.D_s4', 'r', 'reply7364').with_condition(lambda: '  GlobalGT("Dhall","GLOBAL",0) !Dead("Dhall") ') \
        .response("Дхолл.", 'DDEATHON.D_s10', 'r', 'reply7365').with_condition(lambda: '  GlobalGT("Dhall","GLOBAL",0) Dead("Dhall") Global("Death_of_Names_Dhall","GLOBAL",1) ') \
        .response("Сиси.", 'DDEATHON.D_s4', 'r', 'reply7366').with_condition(lambda: '  Global("Know_Xixi","GLOBAL",1) GlobalLT("Xixi_Back","GLOBAL",2) ') \
        .response("Сиси.", 'DDEATHON.D_s10', 'r', 'reply7367').with_condition(lambda: '  Global("Know_Xixi","GLOBAL",1) Global("Xixi_Back","GLOBAL",3) ') \
        .response("Квентин.", 'DDEATHON.D_s13', 'r', 'reply7368').with_condition(lambda: '  Global("Death_of_Names_Quentin","GLOBAL",1) ') \
        .response("Эс-Аннон.", 'DDEATHON.D_s10', 'r', 'reply9771').with_condition(lambda: '  Global("Crier_Quest","GLOBAL",2) ') \
        .response("Э… 'Адан'?", 'DDEATHON.D_s4', 'r', 'reply9772').with_action(lambda: ' DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1) ~ ') \
        .response("Извини за беспокойство. Прощай.", EXIT, 'r', 'reply26109') \
    .done()

# from 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
DialogStateBuilder('DDEATHON.D_s10') \
    .with_npc_lines() \
        .line(SPEAKER, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. Похоронено.", 's10', 'say7369') \
    .with_responses() \
        .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s11', 'r', 'reply7370') \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7371') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7372') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7373') \
    .done()

# from 10.0
DialogStateBuilder('DDEATHON.D_s11') \
    .with_npc_lines() \
        .line(SPEAKER, "Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.", 's11', 'say7374') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7375') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7376') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7377') \
    .done()

# from 5.0 5.1
DialogStateBuilder('DDEATHON.D_s12') \
    .with_npc_lines() \
        .line(SPEAKER, "Он качает головой. Похоронено.", 's12', 'say7378') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7380') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7382') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7383') \
    .done()

# from 3.4 9.8
DialogStateBuilder('DDEATHON.D_s13') \
    .with_npc_lines() \
        .line(SPEAKER, "Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. Похоронено.", 's13', 'say7384') \
    .with_responses() \
        .response("Осмотреть то место, куда он указывает.", 'DDEATHON.D_s14', 'r', 'reply7386') \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7387') \
        .response("Я хотел бы похоронить имя.", 'DDEATHON.D_s5', 'r', 'reply7388') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7390') \
    .done()

# from 13.0
DialogStateBuilder('DDEATHON.D_s14') \
    .with_npc_lines() \
        .line(SPEAKER, "Имя Квентина, высеченное на черном камне слегка неровным почерком. К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.", 's14', 'say7391') \
    .with_responses() \
        .response("У меня есть другое имя…", 'DDEATHON.D_s9', 'r', 'reply7392') \
        .response("Я хотел бы похоронить имя…", 'DDEATHON.D_s5', 'r', 'reply7394') \
        .response("Просто проверяю. Прощай.", EXIT, 'r', 'reply7403') \
    .done()

# from 5.4
DialogStateBuilder('DDEATHON.D_s15') \
    .with_npc_lines() \
        .line(SPEAKER, "Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.", 's15', 'say7404') \
    .with_responses() \
        .response("Подождать…", 'DDEATHON.D_s16', 'r', 'reply7405') \
    .done()

# from 15.0
DialogStateBuilder('DDEATHON.D_s16') \
    .with_npc_lines() \
        .line(SPEAKER, "Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать. К несчастью для Квентина, монумент не разломился после его имени. Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе. Похоронено. Последнее слово заставляет тебя почувствовать себя неуютно.", 's16', 'say7406') \
    .with_responses() \
        .response("Я хотел бы, чтобы ты поискал для меня имя…", 'DDEATHON.D_s9', 'r', 'reply7407') \
        .response("Я хотел бы похоронить другое имя.", 'DDEATHON.D_s5', 'r', 'reply7408') \
        .response("Спасибо. Прощай.", EXIT, 'r', 'reply7409') \
    .done()