from game.engine_data.menus.menu_items import (NpcMenuItem)


class Morte1MenuItem(NpcMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y, 'morte')
    def when(self):
        return not self.gsm.get_dead_morte() and \
               self.gsm.get_mortuary_walkthrough() < 2
    def texture(self):
        return 'images/menu_sprites/morte.png'
    def tooltip(self):
        if self.gsm.get_in_party_morte():
            return 'Поговорить с Мортом'
        return 'Пригласить Морта в группу'
    def jump(self):
        return 'morte1_speak'
