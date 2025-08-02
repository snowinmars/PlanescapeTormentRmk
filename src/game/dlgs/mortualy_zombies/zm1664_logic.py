class Zm1664Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm1664_init(self):
        self.gsm.glm.set_location('mortuary_f2r4')
        self.gsm.set_meet_zm1664(True)


    def kill_zm1664(self):
        self.gsm.set_dead_zm1664(True)
        self.gsm.inc_exp_custom('party', 65)


    def r47014_action(self):
        self.gsm.set_has_logpage(True)
        self.gsm.set_has_zm1664_page(True)


    def r47003_condition(self):
        return not self.gsm.get_has_zm1664_page()


    def r47004_condition(self):
        return self.gsm.get_has_zm1664_page()


    def r47005_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r47006_condition(self):
        return self.gsm.get_can_speak_with_dead()
