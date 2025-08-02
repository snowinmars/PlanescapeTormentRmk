class WalkingF2Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def walk_to_mortuaryf2r1_visit(self):
        self.gsm.glm.set_location('mortuary_f2r1')


    def walk_to_mortuaryf2r2_visit(self):
        self.gsm.glm.set_location('mortuary_f2r2')


    def walk_to_mortuaryf2r2_scene(self):
        self.gsm.glm.set_location('mortuary_f2r2')


    def walk_to_mortuaryf2r3_visit(self):
        self.gsm.glm.set_location('mortuary_f2r3')


    def walk_to_mortuaryf2r3_scene(self):
        self.gsm.glm.set_location('mortuary_f2r3')


    def walk_to_mortuaryf2r4_visit(self):
        self.gsm.glm.set_location('mortuary_f2r4')


    def walk_to_mortuaryf2r5_visit(self):
        self.gsm.glm.set_location('mortuary_f2r5')


    def walk_to_mortuaryf2r6_visit(self):
        self.gsm.glm.set_location('mortuary_f2r6')


    def walk_to_mortuaryf2r7_visit(self):
        self.gsm.glm.set_location('mortuary_f2r7')


    def walk_to_mortuaryf2r8_visit(self):
        self.gsm.glm.set_location('mortuary_f2r8')


    def walk_mortuaryf2r1_pick_scalpel(self):
        self.gsm.set_has_scalpel(True)


    def walk_mortuaryf2r7_pick_embalm(self):
        self.gsm.set_has_embalm(True)


    def walk_mortuaryf2r7_pick_copper_earring_closed(self):
        self.gsm.set_has_copper_earring_closed(True)
