init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r7.mortuary_f2r7_loot_logic import (MortuaryF2R7LootLogic)
    mortuaryF2R7LootLogic = MortuaryF2R7LootLogic(runtime.global_state_manager)


label from_mortuary_f2r7_to_mortuary_f1r4_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump graphics_menu


label from_mortuary_f2r7_to_mortuary_f2r8_closed:
    nr "Дверь заперта. Судя по всему, она ведёт в соседнюю комнату. Тебе понадобится ключ."
    jump graphics_menu


label mortuary_f2r7_loot_embalm:
    $ mortuaryF2R7LootLogic.embalm()
    nr "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Ты берёшь парочку."
    jump graphics_menu


label mortuary_f2r7_loot_copper_earring_closed:
    $ mortuaryF2R7LootLogic.copper_earring_closed()
    nr "Ты подбираешь серьгу."
    jump graphics_menu
