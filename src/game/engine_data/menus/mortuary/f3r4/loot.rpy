init 10 python:
    from game.engine_data.menus.mortuary.f3r4.loot_logic import (MortuaryF3R4LootLogic)
    mortuaryF3R4LootLogic = MortuaryF3R4LootLogic(renpy.store.global_settings_manager)


label mortuary_f3r4_loot_prybar:
    $ mortuaryF3R4LootLogic.prybar()
    nr "Ты подбираешь ломик."
    jump graphics_menu


label mortuary_f3r4_loot_dustman_request:
    $ mortuaryF3R4LootLogic.dustman_request()
    nr "Ты подбираешь бумагу с запросом тленного."
    jump graphics_menu


label mortuary_f3r4_loot_needle:
    $ mortuaryF3R4LootLogic.needle()
    nr "Ты подбираешь нитку с иголкой."
    jump graphics_menu


label mortuary_f3r4_loot_garbage:
    $ mortuaryF3R4LootLogic.garbage()
    nr "Ты подбираешь кусок мусора."
    jump graphics_menu
