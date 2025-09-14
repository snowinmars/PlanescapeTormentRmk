init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r1.loot_logic import (MortuaryF1R1LootLogic)
    mortuaryF1R1LootLogic = MortuaryF1R1LootLogic(runtime.global_state_manager)
