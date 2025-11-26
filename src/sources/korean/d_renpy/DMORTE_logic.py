class MorteLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r17833_action(self):
        self.state_manager.world_manager.set_has_intro_key(True)
        self.state_manager.world_manager.set_morte_value(1)
        self.state_manager.world_manager.set_read_scars(True)
        self.state_manager.world_manager.set_in_party_morte(True)


    def r1088_action(self):
        self.state_manager.world_manager.set_read_scars(True)


    def r1079_action(self):
        self.state_manager.world_manager.set_morte_value(1)
        self.state_manager.world_manager.set_in_party_morte(True)


    def r1845_action(self):
        self.state_manager.world_manager.set_morte_harlot_quip_1(True)


    def r1846_action(self):
        self.state_manager.world_manager.set_morte_harlot_quip_1(True)


    def r1847_action(self):
        self.state_manager.world_manager.set_morte_harlot_quip_1(True)


    def r2080_action(self):
        self.state_manager.world_manager.set_know_mimir(True)
        self.state_manager.world_manager.set_morte_mimir(1)


    def r9029_action(self):
        self.state_manager.world_manager.set_know_gith(True)


    def r2603_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r2602_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r2605_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r6952_action(self):
        self.state_manager.world_manager.set_know_lady(True)


    def j38205_s55_r3474_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', '내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다.') %$#


    def j38205_s57_r3483_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', '내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다.') %$#


    def r3871_action(self):
        self.state_manager.world_manager.set_warning(1)


    def r3874_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r3877_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r3965_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r3966_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r3972_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r3988_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r4029_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_giant_skel_mort_1')


    def r4144_action(self):
        self.state_manager.world_manager.set_warning(1)


    def r4145_action(self):
        self.state_manager.world_manager.set_warning(1)


    def r4142_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r4143_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r4140_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r4339_action(self):
        self.state_manager.world_manager.set_warning(1)


    def r4342_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r4345_action(self):
        self.state_manager.world_manager.set_warning(2)


    def j64512_s85_r4676_action(self):
        self.state_manager.journal_manager.update_journal('64512')
        #$% .register('64512', '좀비로 변장한 사내는 아나키스트의 일원인 듯하다. 아나키스트는 권력자를 타도하고 '조직'의 냄새가 조금이라도 나는 것은 뭐든지 파괴하려는 당파이다.') %$#


    def r4678_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -3, 'globalchaotic_vaxis_3')


    def r4679_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_vaxis_4')


    def r4682_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 3, 'globallawful_vaxis_3')


    def r4687_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_vaxis_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_vaxis_2')


    def j64512_s89_r4693_action(self):
        self.state_manager.journal_manager.update_journal('64512')
        #$% .register('64512', '좀비로 변장한 사내는 아나키스트의 일원인 듯하다. 아나키스트는 권력자를 타도하고 '조직'의 냄새가 조금이라도 나는 것은 뭐든지 파괴하려는 당파이다.') %$#


    def r4695_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -3, 'globalchaotic_vaxis_3')


    def r4699_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 3, 'globallawful_vaxis_3')


    def r64535_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$#
        self.state_manager.characters_manager.set_property('protagonist', 'looks_like', 'zombie')
        #$% Wait(2) %$#
        #$% FadeFromColor([20.0],0) %$#
        self.state_manager.gain_experience('party', 500)
        self.state_manager.world_manager.set_vaxis_global_xp(True)


    def r64534_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(1) %$#
        self.state_manager.characters_manager.set_property('protagonist', 'looks_like', 'zombie')
        #$% Wait(2) %$#
        #$% FadeFromColor([20.0],0) %$#


    def r5030_action(self):
        self.state_manager.world_manager.set_warning(1)


    def r5033_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r5036_action(self):
        self.state_manager.world_manager.set_warning(2)


    def r6075_action(self):
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)


    def r6658_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r6659_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r6957_action(self):
        self.state_manager.world_manager.set_translate_dabus(0)


    def r7056_action(self):
        self.state_manager.world_manager.set_morte_zombie_female_bar_quip(True)


    def r7057_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r7058_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r7483_action(self):
        self.state_manager.world_manager.inc_bd_morte_morale()


    def r7485_action(self):
        self.state_manager.world_manager.inc_morte_taunt()


    def r11977_action(self):
        self.state_manager.world_manager.set_ingress_teeth_installed(True)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_ingress_teeth_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_ingress_teeth_1')


    def r11980_action(self):
        self.state_manager.world_manager.set_ingress_teeth_installed(True)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_ingress_teeth_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_ingress_teeth_1')


    def r11982_action(self):
        self.state_manager.world_manager.dec_morale_morte()


    def r11983_action(self):
        self.state_manager.world_manager.set_ingress_teeth_installed(True)


    def r12554_action(self):
        self.state_manager.world_manager.dec_morale_morte(2)
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ChangeAIScript("MDKTNO",DEFAULT) %$#
        #$% ForceAttack(Protagonist,Myself) %$#


    def r12555_action(self):
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ChangeAIScript("MDKTNO",DEFAULT) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        return


    def r12556_action(self):
        self.state_manager.world_manager.set_baria(2)


    def r12855_action(self):
        self.state_manager.world_manager.set_know_mimir(True)


    def r12858_action(self):
        self.state_manager.world_manager.set_know_mimir(True)


    def r12860_action(self):
        self.state_manager.world_manager.set_morte_mimir(1)


    def r12861_action(self):
        self.state_manager.world_manager.set_morte_mimir(1)


    def r13774_action(self):
        self.state_manager.world_manager.set_morte_sdthug_quip_1(True)
        self.state_manager.world_manager.set_know_chaosmen(True)


    def r13775_action(self):
        self.state_manager.world_manager.set_morte_sdthug_quip_1(True)


    def r13776_action(self):
        self.state_manager.world_manager.set_morte_sdthug_quip_1(True)


    def r13986_action(self):
        self.state_manager.world_manager.set_morte_wilder_quip_1(True)
        self.state_manager.world_manager.set_know_chaosmen(True)


    def r13987_action(self):
        self.state_manager.world_manager.set_morte_wilder_quip_1(True)


    def r13988_action(self):
        self.state_manager.world_manager.set_morte_wilder_quip_1(True)


    def r15492_action(self):
        self.state_manager.world_manager.inc_bd_morte_morale()


    def s178_action(self):
        self.state_manager.world_manager.set_know_mimir(True)


    def s179_action(self):
        self.state_manager.world_manager.inc_once_morte_mimir('globalmorte_mimir')


    def r15495_action(self):
        self.state_manager.world_manager.set_adyzoel(2)


    def r16882_action(self):
        self.state_manager.world_manager.inc_tree_helpers()


    def r16884_action(self):
        self.state_manager.world_manager.set_tree_a(True)


    def r16885_action(self):
        self.state_manager.world_manager.set_tree_i(True)


    def r16886_action(self):
        self.state_manager.world_manager.set_tree_g(True)


    def r16887_action(self):
        self.state_manager.world_manager.set_tree_d(True)


    def r16888_action(self):
        self.state_manager.world_manager.inc_bd_dakkon_morale()
        self.state_manager.world_manager.set_tree_d(True)


    def r16889_action(self):
        self.state_manager.world_manager.set_tree_n(True)


    def r16890_action(self):
        self.state_manager.world_manager.set_tree_v(True)


    def r16893_action(self):
        self.state_manager.world_manager.set_tree_m(True)


    def r16894_action(self):
        self.state_manager.world_manager.set_tree_a(True)


    def r16895_action(self):
        self.state_manager.world_manager.set_tree_i(True)


    def r16896_action(self):
        self.state_manager.world_manager.set_tree_g(True)


    def r16897_action(self):
        self.state_manager.world_manager.set_tree_d(True)


    def r16898_action(self):
        self.state_manager.world_manager.inc_bd_dakkon_morale()
        self.state_manager.world_manager.set_tree_d(True)


    def r16899_action(self):
        self.state_manager.world_manager.set_tree_v(True)


    def r17584_action(self):
        self.state_manager.world_manager.dec_gold(40)


    def r18802_action(self):
        self.state_manager.world_manager.inc_bd_morte_morale()


    def r18578_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_yellow_1')


    def r18808_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_yellow_1')


    def r18820_action(self):
        self.state_manager.world_manager.dec_gold(5)


    def r18821_action(self):
        self.state_manager.world_manager.dec_gold(50)


    def r18822_action(self):
        self.state_manager.world_manager.dec_gold(100)


    def r18823_action(self):
        self.state_manager.world_manager.dec_gold(500)


    def r18830_action(self):
        self.state_manager.world_manager.dec_gold(5)


    def r18833_action(self):
        self.state_manager.world_manager.dec_gold(5)


    def r18834_action(self):
        self.state_manager.world_manager.dec_gold(10)


    def r18835_action(self):
        self.state_manager.world_manager.dec_gold(50)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_yellow_2')


    def r18836_action(self):
        self.state_manager.world_manager.dec_gold(100)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_yellow_2')


    def j20538_s209_r20612_action(self):
        self.state_manager.journal_manager.update_journal('20538')
        #$% .register('20538', '여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다.') %$#


    def r20612_action(self):
        self.state_manager.world_manager.set_know_marta_work(3)


    def j20538_s209_r20613_action(self):
        self.state_manager.journal_manager.update_journal('20538')
        #$% .register('20538', '여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다.') %$#


    def r24697_action(self):
        self.state_manager.world_manager.set_know_lady(True)


    def r22850_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_cube_3')


    def r22853_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_cube_4')


    def r22856_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_cube_5')


    def r24904_action(self):
        self.state_manager.world_manager.set_morte_value(1)


    def r24905_action(self):
        self.state_manager.world_manager.set_morte_value(1)
        self.state_manager.world_manager.set_in_party_morte(True)


    def r24925_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_morte_1')


    def j24933_s243_r24932_action(self):
        self.state_manager.journal_manager.update_journal('24933')
        #$% .register('24933', '나는 내 머리를 명료하게 유지시키고 무슨 일이 일어나고 있는지를 파악하기 위하여 내 경험을 글로 쓰기 시작했다. 나는 시체 공시소의 일종인  "시체안치소"란 곳에서 깨어났다. 나는 내가 누구인지, 내가 여기서 뭘 하고 있는지, 그리고 내가 어떻게 여기에 오게 되었는지도 모른다. 내가 깨어나서 처음 발견한 것은 모트란 말하는 해골이었다. 그는 우리는 이 곳에 갇혔으며 방에 있는 느릿느릿한 시체들 중 하나가 열쇠를 가지고 있을 거라고 말했다. 그는 내게 방의 선반들을 뒤져 메스를 찾아낸 후 시체들 중 하나를 '죽을' 때까지 찌르라고 권하였다.') %$#


    def r24932_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def s244_action(self):
        self.state_manager.world_manager.inc_once_morte_mimir('globalmorte_mimir')


    def s268_action(self):
        self.state_manager.world_manager.inc_once_morte_mimir('globalmorte_mimir')


    def r28041_action(self):
        self.state_manager.world_manager.dec_gold(10)


    def r28042_action(self):
        self.state_manager.world_manager.dec_gold(10)


    def r28038_action(self):
        self.state_manager.world_manager.dec_gold(30)


    def r28039_action(self):
        self.state_manager.world_manager.dec_gold(30)


    def r28040_action(self):
        self.state_manager.world_manager.dec_gold(50)


    def r28044_action(self):
        self.state_manager.world_manager.dec_gold(50)


    def r28045_action(self):
        self.state_manager.world_manager.dec_gold(50)


    def r28046_action(self):
        self.state_manager.world_manager.dec_gold(50)


    def r28047_action(self):
        self.state_manager.world_manager.dec_gold(80)


    def r28048_action(self):
        self.state_manager.world_manager.dec_gold(80)


    def r28743_action(self):
        self.state_manager.world_manager.set_morte_stolen(3)


    def r28744_action(self):
        self.state_manager.world_manager.inc_bd_morte_morale()
        self.state_manager.world_manager.set_morte_stolen(3)


    def r28745_action(self):
        self.state_manager.world_manager.set_morte_stolen(3)


    def r28968_action(self):
        self.state_manager.world_manager.set_qui_sai(2)


    def r28971_action(self):
        self.state_manager.world_manager.set_qui_sai(2)


    def r28975_action(self):
        self.state_manager.world_manager.set_qui_sai(2)


    def r28976_action(self):
        self.state_manager.world_manager.set_qui_sai(2)


    def r30826_action(self):
        self.state_manager.world_manager.set_able(True)


    def r31567_action(self):
        #$% OpenDoor("Statue") %$#
        #$% Kill(Protagonist) %$#
        return


    def r32370_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32375_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32380_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32385_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32390_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32395_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32400_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r32405_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def r33076_action(self):
        self.state_manager.world_manager.set_lecture_ghysis(2)


    def r33959_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r33963_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r33966_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r34991_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35001_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r34993_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35023_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35033_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35025_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35055_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35065_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35057_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35087_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35097_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35089_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35119_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35129_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35121_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35151_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35161_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35153_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35183_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35193_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35185_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35215_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35225_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35217_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35247_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35257_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35249_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35279_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35289_action(self):
        self.state_manager.world_manager.set_morte_quip(True)


    def r35281_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalmorte_zombie_1')


    def r35319_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35342_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r35360_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r35358_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35396_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35419_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r35437_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r35435_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35473_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35496_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r35514_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r35512_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35550_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_skeleton_mort_1')


    def r35573_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', -1)


    def r35591_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'good', 1)


    def r35589_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r39716_action(self):
        self.state_manager.world_manager.set_yves_shared(True)


    def r39719_action(self):
        self.state_manager.world_manager.set_yves_shared(True)


    def r39721_action(self):
        self.state_manager.world_manager.set_yves_shared(True)


    def r39722_action(self):
        self.state_manager.world_manager.set_yves_shared(True)


    def s413_action(self):
        self.state_manager.world_manager.set_yves_shared(True)


    def r40848_action(self):
        self.state_manager.world_manager.set_met_modrons(True)


    def r40852_action(self):
        self.state_manager.world_manager.set_met_modrons(True)


    def r40856_action(self):
        self.state_manager.world_manager.set_met_modrons(True)


    def j39516_s443_r41837_action(self):
        self.state_manager.journal_manager.update_journal('39516')
        #$% .register('39516', '내 원래 일지를 잃어버렸기 때문에 난 새로운 일지를 쓰기 시작했다. 나는 "시체안치소"란 곳에서 깨어났다. 난 내가 누구인지, 내가 이 곳에서 무엇을 하고 있는 것인지, 그리고 어떻게 이 곳에 오게 되었는지도 모른다. 내가 만난 건 모트라는 이름의 말하는 해골뿐이다... 내 상처를 살피다 그는 내 등에 문신으로 새겨진 '지시 사항'을 발견했다.  "네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다,  절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿게 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안돼. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해: 일지를 읽은 후 파로드를 찾도록 해.  내가 나에게 이 메시지를 남겼을까? 보아하니 난 이 '파로드'란 자와 내 일지를 찾아야만 할 것 같다.') %$#


    def r41911_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_2(True)


    def j67862_s462_r41921_action(self):
        self.state_manager.journal_manager.update_journal('67862')
        #$% .register('67862', '나는 리크윈드를 저주한 자를 시 공회당에서 만났다. 그의 이름은 점블 머더센스이다.') %$#


    def r41921_action(self):
        self.state_manager.world_manager.set_jumble_reekwind(True)


    def j39490_s467_r43910_action(self):
        self.state_manager.journal_manager.update_journal('39490')
        #$% .register('39490', '나는 네멜에게 그녀의 친구 앨윈이 그녀를 찾고 있다고 전해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다.') %$#


    def r43910_action(self):
        self.state_manager.world_manager.set_nemelle(3)
        self.state_manager.world_manager.set_aelwyn_value(4)


    def j39490_s470_r43918_action(self):
        self.state_manager.journal_manager.update_journal('39490')
        #$% .register('39490', '나는 네멜에게 그녀의 친구 앨윈이 그녀를 찾고 있다고 전해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다.') %$#


    def r43918_action(self):
        self.state_manager.world_manager.set_nemelle(3)
        self.state_manager.world_manager.set_aelwyn_value(4)


    def r45029_action(self):
        self.state_manager.world_manager.set_lecture_death(2)


    def j39477_s478_r45093_action(self):
        self.state_manager.journal_manager.update_journal('39477')
        #$% .register('39477', '모트는 '삼의 법칙'에 대해 얘기를 했다. 어떤 사람들은 모든 것이 삼의 단위로 발생한다고 믿으며, 그 숫자에 큰 의미를 부여하는 모양이다.') %$#


    def j39477_s481_r45103_action(self):
        self.state_manager.journal_manager.update_journal('39477')
        #$% .register('39477', '모트는 '삼의 법칙'에 대해 얘기를 했다. 어떤 사람들은 모든 것이 삼의 단위로 발생한다고 믿으며, 그 숫자에 큰 의미를 부여하는 모양이다.') %$#


    def r50166_action(self):
        self.state_manager.world_manager.set_translate_dabus(0)


    def r50325_action(self):
        self.state_manager.world_manager.set_know_lady(True)


    def r50416_action(self):
        self.state_manager.world_manager.dec_morale_morte()


    def s505_action(self):
        #$% DropInventory() %$#
        #$% LeaveParty() %$#
        return


    def r52577_action(self):
        self.state_manager.world_manager.set_ravel_grace(2)


    def r52578_action(self):
        self.state_manager.world_manager.set_ravel_annah(2)


    def r53625_action(self):
        self.state_manager.world_manager.dec_morale_morte()


    def r53629_action(self):
        self.state_manager.world_manager.set_morte_story(True)
        self.state_manager.journal_manager.update_journal('53633')
        #$%.register('53633', '모트는 오래 전에 해골들의 기둥으로부터 그를 끄집어낸 것은 바로 나였다고 한다. 하지만 그는 내가 어떤 방법을 썼는지에 대해서는 잘 알지 못했다. 또한 그는 기둥을 떠났을 때 기둥에 축적된 지식들을 모두 잃었다고 한다... 그것은 왜 그가 내 전신에게 주장했던 만큼 유용하지 않았는가를 설명해줄 것 같다. %$#')


    def r53630_action(self):
        self.state_manager.world_manager.dec_morale_morte()
        self.state_manager.world_manager.set_morte_story(True)
        self.state_manager.journal_manager.update_journal('53661')
        #$%.register('53661', '모트는 원래 베이터의 첫 번째 층인 아버누스에 있는, 몸을 잃은 머리들의 집합체인 해골들의 기둥에 속해 있었다. 그것은 거짓말로 다른 사람들을 죽음으로 몰아넣은 자들의 머리로 만들어졌다. %$#')


    def r53795_action(self):
        self.state_manager.world_manager.dec_morale_morte()


    def r53801_action(self):
        self.state_manager.world_manager.dec_morale_morte()


    def j53633_s521_r53807_action(self):
        self.state_manager.journal_manager.update_journal('53633')
        #$% .register('53633', '모트는 오래 전에 해골들의 기둥으로부터 그를 끄집어낸 것은 바로 나였다고 한다. 하지만 그는 내가 어떤 방법을 썼는지에 대해서는 잘 알지 못했다. 또한 그는 기둥을 떠났을 때 기둥에 축적된 지식들을 모두 잃었다고 한다... 그것은 왜 그가 내 전신에게 주장했던 만큼 유용하지 않았는가를 설명해줄 것 같다.') %$#


    def r53825_action(self):
        self.state_manager.world_manager.set_pillar_musk(True)


    def r53826_action(self):
        self.state_manager.world_manager.set_pillar_musk(True)


    def r53841_action(self):
        self.state_manager.world_manager.set_pillar_question(0)


    def r53843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_pillar_2')
        self.state_manager.world_manager.set_pillar(2)
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1001Cut1') %$#


    def r53867_action(self):
        self.state_manager.world_manager.set_pillar_question(0)


    def r53850_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_pillar_2')
        self.state_manager.world_manager.set_pillar(2)
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1001Cut1') %$#


    def r53856_action(self):
        self.state_manager.world_manager.set_pillar_question(0)


    def r54160_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54180_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54192_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54197_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54201_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54205_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54210_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54214_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54218_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54227_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54233_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54238_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54242_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54244_action(self):
        self.state_manager.world_manager.set_morte_quip_regret_portal(2)


    def r54246_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54262_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54267_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54272_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54276_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54278_action(self):
        self.state_manager.world_manager.inc_bd_morte_morale()
        self.state_manager.world_manager.set_morte_morale_fortress_portal(True)


    def r54280_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54833_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54836_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def r54839_action(self):
        #$% SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE) %$#
        #$% SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE) %$#
        return


    def s576_action(self):
        self.state_manager.world_manager.set_know_source(True)


    def r55902_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_nordom_5')


    def r55925_action(self):
        self.state_manager.world_manager.set_know_mechanus(True)


    def r55931_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 2, 'globallawful_nordom_2')


    def r55941_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -2, 'globalchaotic_nordom_4')


    def r61414_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def s603_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s604_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s606_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s607_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s608_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s610_action(self):
        self.state_manager.world_manager.inc_grace_talked_morte()


    def s611_action(self):
        self.state_manager.world_manager.set_grace_talked_morte(0)


    def s615_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(3)


    def s620_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(8)


    def s622_action(self):
        self.state_manager.world_manager.set_annah_talked_morte(0)


    def s623_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(1)


    def s625_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(3)


    def s628_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(5)


    def s629_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(6)


    def s631_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(7)


    def s633_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(8)


    def s635_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(9)


    def s640_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(1)


    def s642_action(self):
        self.state_manager.world_manager.set_nordom_talked_morte(0)


    def s643_action(self):
        self.state_manager.world_manager.set_nordom_talked_annah(0)


    def s644_action(self):
        self.state_manager.world_manager.set_nordom_talked_grace(2)


    def s645_action(self):
        self.state_manager.world_manager.set_nordom_talked_grace(3)


    def j65573_s652_r65569_action(self):
        self.state_manager.journal_manager.update_journal('65573')
        #$% .register('65573', '나는 모트에게 그가 깜빡 "잊고" 읽어주지 않은 가외의 문장 한 줄에 대해 따졌다. 그는 그것이 별로 중요한 것이 아니었기 때문에 읽어주지 않았다고 했다. 그가 거짓말을 하고 있는 건 분명하나 그 이유는 아직 모르겠다.') %$#


    def r65569_action(self):
        self.state_manager.world_manager.set_morte_tattoo_xp(True)
        self.state_manager.gain_experience('party', 1000)


    def r65621_action(self):
        self.state_manager.world_manager.set_morte_talent(True)
        self.state_manager.journal_manager.update_journal('65625')
        #$%.register('65625', '모트는 내게 자신에게는 다른 생명체를 화나게 만들 수 있는 "저주의 연도"라는 특수 능력이 있다고 말했다. 그는 생전과 죽은 후 지금까지 무수한 종류의 욕을 배운 덕에 어떻게 하면 사람들을 화나게 하여 그들로 하여금 그를 공격하게 할 수 있는지를 정확히 알고 있다. 모트가 그들을 화나게 만들면, 그들은 적의 공격을 회피하거나 적을 공격할 때 페널티를 안게 되며, 모트를 쫓아가서 백병전용 무기로  공격하는 것 이외의 다른 일은 일체 하지않게 된다. 주문을 사용하는 적을 만났을 경우 매우 유용한 능력인 것 같다. 이 능력은 마법과는 무관하기 때문에 마법에 내성이 있는 적에게도 효과가 있다. 모트가 다른 사람으로 더 많은 욕을 들을수록 이 능력은 향상되는 듯하다. %$#')


    def j65637_s667_r65631_action(self):
        self.state_manager.journal_manager.update_journal('65637')
        #$% .register('65637', '모트는 그가 로타의 선반에 앉아 있는 동안 "해골 폭도"라는 새로운 능력을 배웠다고 내게 말했다. 모트는 하루에 정해진 회수만큼 로타의 선반에서 만난 친구들을 소환할 수 있으며, 그들은 모트가 지정한 대상을 물어뜯은 후 도망친다. 그들이 입히는 대미지는 모트의 레벨에 비례한다.') %$#


    def j65669_s675_r65666_action(self):
        self.state_manager.journal_manager.update_journal('65669')
        #$% .register('65669', '모트는 내게 사무구에 있는 시 공회당에 가서 나이트 해그 래벌에 대해 더 자세히 알아보라고 권했다. .') %$#


    def j65678_s677_r65674_action(self):
        self.state_manager.journal_manager.update_journal('65678')
        #$% .register('65678', '모트는 사무구에는 래벌의 일부를 어디에서 얻어야 할지를 아는 사람이 있을지도 모으며,  만약 그것이 여의치 않으면 공회당으로 가서 감각석을 이용할 수도 있다고 얘기했다. 그것조차 별 성과가 없으면 창녀들에게 가볼 수도 있다... 적어도 온 천지를 돌아다니면서 사람들에게 일일이 물어보는 것보다는 나을 것이다.') %$#


    def j65712_s686_r65710_action(self):
        self.state_manager.journal_manager.update_journal('65712')
        #$% .register('65712', '나는 모트가 자신을 미미르(북구 신화에서 전지한 존재인 거인)라고 하는 데 대해 따졌으나, 내게는 그를 몰아세울만한 논리적 근거가 없었다. 그로부터 진실을 얻어내려면 그보다 거짓말 솜씨가 더 능숙해져야 할 것 같다.') %$#


    def j65712_s686_r65711_action(self):
        self.state_manager.journal_manager.update_journal('65712')
        #$% .register('65712', '나는 모트가 자신을 미미르(북구 신화에서 전지한 존재인 거인)라고 하는 데 대해 따졌으나, 내게는 그를 몰아세울만한 논리적 근거가 없었다. 그로부터 진실을 얻어내려면 그보다 거짓말 솜씨가 더 능숙해져야 할 것 같다.') %$#


    def r65731_action(self):
        self.state_manager.world_manager.set_morte_story(True)


    def r65733_action(self):
        self.state_manager.gain_experience('party', 12000)


    def r65750_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_morte_1')


    def r65751_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_morte_1')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_morte_1')


    def j53633_s699_r65753_action(self):
        self.state_manager.journal_manager.update_journal('53633')
        #$% .register('53633', '모트는 오래 전에 해골들의 기둥으로부터 그를 끄집어낸 것은 바로 나였다고 한다. 하지만 그는 내가 어떤 방법을 썼는지에 대해서는 잘 알지 못했다. 또한 그는 기둥을 떠났을 때 기둥에 축적된 지식들을 모두 잃었다고 한다... 그것은 왜 그가 내 전신에게 주장했던 만큼 유용하지 않았는가를 설명해줄 것 같다.') %$#


    def r65758_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65763_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65766_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65769_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65772_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65774_action(self):
        self.state_manager.world_manager.set_memory_morte_pillar(True)
        self.state_manager.gain_experience('protagonist', 12000)
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#


    def r65775_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65781_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def r65789_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        return


    def s713_action(self):
        self.state_manager.world_manager.set_know_morte_pillar(1)


    def s719_action(self):
        self.state_manager.world_manager.set_know_morte_pillar(2)


    def j65825_s720_r65821_action(self):
        self.state_manager.journal_manager.update_journal('65825')
        #$% .register('65825', '나는 왜 모트가 나와 항상 함께 있었는지를 알았다. 그것은 그가  생전에 나를 한번 죽인 일에 대해 죄책감을 느끼고 있기 때문이었다. 그의 죄책감에 대해 직접 추궁한 일이 오히려 그의 심리적 중압감을 덜어준 듯하며, 그 결과로 그는 훨씬 강해진 것 같다.') %$#


    def r65821_action(self):
        self.state_manager.gain_experience('party', 12000)
        self.state_manager.world_manager.inc_morale_morte(3)
        self.state_manager.characters_manager.modify_property('morte', 'strength', 4)
        self.state_manager.characters_manager.modify_property('morte', 'dexterity', 2)
        self.state_manager.characters_manager.modify_property('morte', 'constitution', 2)
        self.state_manager.world_manager.set_bd_morte_story(True)


    def r68176_action(self):
        self.state_manager.world_manager.set_fortress_morte(4)
        self.state_manager.world_manager.set_in_party_morte(True)


    def r68189_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204d0') %$#
        return


    def r68190_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204a0') %$#
        return


    def r68191_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204g0') %$#
        return


    def r68192_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204i0') %$#
        return


    def r68193_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204v0') %$#
        return


    def r68194_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204n0') %$#
        return


    def r68239_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204tr') %$#
        return


    def r68438_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204tr') %$#
        return


    def r68439_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204tr') %$#
        return


    def r68446_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204v0') %$#
        return


    def r68175_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204a0') %$#
        return


    def r68179_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204d0') %$#
        return


    def r68180_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204g0') %$#
        return


    def r68181_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204n0') %$#
        return


    def r68182_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204i0') %$#
        return


    def r68183_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204v0') %$#
        return


    def r68319_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204a0') %$#
        return


    def r68320_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204d0') %$#
        return


    def r68321_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204g0') %$#
        return


    def r68322_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204n0') %$#
        return


    def r68323_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204i0') %$#
        return


    def r68324_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204v0') %$#
        return


    def r68325_action(self):
        #$% QuitGame(FINALE,0,0) %$#
        return


    def r68490_action(self):
        #$% StartCutSceneMode() %$#
        #$% ?.start_cut_scene('1204v0') %$#
        return


    def r68491_action(self):
        #$% QuitGame(FINALE,0,0) %$#
        return


    def r68492_action(self):
        #$% QuitGame(FINALE,0,0) %$#
        return


    def r1006_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1015_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1019_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r1050_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r1051_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r1077_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1083_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1095_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1120_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1125_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r1130_condition(self):
        return self.state_manager.world_manager.get_read_scars()


    def r9029_condition(self):
        return not self.state_manager.world_manager.get_know_gith()


    def r9030_condition(self):
        return self.state_manager.world_manager.get_know_gith()


    def r6952_condition(self):
        return not self.state_manager.world_manager.get_know_lady()


    def r6953_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r6954_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r3969_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') < 13


    def r3970_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') > 12


    def r3971_condition(self):
        return self.state_manager.world_manager.get_has_prybar()


    def r3972_condition(self):
        return not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r3973_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r4023_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r4024_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r4027_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r4028_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r4031_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r4032_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r4034_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r4686_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 13


    def r64535_condition(self):
        return not self.state_manager.world_manager.get_vaxis_global_xp()


    def r64534_condition(self):
        return self.state_manager.world_manager.get_vaxis_global_xp()


    def r6325_condition(self):
        return self.state_manager.world_manager.get_has_cobble() #$% Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).%$#


    def r6326_condition(self):
        return not self.state_manager.world_manager.get_has_cobble() #$% Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).%$#


    def r6327_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 12


    def r6328_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r6329_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 12


    def r6330_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r6664_condition(self):
        return self.state_manager.world_manager.get_42_secret()


    def r6665_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12 and \
               not self.state_manager.world_manager.get_42_secret()


    def r7056_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r7057_condition(self):
        return not self.state_manager.world_manager.get_morte_quip()


    def r7058_condition(self):
        return not self.state_manager.world_manager.get_morte_quip()


    def r11985_condition(self):
        return self.state_manager.world_manager.get_evil_ingress_teeth_1()


    def r11986_condition(self):
        return self.state_manager.world_manager.get_good_ingress_teeth_1()


    def r11988_condition(self):
        return self.state_manager.world_manager.get_good_ingress_teeth_1()


    def r11989_condition(self):
        return self.state_manager.world_manager.get_evil_ingress_teeth_1()


    def r11990_condition(self):
        return self.state_manager.world_manager.get_good_ingress_teeth_1()


    def r11991_condition(self):
        return self.state_manager.world_manager.get_evil_ingress_teeth_1()


    def r12855_condition(self):
        return not self.state_manager.world_manager.get_know_mimir()


    def r12858_condition(self):
        return not self.state_manager.world_manager.get_know_mimir()


    def r13774_condition(self):
        return not self.state_manager.world_manager.get_know_chaosmen()


    def r13775_condition(self):
        return self.state_manager.world_manager.get_know_chaosmen()


    def r13776_condition(self):
        return self.state_manager.world_manager.get_know_chaosmen()


    def r13986_condition(self):
        return not self.state_manager.world_manager.get_know_chaosmen()


    def r13987_condition(self):
        return self.state_manager.world_manager.get_know_chaosmen()


    def r13988_condition(self):
        return self.state_manager.world_manager.get_know_chaosmen()


    def r13989_condition(self):
        return self.state_manager.world_manager.get_join_chaosmen() == 0


    def r14275_condition(self):
        return self.state_manager.world_manager.get_mortai_contract() and \
               self.state_manager.world_manager.get_coppereyes_contract() > 0


    def r14276_condition(self):
        return self.state_manager.world_manager.get_mortai_contract() and \
               self.state_manager.world_manager.get_coppereyes_contract() == 0


    def r14277_condition(self):
        return not self.state_manager.world_manager.get_mortai_contract() and \
               self.state_manager.world_manager.get_coppereyes_contract() > 0


    def r14278_condition(self):
        return not self.state_manager.world_manager.get_mortai_contract() and \
               self.state_manager.world_manager.get_coppereyes_contract() == 0


    def s179_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() < 2


    def r65537_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() > 1


    def r16881_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r16882_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r16884_condition(self):
        return self.state_manager.world_manager.get_in_party_annah() and \
               not self.state_manager.world_manager.get_tree_a()


    def r16885_condition(self):
        return self.state_manager.world_manager.get_in_party_ignus() and \
               not self.state_manager.world_manager.get_tree_i()


    def r16886_condition(self):
        return self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_tree_g()


    def r16887_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               not self.state_manager.world_manager.get_tree_d()


    def r16888_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               not self.state_manager.world_manager.get_tree_d() and \
               self.state_manager.world_manager.get_dakkon_slave()


    def r16889_condition(self):
        return self.state_manager.world_manager.get_in_party_nordom() and \
               not self.state_manager.world_manager.get_tree_n()


    def r16890_condition(self):
        return self.state_manager.world_manager.get_in_party_vhail() and \
               not self.state_manager.world_manager.get_tree_v()


    def r16893_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_tree_m()


    def r16894_condition(self):
        return self.state_manager.world_manager.get_in_party_annah() and \
               not self.state_manager.world_manager.get_tree_a()


    def r16895_condition(self):
        return self.state_manager.world_manager.get_in_party_ignus() and \
               not self.state_manager.world_manager.get_tree_i()


    def r16896_condition(self):
        return self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_tree_g()


    def r16897_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               not self.state_manager.world_manager.get_tree_d()


    def r16898_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               not self.state_manager.world_manager.get_tree_d() and \
               self.state_manager.world_manager.get_dakkon_slave()


    def r16899_condition(self):
        return self.state_manager.world_manager.get_in_party_vhail() and \
               not self.state_manager.world_manager.get_tree_v()


    def r17583_condition(self):
        return self.state_manager.world_manager.get_in_party_annah()


    def r17584_condition(self):
        return self.state_manager.world_manager.get_gold() > 39


    def r17585_condition(self):
        return self.state_manager.world_manager.get_gold() > 39


    def r17586_condition(self):
        return self.state_manager.world_manager.get_gold() > 39


    def r17587_condition(self):
        return self.state_manager.world_manager.get_gold() < 40


    def r17588_condition(self):
        return self.state_manager.world_manager.get_gold() < 40


    def r18820_condition(self):
        return self.state_manager.world_manager.get_gold() > 4


    def r18821_condition(self):
        return self.state_manager.world_manager.get_gold() > 49


    def r18822_condition(self):
        return self.state_manager.world_manager.get_gold() > 99


    def r18823_condition(self):
        return self.state_manager.world_manager.get_gold() > 499


    def r18824_condition(self):
        return self.state_manager.world_manager.get_gold() < 5


    def r18829_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r18830_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 12


    def r18833_condition(self):
        return self.state_manager.world_manager.get_gold() > 4


    def r18834_condition(self):
        return self.state_manager.world_manager.get_gold() > 9


    def r18835_condition(self):
        return self.state_manager.world_manager.get_gold() > 49


    def r18836_condition(self):
        return self.state_manager.world_manager.get_gold() > 99


    def r19668_condition(self):
        return not self.state_manager.world_manager.get_can_speak_with_dead()


    def r19669_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r19670_condition(self):
        return not self.state_manager.world_manager.get_can_speak_with_dead()


    def r19671_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r20612_condition(self):
        return self.state_manager.world_manager.get_know_marta_work() < 3


    def r20613_condition(self):
        return self.state_manager.world_manager.get_know_marta_work() > 2


    def r24697_condition(self):
        return not self.state_manager.world_manager.get_know_lady()


    def r24698_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r24699_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r24700_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13 and \
               self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12


    def r24701_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def s244_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() < 2


    def r66902_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() > 1


    def r25967_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 14


    def r27316_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12


    def s268_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() < 2


    def r65536_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() > 1


    def r27916_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 14


    def r28038_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 3 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() != 1


    def r28039_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 3 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() != 1


    def r28040_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 3 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() == 1


    def r28044_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 3 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() == 1


    def r28045_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 5 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() != 3


    def r28046_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 5 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() != 3


    def r28047_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 5 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() == 3


    def r28048_condition(self):
        return self.state_manager.world_manager.get_malmaner() == 5 and \
               self.state_manager.world_manager.get_chaotic_malmaner_1() == 3


    def r28744_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') > 14


    def r28745_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'charisma') < 15


    def r28967_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 14


    def r28968_condition(self):
        return self.state_manager.world_manager.get_cw_sal_hint()


    def r28971_condition(self):
        return self.state_manager.world_manager.get_cw_sal_hint()


    def r28975_condition(self):
        return self.state_manager.world_manager.get_cw_sal_hint()


    def r28980_condition(self):
        return self.state_manager.world_manager.get_know_ravel()


    def r30822_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') < 9


    def r30823_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 8


    def r30824_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 8


    def r30825_condition(self):
        return self.state_manager.world_manager.get_able()


    def r30826_condition(self):
        return not self.state_manager.world_manager.get_able()


    def r65541_condition(self):
        return not self.state_manager.world_manager.get_morte_talent()


    def r65542_condition(self):
        return self.state_manager.world_manager.get_morte_talent()


    def r65543_condition(self):
        return self.state_manager.world_manager.get_morte_tattoo_xp()


    def r65545_condition(self):
        return self.state_manager.world_manager.get_know_mimir() and \
               not self.state_manager.world_manager.get_morte_story()


    def r65546_condition(self):
        return self.state_manager.world_manager.get_morte_story()


    def r65547_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() == 1


    def r65548_condition(self):
        return self.state_manager.world_manager.get_know_blood_war()


    def r65549_condition(self):
        return self.state_manager.world_manager.get_know_ravel() and \
               self.state_manager.world_manager.get_ravel_value() == 0


    def r35344_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') < 13


    def r35352_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') > 12


    def r35355_condition(self):
        return self.state_manager.world_manager.get_has_prybar()


    def r35358_condition(self):
        return not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35359_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35421_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') < 13


    def r35429_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') > 12


    def r35432_condition(self):
        return self.state_manager.world_manager.get_has_prybar()


    def r35435_condition(self):
        return not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35436_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35498_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') < 13


    def r35506_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') > 12


    def r35509_condition(self):
        return self.state_manager.world_manager.get_has_prybar()


    def r35512_condition(self):
        return not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35513_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35575_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') < 13


    def r35583_condition(self):
        return not self.state_manager.world_manager.get_has_prybar() and \
               self.state_manager.characters_manager.get_property('protagonist', 'strength') > 12


    def r35586_condition(self):
        return self.state_manager.world_manager.get_has_prybar()


    def r35589_condition(self):
        return not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35590_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r40069_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.characters_manager.get_property('protagonist', 'current_health') == self.state_manager.characters_manager.get_property('protagonist', 'max_health')


    def r40070_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.characters_manager.get_property('protagonist', 'current_health') > self.state_manager.characters_manager.get_property('protagonist', 'max_health') / 2


    def r40071_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.characters_manager.get_property('protagonist', 'current_health') <= self.state_manager.characters_manager.get_property('protagonist', 'max_health') / 2


    def r40077_condition(self):
        return self.state_manager.world_manager.get_nenny() == 2


    def r40078_condition(self):
        return self.state_manager.world_manager.get_nenny() == 2


    def r40079_condition(self):
        return self.state_manager.world_manager.get_nenny() == 1


    def r40080_condition(self):
        return self.state_manager.world_manager.get_nenny() == 1


    def r41842_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41843_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41845_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41846_condition(self):
        return self.state_manager.world_manager.get_has_bandages()


    def r41847_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41848_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41852_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41853_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41857_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41858_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41862_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41863_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41867_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41868_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41871_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41872_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41875_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41876_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41880_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41881_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41884_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41885_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41888_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41889_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41892_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41893_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41900_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12


    def r41921_condition(self):
        return self.state_manager.world_manager.get_story_reekwind_curse() and \
               not self.state_manager.world_manager.get_jumble_reekwind()


    def r67864_condition(self):
        return self.state_manager.world_manager.get_jumble_reekwind()


    def r43909_condition(self):
        return self.state_manager.world_manager.get_has_decant() and \
               self.state_manager.world_manager.get_seek_word() == 1


    def r43910_condition(self):
        return self.state_manager.world_manager.get_aelwyn_value() == 2 and \
               not self.state_manager.world_manager.get_dead_aelwyn()


    def r43911_condition(self):
        return self.state_manager.world_manager.get_aelwyn_value() < 2


    def r43917_condition(self):
        return self.state_manager.world_manager.get_has_decant() and \
               self.state_manager.world_manager.get_seek_word() == 1


    def r43918_condition(self):
        return self.state_manager.world_manager.get_aelwyn_value() == 2 and \
               not self.state_manager.world_manager.get_dead_aelwyn()


    def r43919_condition(self):
        return self.state_manager.world_manager.get_aelwyn_value() < 2


    def r50325_condition(self):
        return not self.state_manager.world_manager.get_know_lady()


    def r50328_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r50329_condition(self):
        return self.state_manager.world_manager.get_know_lady()


    def r52577_condition(self):
        return self.state_manager.world_manager.get_in_party_grace()


    def r52578_condition(self):
        return not self.state_manager.world_manager.get_in_party_grace() and \
               self.state_manager.world_manager.get_in_party_annah()


    def r52579_condition(self):
        return not self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_in_party_annah()


    def r53625_condition(self):
        return self.state_manager.world_manager.get_morte_story()


    def r53627_condition(self):
        return not self.state_manager.world_manager.get_morte_story()


    def r53662_condition(self):
        return self.state_manager.world_manager.get_in_party_annah()


    def r53663_condition(self):
        return not self.state_manager.world_manager.get_in_party_annah()


    def s518_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon()


    def r54105_condition(self):
        return not self.state_manager.world_manager.get_in_party_dakkon()


    def r53825_condition(self):
        return self.state_manager.world_manager.get_in_party_grace()


    def r53826_condition(self):
        return self.state_manager.world_manager.get_in_party_annah() and \
               not self.state_manager.world_manager.get_in_party_grace()


    def r53827_condition(self):
        return not self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_in_party_annah()


    def r53832_condition(self):
        return self.state_manager.world_manager.get_specialist() == 4


    def r53833_condition(self):
        return self.state_manager.world_manager.get_specialist() == 5


    def r53834_condition(self):
        return self.state_manager.world_manager.get_specialist() == 6


    def r53835_condition(self):
        return self.state_manager.world_manager.get_specialist() != 4 and \
               self.state_manager.world_manager.get_specialist() != 5 and \
               self.state_manager.world_manager.get_specialist() != 6


    def r53836_condition(self):
        return not self.state_manager.world_manager.get_where_fhjull()


    def r53837_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               self.state_manager.world_manager.get_has_cube()


    def r53838_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               self.state_manager.world_manager.get_in_party_grace()


    def r53839_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               self.state_manager.world_manager.get_in_party_annah()


    def r53840_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_in_party_annah()


    def r53844_condition(self):
        return not self.state_manager.world_manager.get_where_fhjull()


    def r53863_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               self.state_manager.world_manager.get_has_cube()


    def r53864_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               self.state_manager.world_manager.get_in_party_grace()


    def r53865_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               self.state_manager.world_manager.get_in_party_annah()


    def r53866_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_in_party_annah()


    def r53851_condition(self):
        return not self.state_manager.world_manager.get_where_fhjull()


    def r53852_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               self.state_manager.world_manager.get_has_cube()


    def r53853_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               self.state_manager.world_manager.get_in_party_grace()


    def r53854_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               self.state_manager.world_manager.get_in_party_annah()


    def r53855_condition(self):
        return self.state_manager.world_manager.get_where_fhjull() and \
               not self.state_manager.world_manager.get_has_cube() and \
               not self.state_manager.world_manager.get_in_party_grace() and \
               not self.state_manager.world_manager.get_in_party_annah()


    def r54165_condition(self):
        return not self.state_manager.world_manager.get_in_party_dakkon()


    def r54166_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 13


    def r54167_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 14


    def r54172_condition(self):
        return not self.state_manager.world_manager.get_in_party_dakkon()


    def r54173_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 13


    def r54174_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 14


    def r54179_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54180_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54189_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54190_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54191_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54192_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54194_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54195_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54196_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54197_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54200_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54201_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54204_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54205_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54207_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54208_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54209_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54210_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54213_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54214_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54217_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54218_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54220_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 15 and \
               self.state_manager.world_manager.get_in_party_dakkon()


    def r54221_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 15 and \
               not self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.world_manager.get_dakkon_value() > 0


    def r54223_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 15 and \
               not self.state_manager.world_manager.get_in_party_dakkon() and \
               self.state_manager.world_manager.get_dakkon_value() == 0


    def r54226_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54227_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54230_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r54231_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r54232_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54233_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54235_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r54236_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r54237_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54238_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54241_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54242_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54245_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54246_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54250_condition(self):
        return self.state_manager.world_manager.get_bd_morte_morale() > 5


    def r54252_condition(self):
        return self.state_manager.world_manager.get_bd_morte_morale() < 6


    def r54255_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54262_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54264_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 15


    def r54266_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54267_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54269_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 15


    def r54271_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54272_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54275_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               self.state_manager.world_manager.get_in_party_morte()


    def r54276_condition(self):
        return self.state_manager.world_manager.get_morte_quip_regret_portal() > 1 and \
               not self.state_manager.world_manager.get_in_party_morte()


    def r54278_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_morale_fortress_portal()


    def r54279_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54280_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54282_condition(self):
        return self.state_manager.world_manager.get_ravel_grace() > 0 and \
               self.state_manager.world_manager.get_ravel_morte() > 0 and \
               self.state_manager.world_manager.get_torment_fell() < 2 and \
               self.state_manager.world_manager.get_in_party_grace()


    def r54283_condition(self):
        return self.state_manager.world_manager.get_ravel_grace() > 0 and \
               self.state_manager.world_manager.get_ravel_morte() > 0 and \
               self.state_manager.world_manager.get_torment_fell() == 2 and \
               self.state_manager.world_manager.get_in_party_grace()


    def r54284_condition(self):
        return self.state_manager.world_manager.get_ravel_morte() > 0 and \
               self.state_manager.world_manager.get_torment_fell() < 2 and \
               not self.state_manager.world_manager.get_in_party_grace()


    def r54285_condition(self):
        return self.state_manager.world_manager.get_ravel_morte() > 0 and \
               self.state_manager.world_manager.get_torment_fell() == 2 and \
               not self.state_manager.world_manager.get_in_party_grace()


    def r54286_condition(self):
        return self.state_manager.world_manager.get_ravel_morte() == 0


    def r54832_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54833_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54835_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54836_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r54838_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r54839_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def s576_condition(self):
        return self.state_manager.world_manager.get_in_party_grace()


    def r55849_condition(self):
        return not self.state_manager.world_manager.get_in_party_grace()


    def r55850_condition(self):
        return not self.state_manager.world_manager.get_in_party_grace()


    def s578_condition(self):
        return self.state_manager.world_manager.get_in_party_grace()


    def r55875_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 15


    def r61411_condition(self):
        return self.state_manager.world_manager.get_gold() > 499


    def r61412_condition(self):
        return self.state_manager.world_manager.get_gold() < 500


    def r65554_condition(self):
        return self.state_manager.world_manager.get_morte_warning()


    def r65558_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r65559_condition(self):
        return self.state_manager.world_manager.get_pharod_value() > 0


    def s651_condition(self):
        return self.state_manager.world_manager.get_morte_tattoo_xp()


    def r65566_condition(self):
        return self.state_manager.world_manager.get_morte_warning()


    def r65565_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r65569_condition(self):
        return not self.state_manager.world_manager.get_morte_tattoo_xp()


    def r65570_condition(self):
        return self.state_manager.world_manager.get_morte_tattoo_xp()


    def r65613_condition(self):
        return self.state_manager.world_manager.get_morte_stolen() > 2


    def r65622_condition(self):
        return self.state_manager.world_manager.get_morte_stolen() > 2


    def r65627_condition(self):
        return self.state_manager.world_manager.get_morte_stolen() > 2


    def r65639_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r65640_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 1 and \
               self.state_manager.world_manager.get_pharod_quest() == 1


    def r65641_condition(self):
        return self.state_manager.world_manager.get_pharod_quest() > 1 and \
               not self.state_manager.locations_manager.is_visited_internal('AR0401')


    def r65642_condition(self):
        return self.state_manager.locations_manager.is_visited_internal('AR0401') and \
               not self.state_manager.locations_manager.is_visited_internal('AR0500')


    def r65643_condition(self):
        return self.state_manager.locations_manager.is_visited_internal('AR0500') and \
               not self.state_manager.world_manager.get_know_ravel()


    def r65644_condition(self):
        return self.state_manager.world_manager.get_know_ravel() and \
               self.state_manager.world_manager.get_know_ravel_key() == 0


    def r65645_condition(self):
        return self.state_manager.world_manager.get_know_ravel() and \
               self.state_manager.world_manager.get_know_ravel_key() > 0 and \
               not self.state_manager.locations_manager.is_visited_internal('AR0610')


    def r65646_condition(self):
        return self.state_manager.locations_manager.is_visited_internal('AR0610') and \
               not self.state_manager.locations_manager.is_visited_internal('AR0700')


    def r65647_condition(self):
        return self.state_manager.locations_manager.is_visited_internal('AR0700')


    def r65666_condition(self):
        return not self.state_manager.locations_manager.is_visited_internal('AR0601')


    def r65674_condition(self):
        return self.state_manager.world_manager.get_know_ravel_key() == 1


    def r65693_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r65700_condition(self):
        return self.state_manager.world_manager.get_grace_silver_mimir()


    def r65708_condition(self):
        return self.state_manager.world_manager.get_grace_smell_mimir()


    def r65709_condition(self):
        return self.state_manager.world_manager.get_morte_tattoo_xp()


    def r65718_condition(self):
        return self.state_manager.world_manager.get_grace_smell_mimir() and \
               not self.state_manager.locations_manager.is_visited_internal('AR1000')


    def r65719_condition(self):
        return self.state_manager.world_manager.get_grace_smell_mimir() and \
               self.state_manager.locations_manager.is_visited_internal('AR1000')


    def r65738_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 13


    def r65739_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65740_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65743_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65744_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65747_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65748_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65750_condition(self):
        return not self.state_manager.world_manager.get_chaotic_morte_1()


    def r65751_condition(self):
        return not self.state_manager.world_manager.get_lawful_morte_1()


    def r65754_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65755_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65759_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65760_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65774_condition(self):
        return not self.state_manager.world_manager.get_memory_morte_pillar()


    def r65775_condition(self):
        return self.state_manager.world_manager.get_memory_morte_pillar()


    def r65778_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65779_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65782_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65783_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65786_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65787_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65790_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65791_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65794_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65795_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65798_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65799_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65801_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() == 0


    def r65802_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r65803_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() > 0


    def r66347_condition(self):
        return not self.state_manager.world_manager.get_morte_talent()


    def r66348_condition(self):
        return self.state_manager.world_manager.get_morte_talent()


    def r66349_condition(self):
        return self.state_manager.world_manager.get_morte_tattoo_xp()


    def r66351_condition(self):
        return self.state_manager.world_manager.get_know_mimir() and \
               not self.state_manager.world_manager.get_morte_story()


    def r66352_condition(self):
        return self.state_manager.world_manager.get_morte_story()


    def r66353_condition(self):
        return self.state_manager.world_manager.get_know_morte_pillar() == 1


    def r66354_condition(self):
        return self.state_manager.world_manager.get_know_blood_war()


    def r66355_condition(self):
        return self.state_manager.world_manager.get_know_ravel() and \
               self.state_manager.world_manager.get_ravel_value() == 0


    def r68178_condition(self):
        return not self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_party_roof() > 1


    def r68189_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() > 0


    def r68190_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() > 0


    def r68191_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() > 0


    def r68192_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               not self.state_manager.world_manager.get_fortress_ignus_battle()


    def r68193_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               not self.state_manager.world_manager.get_fortress_vhailor_battle()


    def r68194_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_vhailor() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() > 0


    def r68239_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_vhailor() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0


    def r68438_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               self.state_manager.world_manager.get_fortress_vhailor_battle() and \
               self.state_manager.world_manager.get_fortress_nordom() == 0


    def r68439_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               self.state_manager.world_manager.get_fortress_ignus_battle() and \
               self.state_manager.world_manager.get_fortress_vhailor() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0


    def r68446_condition(self):
        return self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               self.state_manager.world_manager.get_fortress_ignus_battle() and \
               self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               not self.state_manager.world_manager.get_fortress_vhailor_battle()


    def r68503_condition(self):
        return not self.state_manager.world_manager.get_trans_vanish() and \
               self.state_manager.world_manager.get_fortress_party_roof() == 1


    def r68175_condition(self):
        return self.state_manager.world_manager.get_fortress_annah() > 0


    def r68179_condition(self):
        return self.state_manager.world_manager.get_fortress_dakkon() > 0


    def r68180_condition(self):
        return self.state_manager.world_manager.get_fortress_grace() > 0


    def r68181_condition(self):
        return self.state_manager.world_manager.get_fortress_nordom() > 0


    def r68182_condition(self):
        return self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               not self.state_manager.world_manager.get_fortress_ignus_battle()


    def r68183_condition(self):
        return self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               not self.state_manager.world_manager.get_fortress_vhailor_battle()


    def r68319_condition(self):
        return self.state_manager.world_manager.get_fortress_annah() > 0


    def r68320_condition(self):
        return self.state_manager.world_manager.get_fortress_dakkon() > 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68321_condition(self):
        return self.state_manager.world_manager.get_fortress_grace() > 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68322_condition(self):
        return self.state_manager.world_manager.get_fortress_nordom() > 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68323_condition(self):
        return self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               not self.state_manager.world_manager.get_fortress_ignus_battle() and \
               self.state_manager.world_manager.get_fortress_nordom() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68324_condition(self):
        return self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               not self.state_manager.world_manager.get_fortress_vhailor_battle() and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68325_condition(self):
        return self.state_manager.world_manager.get_fortress_vhailor() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0


    def r68490_condition(self):
        return self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               not self.state_manager.world_manager.get_fortress_vhailor_battle() and \
               self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_ignus_battle()


    def r68491_condition(self):
        return self.state_manager.world_manager.get_fortress_vhailor() > 0 and \
               self.state_manager.world_manager.get_fortress_vhailor_battle() and \
               self.state_manager.world_manager.get_fortress_ignus() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0


    def r68492_condition(self):
        return self.state_manager.world_manager.get_fortress_ignus() > 0 and \
               self.state_manager.world_manager.get_fortress_ignus_battle() and \
               self.state_manager.world_manager.get_fortress_vhailor() == 0 and \
               self.state_manager.world_manager.get_fortress_grace() == 0 and \
               self.state_manager.world_manager.get_fortress_dakkon() == 0 and \
               self.state_manager.world_manager.get_fortress_annah() == 0 and \
               self.state_manager.world_manager.get_fortress_nordom() == 0
