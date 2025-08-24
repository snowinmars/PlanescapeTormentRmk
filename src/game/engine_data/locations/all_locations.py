from game.engine_data.locations.mortuary import (build_mortuary_locations)
from game.engine_data.locations.other import (build_other_locations)

def build_all_locations(manager):
    build_mortuary_locations(manager)
    build_other_locations(manager)
