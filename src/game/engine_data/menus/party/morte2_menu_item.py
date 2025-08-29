from game.engine_data.menus.menu_item import (MenuItem)


class Morte2MenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm)
        self.pos = self._calc_party_pos(self.gsm, self.x, self.y)['morte']
    def when(self):
        return not self.settings_manager.get_dead_morte() and \
               self.settings_manager.get_mortuary_walkthrough() > 1
    def texture(self):
        return 'images/menu_sprites/morte.png'
    def pos(self):
        return self.pos
    def tooltip(self):
        if self.settings_manager.get_in_party_morte():
            return 'Поговорить с Мортом'
        return 'Пригласить Морта в группу'
    def jump(self):
        return 'morte2_speak'
