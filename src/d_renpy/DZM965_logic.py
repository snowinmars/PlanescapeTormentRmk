class Zm965Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r34923_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34923_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45070_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45071_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45072_condition(self):
        return self.gsm.get_can_speak_with_dead()