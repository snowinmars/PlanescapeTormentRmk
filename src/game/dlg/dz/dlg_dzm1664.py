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
    gsm.set_location('mortuary4')
    renpy.exports.show("bg mortuary4")
    _show('dzm1664_img default', center_right_down)
    gsm.set_meet_dzm1664(True)
def _dispose():
    _hide('dzm1664_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm1664(gsm):
    gsm.set_dead_dzm1664(True)
###
def _r47003_condition(gsm):
    return not gsm.get_has_dzm1664_page()
def _r47004_condition(gsm):
    return gsm.get_has_dzm1664_page()
def _r47005_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r47006_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r47014_action(gsm):
    gsm.set_has_dzm1664_page(True)
###

# DLG/DZM1664.DLG
def dlg_dzm1664(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm1664       = renpy.store.characters['dzm1664']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    DialogStateBuilder().state('DZM1664.D_s0', '# from 5.0') \
        .with_npc_lines() \
            .line(teller, "Этот громадный труп тихо стоит в углу комнаты, лицом к стене. Похоже, раньше это был крупный мужчина в расцвете лет и, судя по состоянию тела, умер он совсем недавно.", 's0', 'say47002').with_action(lambda: _init(gsm)) \
            .line(teller, "На лбу виден недавно вышитый номер «1664». Кажется, труп служит в качестве библиотекаря: в руках он несет огромную стопку книг.", 's0', 'say47002') \
        .with_responses() \
            .response("Осмотреть книги.", 'DZM1664.D_s3', 'r0', 'reply47003').with_condition(lambda: _r47003_condition(gsm)) \
            .response("Снова осмотреть книги.", 'DZM1664.D_s6', 'r1', 'reply47004').with_condition(lambda: _r47004_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1664.D_s1', 'r2', 'reply47005').with_condition(lambda: _r47005_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1664.D_s2', 'r3', 'reply47006').with_condition(lambda: _r47006_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply47007').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply47008').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s1', '# from 0.2 6.0') \
        .with_npc_lines() \
            .line(teller, "Зомби безучастно пялится в стену.", 's1', 'say47009') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply47010').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп даже не шевелится. Несмотря на недавнюю смерть, похоже, что он не сможет ответить на твои вопросы.", 's2', 'say47011') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply47012').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s3', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Тем не менее, просматривая их, ты обнаруживаешь вырванную страницу между двумя книгами.", 's3', 'say47013') \
            .line(teller, "Неожиданно у тебя возникает ощущение, что кто-то поместил ее сюда, чтобы спрятать.", 's3', 'say47013') \
        .with_responses() \
            .response("Взять страницу.", 'DZM1664.D_s4', 'r8', 'reply47014').with_action(lambda: _r47014_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Кажется, эта страница не из бухгалтерских книг… похоже, она из какого-то регистрационного журнала. Корешок ровный, как будто страницу срезали ножом, и ты подозреваешь, что ее удалили специально.", 's4', 'say47015') \
        .with_responses() \
            .response("Прочитать ее.", 'DZM1664.D_s5', 'r9', 'reply47016') \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s5', '# from 4.0') \
        .with_npc_lines() \
            .line(teller, "Ты бегло осматриваешь страницу… это список тел, доставленных в Морг и зарегистрированных в Приемной комнате. Все записи принадлежат недавно прибывшим телам.", 's5', 'say47017') \
        .with_responses() \
            .response("Снова осмотреть зомби.", 'DZM1664.D_s0', 'r10', 'reply47018') \
            .response("Взять страницу с собой и уйти.", EXIT, 'r11', 'reply47019').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s6', '# from 0.1') \
        .with_npc_lines() \
            .line(teller, "Похоже, это старые бухгалтерские книги Морга, не представляющие никакого интереса. Ты снова просматриваешь тексты, но больше ничего не находишь.", 's6', 'say47021') \
        .with_responses() \
            .response("И как это тебя угораздило стать библиотекарем? Другие места были заняты?", 'DZM1664.D_s1', 'r12', 'reply47022') \
            .response("Оставить зомби в покое.", EXIT, 'r13', 'reply47023').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Этот громадный труп тихо стоит в углу комнаты, лицом к стене. Похоже, раньше это был крупный мужчина в расцвете лет и, судя по состоянию тела, умер он совсем недавно.", 's0', 'say47002').with_action(lambda: _init(gsm)) \
            .line(teller, "На лбу виден недавно вышитый номер «1664». Кажется, труп служит в качестве библиотекаря: в руках он несет огромную стопку книг.", 's0', 'say47002') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить зомби.", 'DZM1664.D_s99999999_k_', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DZM1664.D_s99999999_k_', '# from -') \
        .with_npc_lines() \
            .line(teller, "Я ставлю ему подножнку. Книги рассыпаются по всей комнате. Труп некоторое время смотрит на них, а потом переводит взгляд на меня.", '-', '-') \
            .line(teller, "Пустой взгляд: он не делает попытку собрать книги. В его взгляде нет ни жизни, ни разума. Я оставляю его тело рядом с книгами.", '-', '-').with_action(lambda: _kill_dzm1664(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)