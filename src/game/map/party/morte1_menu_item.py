from game.map.NavigationDirective import (NavigationDirective)
from game.map.map_items import (
    NpcMenuItem
)


class Morte1MenuItem(NpcMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 'morte_character_name')
    def when(self):
        return not self.state_manager.world_manager.get_dead_morte() and \
               self.state_manager.world_manager.get_mortuary_walkthrough() < 2
    def texture(self):
        return 'animated_morte_stand_s'
    def tooltip(self):
        if self.state_manager.world_manager.get_in_party_morte():
            return 'Поговорить с Мортом'
        return 'Пригласить Морта в группу'
    def jump(self):
        return NavigationDirective(
            'morte1_speak'
        )
