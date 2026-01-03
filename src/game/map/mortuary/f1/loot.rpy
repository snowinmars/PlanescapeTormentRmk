init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.mortuary.f1.mortuary_f1_loot_logic import (MortuaryF1LootLogic)
    mortuaryF1LootLogic = MortuaryF1LootLogic(runtime.global_state_manager)

