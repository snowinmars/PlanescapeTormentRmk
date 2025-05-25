import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    travel
)
from settings.settings_morgue import (
    pick_up_intro_key,
    ready_to_kill_dummies,
    kill_dummy,
    talk_dummy
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init():
    travel('morgue1')
    _show('dzm965_img default', center_right_down)
def _dispose():
    _hide('dzm965_img')
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
def _r34923_condition():
    return not changed_law_once('zombie_chaotic')
def _r34923_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45070_condition():
    return changed_law_once('zombie_chaotic')
def _r45071_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45072_condition():
    return current_morgue_settings()['can_speak_with_dead']
###

# DLG/DZM965.DLG
def dlg_dzm965():
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm965        = renpy.store.characters['dzm965']
    EXIT          = -1

    ######
    # Check EXTENDS ~DMORTE~ : 477
    ######
    # from -
    DialogStateBuilder('DZM965.D_s0') \
        .with_npc_lines() \
            .line(teller, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.", 's0', 'say34920') \
            .line(teller, "На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.", 's0', 'say34920') \
        .with_responses() \
            .response("(...)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .done()

    # from -
    DialogStateBuilder('DZM965.D_s1') \
        .with_npc_lines() \
            .line(teller, "Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.", 's1', 'say34922') \
            .line(teller, "На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.", 's1', 'say34922') \
        .with_responses() \
            .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r1', 'reply34923').with_condition(lambda: _r34923_condition()).with_action(lambda: _r34923_action()) \
            .response("Итак… почему ты ходишь вдоль треугольника?", 'DZM965.D_s2', 'r2', 'reply45070').with_condition(lambda: _r45070_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM965.D_s2', 'r3', 'reply45071').with_condition(lambda: _r45071_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM965.D_s3', 'r4', 'reply45072').with_condition(lambda: _r45072_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply45073').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply45074').with_action(lambda: _dispose()) \
        .done()

    # from 1.0 1.1 1.2
    DialogStateBuilder('DZM965.D_s2') \
        .with_npc_lines() \
            .line(teller, "Труп уставился на тебя невидящим взглядом.", 's2', 'say34927') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply34928').with_action(lambda: _dispose()) \
        .done()

    # from 1.3
    DialogStateBuilder('DZM965.D_s3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's3', 'say45069') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply45075').with_action(lambda: _dispose()) \
        .done()