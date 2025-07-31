class DhallFeatherLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def break_feather(self):
        self.gsm.gcm.modify_property('protagonist', 'lore', 1)
