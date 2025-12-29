init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f3r2.mortuary_f3r2_loot_logic import (MortuaryF3R2LootLogic)
    mortuaryF3R2LootLogic = MortuaryF3R2LootLogic(runtime.global_state_manager)


label mortuary_f3r2_loot_needle:
    $ mortuaryF3R2LootLogic.needle()
    nr "Ты подбираешь нитку с иголкой."
    jump  map_dispatcher


label mortuary_f3r2_loot_garbage:
    $ mortuaryF3R2LootLogic.garbage()
    nr "Ты подбираешь кусок мусора."
    jump  map_dispatcher


label mortuary_f3r2_loot_mortuary_task_list:
    $ mortuaryF3R2LootLogic.mortuary_task_list()
    nr "Ты подбираешь список заданий."
    jump  map_dispatcher
