class Zm79Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r34943_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.gsm.set_know_copper_earring_secret(True)


    def r64279_action(self):
        self.gsm.update_journal('64536')
        # '64536': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. По каким-то причинам этот знак кажется мне важным, однако я не знаю, почему.~ '


    def r64280_action(self):
        self.gsm.update_journal('64537')
        # '64537': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. Символ по виду напоминает старую медную сережку, которую я нашел в юго-восточной препараторской — возможно, они как-то связаны между собой.~ '


    def r34946_condition(self):
        return not self.gsm.get_know_copper_earring_secret()


    def r34947_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r34948_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r64279_condition(self):
        return not self.gsm.get_has_copper_earring_closed()


    def r64280_condition(self):
        return self.gsm.get_has_copper_earring_closed()