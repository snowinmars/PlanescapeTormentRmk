def _r3412_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3413_condition(gsm):
    return gsm.get_in_party_morte()
def _r3414_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3415_condition(gsm):
    return gsm.get_in_party_morte()
def _r3418_action(gsm):
    FaceObject(Protagonist)
def _r3422_action(gsm):
    gsm.set_meet_eivene(True)
def _r3424_condition(gsm):
    return gsm.get_has_embalm() return gsm.get_has_needle()
def _r3424_action(gsm):
    gsm.set_has_embalm(False) gsm.set_has_needle(False) gsm.set_eivene_delivery(True) gsm.inc_exp(250)    # '37701': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Оба предмета у меня уже были, так что я сразу же дал их ей. ~ '
def _r3425_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3425_action(gsm):
    gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
def _r3426_condition(gsm):
    return gsm.get_in_party_morte()
def _r3426_action(gsm):
    gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
def _r3427_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3427_action(gsm):
    gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
def _r3428_condition(gsm):
    return gsm.get_in_party_morte()
def _r3428_action(gsm):
    gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
def _r3429_action(gsm):
    gsm.update_journal('37702')    # '37702': ' ~В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат. ~ '
def _r3440_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3441_condition(gsm):
    return gsm.get_in_party_morte()
def _r3442_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3443_condition(gsm):
    return gsm.get_in_party_morte()
def _r3491_action(gsm):
    # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) gsm.set_mortualy_alarmed(True)
def _r3449_action(gsm):
    PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1) FullHeal(Protagonist) gsm.set_ravel_eivene(True) ~ gsm.update_journal('38199')    # '38199': ' ~После того, как я принес Эи-Вейн бальзамирующую жидкость и нитку, она зашила мои шрамы и нанесла бальзамирующую жидкость на мое тело. Довольно странно, но я чувствую себя... здоровее.~ '
def _r3452_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3453_condition(gsm):
    return gsm.get_in_party_morte()
def _r3456_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return gsm.get_has_keyem()
def _r3456_action(gsm):
    gsm.inc_exp(250)
def _r3457_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return not gsm.get_has_keyem()
def _r3459_condition(gsm):
    return not gsm.get_42_secret()
def _r3459_action(gsm):
    # ?.play_sound('SPTR_01') ~ gsm.update_journal('61612')    # '61612': ' ~Наблюдая за тем, как Эи-Вейн зашивает своими когтями тело умершего, я что-то вспомнил... Очень давно я делал точно такое же действие над телом, однако при этом я ничего не вынимал, а наоборот, что-то положил *внутрь* тела. Такое чувство, что я положил что-то, что смогу позже забрать. В воспоминании я скрестил свои руки на груди, и труп повторил мои движения... на его черепе был написан номер «42». ~ '
def _r3463_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r4351_condition(gsm):
    return gsm.get_eivene_delivery()
def _r3469_condition(gsm):
    return gsm.get_has_embalm() return gsm.get_has_needle()
def _r3469_action(gsm):
    gsm.set_has_embalm(False) gsm.set_has_needle(False) gsm.set_eivene_delivery(True) gsm.inc_exp(250)    # '38202': ' ~Я принес Эи-Вейн бальзамирующую жидкость и нитку. Не могу сказать, что она ужасно обрадовалась этому. ~ '
def _r3470_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return gsm.get_has_keyem()
def _r3470_action(gsm):
    gsm.inc_exp(250)
def _r3497_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return not gsm.get_has_keyem()
def _r3494_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3494_action(gsm):
    gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
def _r3495_condition(gsm):
    return gsm.get_in_party_morte()
def _r3495_action(gsm):
    gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
def _r3496_action(gsm):
    gsm.update_journal('38203')    # '38203': ' ~Я убедил Эи-Вейн дать мне ключ от бальзамационной. ~ '
def _r3501_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return gsm.get_has_keyem()
def _r3501_action(gsm):
    gsm.inc_exp(250)
