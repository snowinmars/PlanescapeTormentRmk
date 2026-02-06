import math


class ShadowItem:
    def __init__(self, state_manager, x, y, xs=None, ys=None):
        self.state_manager = state_manager
        self._pos = (x, y)
        self._size = (xs, ys)
        self.location_id = None
    def when_unvisited(self):
        return self.state_manager.locations_manager.get_location() != self.location_id and \
               not self.state_manager.locations_manager.is_visited(self.location_id)
    def when_visited(self):
        return self.state_manager.locations_manager.get_location() != self.location_id and \
               self.state_manager.locations_manager.is_visited(self.location_id)
    def pos(self):
        return self._pos
    def size(self):
        return self._size
    def texture(self):
        raise NotImplementedError("Implement method 'texture(self)' before executing it") # pragma: no cover
    def __getstate__(self):
        return {
            'location_id': self.location_id,
            '_pos': self._pos
        }
    def __setstate__(self, state):
        self.location_id = state['location_id']
        self._pos = state['_pos']


class MenuItem:
    def __init__(self, state_manager, x, y, xs=None, ys=None):
        self.state_manager = state_manager
        self._pos = (x, y)
        self._size = (xs, ys)
    def pos(self):
        return self._pos
    def size(self):
        return self._size
    def when(self):
        raise NotImplementedError("Implement method 'when(self)' before executing it") # pragma: no cover
    def texture(self):
        raise NotImplementedError("Implement method 'texture(self)' before executing it") # pragma: no cover
    def tooltip(self):
        raise NotImplementedError("Implement method 'tooltip(self)' before executing it") # pragma: no cover
    def jump(self):
        raise NotImplementedError("Implement method 'jump(self)' before executing it") # pragma: no cover
    def __getstate__(self):
        return {
            '_pos' : self._pos,
            '_size': self._size
        }
    def __setstate__(self, state):
        self._pos  = state['_pos']
        self._size = state['_size']


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
            'morte_character_name' : (x, y) ,
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
