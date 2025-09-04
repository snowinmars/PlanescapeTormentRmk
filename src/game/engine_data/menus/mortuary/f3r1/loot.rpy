init 10 python:
    from game.engine_data.menus.mortuary.f3r1.loot_logic import (MortuaryF3R1LootLogic)
    mortuaryF3R1LootLogic = MortuaryF3R1LootLogic(renpy.store.global_settings_manager)


label from_mortuary_f3r1_to_mortuary_f2r1_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump graphics_menu


label mortuary_f3r4_loot_mortuary_key:
    $ mortuaryF3R1LootLogic.mortuary_key()
    nr "Ты подбираешь ключ от внутренних покоев Морга."
    jump graphics_menu
