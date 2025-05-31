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
    gsm.set_location('mortuary5')
    renpy.exports.show("bg mortuary5")
    _show('eivene_img default', center_left_down)
def _dispose():
    _hide('eivene_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _s5_action(gsm):
    gsm.set_meet_eivene(True)
def _kill_eivene(gsm):
    gsm.set_dead_eivene(True)
###
def _r3474_action(gsm):
    gsm.update_journal('38205')
def _r3483_action(gsm):
    gsm.update_journal('38205')
def _r3412_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3413_condition(gsm):
    return gsm.get_in_party_morte()
def _r3414_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3415_condition(gsm):
    return gsm.get_in_party_morte()
def _r3422_action(gsm):
    gsm.set_meet_eivene(True)
def _r3424_condition(gsm):
    return gsm.get_has_embalm() \
           and gsm.get_has_needle()
def _r3424_action(gsm):
    gsm.set_eivene_delivery(True)
    gsm.update_journal('37701')
def _r3425_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3425_action(gsm):
    gsm.update_journal('37702')
def _r3426_condition(gsm):
    return gsm.get_in_party_morte()
def _r3426_action(gsm):
    gsm.update_journal('37702')
def _r3427_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3427_action(gsm):
    gsm.update_journal('37702')
def _r3428_condition(gsm):
    return gsm.get_in_party_morte()
def _r3428_action(gsm):
    gsm.update_journal('37702')
def _r3429_action(gsm):
    gsm.update_journal('37702')
    _dispose()
def _r3440_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3441_condition(gsm):
    return gsm.get_in_party_morte()
def _r3442_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3443_condition(gsm):
    return gsm.get_in_party_morte()
def _r3491_action(gsm):
    gsm.set_mortualy_alarmed(True)
    _dispose()
def _r3449_action(gsm):
    gsm.set_ravel_eivene(True)
    gsm.update_journal('38199')
def _r3452_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3453_condition(gsm):
    return gsm.get_in_party_morte()
def _r3456_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and gsm.get_has_keyem()
def _r3456_action(gsm):
    gsm.set_embalm_key_quest(2)
    gsm.set_has_keyem(True)
def _r3457_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and not gsm.get_has_keyem()
def _r3459_condition(gsm):
    return not gsm.get_42_Secret()
def _r3459_action(gsm):
    gsm.update_journal('61612')
def _r3463_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r4351_condition(gsm):
    return gsm.get_eivene_delivery()
def _r3469_condition(gsm):
    return gsm.get_has_embalm() \
           and gsm.get_has_needle()
def _r3469_action(gsm):
    gsm.set_eivene_delivery(True)
    gsm.update_journal('38202')
def _r3470_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and gsm.get_has_keyem()
def _r3470_action(gsm):
    gsm.set_embalm_key_quest(2)
    gsm.set_has_keyem(True)
def _r3497_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and not gsm.get_has_keyem()
def _r3494_condition(gsm):
    return not gsm.get_in_party_morte()
def _r3494_action(gsm):
    gsm.update_journal('38203')
def _r3495_condition(gsm):
    return gsm.get_in_party_morte()
def _r3495_action(gsm):
    gsm.update_journal('38203')
def _r3496_action(gsm):
    gsm.update_journal('38203')
    _dispose()
def _r3501_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and gsm.get_has_keyem()
def _r3501_action(gsm):
    gsm.set_embalm_key_quest(2)
    gsm.set_has_keyem(True)
def _r3502_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and not gsm.get_has_keyem()
def _r4354_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r4355_condition(gsm):
    return gsm.get_eivene_delivery()
def _r63478_condition(gsm):
    return not gsm.get_42_Secret()
def _r63478_action(gsm):
    gsm.set_42_Secret(True)
def _r63479_condition(gsm):
    return gsm.get_42_Secret()
def _r63482_condition(gsm):
    return not gsm.get_eivene_delivery()
def _r63481_condition(gsm):
    return gsm.get_eivene_delivery()
###

# DLG/DEIVENE.DLG
def dlg_deivene(manager):
    teller         = renpy.store.characters['teller']
    morte          = renpy.store.characters['morte']
    eivene         = renpy.store.characters['eivene']
    eivene_unknown = renpy.store.characters['eivene_unknown']
    gsm            = renpy.store.global_settings_manager
    EXIT           = -1

    # Starts DEIVENE.D_s0 DEIVENE.D_s15 DEIVENE.D_s25
    DialogStateBuilder().state('DEIVENE.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает.", 's0', 'say3404').with_action(lambda: _init(gsm)) \
            .line(teller, "Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.", 's0', 'say3404').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Приветствую.", 'DEIVENE.D_s1', 'r0', 'reply3406') \
            .response("Оставить ее в покое.", EXIT, 'r1', 'reply3407').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s1', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Женщина не отвечает… похоже, она слишком увлечена трупом, лежащим перед ней. Следя за ее работой, ты случайно обращаешь внимание на ее руки…", 's1', 'say3410') \
            .line(teller, "…ее пальцы похожи на когти. Она с легкостью погружает их, словно ножи, в грудь трупа, доставая органы.", 's1', 'say3410') \
        .with_responses() \
            .response("Приветствую, говорю.", 'DEIVENE.D_s2', 'r2', 'reply3412').with_condition(lambda: _r3412_condition(gsm)) \
            .response("Приветствую, говорю.", 'DEIVENE.D_s3', 'r3', 'reply3413').with_condition(lambda: _r3413_condition(gsm)) \
            .response("Что с твоими руками?", 'DEIVENE.D_s2', 'r4', 'reply3414').with_condition(lambda: _r3414_condition(gsm)) \
            .response("Что с твоими руками?", 'DEIVENE.D_s19', 'r5', 'reply3415').with_condition(lambda: _r3415_condition(gsm)) \
            .response("Оставить ее в покое.", EXIT, 'r6', 'reply3416').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s2', '# from 1.0 1.2') \
        .with_npc_lines() \
            .line(teller, "Женщина не отвечает.", 's2', 'say3417') \
        .with_responses() \
            .response("Прикоснуться к женщине, привлечь ее внимание.", 'DEIVENE.D_s4', 'r7', 'reply3418') \
            .response("Оставить ее в покое.", EXIT, 'r8', 'reply3419').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s3', '# from 1.1 // Check EXTENDS ~DMORTE~ : 55') \
        .with_npc_lines() \
            .line(teller, "Женщина не отвечает.", 's3', 'say3420') \
            .line(morte, "Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?", 's55', 'say3473') \
        .with_responses() \
            .response("Что не так с ее руками?", 'DMORTE.D_s56', 'r169', 'reply3474').with_action(lambda: _r3474_action(gsm)) \
            .response("Прикоснуться к женщине, привлечь ее внимание.", 'DEIVENE.D_s4', 'r170', 'reply3475') \
            .response("Оставить ее в покое.", EXIT, 'r171', 'reply3476').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s56', '# from 55.0 // Check EXTENDS ~DEIVENE~ : 4')\
        .with_npc_lines() \
            .line(morte, "Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом.", 's56', 'say3477') \
            .line(morte, "Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.", 's56', 'say3477') \
        .with_responses() \
            .response("Прикоснуться к женщине, привлечь ее внимание.", 'DEIVENE.D_s4', 'r172', 'reply3478') \
            .response("Оставить ее в покое.", EXIT, 'r173', 'reply3479').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s4', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Женщина вздрагивает и круто разворачивается к тебе… у нее тусклые желтые глаза с маленькими оранжевыми точками вместо зрачков.", 's4', 'say3421') \
            .line(teller, "При виде тебя ее удивление сменяется раздраженностью, она хмуро смотрит на тебя.", 's4', 'say3421') \
        .with_responses() \
            .response("Э… Приветствую.", 'DEIVENE.D_s5', 'r10', 'reply3422').with_action(lambda: _r3422_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s5', '# from 4.0') \
        .with_npc_lines() \
            .line(teller, "Кажется, она тебя даже не слышала. Щурясь, она наклоняется вперед, как будто не может разглядеть тебя… что бы ни случилось с ее глазами, но ее вид с близкого расстояния вселяет страх.", 's5', 'say3423') \
            .line(eivene_unknown, "Ты.", 's5', 'say3423') \
            .line(teller, "Она соединяет когти вместе, затем делает странное движение рукой.", 's5', 'say3423') \
            .line(eivene, "Найди НИТКУ и БАЛЬЗАМ, принеси СЮДА, к Эи-Вейн. Пшел — пшел — пшел.", 's5', 'say3423').with_action(lambda: _s5_action(gsm)) \
        .with_responses() \
            .response("Дать ей нитку и банку с бальзамирующей жидкостью.", 'DEIVENE.D_s7', 'r11', 'reply3424').with_condition(lambda: _r3424_condition(gsm)).with_action(lambda: _r3424_action(gsm)) \
            .response("Сперва ответь на пару вопросов…", 'DEIVENE.D_s6', 'r12', 'reply3425').with_condition(lambda: _r3425_condition(gsm)).with_action(lambda: _r3425_action(gsm)) \
            .response("Сперва ответь на пару вопросов…", 'DEIVENE.D_s20', 'r13', 'reply3426').with_condition(lambda: _r3426_condition(gsm)).with_action(lambda: _r3426_action(gsm)) \
            .response("Что с твоими руками?", 'DEIVENE.D_s6', 'r14', 'reply3427').with_condition(lambda: _r3427_condition(gsm)).with_action(lambda: _r3427_action(gsm)) \
            .response("Что с твоими руками?", 'DEIVENE.D_s20', 'r15', 'reply3428').with_condition(lambda: _r3428_condition(gsm)).with_action(lambda: _r3428_action(gsm)) \
            .response("Уйти.", EXIT, 'r16', 'reply3429').with_action(lambda: _r3429_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s6', '# from 5.1 5.3') \
        .with_npc_lines() \
            .line(teller, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's6', 'say3430') \
        .with_responses() \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r17', 'reply3431') \
            .response("Уйти.", EXIT, 'r18', 'reply3432').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s7', '# from 5.0 17.0') \
        .with_npc_lines() \
            .line(teller, "Не теряя ни минуты, Эи-Вейн выхватывает нитку из твоих рук и цепляет на один из своих когтей, а затем начинает зашивать трупу грудь.", 's7', 'say3433') \
            .line(teller, "Затем она берет бальзамирующую жидкость и начинает намазывать ею мертвеца.", 's7', 'say3433') \
        .with_responses() \
            .response("Подождать.", 'DEIVENE.D_s9', 'r19', 'reply3434') \
            .response("Уйти.", 'DEIVENE.D_s8', 'r20', 'reply3435') \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s8', '# from 7.1') \
        .with_npc_lines() \
            .line(teller, "Ты собираешься уйти...", 's8', 'say3436') \
            .line(eivene, "Стой. Ты следующий.", 's8', 'say3436') \
        .with_responses() \
            .response("Подождать.", 'DEIVENE.D_s9', 'r21', 'reply3437') \
            .response("Уйти. Быстро.", EXIT, 'r22', 'reply3438').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s9', '# from 7.0 8.0 // Check EXTENDS ~DMORTE~ : 59') \
        .with_npc_lines() \
            .line(teller, "Спустя несколько минут она заканчивает. Щелкнув когтями, она поворачивается к тебе.", 's9', 'say3439') \
            .line(teller, "К твоему удивлению, она протягивает руку и проводит когтями по твоим рукам и груди.", 's9', 'say3439') \
        .with_responses() \
            .response("Э, не то, чтобы я не польщен, но…", 'DEIVENE.D_s11', 'r23', 'reply3440').with_condition(lambda: _r3440_condition(gsm)) \
            .response("Э, не то, чтобы я не польщен, но…", 'DMORTE.D_s59', 'r24', 'reply3441').with_condition(lambda: _r3441_condition(gsm)) \
            .response("Продолжать строить из себя зомби.", 'DEIVENE.D_s11', 'r25', 'reply3442').with_condition(lambda: _r3442_condition(gsm)) \
            .response("Продолжать строить из себя зомби.", 'DMORTE.D_s59', 'r26', 'reply3443').with_condition(lambda: _r3443_condition(gsm)) \
            .response("Оттолкнуть ее, уйти.", 'DEIVENE.D_s10', 'r27', 'reply3444') \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s10', '# from 9.4 12.1') \
        .with_npc_lines() \
            .line(teller, "Она потрясена тем, что ты ее оттолкнул.", 's10', 'say3445') \
            .line(eivene, "Зомфи? Ты не зомфи!", 's10', 'say3445') \
            .line(teller, "Она отступает на шаг, и ты не успеваешь среагировать, как она трижды хлопает в ладони. В ответ повсюду Морге раздается звон огромного колокола.", 's10', 'say3445') \
        .with_responses() \
            .response("Ну хорошо…", EXIT, 'r28', 'reply3491').with_action(lambda: _r3491_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s11', '# from 9.0 9.2') \
        .with_npc_lines() \
            .line(teller, "Когда она касается твоих рук и тела, ты вдруг понимаешь, что она изучает твои шрамы. Она отводит свои когти, дважды ими щелкает, затем наклоняется вперед и осматривает татуировки на теле.", 's11', 'say3446') \
            .line(eivene, "Хм-м. Кто это так тебя изрисовал? Никакого уважения к зомфи. Зомфи — не картина.", 's11', 'say3446') \
            .line(teller, "Она принюхивается, затем похлопывает по твоим шрамам.", 's11', 'say3446') \
            .line(eivene, "Этот в плохой форме, много шрамов, не законсервирован.", 's11', 'say3446') \
        .with_responses() \
            .response("Подождать.", 'DEIVENE.D_s12', 'r29', 'reply3447') \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s12', '# from 11.0') \
        .with_npc_lines() \
            .line(teller, "Неожиданно ее когти зацепляют нитку, которую ты принес, а другой рукой она молниеносно пронзает твою кожу в месте шрама.", 's12', 'say3448') \
            .line(teller, "Не больнее, чем укол булавки. Кажется, она собирается тебя заштопать.", 's12', 'say3448') \
        .with_responses() \
            .response("Позволить ей работать.", 'DEIVENE.D_s13', 'r30', 'reply3449').with_action(lambda: _r3449_action(gsm)) \
            .response("Оттолкнуть ее, уйти.", 'DEIVENE.D_s10', 'r31', 'reply3450') \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s13', '# from 12.0 // Check EXTENDS ~DMORTE~ : 60') \
        .with_npc_lines() \
            .line(teller, "Эи-Вейн начинает зашивать твои шрамы; ощущения при этом на удивление безболезненны.  Закончив, она обнюхивает тебя, хмурится, затем окунает пальцы в бальзамирующую жидкость.", 's13', 'say3451') \
            .line(teller, "В течении нескольких минут она наносит жидкость на твое тело… довольно странно, но ты чувствуешь себя *лучше*.", 's13', 'say3451') \
        .with_responses() \
            .response("Позволить ей работать.", 'DEIVENE.D_s14', 'r32', 'reply3452').with_condition(lambda: _r3452_condition(gsm)) \
            .response("Позволить ей работать.", 'DMORTE.D_s60', 'r33', 'reply3453').with_condition(lambda: _r3453_condition(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s14', '# from 13.0') \
        .with_npc_lines() \
            .line(teller, "Эи-Вейн в последний раз прикасается к твоему телу, еще раз фыркает, кивает, а затем отмахивается своими когтями.", 's14', 'say3454') \
            .line(eivene, "Готово. Пшел-пшел.", 's14', 'say3454') \
        .with_responses() \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r34', 'reply3456').with_condition(lambda: _r3456_condition(gsm)).with_action(lambda: _r3456_action(gsm)) \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r35', 'reply3457').with_condition(lambda: _r3457_condition(gsm)) \
            .response("Уйти.", EXIT, 'r36', 'reply4350').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s15', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.", 's15', 'say3458') \
        .with_responses() \
            .response("Наблюдать за ней, изучая движения ее рук.", 'DEIVENE.D_s16', 'r37', 'reply3459').with_condition(lambda: _r3459_condition(gsm)).with_action(lambda: _r3459_action(gsm)) \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r38', 'reply3463').with_condition(lambda: _r3463_condition(gsm)) \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r39', 'reply4351').with_condition(lambda: _r4351_condition(gsm)) \
            .response("Уйти.", EXIT, 'r40', 'reply4352').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s16', '# from 15.0') \
        .with_npc_lines() \
            .line(teller, "Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…", 's16', 'say3464') \
            .line(teller, "…ты стоишь перед свежеубитым телом; предсмертная судорога оставила издевательскую улыбку на его лице. К черепу пришит номер 42.", 's26', 'say63477') \
            .line(teller, "Ты только что зашил тело зомби, лежащего на плите. Ты кое-что оставил внутри, что-то, что может пригодиться в случае, если ты снова вернешься сюда…", 's26', 'say63477') \
        .with_responses() \
            .response("Эхо: Храни это, пока я не вернусь.", 'DEIVENE.D_s27', 'r60', 'reply63478').with_condition(lambda: _r63478_condition(gsm)).with_action(lambda: _r63478_action(gsm)) \
            .response("Эхо: Храни это, пока я не вернусь.", 'DEIVENE.D_s27', 'r61', 'reply63479').with_condition(lambda: _r63479_condition(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s27', '# from 26.0 26.1') \
        .with_npc_lines() \
            .line(teller, "В памяти эхом отозвался твой голос, странный и пустой. Ты скрещиваешь руки перед собой, и, к твоему удивлению, труп повторяет твое движение.", 's27', 'say63480') \
            .line(teller, "Секунду спустя его руки падают по швам и видение меркнет… ты снова наблюдаешь, как руки Эи-Вейн зашивают тело.", 's27', 'say63480') \
        .with_responses() \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r62', 'reply63482').with_condition(lambda: _r63482_condition(gsm)) \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r63', 'reply63481').with_condition(lambda: _r63481_condition(gsm)) \
            .response("Уйти.", EXIT, 'r64', 'reply63483').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s17', '# from 6.0 15.1 25.0 27.0') \
        .with_npc_lines() \
            .line(teller, "Заметив тебя, она поворачивается, а затем хмурится.", 's17', 'say3468') \
            .line(eivene, "Тупые зомфи.", 's17', 'say3468') \
            .line(teller, "Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.", 's17', 'say3468') \
            .line(eivene, "Найди нитку и бальзам, принеси сюда, к Эи-Вейн. Пшел-пшел-пшел.", 's17', 'say3468') \
        .with_responses() \
            .response("Дать ей нитку и банку с бальзамирующей жидкостью.", 'DEIVENE.D_s7', 'r42', 'reply3469').with_condition(lambda: _r3469_condition(gsm)).with_action(lambda: _r3469_action(gsm)) \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r43', 'reply3470').with_condition(lambda: _r3470_condition(gsm)).with_action(lambda: _r3470_action(gsm)) \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r44', 'reply3497').with_condition(lambda: _r3497_condition(gsm)) \
            .response("Уйти.", EXIT, 'r45', 'reply4357').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s18', '# from 14.0 17.1 22.0') \
        .with_npc_lines() \
            .line(teller, "Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает.", 's18', 'say3471') \
            .line(teller, "Ее рука скрывается в одежде, затем появляется вместе с ключом, висящим на ее угрожающе-остром когте. Она кладет его тебе на ладонь.", 's18', 'say3471') \
            .line(eivene, "Принеси потом обратно. Пшел-пшел.", 's18', 'say3471') \
        .with_responses() \
            .response("Что с твоими руками?", 'DEIVENE.D_s23', 'r46', 'reply3494').with_condition(lambda: _r3494_condition(gsm)).with_action(lambda: _r3494_action(gsm)) \
            .response("Что с твоими руками?", 'DEIVENE.D_s21', 'r47', 'reply3495').with_condition(lambda: _r3495_condition(gsm)).with_action(lambda: _r3495_action(gsm)) \
            .response("Уйти.", EXIT, 'r48', 'reply3496').with_action(lambda: _r3496_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s19', '# from 1.3 // Check EXTENDS ~DMORTE~ : 56') \
        .with_npc_lines() \
            .line(teller, "Женщина не отвечает.", 's19', 'say3472') \
        .with_responses() \
            .response("(Обернуться к Морту)", 'DMORTE.D_s56', 'r169', 'reply3474').with_action(lambda: _r3474_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s20', '# from 5.2 5.4 // Check EXTENDS ~DMORTE~ : 57') \
        .with_npc_lines() \
            .line(teller, "Она отворачивается… непохоже, чтобы она тебя услышала.", 's20', 'say3485') \
            .line(morte, "Думаю, эта трухлявая цыпочка немного тугая на ухо, шеф. Давай просто свалим отсюда, а?", 's57', 'say3480') \
        .with_responses() \
            .response("Что не так с ее руками?", 'DMORTE.D_s58', 'r174', 'reply3483').with_action(lambda: _r3483_action(gsm)) \
            .response("Уйти.", EXIT, 'r175', 'reply3484').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s21', '# from 18.1 // Check EXTENDS ~DMORTE~ : 58') \
        .with_npc_lines() \
            .line(teller, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's21', 'say3486') \
        .with_responses() \
            .response("(Обернуться к Морту)", 'DMORTE.D_s56', 'r169', 'reply3474').with_action(lambda: _r3474_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s22', '# from 15.2 25.1 27.1') \
        .with_npc_lines() \
            .line(teller, "Заметив тебя, она поворачивается, а затем хмурится.", 's22', 'say3493') \
            .line(eivene, "Тупые зомфи.", 's22', 'say3493') \
            .line(teller, "Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.", 's22', 'say3493') \
            .line(eivene, "Ты готов. Все зашито. Пшел-пшел-пшел.", 's22', 'say3493') \
        .with_responses() \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s18', 'r52', 'reply3501').with_condition(lambda: _r3501_condition(gsm)).with_action(lambda: _r3501_action(gsm)) \
            .response("Минуточку. Жестом ты показываешь, как открываешь что-то ключом. Мне нужен ключ от бальзамационной. У тебя он есть?", 'DEIVENE.D_s24', 'r53', 'reply3502').with_condition(lambda: _r3502_condition(gsm)) \
            .response("Уйти.", EXIT, 'r54', 'reply4358').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s23', '# from 18.0') \
        .with_npc_lines() \
            .line(teller, "Она отворачивается… непохоже, чтобы она тебя услышала. Должно быть, ее слух не лучше зрения.", 's23', 'say3498') \
        .with_responses() \
            .response("Уйти.", EXIT, 'r55', 'reply3499').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s24', '# from 14.1 17.2 22.1') \
        .with_npc_lines() \
            .line(teller, "Она наклоняется вперед, присматриваясь к твоему жесту, затем фыркает. Ее рука скрывается в одежде, что-то ищет, затем она пожимает плечами. Ключа нет. Она делает отгоняющее движение.", 's24', 'say4200') \
            .line(eivene, "Пшел-пшел-пшел.", 's24', 'say4200') \
        .with_responses() \
            .response("Уйти.", EXIT, 'r56', 'reply4201').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s25', '# from -') \
        .with_npc_lines() \
            .line(teller, "Некоторое время ты наблюдаешь за ней; под ритм движения ее рук в твоей памяти всплывает два эпизода. В одном из них ты играешь на каком-то струнном инструменте, похожим на арфу.", 's25', 'say4353') \
            .line(teller, "В другом кто-то ворует чей-то кошелек… к твоему удивлению, это воспоминание внезапно толкает тебя на осмотр карманов Эи-Вейн.", 's25', 'say4353') \
        .with_responses() \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s17', 'r57', 'reply4354').with_condition(lambda: _r4354_condition(gsm)) \
            .response("Коснуться ее плеча, привлечь ее внимание.", 'DEIVENE.D_s22', 'r58', 'reply4355').with_condition(lambda: _r4355_condition(gsm)) \
            .response("Уйти.", EXIT, 'r59', 'reply4356').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s58', '# from 57.0')\
        .with_npc_lines() \
            .line(morte, "Э… она из тифлингов, шеф. В их жилах течет лихая кровь нечисти. Кто-то из предков спутался с каким-то нечистым духом.", 's58', 'say3481') \
            .line(morte, "Из-за этого некоторые из них немного тронутые… и обычно выглядят они соответствующе.", 's58', 'say3481') \
        .with_responses() \
            .response("Уйти.", EXIT, 'r176', 'reply3482').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s59', '# from - // Check EXTENDS ~DEIVENE~ : 10')\
        .with_npc_lines() \
            .line(morte, "Похоже, у тебя новая подруга, шеф. Может, вас оставить наедине на часок, или?..", 's59', 'say3487') \
        .with_responses() \
            .response("Замолкни, Морт.", 'DEIVENE.D_s11', 'r177', 'reply3488') \
            .response("Продолжать строить из себя зомби.", 'DEIVENE.D_s11', 'r178', 'reply3489') \
            .response("Оттолкнуть женщину.", 'DEIVENE.D_s10', 'r179', 'reply3490') \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s60', '# from - // Check EXTENDS ~DEIVENE~ : 14')\
        .with_npc_lines() \
            .line(morte, "Это второй случай в моей жизни, когда я счастлив, что у меня нет носа.", 's60', 'say3492') \
        .with_responses() \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s99999999_k1', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой хрупкая девушка с бледным лицом. Из-за впалой кожи на щеках и шее кажется, будто она голодает.", 's0', 'say3404').with_action(lambda: _init(gsm)) \
            .line(teller, "Судя по всему, она увлечена обследованием тела, лежащим перед ней, тыкая по телу пальцем.", 's0', 'say3404') \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_eivene(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DEIVENE.D_s99999999_k2', '# from -') \
        .with_npc_lines() \
            .line(teller, "Перед тобой Эи-Вейн. Она все еще потрошит труп своими когтями. Ритм движений когтей что-то тебе напоминает, но ты не можешь вспомнить что.", 's15', 'say3458') \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_eivene(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
