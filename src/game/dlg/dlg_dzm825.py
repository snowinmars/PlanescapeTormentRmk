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
    gsm.set_location('morgue1')
    renpy.exports.show("bg mourge1")
    _show('dzm825_img default', center_right_down)
def _dispose():
    _hide('dzm825_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r24565_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key() \
    and gsm.get_in_party_morte()
def _r24568_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key() \
    and not gsm.get_in_party_morte()
def _r24569_condition(gsm):
    return not gsm.get_mortuary_walkthrough()
def _r24570_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24573_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24574_condition(gsm):
    return not gsm.get_mortuary_walkthrough() \
    and not gsm.get_has_intro_key()
def _r42312_condition(gsm):
    return gsm.get_in_party_morte()
def _r42313_condition(gsm):
    return not gsm.get_in_party_morte()
###

# DLG/DZM825.DLG
def dlg_dzm825(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm825        = renpy.store.characters['dzm825']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM825.D_s0
    DialogStateBuilder().state('DZM825.D_s0', '# from - // # Manually checked EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».", 's0', 'say24564').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Я ищу ключ… быть может, он у тебя?", 'DMORTE1.D_s31', 'r0', 'reply24565').with_condition(lambda: _r24565_condition(gsm)) \
            .response("Я ищу ключ… быть может, он у тебя?", 'DZM825.D_s1', 'r1', 'reply24568').with_condition(lambda: _r24568_condition(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM825.D_s1', 'r2', 'reply24569').with_condition(lambda: _r24569_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM825.D_s1', 'r3', 'reply24570').with_condition(lambda: _r24570_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM825.D_s2', 'r4', 'reply24573').with_condition(lambda: _r24573_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM825.D_s3', 'r5', 'reply24574').with_condition(lambda: _r24574_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42308').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply42309').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM825.D_s1', '# from 0.1 0.2 0.3 3.1') \
        .with_npc_lines() \
            .line(teller, "Труп уставился в землю и не отвечает.", 's1', 'say24566') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM825.D_s2', 'r4', 'reply24573').with_condition(lambda: _r24573_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM825.D_s3', 'r5', 'reply24574').with_condition(lambda: _r24574_condition(gsm)) \
            .response("Тогда неважно. Прощай.", EXIT, 'r8', 'reply24567').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply42310').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM825.D_s2', '# from 0.4') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24571') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM825.D_s1', 'r3', 'reply24570').with_condition(lambda: _r24570_condition(gsm)) \
            .response("Осмотреть труп, проверить, есть ли у него ключ.", 'DZM825.D_s3', 'r5', 'reply24574').with_condition(lambda: _r24574_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply42308').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r10', 'reply24572').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM825.D_s3', '# from 0.5 // # Manually checked EXTENDS ~DMORTE1~ : 31') \
        .with_npc_lines() \
            .line(teller, "У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны.", 's3', 'say42311') \
        .with_responses() \
            .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DMORTE1.D_s31', 'r11', 'reply42312').with_condition(lambda: _r42312_condition(gsm)) \
            .response("Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?", 'DZM825.D_s1', 'r12', 'reply42313').with_condition(lambda: _r42313_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r13', 'reply42314').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r14', 'reply42315').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE1.D_s31', '# from -') \
        .with_npc_lines() \
            .line(morte, "Э, шеф… они не слышат тебя, понятно? Они мертвы.", 's31', 'say42298') \
        .with_responses() \
            .response("Но ты ведь тоже мертв. И разговариваешь со мной.", 'DMORTE1.D_s32', 'r41', 'reply42299') \
        .push(manager)

    DialogStateBuilder().state('DMORTE1.D_s32', '# from 31.0') \
        .with_npc_lines() \
            .line(morte, "Ага, но *я* особенный. Смерть не смогла убить мою жажду к жизни. А здешние трупы…", 's32', 'say42300') \
            .line(teller, "Морт обводит комнату взглядом.", 's32', 'say42300') \
            .line(morte, "Они и при жизни из себя ничего не представляли.", 's32', 'say42300') \
        .with_responses() \
            .response("Понятно…", 'DMORTE1.D_s33', 'r42', 'reply42301') \
        .push(manager)

    DialogStateBuilder().state('DMORTE1.D_s33', '# from 32.0') \
        .with_npc_lines() \
            .line(morte, "Слушай шеф… Наблюдение за тем, как ты пытаешься поболтать с этими трупами, не способствует укреплению моей морали.", 's33', 'say42302') \
            .line(morte, "Давай оставим разговоры с мертвецами сумасшедшим, ладно?", 's33', 'say42302') \
        .with_responses() \
            .response("Хорошо. Идем.", EXIT, 'r43', 'reply42303').with_action(lambda: _dispose()) \
        .push(manager)
