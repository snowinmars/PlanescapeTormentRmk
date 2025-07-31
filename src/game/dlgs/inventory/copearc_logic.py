class CopearcLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r46725_action(self):
        self.gsm.inc_exp_custom('party', 250)


    def r46728_action(self):
        self.gsm.inc_exp_custom('party', 250)


    def r46733_action(self):
        self.gsm.set_has_copper_earring_closed(False)
        self.gsm.set_has_copper_earring_opened(True)


    def r46725_condition(self):
        return self.gsm.get_know_copper_earring_secret()


    def r46728_condition(self):
        return self.gsm.get_know_copper_earring_secret()
