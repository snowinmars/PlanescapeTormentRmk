init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.mortuary.f2.MortuaryF2LootLogic import (MortuaryF2LootLogic)
    mortuaryF2LootLogic = MortuaryF2LootLogic(runtime.global_state_manager)


label from_mortuary_f2r1_to_mortuary_f2r8_closed:
    nr "Дверь заперта. Судя по всему, она ведёт в соседнюю комнату. Тебе понадобится ключ."
    jump map_dispatcher


label from_mortuary_f2r1_to_mortuary_f3r1_closed:
    nr "За запертой решёткой видна лестница вверх. Тебе понадобится ключ."
    jump map_dispatcher


label from_mortuary_f2r1_to_mortuary_f2r1_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump map_dispatcher


label mortuary_f2r1_loot_scalpel:
    $ mortuaryF2LootLogic.scalpel()
    nr "Ты подбираешь скальпель с одной из полок."
    jump map_dispatcher

label from_mortuary_f2r7_to_mortuary_f1r4_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump map_dispatcher


label from_mortuary_f2r7_to_mortuary_f2r8_closed:
    nr "Дверь заперта. Судя по всему, она ведёт в соседнюю комнату. Тебе понадобится ключ."
    jump map_dispatcher


label mortuary_f2r7_loot_embalm:
    $ mortuaryF2LootLogic.embalm()
    nr "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Ты берёшь парочку."
    jump map_dispatcher


label mortuary_f2r7_loot_copper_earring_closed:
    $ mortuaryF2LootLogic.copper_earring_closed()
    nr "Ты подбираешь серьгу."
    jump map_dispatcher
