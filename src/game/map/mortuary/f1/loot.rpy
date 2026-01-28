init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.mortuary.f1.MortuaryF1LootLogic import (MortuaryF1LootLogic)
    mortuaryF1LootLogic = MortuaryF1LootLogic(runtime.global_state_manager)

