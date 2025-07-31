class WalkingLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def mortuary_walking_1_8_closed(self):
        self.gsm.glm.set_location('mortuary_f2r1')


    def mortuary_walking_1_up_closed(self):
        self.gsm.glm.set_location('mortuary_f2r1')


    def mortuary_walking_1_down_closed(self):
        self.gsm.glm.set_location('mortuary_f2r1')


    def mortuary_walking_1_visit(self):
        self.gsm.glm.set_location('mortuary_f2r1')


    def mortuary_walking_2_visit(self):
        self.gsm.glm.set_location('mortuary_f2r2')


    def mortuary_walking_2_scene(self):
        self.gsm.glm.set_location('mortuary_f2r2')


    def mortuary_walking_3_visit(self):
        self.gsm.glm.set_location('mortuary_f2r3')


    def mortuary_walking_3_scene(self):
        self.gsm.glm.set_location('mortuary_f2r3')


    def mortuary_walking_4_visit(self):
        self.gsm.glm.set_location('mortuary_f2r4')


    def mortuary_walking_5_visit(self):
        self.gsm.glm.set_location('mortuary_f2r5')


    def mortuary_walking_6_visit(self):
        self.gsm.glm.set_location('mortuary_f2r6')


    def mortuary_walking_7_visit(self):
        self.gsm.glm.set_location('mortuary_f2r7')


    def mortuary_walking_8_visit(self):
        self.gsm.glm.set_location('mortuary_f2r8')


    def mortuary_walking_8_up_visit(self):
        self.gsm.glm.set_location('mortuaryx')


    def mortuary_walking_1_pick_scalpel(self):
        self.gsm.set_has_scalpel(True)


    def mortuary_walking_1_pick_embalm(self):
        self.gsm.set_has_embalm(True)
