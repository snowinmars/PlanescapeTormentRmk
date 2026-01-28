init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.mortuary.f3.MortuaryF3LootLogic import (MortuaryF3LootLogic)
    mortuaryF3LootLogic = MortuaryF3LootLogic(runtime.global_state_manager)


label from_mortuary_f3rc_to_mortuary_f3r1_closed:
    nr "Дверь заперта. Судя по всему, она ведёт в соседнюю комнату. Тебе понадобится ключ."
    jump  map_dispatcher


label from_mortuary_f3r1_to_mortuary_f2r1_closed:
    nr "За запертой решёткой видна лестница вниз. Тебе понадобится ключ."
    jump  map_dispatcher


label mortuary_f3r4_loot_mortuary_key:
    $ mortuaryF3LootLogic.mortuary_key()
    nr "Ты подбираешь ключ от внутренних покоев Морга."
    jump  map_dispatcher


label mortuary_f3r2_loot_needle:
    $ mortuaryF3LootLogic.needle()
    nr "Ты подбираешь нитку с иголкой."
    jump  map_dispatcher


label mortuary_f3r2_loot_garbage:
    $ mortuaryF3LootLogic.garbage()
    nr "Ты подбираешь кусок мусора."
    jump  map_dispatcher


label mortuary_f3r2_loot_mortuary_task_list:
    $ mortuaryF3LootLogic.mortuary_task_list()
    nr "Ты подбираешь список заданий."
    jump  map_dispatcher


label mortuary_f3r4_loot_prybar:
    $ mortuaryF3LootLogic.prybar()
    nr "Ты подбираешь ломик."
    jump  map_dispatcher


label mortuary_f3r4_loot_dustman_request:
    $ mortuaryF3LootLogic.dustman_request()
    nr "Ты подбираешь бумагу с запросом тленного."
    jump  map_dispatcher


label mortuary_f3r4_loot_needle:
    $ mortuaryF3LootLogic.needle()
    nr "Ты подбираешь нитку с иголкой."
    jump  map_dispatcher


label mortuary_f3r4_loot_garbage:
    $ mortuaryF3LootLogic.garbage()
    nr "Ты подбираешь кусок мусора."
    jump  map_dispatcher
