class WalkingF3Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def walk_to_mortuaryf3r4_visit(self):
        self.gsm.glm.set_location('mortuary_f3r4')


    def walk_to_mortuaryf3r6_visit(self):
        self.gsm.glm.set_location('mortuary_f3r6')


    def walk_to_mortuaryf3r8_visit(self):
        self.gsm.glm.set_location('mortuary_f3r8')


    def walk_to_mortuaryf3r2_visit(self):
        self.gsm.glm.set_location('mortuary_f3r2')


    def walk_mortuaryf3r8_pick_prybar(self):
        self.gsm.set_has_prybar(True)


    def walk_mortuaryf3r8_pick_dustman_request(self):
        self.gsm.set_has_dustman_request(True)


    def walk_mortuaryf3r8_pick_needle(self):
        self.gsm.set_has_needle(True)


    def walk_mortuaryf3r8_pick_mortuary_key(self):
        self.gsm.set_has_mortuary_key(True)


    def walk_mortuaryf3r8_pick_mortuary_task_list(self):
        self.gsm.set_has_mortuary_task_list(True)
