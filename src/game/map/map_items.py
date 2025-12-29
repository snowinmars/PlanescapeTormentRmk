import math


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
            'map_dispatcher',
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
            'morte_character_name' : { 'x': x, 'y': y } ,
            'annah_character_name' : hexagon[0],
            'dakkon_character_name': hexagon[1],
            'grace_character_name' : hexagon[2],
            'nordom_character_name': hexagon[3],
            'ignus_character_name' : hexagon[4],
            'vhail_character_name' : hexagon[5],
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
