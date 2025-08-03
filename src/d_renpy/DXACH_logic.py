class XachLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r502_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r524_action(self):
        self.gsm.set_vaxis_exposed(True)


    def r645_action(self):
        SetGlobal("Xachariah_Ring","GLOBAL",1)


    def r663_action(self):
        GiveItemCreate("XacLiver",Protagonist,0,0,0)


    def r666_action(self):
        SetGlobal("Xachariah_Ring","GLOBAL",2) GiveItemCreate("XacHeart",Protagonist,1,0,0)


    def r672_action(self):
        SetGlobal("Xachariah_Request","GLOBAL",1)


    def r671_action(self):
        SetGlobal("Xachariah_Request","GLOBAL",1)


    def r679_action(self):
        self.gsm.set_dead_xach(True)


    def r681_action(self):
        SetGlobal("Xachariah_Gutted","GLOBAL",0)


    def r698_action(self):
        SetGlobal("Xachariah_Request","GLOBAL",1)


    def r502_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r503_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r1354_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r1355_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r508_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 16 and \
               self.gsm.gcm.get_character_property('player1', 'charisma') < 17


    def r63307_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'charisma') > 16


    def r506_condition(self):
        return self.gsm.get_know_xachariah_name()


    def r510_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 16 and \
               self.gsm.gcm.get_character_property('player1', 'charisma') < 17


    def r63308_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'charisma') > 16


    def r521_condition(self):
        return self.gsm.get_know_xachariah_name()


    def r518_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1394_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r688_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1393_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r524_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 12


    def r527_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1392_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r63484_condition(self):
        return Global("Xachariah_Ring","GLOBAL",1)


    def r1391_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r641_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r545_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1390_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r537_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1389_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r538_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 15


    def r546_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1388_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r542_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 17


    def r544_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1387_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r548_condition(self):
        return self.gsm.gcm.get_character_property('player1', 'intelligence') > 15


    def r549_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1386_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r553_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1385_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r556_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1384_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r560_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1383_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r565_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1382_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r571_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1381_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r574_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1380_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r63234_condition(self):
        return GlobalLT("Xachariah_Ring","GLOBAL",2)


    def r579_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1379_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r587_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1378_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r592_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1377_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r599_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1376_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r601_condition(self):
        return Global("Dakkon_Slave","GLOBAL",1)


    def r604_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1375_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r607_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1374_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r609_condition(self):
        return Global("Deionarra_Death_Truth","GLOBAL",0)


    def r611_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1373_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r619_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1372_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r624_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1371_condition(self):
        return GlobalGT("Xachariah_Request","GLOBAL",0)


    def r628_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1370_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r631_condition(self):
        return self.gsm.get_know_xachariah_name()


    def r632_condition(self):
        return not self.gsm.get_know_xachariah_name()


    def r634_condition(self):
        return self.gsm.get_know_xachariah_name()


    def r635_condition(self):
        return not self.gsm.get_know_xachariah_name()


    def r636_condition(self):
        return self.gsm.get_know_xachariah_name()


    def r648_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1369_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r652_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1368_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r647_condition(self):
        return self.gsm.get_has_scalpel()


    def r653_condition(self):
        return not self.gsm.get_has_scalpel()


    def r660_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1367_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r669_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1366_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r691_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1365_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r696_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r1364_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r698_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r633_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)


    def r63628_condition(self):
        return Global("Xachariah_Request","GLOBAL",0)


    def r63629_condition(self):
        return Global("Xachariah_Request","GLOBAL",1)