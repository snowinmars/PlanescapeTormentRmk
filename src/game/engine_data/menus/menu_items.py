class MenuItem:
    def __init__(self, gsm, x, y):
        self.gsm = gsm
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
        return 'graphics_menu'


class GoToLocationMenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def texture(self):
        return 'images/icons/open_idle.png'


class ContainerMenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def texture(self):
        return 'images/icons/open_idle.png'


class ZombieMenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def texture(self):
        return 'images/menu_sprites/zombie.png'


class SkeletMenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def texture(self):
        return 'images/menu_sprites/skelet.png'


class NpcMenuItem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm)
    def _calc_party_pos(self, x, y):
        party_radius = 40
        hexagon = generate_hexagon_positions(x, y, party_radius)
        return {
            'morte' : { x: x, y: y } ,
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
