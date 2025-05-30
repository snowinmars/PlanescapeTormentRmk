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
    renpy.exports.show("bg mortuary3")
    _show('dzm1201_img default', center_right_down)
def _dispose():
    _hide('dzm1201_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm1201(gsm):
    gsm.set_dead_dzm1201(True)
###
def _r34954_condition(gsm):
    return not gsm.get_has_1201_note()
def _r34957_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r34958_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r34956_condition(gsm):
    return gsm.get_has_scalpel()
def _r34956_action(gsm):
    gsm.set_has_1201_note(True)
def _r45122_condition(gsm):
    return not gsm.get_has_scalpel()
def _r45129_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r45129_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45130_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45131_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45132_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM1201.DLG
def dlg_dzm1201(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm1201       = renpy.store.characters['dzm1201']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    DialogStateBuilder() \
    .state('DZM1201.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти.", 's0', 'say34953').with_action(lambda: _init(gsm)) \
            .line(teller, "Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.", 's0', 'say34953') \
        .with_responses() \
            .response("Попробовать вытащить записку.", 'DZM1201.D_s1', 'r0', 'reply34954').with_condition(lambda: _r34954_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1201.D_s3', 'r1', 'reply34957').with_condition(lambda: _r34957_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1201.D_s4', 'r2', 'reply34958').with_condition(lambda: _r34958_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r3', 'reply34959').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r4', 'reply34962').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1201.D_s1', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Записка во рту зомби заляпана гноем. Если ты попытаешься вытащить бумагу сквозь стежки, она порвется на части.", 's1', 'say34955') \
            .line(teller, "Попытка вскрыть зомби уничтожит записку — тебе нужно найти деликатный способ удалить швы перед тем, как достать записку.", 's1', 'say34955') \
        .with_responses() \
            .response("Срезать швы скальпелем.", 'DZM1201.D_s2', 'r5', 'reply34956').with_condition(lambda: _r34956_condition(gsm)).with_action(lambda: _r34956_action(gsm)) \
            .response("Хм-м. Если бы у меня было что-нибудь, чтобы разрезать эти швы…", EXIT, 'r6', 'reply45122').with_condition(lambda: _r45122_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1201.D_s2', '# from 1.0') \
        .with_npc_lines() \
            .line(teller, "Ты ловко перерезаешь швы на рту зомби, и его челюсти раскрываются. Ты осторожно вынимаешь записку изо рта трупа…", 's2', 'say34960') \
            .line(teller, "…несмотря на состояние бумаги, записи все еще можно разобрать.", 's2', 'say34960') \
        .with_responses() \
            .response("Снова осмотреть труп.", 'DZM1201.D_s5', 'r7', 'reply34961') \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply45123').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1201.D_s3', '# from 0.1 5.0 5.1 5.2') \
        .with_npc_lines() \
            .line(teller, "Молочно-белые глаза трупа смотрят на тебя без выражения.", 's3', 'say45124') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply45125').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1201.D_s4', '# from 0.2 5.3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's4', 'say45126') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r10', 'reply45127').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1201.D_s5', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет. Его челюсть распахнута, из уголка рта течет струйка гноя.", 's5', 'say45128') \
        .with_responses() \
            .response("Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.", 'DZM1201.D_s3', 'r11', 'reply45129').with_condition(lambda: _r45129_condition(gsm)).with_action(lambda: _r45129_action(gsm)) \
            .response("Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.", 'DZM1201.D_s3', 'r12', 'reply45130').with_condition(lambda: _r45130_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1201.D_s3', 'r13', 'reply45131').with_condition(lambda: _r45131_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1201.D_s4', 'r14', 'reply45132').with_condition(lambda: _r45132_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r15', 'reply45133').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r16', 'reply45134').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1201.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет. Его челюсть распахнута, из уголка рта течет струйка гноя.", 's5', 'say45128') \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_dzm1201(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
