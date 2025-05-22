import renpy
from engine.dialog import (DialogStateBuilder)
from engine.settings import (
    pick_morgue_key,
    kick_morte,
    join_morte,
    change_good,
    change_good_morte
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

def dlg_dmorte_two():
    teller        = renpy.store.characters['teller']
    morte_unknown = renpy.store.characters['morte_unknown']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']

    DialogStateBuilder(0) \
        .add_npc_line(morte_unknown, "Тсссс... Небольшой совет, шеф: с этого момента я бы вел себя потише.", 's0') \
        .add_npc_line(morte_unknown, "Не нужно больше вписывать трупы в книгу мертвых без необходимости... особенно женские.", 's0') \
        .add_npc_line(morte_unknown, "К тому же, их убийство может заинтересовать здешних смотрителей.", 's0') \
        .add_response("Кажется, ты еще не говорил об этом... *кто* такие эти смотрители?", 1, 'r0') \
        .add_response("Эти трупы... откуда они все берутся?", 3, 'r1') \
        .add_response("Почему тебя так заботят женские тела?", _, 'r2') \
        .add_response("Ладно... Я... попробую это запомнить", _, 'r3') \
        .done()

    DialogStateBuilder(1) \
        .add_npc_line(morte_unknown, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица.", 's1') \
        .add_npc_line(morte_unknown, "Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть...", 's1') \
        .add_npc_line(morte_unknown, "и лучше раньше, чем позже.", 's1') \
        .add_response("Я запутался... какое тленным дело, если я сбегу?", 2, 'r4') \
        .done()

    DialogStateBuilder(2) \
        .add_npc_line(morte_unknown, "Ты что, вообще ничего не слушал?!", 's2') \
        .add_npc_line(morte_unknown, "Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже.", 's2') \
        .add_npc_line(morte_unknown, "Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's2') \
        .add_response("Эти трупы, которых я видел здесь... откуда они все берутся?", 3, 'r5') \
        .add_response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 0, 'r6') \
        .add_response("Ладно... Я... попробую это запомнить", 0, 'r7') \
        .done()

    DialogStateBuilder(3) \
        .add_npc_line(morte_unknown, "Смерть посещает планы каждый день, шеф.", 's3') \
        .add_npc_line(morte_unknown, "Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's3') \
        .add_response("Просвяти меня... *кто* такие эти смотрители?", 0, 'r5') \
        .add_response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 0, 'r6') \
        .add_response("Ладно... Я... попробую это запомнить", 0, 'r7') \
        .done()
