import math


class NavigationDirective:
    def __init__(self, target_label, before_jump=None):
        self.target_label = target_label
        self.before_jump = before_jump

    def execute(self):
        if self.before_jump:
            self.before_jump()
        return self.target_label


class MenuItem:
    def __init__(self, state_manager, x, y):
        self.state_manager = state_manager
        self._pos = { 'x': x, 'y': y }
    def when(self):
        return True
    def texture(self):
        return 'images/icons/unknown.png'
    def pos(self):
        return self._pos
    def tooltip(self):
        return 'Unknown'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
        )


class GoToLocationMenuItem(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def texture(self):
        return 'images/icons/open_idle.png'


class ContainerMenuItem(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def texture(self):
        return 'images/icons/open_idle.png'


class ZombieMenuItem(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def texture(self):
        return 'animation_zm782'


class SkeletMenuItem(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def texture(self):
        return 'images/menu_sprites/skelet.png'


class NpcMenuItem(MenuItem):
    def __init__(self, state_manager, x, y, npc):
        super().__init__(state_manager, x, y)
        self._pos = self._calc_party_pos(x, y)[npc]
    def pos(self):
        return self._pos
    def _calc_party_pos(self, x, y):
        party_radius = 40
        hexagon = generate_hexagon_positions(x, y, party_radius)
        return {
            'morte' : { 'x': x, 'y': y } ,
            'annah' : hexagon[0]     ,
            'dakkon': hexagon[1]     ,
            'grace' : hexagon[2]     ,
            'nordom': hexagon[3]     ,
            'ignus' : hexagon[4]     ,
            'vhail' : hexagon[5]     ,
        }


def generate_hexagon_positions(x, y, radius):
    positions = []
    for i in range(6):
        angle_deg = 60 * i - 30  # Start at -30° for flat-top hexagon
        angle_rad = math.radians(angle_deg)
        pos_x = x + radius * math.cos(angle_rad)
        pos_y = y + radius * math.sin(angle_rad)
        positions.append({x: pos_x, y: pos_y})
    return positions
