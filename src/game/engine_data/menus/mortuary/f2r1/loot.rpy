init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r1.loot_logic import (MortuaryF2R1LootLogic)
    mortuaryF2R1LootLogic = MortuaryF2R1LootLogic(runtime.global_state_manager)


label from_mortuary_f2r1_to_mortuary_f2r8_closed:
    nr "Дверь заперта. Судя по всему, она ведёт в соседнюю комнату. Тебе понадобится ключ."
    jump graphics_menu


label from_mortuary_f2r1_to_mortuary_f3r1_closed:
    nr "За запертой решёткой видна лестница вверх. Тебе понадобится ключ."
    jump graphics_menu


label from_mortuary_f2r1_to_mortuary_f2r1_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump graphics_menu


label mortuary_f2r1_loot_scalpel:
    $ mortuaryF2R1LootLogic.scalpel()
    nr "Ты подбираешь скальпель с одной из полок."
    jump graphics_menu
