class GraphicsMenuLogic:
    def __init__(self, settings_manager, location_manager):
        self.settings_manager = settings_manager
        self.location_manager = location_manager
        self.party_xpos = 0
        self.party_ypos = 0
        self.party_radius = 40


    def calc_morte_xpos(self):
        return self.party_xpos


    def calc_morte_ypos(self):
        return self.party_ypos


    def always(self):
        return True


    def when_morte(self):
        return not self.settings_manager.get_dead_morte()


    def when_dhall(self):
        return not self.settings_manager.get_dead_dhall()


    def when_eivene(self):
        return not self.settings_manager.get_dead_eivene()


    def when_soego(self):
        return not self.settings_manager.get_dead_soego()


    def when_vaxis(self):
        return not self.settings_manager.get_dead_vaxis()


    def when_deionarra(self):
        return True


    def when_xach(self):
        return not self.settings_manager.get_dead_xach()


    def when_s42(self):
        return not self.settings_manager.get_dead_s42()


    def when_s748(self):
        return not self.settings_manager.get_dead_s748()


    def when_s863(self):
        return not self.settings_manager.get_dead_s863()


    def when_s996(self):
        return not self.settings_manager.get_dead_s996()


    def when_s1221(self):
        return not self.settings_manager.get_dead_s1221()


    def when_giantsk(self):
        return not self.settings_manager.get_dead_giantsk()


    def when_zm79(self):
        return not self.settings_manager.get_dead_zm79()


    def when_zm199(self):
        return not self.settings_manager.get_dead_zm199()


    def when_zm257(self):
        return not self.settings_manager.get_dead_zm257()


    def when_zm310(self):
        return not self.settings_manager.get_dead_zm310()


    def when_zm396(self):
        return not self.settings_manager.get_dead_zm396()


    def when_zm463(self):
        return not self.settings_manager.get_dead_zm463()


    def when_zm475(self):
        return not self.settings_manager.get_dead_zm475()


    def when_zm506(self):
        return not self.settings_manager.get_dead_zm506()


    def when_zm569(self):
        return not self.settings_manager.get_dead_zm569()


    def when_zm613(self):
        return not self.settings_manager.get_dead_zm613()


    def when_zm732(self):
        return not self.settings_manager.get_dead_zm732()


    def when_zm782(self):
        return not self.settings_manager.get_dead_zm782()


    def when_zm825(self):
        return not self.settings_manager.get_dead_zm825()


    def when_zm965(self):
        return not self.settings_manager.get_dead_zm965()


    def when_zm985(self):
        return not self.settings_manager.get_dead_zm985()


    def when_zm1041(self):
        return not self.settings_manager.get_dead_zm1041()


    def when_zm1094(self):
        return not self.settings_manager.get_dead_zm1094()


    def when_zm1146(self):
        return not self.settings_manager.get_dead_zm1146()


    def when_zm1201(self):
        return not self.settings_manager.get_dead_zm1201()


    def when_zm1445(self):
        return not self.settings_manager.get_dead_zm1445()


    def when_zm1508(self):
        return not self.settings_manager.get_dead_zm1508()


    def when_zm1664(self):
        return not self.settings_manager.get_dead_zm1664()


    def when_zf114(self):
        return not self.settings_manager.get_dead_zf114()


    def when_zf444(self):
        return not self.settings_manager.get_dead_zf444()


    def when_zf594(self):
        return not self.settings_manager.get_dead_zf594()


    def when_zf626(self):
        return not self.settings_manager.get_dead_zf626()


    def when_zf679(self):
        return not self.settings_manager.get_dead_zf679()


    def when_zf832(self):
        return not self.settings_manager.get_dead_zf832()


    def when_zf891(self):
        return not self.settings_manager.get_dead_zf891()


    def when_zf916(self):
        return not self.settings_manager.get_dead_zf916()


    def when_zf1072(self):
        return not self.settings_manager.get_dead_zf1072()


    def when_zf1096(self):
        return not self.settings_manager.get_dead_zf1096()


    def when_zf1148(self):
        return not self.settings_manager.get_dead_zf1148()