def _r3502_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 return not gsm.get_has_keyem()
def _r4354_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r4355_condition(gsm):
    return gsm.get_eivene_delivery()
def _r63478_condition(gsm):
    return not gsm.get_42_secret()
def _r63478_action(gsm):
    gsm.inc_exp('Protagonist', 250)
def _r63479_condition(gsm):
    return gsm.get_42_secret()
def _r63482_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r63481_condition(gsm):
    return gsm.get_eivene_delivery()

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DEIVENE.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает. Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.", 's0', 'say3404') \
    .with_responses() \
        .response("Приветствую.", 'DEIVENE.D_s1', 'r', 'reply3406') \
        .response("Оставить ее в покое.", EXIT, 'r', 'reply3407').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s1', '# from 0.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки… ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.", 's1', 'say3410') \
    .with_responses() \
        .response("Приветствую, говорю.", 'DEIVENE.D_s2', 'r', 'reply3412').with_condition(lambda: _r3412_condition(gsm)) \
        .response("Приветствую, говорю.", 'DEIVENE.D_s3', 'r', 'reply3413').with_condition(lambda: _r3413_condition(gsm)) \
        .response("Что с твоими руками?", 'DEIVENE.D_s2', 'r', 'reply3414').with_condition(lambda: _r3414_condition(gsm)) \
        .response("Что с твоими руками?", 'DEIVENE.D_s19', 'r', 'reply3415').with_condition(lambda: _r3415_condition(gsm)) \
        .response("Оставить ее в покое.", EXIT, 'r', 'reply3416').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s2', '# from 1.0 1.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Женщина не отвечает.", 's2', 'say3417') \
    .with_responses() \
        .response("Прикоснуться к женщине, привлечь ее внимание.", 'DEIVENE.D_s4', 'r', 'reply3418').with_action(lambda: _r3418_action(gsm)) \
        .response("Оставить ее в покое.", EXIT, 'r', 'reply3419').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s3', '# from 1.1 // Check EXTENDS ~DMORTE~ : 55') \
    .with_npc_lines() \
        .line(SPEAKER, "Женщина не отвечает.", 's3', 'say3420') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s4', '# from 2.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков. При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.", 's4', 'say3421') \
    .with_responses() \
        .response("Э… Приветствую.", 'DEIVENE.D_s5', 'r', 'reply3422').with_action(lambda: _r3422_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s5', '# from 4.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх. Ты. Она соединяет когти вместе, затем делает странное движение рукой. Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн. Пшел — пшел — пшел.", 's5', 'say3423') \
    .with_responses() \
        .response("Дать ей нитку и банку с бальзамирующей жидкостью.", 'DEIVENE.D_s7', 'r', 'reply3424').with_condition(lambda: _r3424_condition(gsm)).with_action(lambda: _r3424_action(gsm)) \
        .response("Сперва ответь на пару вопросов…", 'DEIVENE.D_s6', 'r', 'reply3425').with_condition(lambda: _r3425_condition(gsm)).with_action(lambda: _r3425_action(gsm)) \
        .response("Сперва ответь на пару вопросов…", 'DEIVENE.D_s20', 'r', 'reply3426').with_condition(lambda: _r3426_condition(gsm)).with_action(lambda: _r3426_action(gsm)) \
        .response("Что с твоими руками?", 'DEIVENE.D_s6', 'r', 'reply3427').with_condition(lambda: _r3427_condition(gsm)).with_action(lambda: _r3427_action(gsm)) \
        .response("Что с твоими руками?", 'DEIVENE.D_s20', 'r', 'reply3428').with_condition(lambda: _r3428_condition(gsm)).with_action(lambda: _r3428_action(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply3429').with_action(lambda: _r3429_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s6', '# from 5.1 5.3') \
    .with_npc_lines() \
        .line(SPEAKER, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's6', 'say3430') \
    .with_responses() \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r', 'reply3431') \
        .response("Уйти.", EXIT, 'r', 'reply3432').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s7', '# from 5.0 17.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь. Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.", 's7', 'say3433') \
    .with_responses() \
        .response("Подождать.", 'DEIVENE.D_s9', 'r', 'reply3434') \
        .response("Уйти.", 'DEIVENE.D_s8', 'r', 'reply3435') \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s8', '# from 7.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Едва ты собираешься уйти, Эи-Вейн говорит: Стой. Ты следующий.", 's8', 'say3436') \
    .with_responses() \
        .response("Подождать.", 'DEIVENE.D_s9', 'r', 'reply3437') \
        .response("Уйти. Быстро.", EXIT, 'r', 'reply3438').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s9', '# from 7.0 8.0 // Check EXTENDS ~DMORTE~ : 59') \
    .with_npc_lines() \
        .line(SPEAKER, "Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе. К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.", 's9', 'say3439') \
    .with_responses() \
        .response("Э, не то, чтобы я не польщен, но…", 'DEIVENE.D_s11', 'r', 'reply3440').with_condition(lambda: _r3440_condition(gsm)) \
        .response("Э, не то, чтобы я не польщен, но…", EXIT, 'r', 'reply3441').with_condition(lambda: _r3441_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Продолжать строить из себя зомби.", 'DEIVENE.D_s11', 'r', 'reply3442').with_condition(lambda: _r3442_condition(gsm)) \
        .response("Продолжать строить из себя зомби.", EXIT, 'r', 'reply3443').with_condition(lambda: _r3443_condition(gsm)).with_action(lambda: _dispose()) \
        .response("Оттолкнуть ее, уйти.", 'DEIVENE.D_s10', 'r', 'reply3444') \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s10', '# from 9.4 12.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Она потрясена тем, что ты ее оттолкнул. Зомфи? Ты не зомфи! Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.", 's10', 'say3445') \
    .with_responses() \
        .response("Ну хорошо…", EXIT, 'r', 'reply3491').with_action(lambda: _r3491_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s11', '# from 9.0 9.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле. Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина. Она принюхивается, затем похлопывает по твоим шрамам. Этот в плохой форме, много шрамов, не законсервирован.", 's11', 'say3446') \
    .with_responses() \
        .response("Подождать.", 'DEIVENE.D_s12', 'r', 'reply3447') \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s12', '# from 11.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама. Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.", 's12', 'say3448') \
    .with_responses() \
        .response("Позволить ей работать.", 'DEIVENE.D_s13', 'r', 'reply3449').with_action(lambda: _r3449_action(gsm)) \
        .response("Оттолкнуть ее, уйти.", 'DEIVENE.D_s10', 'r', 'reply3450') \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s13', '# from 12.0 // Check EXTENDS ~DMORTE~ : 60') \
    .with_npc_lines() \
        .line(SPEAKER, "Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость. В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.", 's13', 'say3451') \
    .with_responses() \
        .response("Позволить ей работать.", 'DEIVENE.D_s14', 'r', 'reply3452').with_condition(lambda: _r3452_condition(gsm)) \
        .response("Позволить ей работать.", EXIT, 'r', 'reply3453').with_condition(lambda: _r3453_condition(gsm)).with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s14', '# from 13.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями. Готово. Пшел-пшел.", 's14', 'say3454') \
    .with_responses() \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r', 'reply3456').with_condition(lambda: _r3456_condition(gsm)).with_action(lambda: _r3456_action(gsm)) \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r', 'reply3457').with_condition(lambda: _r3457_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply4350').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s15', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.", 's15', 'say3458') \
    .with_responses() \
        .response("Наблюдать за ней, изучая движения ее рук.", 'DEIVENE.D_s16', 'r', 'reply3459').with_condition(lambda: _r3459_condition(gsm)).with_action(lambda: _r3459_action(gsm)) \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r', 'reply3463').with_condition(lambda: _r3463_condition(gsm)) \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r', 'reply4351').with_condition(lambda: _r4351_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply4352').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s16', '# from 15.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…", 's16', 'say3464') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s17', '# from 6.0 15.1 25.0 27.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел.", 's17', 'say3468') \
    .with_responses() \
        .response("Дать ей нитку и банку с бальзамирующей жидкостью.", 'DEIVENE.D_s7', 'r', 'reply3469').with_condition(lambda: _r3469_condition(gsm)).with_action(lambda: _r3469_action(gsm)) \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r', 'reply3470').with_condition(lambda: _r3470_condition(gsm)).with_action(lambda: _r3470_action(gsm)) \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r', 'reply3497').with_condition(lambda: _r3497_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply4357').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s18', '# from 14.0 17.1 22.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь. Принеси потом обратно. Пшел-пшел.", 's18', 'say3471') \
    .with_responses() \
        .response("Что с твоими руками?", 'DEIVENE.D_s23', 'r', 'reply3494').with_condition(lambda: _r3494_condition(gsm)).with_action(lambda: _r3494_action(gsm)) \
        .response("Что с твоими руками?", 'DEIVENE.D_s21', 'r', 'reply3495').with_condition(lambda: _r3495_condition(gsm)).with_action(lambda: _r3495_action(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply3496').with_action(lambda: _r3496_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s19', '# from 1.3 // Check EXTENDS ~DMORTE~ : 56') \
    .with_npc_lines() \
        .line(SPEAKER, "Женщина не отвечает.", 's19', 'say3472') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s20', '# from 5.2 5.4 // Check EXTENDS ~DMORTE~ : 57') \
    .with_npc_lines() \
        .line(SPEAKER, "Она отворачивается… непохоже, чтобы она тебя услышала.", 's20', 'say3485') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s21', '# from 18.1 // Check EXTENDS ~DMORTE~ : 58') \
    .with_npc_lines() \
        .line(SPEAKER, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's21', 'say3486') \
    .with_responses() \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s22', '# from 15.2 25.1 27.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Заметив тебя, она поворачивается, а затем хмурится. Тупые зомфи. Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. Ты готов. Все зашито. Пшел-пшел-пшел.", 's22', 'say3493') \
    .with_responses() \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r', 'reply3501').with_condition(lambda: _r3501_condition(gsm)).with_action(lambda: _r3501_action(gsm)) \
        .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r', 'reply3502').with_condition(lambda: _r3502_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply4358').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s23', '# from 18.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's23', 'say3498') \
    .with_responses() \
        .response("Уйти.", EXIT, 'r', 'reply3499').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s24', '# from 14.1 17.2 22.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами. Ключа нет. Она делает отгоняющее движение. Пшел-пшел-пшел.", 's24', 'say4200') \
    .with_responses() \
        .response("Уйти.", EXIT, 'r', 'reply4201').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s25', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу. В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.", 's25', 'say4353') \
    .with_responses() \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r', 'reply4354').with_condition(lambda: _r4354_condition(gsm)) \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r', 'reply4355').with_condition(lambda: _r4355_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply4356').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s26', '# from 16.0') \
    .with_npc_lines() \
        .line(SPEAKER, "…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице. К черепу пришит номер 42. Ты только что зашил тело зомби, лежащего на плите. Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…", 's26', 'say63477') \
    .with_responses() \
        .response("Эхо: Храни это, пока я не вернусь.", 'DEIVENE.D_s27', 'r', 'reply63478').with_condition(lambda: _r63478_condition(gsm)).with_action(lambda: _r63478_action(gsm)) \
        .response("Эхо: Храни это, пока я не вернусь.", 'DEIVENE.D_s27', 'r', 'reply63479').with_condition(lambda: _r63479_condition(gsm)) \
    .push(manager)

DialogStateBuilder().state('DEIVENE.D_s27', '# from 26.0 26.1') \
    .with_npc_lines() \
        .line(SPEAKER, "В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение. Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.", 's27', 'say63480') \
    .with_responses() \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r', 'reply63482').with_condition(lambda: _r63482_condition(gsm)) \
        .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r', 'reply63481').with_condition(lambda: _r63481_condition(gsm)) \
        .response("Уйти.", EXIT, 'r', 'reply63483').with_action(lambda: _dispose()) \
    .push(manager)