class SoegoLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r1438_action(self):
        self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1439_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_soego_1')
        self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1448_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_soego_2')


    def r1450_action(self):
        self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1453_action(self):
        self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1456_action(self):
        SetGlobal("Soego","Global",1) self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1457_action(self):
        SetGlobal("Soego","Global",1) self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r1466_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_soego_2')


    def r1478_action(self):
        self.gsm.inc_exp_custom('party', 500)
        SetGlobal("Gate_Open","GLOBAL",1) SetGlobal("Gate_Cut_Scene","AR0201",1) StartCutSceneMode() # ?.startCutScene("0201cut1")


    def r1482_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_soego_3')
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_soego_1')


    def r1490_action(self):
        SetDoorLocked("fakedoor",FALSE)


    def r1492_action(self):
        SetGlobal("Gate_Cut_Scene","AR0201",2)


    def r1493_action(self):
        SetGlobal("Gate_Cut_Scene","AR0201",2)


    def r1509_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_soego_2')


    def r1525_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r1528_action(self):
        # ?.play_sound("SPE_11")


    def r1530_action(self):
        SetGlobal("Soego_Strangle","GLOBAL",1)


    def r1531_action(self):
        SetGlobal("Soego_Strangle","GLOBAL",1)


    def r1533_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r1535_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r4809_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_soego_1')


    def r4810_action(self):
        SetGlobal("Soego_exposed","GLOBAL",1)


    def r4836_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_betrayed(1)


    def r4837_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_betrayed(1)
        self.gsm.gcm.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')


    def r4861_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r4862_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r4864_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_soego_2')


    def r66706_action(self):
        SetGlobal("Soego","Global",1) self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r66707_action(self):
        SetGlobal("Soego","Global",1) self.gsm.update_journal('63982')
        # '63982': ' ~У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь. ~ '


    def r4926_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_soego_1')


    def r4931_action(self):
        SetGlobal("Soego_Adahn","AR0201",1) self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r4961_action(self):
        # ?.play_sound("AMB_M01") Enemy() ForceAttack(Protagonist,Myself) self.gsm.set_mortualy_alarmed(True)
        Attack(Protagonist)


    def r4967_action(self):
        SetGlobal("Soego_Adahn","AR0201",1) self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r4975_action(self):
        self.gsm.inc_exp_custom('party', 500)
        SetGlobal("Gate_Open","GLOBAL",1) SetGlobal("Gate_Cut_Scene","AR0201",1) StartCutSceneMode() # ?.startCutScene("0201cut1")


    def r4988_action(self):
        self.gsm.inc_exp_custom('party', 500)
        SetGlobal("Gate_Open","GLOBAL",1) SetGlobal("Gate_Cut_Scene","AR0201",1) StartCutSceneMode() # ?.startCutScene("0201cut1")


    def r21655_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21656_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21657_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21658_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21660_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21800_action(self):
        self.gsm.update_journal('21805')
        # '21805': ' ~Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.~ '


    def r64569_action(self):
        self.gsm.update_journal('21805')
        # '21805': ' ~Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.~ '


    def r64570_action(self):
        self.gsm.update_journal('21805')
        # '21805': ' ~Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.~ '


    def r66181_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21852_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode() self.gsm.update_journal('21856')
        # '21856': ' ~Я нашел Соэго. Он был заражен ликантропией, которая свела его в катакомбы. Его разум более не принадлежит ему, его вера в тленных утеряна.~ '


    def r64623_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r64624_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r21853_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode() self.gsm.update_journal('21857')
        # '21857': ' ~Соэго сказал мне, что он не знает, как проникнуть в тронный зал Безмолвного Короля, и все же мне придется сделать это, если я собираюсь убить его.~ '


    def r21854_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(4)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r24206_action(self):
        SetGlobal("Soego_Told","GLOBAL",1) self.gsm.gcm.modify_property_once('protagonist', 'law', -3, 'globalchaotic_hargrimm_7')
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_hargrimm_3')


    def r21915_action(self):
        SetGlobal("Soego_Told","GLOBAL",1) self.gsm.update_journal('21926')
        # '21926': ' ~Я рассказал Соэго про содержимое его дневника, а он превратился в крысооборотня и напал на меня.~ '


    def r21914_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)


    def r21916_action(self):
        SetGlobal("Soego_Fled","GLOBAL",1) Enemy() self.gsm.update_journal('21926')
        # '21926': ' ~Я рассказал Соэго про содержимое его дневника, а он превратился в крысооборотня и напал на меня.~ '


    def r21917_action(self):
        SetGlobal("Doubtful_Skel","GLOBAL",2) SetGlobal("Visit_Doubtful","AR1500",1)


    def r21956_action(self):
        FadeToColor([20.0],0) Wait(1) RestPartyEx(0,10,FALSE) FadeFromColor([20.0],0)


    def r21979_action(self):
        SetGlobal("Know_Silent_King","GLOBAL",1)


    def r21986_action(self):
        SetGlobal("Know_Hargrimm","GLOBAL",1)


    def r25248_action(self):
        self.gsm.update_journal('25254')
        # '25254': ' ~Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.~ '


    def r25252_action(self):
        self.gsm.update_journal('25254')
        # '25254': ' ~Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.~ '


    def r25253_action(self):
        self.gsm.update_journal('25254')
        # '25254': ' ~Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.~ '


    def r21994_action(self):
        self.gsm.update_journal('21996')
        # '21996': ' ~Я сказал Соэго, что Безмолвный Король — не более чем высохший труп. Мне нужно сообщить это Многоединому, как только предоставится такая возможность.~ '


    def r21995_action(self):
        self.gsm.update_journal('21996')
        # '21996': ' ~Я сказал Соэго, что Безмолвный Король — не более чем высохший труп. Мне нужно сообщить это Многоединому, как только предоставится такая возможность.~ '


    def r21998_action(self):
        Enemy()


    def r22012_action(self):
        ClearAllActions()


    def r22024_action(self):
        self.gsm.set_soego_value(4)
        SetGlobal("Soego_Fled","GLOBAL",2) Enemy() self.gsm.update_journal('21856')
        # '21856': ' ~Я нашел Соэго. Он был заражен ликантропией, которая свела его в катакомбы. Его разум более не принадлежит ему, его вера в тленных утеряна.~ '


    def r22051_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode() self.gsm.update_journal('22052')
        # '22052': ' ~Я нашел Соэго. Он обнаружил группу мертвых стражей, защищавших катакомбы. Он пытается убедить их присоединиться к Истинной Смерти.~ '


    def r66173_action(self):
        SetGlobal("Met_Soego2","GLOBAL",1) self.gsm.set_soego_value(3)
        SetGlobal("Soego_Talk","AR1500",2) EndCutSceneMode()


    def r22058_action(self):
        self.gsm.update_journal('21857')
        # '21857': ' ~Соэго сказал мне, что он не знает, как проникнуть в тронный зал Безмолвного Короля, и все же мне придется сделать это, если я собираюсь убить его.~ '


    def r1440_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1441_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r1446_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1451_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1452_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1458_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1459_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1464_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1469_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1470_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r1471_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1472_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1478_condition(self):
        return HasItem("KeyMo",Myself)


    def r1479_condition(self):
        return !HasItem("KeyMo",Myself)


    def r1483_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1484_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1487_condition(self):
        return self.gsm.get_in_party_morte()


    def r1488_condition(self):
        return not self.gsm.get_in_party_morte()


    def r1495_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1496_condition(self):
        return Global("Appearance","GLOBAL",2)


    def r1497_condition(self):
        return !Global("Appearance","GLOBAL",2)


    def r1506_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1512_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1513_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r1514_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1515_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1518_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r1520_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r1521_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1522_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1530_condition(self):
        return self.gsm.get_in_party_morte()


    def r1531_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4805_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10 Global("Gate_Open","GLOBAL",0)


    def r4806_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11 Global("Gate_Open","GLOBAL",0)


    def r4807_condition(self):
        return self.gsm.get_vaxis_value() == 1 and \
               not self.gsm.get_dead_vaxis() and \
               not self.gsm.get_vaxis_leave() and \
               self.gsm.get_vaxis_betrayed() == 0


    def r4810_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') < 13 and \
               self.gsm.get_vaxis_exposes_soego()


    def r4811_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12 and \
               self.gsm.get_vaxis_exposes_soego()


    def r4832_condition(self):
        return self.gsm.get_pharod_value() < 1


    def r4833_condition(self):
        return not self.gsm.get_journal()


    def r4834_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4835_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4836_condition(self):
        return not self.gsm.get_vaxis_lawful()


    def r4837_condition(self):
        return self.gsm.get_vaxis_lawful()


    def r4839_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r916_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4853_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4854_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4858_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4859_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4866_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4867_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4870_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4871_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4876_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4877_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4879_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12


    def r4882_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4883_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4887_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4888_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4892_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4893_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r4896_condition(self):
        return Global("Gate_Open","GLOBAL",1)


    def r4897_condition(self):
        return Global("Gate_Open","GLOBAL",0)


    def r66706_condition(self):
        return GlobalLT("Appearance","GLOBAL",2)


    def r66707_condition(self):
        return Global("Appearance","GLOBAL",2)


    def r4910_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4912_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r4913_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r4917_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4921_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r4929_condition(self):
        return self.gsm.get_dhall_value() > 0


    def r4930_condition(self):
        return self.gsm.get_deionarra_value() > 0


    def r4931_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 Global("Soego_Adahn","AR0201",0)


    def r4932_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 Global("Soego_Adahn","AR0201",1)


    def r4951_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4955_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r4958_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r4959_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r4965_condition(self):
        return self.gsm.get_deionarra_value() > 0


    def r4967_condition(self):
        return Global("Soego_Adahn","AR0201",0)


    def r4968_condition(self):
        return Global("Soego_Adahn","AR0201",1)


    def r4975_condition(self):
        return HasItem("KeyMo",Myself)


    def r4976_condition(self):
        return !HasItem("KeyMo",Myself)


    def r4984_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4985_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4988_condition(self):
        return HasItem("KeyMo",Myself)


    def r4989_condition(self):
        return !HasItem("KeyMo",Myself)


    def r4991_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 10


    def r4992_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 11


    def r4993_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r4994_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r21655_condition(self):
        return self.gsm.get_soego_value() > 0


    def r21656_condition(self):
        return self.gsm.get_soego_value() == 0


    def r21657_condition(self):
        return self.gsm.get_soego_value() == 0


    def r21658_condition(self):
        return self.gsm.get_soego_value() == 0


    def r21660_condition(self):
        return self.gsm.get_soego_value() == 0


    def r21663_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r21800_condition(self):
        return NumInParty(1) !Global("Visit_Doubtful","AR1500",1)


    def r64569_condition(self):
        return NumInPartyGT(1) !Global("Visit_Doubtful","AR1500",1)


    def r64547_condition(self):
        return Global("Soego_Strangle","GLOBAL",1) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r21808_condition(self):
        return Global("Mortuary_Soego_Killed","GLOBAL",1)


    def r21811_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r21815_condition(self):
        return Global("Soego_Strangle","GLOBAL",1)


    def r21818_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r21823_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r66181_condition(self):
        return Global("Dustman_Initiation","GLOBAL",5) and \
               self.gsm.get_soego_value() > 0 and \
               self.gsm.get_soego_value() < 3


    def r21852_condition(self):
        return Global("Dustman_Initiation","GLOBAL",5) and \
               self.gsm.get_soego_value() == 0


    def r64623_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5) Global("Soego_Strangle","GLOBAL",1) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r64624_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5) Global("Mortuary_Soego_Killed","GLOBAL",1)


    def r21853_condition(self):
        return Global("Soego_Strangle","GLOBAL",0) Global("Mortuary_Soego_Killed","GLOBAL",0) !Global("Dustman_Initiation","GLOBAL",5)


    def r21854_condition(self):
        return Global("Soego_Strangle","GLOBAL",0) Global("Mortuary_Soego_Killed","GLOBAL",0) !Global("Dustman_Initiation","GLOBAL",5)


    def r24206_condition(self):
        return Global("Silent_King","GLOBAL",1) Global("Soego_Told","GLOBAL",0) Global("Lawful_Hargrimm_1","GLOBAL",1)


    def r21915_condition(self):
        return Global("Silent_King","GLOBAL",1) Global("Soego_Told","GLOBAL",0) !Global("Lawful_Hargrimm_1","GLOBAL",1)


    def r21914_condition(self):
        return Global("Dustman_Initiation","GLOBAL",5) and \
               self.gsm.get_soego_value() < 3


    def r21916_condition(self):
        return Global("Soego_Journal","GLOBAL",1)


    def r21917_condition(self):
        return Global("Doubtful_Skel","GLOBAL",1)


    def r21920_condition(self):
        return NumInParty(1) !Global("Visit_Doubtful","AR1500",1)


    def r21922_condition(self):
        return NumInPartyGT(1) !Global("Visit_Doubtful","AR1500",1)


    def r21944_condition(self):
        return Global("Know_Hargrimm","GLOBAL",1)


    def r21945_condition(self):
        return Global("Know_Acaste","GLOBAL",1)


    def r21946_condition(self):
        return Global("Know_Stale_Mary","GLOBAL",1)


    def r21947_condition(self):
        return Global("Know_Silent_King","GLOBAL",1)


    def r21948_condition(self):
        return not self.gsm.get_in_party_morte()


    def r21949_condition(self):
        return self.gsm.get_in_party_morte()


    def r25248_condition(self):
        return !Global("CR_Vic","GLOBAL",1) Global("Know_Many","GLOBAL",0)


    def r25252_condition(self):
        return !Global("CR_Vic","GLOBAL",1) Global("Know_Many","GLOBAL",1)


    def r25253_condition(self):
        return !Global("CR_Vic","GLOBAL",1) Global("Know_Many","GLOBAL",1)


    def r21994_condition(self):
        return Global("CR_Vic","GLOBAL",1)


    def r21995_condition(self):
        return Global("CR_Vic","GLOBAL",1)


    def r22015_condition(self):
        return !Global("Lawful_Soego_1","GLOBAL",1)


    def r22016_condition(self):
        return Global("Lawful_Soego_1","GLOBAL",1)


    def r22020_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r22035_condition(self):
        return !Global("Dustman_Initiation","GLOBAL",5)


    def r22051_condition(self):
        return self.gsm.get_soego_value() == 0


    def r66173_condition(self):
        return self.gsm.get_soego_value() > 0


    def r64617_condition(self):
        return Global("Soego_Strangle","GLOBAL",1) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r64618_condition(self):
        return Global("Mortuary_Soego_Killed","GLOBAL",1)


    def r64625_condition(self):
        return Global("Soego_Strangle","GLOBAL",1) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r64626_condition(self):
        return Global("Mortuary_Soego_Killed","GLOBAL",1)


    def r22058_condition(self):
        return Global("Soego_Strangle","GLOBAL",0) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r22060_condition(self):
        return Global("Soego_Strangle","GLOBAL",0) Global("Mortuary_Soego_Killed","GLOBAL",0)


    def r66716_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r66717_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r66721_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r66722_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12