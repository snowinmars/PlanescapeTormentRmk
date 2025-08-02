class Zm782Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r24716_action(self):
        # ?.attack("Protagonist").by("ZM782")


    def r24709_condition(self):
        return self.gsm.get_in_party_morte()


    def r24712_condition(self):
        return not self.gsm.get_in_party_morte()