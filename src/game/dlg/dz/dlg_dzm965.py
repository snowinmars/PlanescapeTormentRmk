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
    gsm.set_location('mortuary2')
    renpy.exports.show("bg mortuary2")
    gsm.set_meet_dzm965(True)
    _show('dzm965_img default', center_right_down)
def _dispose():
    _hide('dzm965_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm965(gsm):
    gsm.set_dead_dzm965(True)
###
def _r45093_action(gsm):
    gsm.update_journal('39477')
def _r45103_action(gsm):
    gsm.update_journal('39477')
def _r34923_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34923_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45070_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45071_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45072_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM965.DLG
def dlg_dzm965(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm965        = renpy.store.characters['dzm965']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM965.D_s0 DZM965.D_s1 DZM965.D_s99999999_k
    DialogStateBuilder() \
    .state('DZM965.D_s0', '# from - // # Manually checked EXTENDS ~DMORTE~ : 477') \
        .with_npc_lines() \
            .line(teller, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.", 's0', 'say34920').with_action(lambda: _init(gsm)) \
            .line(teller, "На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.", 's0', 'say34920') \
            .line(morte, "Ха. Кажется, кто-то забыл приказать этому бедолаге прекратить следовать правилу трех.", 's477', 'say45088') \
        .with_responses() \
            .response("О чем это ты?", 'DMORTE.D_s478', 'r1061', 'reply45089') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM965.D_s1', '# from -') \
        .with_npc_lines() \
            .line(teller, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.", 's1', 'say34922').with_action(lambda: _init(gsm)) \
            .line(teller, "На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.", 's1', 'say34922') \
        .with_responses() \
            .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r1', 'reply34923').with_condition(lambda: _r34923_condition(gsm)).with_action(lambda: _r34923_action(gsm)) \
            .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r2', 'reply45070').with_condition(lambda: _r45070_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM965.D_s2', 'r3', 'reply45071').with_condition(lambda: _r45071_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM965.D_s3', 'r4', 'reply45072').with_condition(lambda: _r45072_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply45073').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply45074').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM965.D_s2', '# from 1.0 1.1 1.2') \
        .with_npc_lines() \
            .line(teller, "Труп уставился на тебя невидящим взглядом.", 's2', 'say34927') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM965.D_s3', 'r4', 'reply45072').with_condition(lambda: _r45072_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply45073').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply34928').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM965.D_s3', '# from 1.3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say45069') \
        .with_responses() \
            .response("Почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r1', 'reply34923').with_condition(lambda: _r34923_condition(gsm)).with_action(lambda: _r34923_action(gsm)) \
            .response("Почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r2', 'reply45070').with_condition(lambda: _r45070_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM965.D_s2', 'r3', 'reply45071').with_condition(lambda: _r45071_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply45073').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply45075').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM965.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.", 's1', 'say34922').with_action(lambda: _init(gsm)) \
            .line(teller, "На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.", 's1', 'say34922') \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Пустые глаза поворачиваются к вам и несколько секунд недоумённо смотрят в ответ.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_dzm965(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s478', '# from 477.0')\
        .with_npc_lines() \
            .line(morte, "У этих трупов котелок уже почти не варит, так что они могут выполнять не больше одного задания одновременно…", 's478', 'say45091') \
            .line(morte, "Если приказать им делать что-то, то они будут это делать до тех пор, пока кто-нибудь их не остановит.", 's478', 'say45091') \
            .line(morte, "Этот бедолага, наверное, закончил свою работу, но сообщить об этом ему забыли.", 's478', 'say45091') \
        .with_responses() \
            .response("А кто отдает им приказы?", 'DMORTE.D_s481', 'r1062', 'reply45092') \
            .response("Ты что-то сказал про 'правило трех'. Что ты имел ввиду?", 'DMORTE.D_s479', 'r1063', 'reply45093').with_action(lambda: _r45093_action(gsm)) \
            .response("Ладно. Давай двигаться дальше.", EXIT, 'r1064', 'reply45094').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s479', '# from 478.1 481.0')\
        .with_npc_lines() \
            .line(morte, "А? Ну, правило трех — это один из пресловутых законов планов, согласно которому все на свете случается по трое…", 's479', 'say45095') \
            .line(morte, "…или состоит из трех частей… или что всегда есть выбор из трех вариантов, ну и так далее.", 's479', 'say45095') \
        .with_responses() \
            .response("Ты так говоришь, как будто не очень веришь в это.", 'DMORTE.D_s480', 'r1065', 'reply45096') \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s480', '# from 479.0 // Check EXTENDS ~DZM965~ : 1')\
        .with_npc_lines() \
            .line(morte, "По мне, так все это фигня. Если ты возьмешь с потолка число, любое число, и попытаешься к нему приделать великий смысл, то ты всегда найдешь кучу каких-нибудь совпадений.", 's480', 'say45098') \
        .with_responses() \
            .response("Понятно. До этого ты говорил о том, что кто-то отдал этому трупу приказ, а потом забыл его остановить. А кто отдает трупам приказы?", 'DMORTE.D_s481', 'r1066', 'reply45099') \
            .response("Понятно. Я хочу еще намного осмотреть этого зомби…", 'DZM965.D_s1', 'r1067', 'reply45100').with_action(lambda: _dispose()) \
            .response("Ладно. Давай двигаться дальше.", EXIT, 'r1068', 'reply45101').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s481', '# from 478.0 480.0 // Check EXTENDS ~DZM965~ : 1')\
        .with_npc_lines() \
            .line(morte, "Их выписал из книги мертвых либо один из здешних смотрителей, либо какой-то некромант.", 's481', 'say45102') \
            .line(morte, "Скорее всего, это один из смотрителей… в конце концов, это им нужна дешевая рабочая сила.", 's481', 'say45102') \
        .with_responses() \
            .response("Понятно. А что ты там говорил до этого… про 'правило трех'?", 'DMORTE.D_s479', 'r1069', 'reply45103').with_action(lambda: _r45103_action(gsm)) \
            .response("Понятно. Я хочу еще намного осмотреть этого зомби…", 'DZM965.D_s1', 'r1070', 'reply45104').with_action(lambda: _dispose()) \
            .response("Ладно. Давай двигаться дальше.", EXIT, 'r1071', 'reply45105').with_action(lambda: _dispose()) \
        .push(manager)