class SoegoLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def j63982_s1_r1438_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def j63982_s1_r1439_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def r1439_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalchaotic_soego_1')


    def r1448_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalchaotic_soego_2')


    def j63982_s3_r1450_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def j63982_s3_r1453_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def j63982_s4_r1456_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def r1456_action(self):
        self.state_manager.world_manager.set_soego_value(1)


    def j63982_s4_r1457_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def r1457_action(self):
        self.state_manager.world_manager.set_soego_value(1)


    def r1466_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalchaotic_soego_2')


    def r1478_action(self):
        self.state_manager.gain_experience('party', 500)
        self.state_manager.world_manager.set_gate_open(True)
        self.state_manager.world_manager.set_gate_cut_scene(1)
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('0201cut1') %$#


    def r1482_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalchaotic_soego_3')
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_soego_1')


    def r1490_action(self):
        #$% SetDoorLocked("fakedoor",FALSE) %$#
        return


    def r1492_action(self):
        self.state_manager.world_manager.set_gate_cut_scene(2)


    def r1493_action(self):
        self.state_manager.world_manager.set_gate_cut_scene(2)


    def r1509_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -1, 'globalchaotic_soego_2')


    def r1525_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r1528_action(self):
        #$% ?.play_sound('SPE_11') %$#
        return


    def r1530_action(self):
        self.state_manager.world_manager.set_soego_strangle(True)


    def r1531_action(self):
        self.state_manager.world_manager.set_soego_strangle(True)


    def r1533_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r1535_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r4809_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_soego_1')


    def r4810_action(self):
        self.state_manager.world_manager.set_soego_exposed(True)


    def r4836_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(1)


    def r4837_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(1)
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -3, 'globalevil_dhall_2')


    def r4861_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r4862_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r4864_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_soego_2')


    def j63982_s38_r66706_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def r66706_action(self):
        self.state_manager.world_manager.set_soego_value(1)


    def j63982_s38_r66707_action(self):
        self.state_manager.journal_manager.update_journal('63982')
        #$% .register('63982', 'У главных ворот Морга я встретил тленного по имени Соэго... он выглядел уставшим, как будто он неделю не спал. Судя по его глазам и бледности кожи, он подхватил какую-то болезнь.') %$#


    def r66707_action(self):
        self.state_manager.world_manager.set_soego_value(1)


    def r4926_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', 1, 'globallawful_soego_1')


    def r4931_action(self):
        self.state_manager.world_manager.set_soego_adahn(True)
        self.state_manager.world_manager.inc_adahn()
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)


    def r4961_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
        #$% Attack(Protagonist) %$#


    def r4967_action(self):
        self.state_manager.world_manager.set_soego_adahn(True)
        self.state_manager.world_manager.inc_adahn()
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)


    def r4975_action(self):
        self.state_manager.gain_experience('party', 500)
        self.state_manager.world_manager.set_gate_open(True)
        self.state_manager.world_manager.set_gate_cut_scene(1)
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('0201cut1') %$#


    def r4988_action(self):
        self.state_manager.gain_experience('party', 500)
        self.state_manager.world_manager.set_gate_open(True)
        self.state_manager.world_manager.set_gate_cut_scene(1)
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('0201cut1') %$#


    def r21655_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21656_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21657_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21658_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21660_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def j21805_s71_r21800_action(self):
        self.state_manager.journal_manager.update_journal('21805')
        #$% .register('21805', 'Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.') %$#


    def j21805_s71_r64569_action(self):
        self.state_manager.journal_manager.update_journal('21805')
        #$% .register('21805', 'Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.') %$#


    def j21805_s71_r64570_action(self):
        self.state_manager.journal_manager.update_journal('21805')
        #$% .register('21805', 'Соэго сказал, чтобы я не нападал на нежить в Мертвых Народах, поскольку они не станут причинять мне вред, пока я веду себя мирно.') %$#


    def r66181_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21852_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#
        self.state_manager.journal_manager.update_journal('21856')
        #$%.register('21856', 'Я нашел Соэго. Он был заражен ликантропией, которая свела его в катакомбы. Его разум более не принадлежит ему, его вера в тленных утеряна. %$#')


    def r64623_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r64624_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r21853_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#
        self.state_manager.journal_manager.update_journal('21857')
        #$%.register('21857', 'Соэго сказал мне, что он не знает, как проникнуть в тронный зал Безмолвного Короля, и все же мне придется сделать это, если я собираюсь убить его. %$#')


    def r21854_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def r24206_action(self):
        self.state_manager.world_manager.set_soego_told(True)
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'law', -3, 'globalchaotic_hargrimm_7')
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_hargrimm_3')


    def r21915_action(self):
        self.state_manager.world_manager.set_soego_told(True)
        self.state_manager.journal_manager.update_journal('21926')
        #$%.register('21926', 'Я рассказал Соэго про содержимое его дневника, а он превратился в крысооборотня и напал на меня. %$#')


    def r21914_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)


    def r21916_action(self):
        self.state_manager.world_manager.set_soego_fled(1)
        #$% Enemy() %$#
        self.state_manager.journal_manager.update_journal('21926')
        #$%.register('21926', 'Я рассказал Соэго про содержимое его дневника, а он превратился в крысооборотня и напал на меня. %$#')


    def r21917_action(self):
        self.state_manager.world_manager.set_doubtful_skel(2)
        self.state_manager.world_manager.set_visit_doubtful(True)


    def r21956_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$# RestPartyEx(0,10,FALSE)
        #$% FadeFromColor([20.0],0) %$#
        return


    def r21979_action(self):
        self.state_manager.world_manager.set_know_silent_king(True)


    def r21986_action(self):
        self.state_manager.world_manager.set_know_hargrimm(True)


    def j25254_s94_r25248_action(self):
        self.state_manager.journal_manager.update_journal('25254')
        #$% .register('25254', 'Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.') %$#


    def j25254_s94_r25252_action(self):
        self.state_manager.journal_manager.update_journal('25254')
        #$% .register('25254', 'Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.') %$#


    def j25254_s94_r25253_action(self):
        self.state_manager.journal_manager.update_journal('25254')
        #$% .register('25254', 'Я сказал Соэго, что Безмолвный Король — не более чем высушенный труп. Он сказал, что мне нужно сообщить это Многоединому, и я буду вознагражден. Многоединый — это коллективный разум черепных крыс в Логове Мысли на востоке от Катакомб плачущих камней.') %$#


    def j21996_s94_r21994_action(self):
        self.state_manager.journal_manager.update_journal('21996')
        #$% .register('21996', 'Я сказал Соэго, что Безмолвный Король — не более чем высохший труп. Мне нужно сообщить это Многоединому, как только предоставится такая возможность.') %$#


    def j21996_s94_r21995_action(self):
        self.state_manager.journal_manager.update_journal('21996')
        #$% .register('21996', 'Я сказал Соэго, что Безмолвный Король — не более чем высохший труп. Мне нужно сообщить это Многоединому, как только предоставится такая возможность.') %$#


    def r21998_action(self):
        #$% Enemy() %$#
        return


    def r22012_action(self):
        #$% ClearAllActions() %$#
        return


    def r22024_action(self):
        self.state_manager.world_manager.set_soego_value(4)
        self.state_manager.world_manager.set_soego_fled(2)
        #$% Enemy() %$#
        self.state_manager.journal_manager.update_journal('21856')
        #$%.register('21856', 'Я нашел Соэго. Он был заражен ликантропией, которая свела его в катакомбы. Его разум более не принадлежит ему, его вера в тленных утеряна. %$#')


    def r22051_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#
        self.state_manager.journal_manager.update_journal('22052')
        #$%.register('22052', 'Я нашел Соэго. Он обнаружил группу мертвых стражей, защищавших катакомбы. Он пытается убедить их присоединиться к Истинной Смерти. %$#')


    def r66173_action(self):
        self.state_manager.world_manager.set_met_soego2(True)
        self.state_manager.world_manager.set_soego_value(3)
        self.state_manager.world_manager.set_soego_talk(2)
        #$% EndCutSceneMode() %$#


    def j21857_s110_r22058_action(self):
        self.state_manager.journal_manager.update_journal('21857')
        #$% .register('21857', 'Соэго сказал мне, что он не знает, как проникнуть в тронный зал Безмолвного Короля, и все же мне придется сделать это, если я собираюсь убить его.') %$#


    def r1440_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1441_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r1446_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1451_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1452_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1458_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1459_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1464_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1469_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1470_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r1471_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1472_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1478_condition(self):
        return not self.state_manager.world_manager.get_has_keymo()


    def r1479_condition(self):
        return self.state_manager.world_manager.get_has_keymo()


    def r1483_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1484_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1487_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r1488_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r1495_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1496_condition(self):
        return self.state_manager.world_manager.get_appearance() == 2


    def r1497_condition(self):
        return self.state_manager.world_manager.get_appearance() != 2


    def r1506_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1512_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1513_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r1514_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1515_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1518_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r1520_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r1521_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r1522_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r1530_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r1531_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r4805_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10 and \
               not self.state_manager.world_manager.get_gate_open()


    def r4806_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11 and \
               not self.state_manager.world_manager.get_gate_open()


    def r4807_condition(self):
        return self.state_manager.world_manager.get_vaxis_value() == 1 and \
               not self.state_manager.world_manager.get_dead_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_leave() and \
               self.state_manager.world_manager.get_vaxis_betrayed() == 0


    def r4810_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13 and \
               self.state_manager.world_manager.get_vaxis_exposes_soego()


    def r4811_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12 and \
               self.state_manager.world_manager.get_vaxis_exposes_soego()


    def r4832_condition(self):
        return self.state_manager.world_manager.get_pharod_value() < 1


    def r4833_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r4834_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4835_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4836_condition(self):
        return not self.state_manager.world_manager.get_vaxis_lawful()


    def r4837_condition(self):
        return self.state_manager.world_manager.get_vaxis_lawful()


    def r4839_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r916_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4853_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4854_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4858_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4859_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4866_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4867_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4870_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4871_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4876_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4877_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4879_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12


    def r4882_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4883_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4887_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4888_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4892_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4893_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r4896_condition(self):
        return self.state_manager.world_manager.get_gate_open()


    def r4897_condition(self):
        return not self.state_manager.world_manager.get_gate_open()


    def r66706_condition(self):
        return self.state_manager.world_manager.get_appearance() < 2


    def r66707_condition(self):
        return self.state_manager.world_manager.get_appearance() == 2


    def r4910_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r4912_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r4913_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r4917_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r4921_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 11


    def r4929_condition(self):
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r4930_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r4931_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               not self.state_manager.world_manager.get_soego_adahn()


    def r4932_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_soego_adahn()


    def r4951_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r4955_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 11


    def r4958_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r4959_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r4965_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r4967_condition(self):
        return not self.state_manager.world_manager.get_soego_adahn()


    def r4968_condition(self):
        return self.state_manager.world_manager.get_soego_adahn()


    def r4975_condition(self):
        return not self.state_manager.world_manager.get_has_keymo()


    def r4976_condition(self):
        return self.state_manager.world_manager.get_has_keymo()


    def r4984_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r4985_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r4988_condition(self):
        return not self.state_manager.world_manager.get_has_keymo()


    def r4989_condition(self):
        return self.state_manager.world_manager.get_has_keymo()


    def r4991_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10


    def r4992_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r4993_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r4994_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r21655_condition(self):
        return self.state_manager.world_manager.get_soego_value() > 0


    def r21656_condition(self):
        return self.state_manager.world_manager.get_soego_value() == 0


    def r21657_condition(self):
        return self.state_manager.world_manager.get_soego_value() == 0


    def r21658_condition(self):
        return self.state_manager.world_manager.get_soego_value() == 0


    def r21660_condition(self):
        return self.state_manager.world_manager.get_soego_value() == 0


    def r21663_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r21800_condition(self):
        return self.state_manager.count_in_party() == 0 and \
               not self.state_manager.world_manager.get_visit_doubtful()


    def r64569_condition(self):
        return self.state_manager.count_in_party() > 0 and \
               not self.state_manager.world_manager.get_visit_doubtful()


    def r64547_condition(self):
        return self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r21808_condition(self):
        return self.state_manager.world_manager.get_mortuary_soego_killed()


    def r21811_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r21815_condition(self):
        return self.state_manager.world_manager.get_soego_strangle()


    def r21818_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r21823_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r66181_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() == 5 and \
               self.state_manager.world_manager.get_soego_value() > 0 and \
               self.state_manager.world_manager.get_soego_value() < 3


    def r21852_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() == 5 and \
               self.state_manager.world_manager.get_soego_value() == 0


    def r64623_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5 and \
               self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r64624_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5 and \
               self.state_manager.world_manager.get_mortuary_soego_killed()


    def r21853_condition(self):
        return not self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed() and \
               self.state_manager.world_manager.get_dustman_initiation() != 5


    def r21854_condition(self):
        return not self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed() and \
               self.state_manager.world_manager.get_dustman_initiation() != 5


    def r24206_condition(self):
        return self.state_manager.world_manager.get_silent_king() and \
               not self.state_manager.world_manager.get_soego_told() and \
               self.state_manager.world_manager.get_lawful_hargrimm_1()


    def r21915_condition(self):
        return self.state_manager.world_manager.get_silent_king() and \
               not self.state_manager.world_manager.get_soego_told() and \
               not self.state_manager.world_manager.get_lawful_hargrimm_1()


    def r21914_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() == 5 and \
               self.state_manager.world_manager.get_soego_value() < 3


    def r21916_condition(self):
        return self.state_manager.world_manager.get_soego_journal()


    def r21917_condition(self):
        return self.state_manager.world_manager.get_doubtful_skel() == 1


    def r21920_condition(self):
        return self.state_manager.count_in_party() == 0 and \
               not self.state_manager.world_manager.get_visit_doubtful()


    def r21922_condition(self):
        return self.state_manager.count_in_party() > 0 and \
               not self.state_manager.world_manager.get_visit_doubtful()


    def r21944_condition(self):
        return self.state_manager.world_manager.get_know_hargrimm()


    def r21945_condition(self):
        return self.state_manager.world_manager.get_know_acaste()


    def r21946_condition(self):
        return self.state_manager.world_manager.get_know_stale_mary()


    def r21947_condition(self):
        return self.state_manager.world_manager.get_know_silent_king()


    def r21948_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r21949_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r25248_condition(self):
        return self.state_manager.world_manager.get_cr_vic() != 1 and \
               not self.state_manager.world_manager.get_know_many()


    def r25252_condition(self):
        return self.state_manager.world_manager.get_cr_vic() != 1 and \
               self.state_manager.world_manager.get_know_many()


    def r25253_condition(self):
        return self.state_manager.world_manager.get_cr_vic() != 1 and \
               self.state_manager.world_manager.get_know_many()


    def r21994_condition(self):
        return self.state_manager.world_manager.get_cr_vic() == 1


    def r21995_condition(self):
        return self.state_manager.world_manager.get_cr_vic() == 1


    def r22015_condition(self):
        return not self.state_manager.world_manager.get_lawful_soego_1()


    def r22016_condition(self):
        return self.state_manager.world_manager.get_lawful_soego_1()


    def r22020_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r22035_condition(self):
        return self.state_manager.world_manager.get_dustman_initiation() != 5


    def r22051_condition(self):
        return self.state_manager.world_manager.get_soego_value() == 0


    def r66173_condition(self):
        return self.state_manager.world_manager.get_soego_value() > 0


    def r64617_condition(self):
        return self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r64618_condition(self):
        return self.state_manager.world_manager.get_mortuary_soego_killed()


    def r64625_condition(self):
        return self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r64626_condition(self):
        return self.state_manager.world_manager.get_mortuary_soego_killed()


    def r22058_condition(self):
        return not self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r22060_condition(self):
        return not self.state_manager.world_manager.get_soego_strangle() and \
               not self.state_manager.world_manager.get_mortuary_soego_killed()


    def r66716_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r66717_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


    def r66721_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') < 13


    def r66722_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'dexterity') > 12


class SoegoLogic(SoegoLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
