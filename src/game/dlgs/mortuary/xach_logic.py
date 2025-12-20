class XachLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r502_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r524_action(self):
        self.state_manager.world_manager.set_vaxis_exposed(True)


    def r645_action(self):
        self.state_manager.world_manager.set_xachariah_ring(1)


    def r663_action(self):
        self.state_manager.world_manager.set_has_xac_liver(True)


    def r666_action(self):
        self.state_manager.world_manager.set_xachariah_ring(2)
        self.state_manager.world_manager.set_has_xac_heart(True)


    def r672_action(self):
        self.state_manager.world_manager.set_xachariah_request(True)


    def r671_action(self):
        self.state_manager.world_manager.set_xachariah_request(True)


    def r679_action(self):
        self.state_manager.world_manager.set_dead_xach(True)


    def r681_action(self):
        self.state_manager.world_manager.set_xachariah_gutted(False)


    def r698_action(self):
        self.state_manager.world_manager.set_xachariah_request(True)


    def r502_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r503_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r1354_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r1355_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r508_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 16 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 17


    def r63307_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 16


    def r506_condition(self):
        return self.state_manager.world_manager.get_know_xachariah_name()


    def r510_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 16 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 17


    def r63308_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 16


    def r521_condition(self):
        return self.state_manager.world_manager.get_know_xachariah_name()


    def r518_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1394_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r688_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1393_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r524_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12


    def r527_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1392_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r63484_condition(self):
        return self.state_manager.world_manager.get_xachariah_ring() == 1


    def r1391_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r641_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r545_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1390_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r537_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1389_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r538_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 15


    def r546_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1388_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r542_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 17


    def r544_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1387_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r548_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 15


    def r549_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1386_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r553_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1385_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r556_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1384_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r560_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1383_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r565_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1382_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r571_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1381_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r574_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1380_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r63234_condition(self):
        return self.state_manager.world_manager.get_xachariah_ring() < 2


    def r579_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1379_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r587_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1378_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r592_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1377_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r599_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1376_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r601_condition(self):
        return self.state_manager.world_manager.get_dakkon_slave()


    def r604_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1375_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r607_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1374_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r609_condition(self):
        return self.state_manager.world_manager.get_deionarra_death_truth() == 0


    def r611_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1373_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r619_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1372_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r624_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1371_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r628_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1370_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r631_condition(self):
        return self.state_manager.world_manager.get_know_xachariah_name()


    def r632_condition(self):
        return not self.state_manager.world_manager.get_know_xachariah_name()


    def r634_condition(self):
        return self.state_manager.world_manager.get_know_xachariah_name()


    def r635_condition(self):
        return not self.state_manager.world_manager.get_know_xachariah_name()


    def r636_condition(self):
        return self.state_manager.world_manager.get_know_xachariah_name()


    def r648_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1369_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r652_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1368_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r647_condition(self):
        return self.state_manager.world_manager.get_has_scalpel()


    def r653_condition(self):
        return not self.state_manager.world_manager.get_has_scalpel()


    def r660_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1367_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r669_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1366_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r691_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1365_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r696_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r1364_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r698_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r633_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


    def r63628_condition(self):
        return not self.state_manager.world_manager.get_xachariah_request()


    def r63629_condition(self):
        return self.state_manager.world_manager.get_xachariah_request()


class XachLogic(XachLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
