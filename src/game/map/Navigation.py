class NavigationJump:
    def __init__(self, jump, before_jump=None):
        self.jump        = jump
        self.before_jump = before_jump
        self.is_jump     = True
        self.is_snack    = False
        self.is_loot     = False


class NavigationSnack:
    def __init__(self, snack, pickup_items=[], on_pickup=None):
        self.snack        = snack
        self.pickup_items = pickup_items
        self.on_pickup    = on_pickup
        self.is_jump      = False
        self.is_snack     = True
        self.is_loot      = False


class NavigationLoot:
    def __init__(self):
        self.is_jump  = False
        self.is_snack = False
        self.is_loot  = True
