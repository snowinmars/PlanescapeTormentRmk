class NavigationJump:
    def __init__(self, jump, before_jump=None):
        self.jump        = jump
        self.before_jump = before_jump
        self.is_jump     = True
        self.is_snack    = False


class NavigationSnack:
    def __init__(self, snack, texture=None, on_pickup=None):
        self.snack           = snack
        self.snack_texture   = texture
        self.snack_on_pickup = on_pickup
        self.is_jump         = False
        self.is_snack        = True
