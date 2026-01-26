import logging


class StateManager:
    def __init__(self,
        log_events_manager,
        world_manager,
        characters_manager,
        locations_manager,
        journal_manager,
        inventory_manager,
        narrat_manager,
        quests_manager
    ):
        self._log_events_manager = log_events_manager
        self.world_manager = world_manager
        self.characters_manager = characters_manager
        self.locations_manager = locations_manager
        self.journal_manager = journal_manager
        self.inventory_manager = inventory_manager
        self.narrat_manager = narrat_manager
        self.quests_manager = quests_manager

        self.world_manager.register_report_change_callback(self.report_change)
        self.characters_manager.register_report_change_callback(self.report_change)
        self.locations_manager.register_report_change_callback(self.report_change)
        self.journal_manager.register_report_change_callback(self.report_change)
        self.quests_manager.register_report_change_callback(self.report_change)


    def report_change(self, change_id, change_kwargs):
        self.narrat_manager.report_change(change_id, change_kwargs)

        # TODO [snow]: small recursion:
        # report_change() ->
        #   -> push_story() ->
        #     -> set_entry_*() ->
        #       -> _report_change_callback() -> # if required
        #         -> report_change()
        # The `if` in the set_entry_* should be enough to exit recursion
        # There are a lot of places, where push_story() should be executed,
        # and I do not have all of them right now
        # So it seems like a appropriate solution here
        # After I finish story quests, it will be better to replace push_story
        # with granular manual quests pushes.
        self.push_story()


    def register(self, setting_id, default_value):
        self.world_manager.register(setting_id, default_value)
        return self


    def gain_experience(self, name, amount):
        self._log(f'Gain {amount} experience to {name}')
        if name == 'party':
            self.characters_manager.modify_property('protagonist_character_name', 'experience', amount)

            if self.world_manager.get_in_party_morte():
                self.characters_manager.modify_property('morte_character_name', 'experience', amount)
            if self.world_manager.get_in_party_annah():
                self.characters_manager.modify_property('annah_character_name', 'experience', amount)
            if self.world_manager.get_in_party_ignus():
                self.characters_manager.modify_property('ignus_character_name', 'experience', amount)
            if self.world_manager.get_in_party_grace():
                self.characters_manager.modify_property('grace_character_name', 'experience', amount)
            if self.world_manager.get_in_party_dakkon():
                self.characters_manager.modify_property('dakkon_character_name', 'experience', amount)
            if self.world_manager.get_in_party_nordom():
                self.characters_manager.modify_property('nordom_character_name', 'experience', amount)
            if self.world_manager.get_in_party_vhail():
                self.characters_manager.modify_property('vhail_character_name', 'experience', amount)
        else:
            self.characters_manager.modify_property(name, 'experience', amount)


    def count_in_party(self):
        return sum([
            self.world_manager.get_in_party_morte(),
            self.world_manager.get_in_party_annah(),
            self.world_manager.get_in_party_ignus(),
            self.world_manager.get_in_party_grace(),
            self.world_manager.get_in_party_dakkon(),
            self.world_manager.get_in_party_nordom(),
            self.world_manager.get_in_party_vhail(),
        ])


    def push_story(self):
        if self.world_manager.get_spirit_quest() == 2:
            self.quests_manager.set_entry_active('31881')
        if self.world_manager.get_spirit_quest() == 4:
            self.quests_manager.set_entry_done('37705')
        if self.world_manager.get_nestor_quest() == 1:
            self.quests_manager.set_entry_active('29868')
        if self.world_manager.get_nestor_quest() == 2:
            self.quests_manager.set_entry_done('28825')
        if self.world_manager.get_kesai_quest() == 1:
            self.quests_manager.set_entry_active('39519')
        if self.world_manager.get_kesai_quest() == 2:
            self.quests_manager.set_entry_done('39518')
        if self.world_manager.get_emoric_pharod() == 2:
            self.quests_manager.set_entry_active('61491')
        if self.world_manager.get_emoric_pharod() == 3 and \
           self.world_manager.get_chaotic_emoric_1() == 1:
            self.quests_manager.set_entry_done('61492')
        if self.world_manager.get_emoric_pharod() == 3 and \
           self.world_manager.get_chaotic_emoric_2() == 1:
            self.quests_manager.set_entry_done('61493')
        if self.world_manager.get_emoric_pharod() == 3 and \
           self.world_manager.get_lawful_emoric_1() == 1:
            self.quests_manager.set_entry_done('61494')
        if self.world_manager.get_nodd_quest() > 1 and \
           self.world_manager.get_nodd_quest() < 8:
            self.quests_manager.set_entry_active('44291')
        if self.world_manager.get_nodd_quest() == 8:
            self.quests_manager.set_entry_done('44292')
        if self.world_manager.get_nodd_quest() == 9:
            self.quests_manager.set_entry_done('44293')
        if self.world_manager.get_noname() == 2:
            self.quests_manager.set_entry_active('23566')
        if self.world_manager.get_noname() == 3:
            self.quests_manager.set_entry_done('56478')
        if self.world_manager.get_noname() == 4:
            self.quests_manager.set_entry_done('56479')
        if self.world_manager.get_noname() == 5:
            self.quests_manager.set_entry_done('23659')
        if self.world_manager.get_jul_mission_1() == 1:
            self.quests_manager.set_entry_active('39456')
        if self.world_manager.get_jul_mission_1() > 1 and \
           self.world_manager.get_jul_mission_1() < 6:
            self.quests_manager.set_entry_done('56615')
        if self.world_manager.get_pillow_quest() == 3:
            self.quests_manager.set_entry_active('34232')
        if self.world_manager.get_pillow_quest() > 3:
            self.quests_manager.set_entry_done('34233')
        if self.world_manager.get_plans_quest() == 3:
            self.quests_manager.set_entry_active('34377')
        if self.world_manager.get_plans_quest() > 3:
            self.quests_manager.set_entry_done('34378')
        if self.world_manager.get_dustman_initiation() == 1:
            self.quests_manager.set_entry_active('59869')
        if self.world_manager.get_dustman_initiation() == 2:
            self.quests_manager.set_entry_done('59870')
        if self.world_manager.get_dustman_initiation() > 2:
            self.quests_manager.set_entry_done('64512')
        if self.world_manager.get_evidence_papers() == 3:
            self.quests_manager.set_entry_active('3840')
        if self.world_manager.get_evidence_papers() == 4:
            self.quests_manager.set_entry_done('3842')
        if self.world_manager.get_jul_mission_2() == 1:
            self.quests_manager.set_entry_active('39454')
        if self.world_manager.get_jul_mission_2() > 1 and \
           self.world_manager.get_jul_mission_2() < 6:
            self.quests_manager.set_entry_done('56617')
        if self.world_manager.get_dustman_pickpocket() == 1:
            self.quests_manager.set_entry_active('59129')
        if self.world_manager.get_dustman_pickpocket() == 2:
            self.quests_manager.set_entry_done('59130')
        if self.world_manager.get_krystall() > 0 and \
           self.world_manager.get_krystall() < 3 and \
           not self.world_manager.get_krystall_dead_kaputz():
            self.quests_manager.set_entry_active('39747')
        if self.world_manager.get_krystall() > 2 and \
           not self.world_manager.get_krystall_dead_kaputz():
            self.quests_manager.set_entry_done('106708')
        if self.world_manager.get_krystall() == 3 and \
           not self.world_manager.get_krystall_dead_kaputz():
            self.quests_manager.set_entry_active('39737')
        if self.world_manager.get_krystall() > 3 and \
           not self.world_manager.get_krystall_dead_kaputz():
            self.quests_manager.set_entry_done('39738')
        if self.world_manager.get_dustman_initiation() == 3:
            self.quests_manager.set_entry_active('59875')
        if self.world_manager.get_dustman_initiation() > 3:
            self.quests_manager.set_entry_done('59876')
        if self.world_manager.get_snuff_grosuk() == 3:
            self.quests_manager.set_entry_active('3850')
        if self.world_manager.get_snuff_grosuk() == 4:
            self.quests_manager.set_entry_done('3852')
        if self.world_manager.get_snuff_grosuk() == 5:
            self.quests_manager.set_entry_done('3850')
        if self.world_manager.get_mebbeth_quest() > 3 and \
           self.world_manager.get_mebbeth_quest() < 6:
            self.quests_manager.set_entry_active('57925')
        if self.world_manager.get_mebbeth_quest() > 5:
            self.quests_manager.set_entry_done('57926')
        if self.world_manager.get_gemquest() == 1:
            self.quests_manager.set_entry_active('47842')
        if self.world_manager.get_gemquest() == 2:
            self.quests_manager.set_entry_done('47841')
        if self.world_manager.get_nemelle() == 2 and \
           self.world_manager.get_aelwynn() < 3:
            self.quests_manager.set_entry_active('56485')
        if self.world_manager.get_nemelle() == 3:
            self.quests_manager.set_entry_done('56486')
        if self.world_manager.get_trist_quest() == 3:
            self.quests_manager.set_entry_active('3813')
        if self.world_manager.get_trist_quest() == 4:
            self.quests_manager.set_entry_done('3815')
        if self.world_manager.get_rw() == 3 and \
           not self.world_manager.get_rwill_dead_kaputz():
            self.quests_manager.set_entry_active('39740')
        if self.world_manager.get_rw() == 4 and \
           self.world_manager.get_rwill_dead_kaputz():
            self.quests_manager.set_entry_done('39741')
        if self.world_manager.get_veil_quest_qj() == 1:
            self.quests_manager.set_entry_active('39522')
        if self.world_manager.get_veil_quest_qj() == 2:
            self.quests_manager.set_entry_done('39521')
        if self.world_manager.get_malmaner() > 1 and \
           self.world_manager.get_malmaner() < 4:
            self.quests_manager.set_entry_active('56488')
        if self.world_manager.get_malmaner() > 3:
            self.quests_manager.set_entry_done('56489')
        if self.world_manager.get_mebbeth_quest() == 6:
            self.quests_manager.set_entry_active('57928')
        if self.world_manager.get_mebbeth_quest() > 6:
            self.quests_manager.set_entry_done('57929')
        if self.world_manager.get_reekwind() == 1 and \
           self.world_manager.get_story_reekwind_curse() == 1:
            self.quests_manager.set_entry_active('59888')
        if self.world_manager.get_reekwind() == 2:
            self.quests_manager.set_entry_done('59889')
        if self.world_manager.get_malmaner() > 3 and \
           self.world_manager.get_malmaner() < 6:
            self.quests_manager.set_entry_active('56491')
        if self.world_manager.get_malmaner() == 7:
            self.quests_manager.set_entry_done('56492')
        if self.world_manager.get_ravel_trias() == 1 and \
           self.world_manager.get_trias() == 0:
            self.quests_manager.set_entry_active('44285')
        if self.world_manager.get_trias() > 0:
            self.quests_manager.set_entry_done('44286')
        if self.world_manager.get_e_book() == 1:
            self.quests_manager.set_entry_active('60566')
        if self.world_manager.get_e_book() > 0:
            self.quests_manager.set_entry_done('27608')
        if self.world_manager.get_pk_quest() == 1:
            self.quests_manager.set_entry_active('56494')
        if self.world_manager.get_pk_quest() == 2:
            self.quests_manager.set_entry_done('56495')
        if self.world_manager.get_sabotage() > 1 and \
           self.world_manager.get_sabotage() < 5:
            self.quests_manager.set_entry_active('60622')
        if self.world_manager.get_sabotage() > 4 and \
           self.world_manager.get_sabotage() != 6:
            self.quests_manager.set_entry_done('60623')
        if self.world_manager.get_sabotage() == 6:
            self.quests_manager.set_entry_done('60624')
        if self.world_manager.get_revenge_v() > 0 and \
           self.world_manager.get_revenge_v() < 3:
            self.quests_manager.set_entry_active('57898')
        if self.world_manager.get_revenge_v() == 3:
            self.quests_manager.set_entry_done('57899')
        if self.world_manager.get_crier_quest() == 1 and \
           self.world_manager.get_crier() < 2:
            self.quests_manager.set_entry_active('59125')
        if self.world_manager.get_crier_quest() == 2 and \
           self.world_manager.get_crier() == 2:
            self.quests_manager.set_entry_done('59126')
        if self.world_manager.get_craddock_quest() > 0 and \
           self.world_manager.get_craddock_quest() < 3:
            self.quests_manager.set_entry_active('59121')
        if self.world_manager.get_craddock_quest() > 2 and \
           self.world_manager.get_chaotic_craddock_1() == 0:
            self.quests_manager.set_entry_done('59122')
        if self.world_manager.get_craddock_quest() > 2 and \
           self.world_manager.get_chaotic_craddock_1() == 1:
            self.quests_manager.set_entry_done('59123')
        if self.world_manager.get_f_ass() > 0 and \
           self.world_manager.get_f_ass() < 3:
            self.quests_manager.set_entry_active('60627')
        if self.world_manager.get_f_ass() == 4:
            self.quests_manager.set_entry_done('60632')
        if self.world_manager.get_f_ass() == 5:
            self.quests_manager.set_entry_done('60633')
        if self.world_manager.get_g_test3() > 0 and \
           self.world_manager.get_g_test3() < 6:
            self.quests_manager.set_entry_active('60718')
        if self.world_manager.get_g_test3() == 6:
            self.quests_manager.set_entry_done('60723')
        if self.world_manager.get_g_test3() == 7:
            self.quests_manager.set_entry_done('60712')
        if self.world_manager.get_receipt() == 1:
            self.quests_manager.set_entry_active('60581')
        if self.world_manager.get_receipt() == 2:
            self.quests_manager.set_entry_done('60582')
        if self.world_manager.get_water() == 1:
            self.quests_manager.set_entry_active('57901')
        if self.world_manager.get_water() == 3:
            self.quests_manager.set_entry_done('57902')
        if self.world_manager.get_mochai() == 1:
            self.quests_manager.set_entry_active('57895')
        if self.world_manager.get_mochai() == 3:
            self.quests_manager.set_entry_done('57896')
        if self.world_manager.get_dream() > 0 and \
           self.world_manager.get_dream() < 5:
            self.quests_manager.set_entry_active('60583')
        if self.world_manager.get_dream() == 5:
            self.quests_manager.set_entry_done('60584')
        if self.world_manager.get_merriman() == 1:
            self.quests_manager.set_entry_active('56497')
        if self.world_manager.get_merriman() == 2:
            self.quests_manager.set_entry_done('56498')
        if self.world_manager.get_e_book() > 1 and \
           self.world_manager.get_e_book() < 4:
            self.quests_manager.set_entry_active('27092')
        if self.world_manager.get_e_book() > 3:
            self.quests_manager.set_entry_done('27112')
        if self.world_manager.get_mebbeth_quest() == 10:
            self.quests_manager.set_entry_active('59119')
        if self.world_manager.get_mebbeth_quest() > 10:
            self.quests_manager.set_entry_done('59109')
        if self.world_manager.get_br_rw() == 2 and \
           not self.world_manager.get_blackr_dead_kaputz():
            self.quests_manager.set_entry_active('39744')
        if self.world_manager.get_br_rw() == 3 and \
           not self.world_manager.get_blackr_dead_kaputz():
            self.quests_manager.set_entry_done('39745')
        if self.world_manager.get_dolora() > 1 and \
           self.world_manager.get_dolora() < 4:
            self.quests_manager.set_entry_active('39465')
        if self.world_manager.get_dolora() == 4:
            self.quests_manager.set_entry_done('39471')
        if self.world_manager.get_kyname() > 0 and \
           self.world_manager.get_kyname() < 7:
            self.quests_manager.set_entry_active('57935')
        if self.world_manager.get_kyname() == 7:
            self.quests_manager.set_entry_done('57934')
        if self.world_manager.get_e_book() == 6:
            self.quests_manager.set_entry_active('27235')
        if self.world_manager.get_e_book() > 6:
            self.quests_manager.set_entry_done('27281')
        if self.world_manager.get_iannis_sensory_quest() == 1:
            self.quests_manager.set_entry_active('30270')
        if self.world_manager.get_iannis_sensory_quest() == 3:
            self.quests_manager.set_entry_done('59911')
        if self.world_manager.get_snuff_ghrist() == 3:
            self.quests_manager.set_entry_active('60794')
        if self.world_manager.get_ghrist_dead_kaputz():
            self.quests_manager.set_entry_done('60795')
        if self.world_manager.get_pharod_quest() > 1 and \
           not self.locations_manager.is_visited('AR0401'):
            self.quests_manager.set_entry_active('59114')
        if self.locations_manager.is_visited('AR0401'):
            self.quests_manager.set_entry_done('59115')
        if self.world_manager.get_dream() == 4:
            self.quests_manager.set_entry_active('68049')
        if self.world_manager.get_dream() == 5:
            self.quests_manager.set_entry_done('68050')
        if self.world_manager.get_dream() == 3:
            self.quests_manager.set_entry_active('68044')
        if self.world_manager.get_dream() > 3 and \
           self.world_manager.get_dream() != 6:
            self.quests_manager.set_entry_done('68047')
        if self.world_manager.get_know_ravel() > 0 and \
           self.world_manager.get_ravel() == 0:
            self.quests_manager.set_entry_active('68138')
        if self.world_manager.get_ravel() > 0:
            self.quests_manager.set_entry_done('68137')
        if self.world_manager.get_snuff_rat() == 3:
            self.quests_manager.set_entry_active('44288')
        if self.world_manager.get_thesik_dead_kaputz():
            self.quests_manager.set_entry_done('44289')
        if self.world_manager.get_soego_quest() == 1 and \
           self.world_manager.get_soego_exposed() == 0:
            self.quests_manager.set_entry_active('67810')
        if self.world_manager.get_soego_quest() == 1 and \
           self.world_manager.get_soego_exposed() > 0:
            self.quests_manager.set_entry_done('67812')
        if self.world_manager.get_qui_sai_quest() == 2 and \
           self.world_manager.get_cw_qui_question() < 4:
            self.quests_manager.set_entry_active('58925')
        if self.world_manager.get_qui_sai_quest() == 2 and \
           self.world_manager.get_cw_qui_question() == 4:
            self.quests_manager.set_entry_done('66579')
        if self.world_manager.get_qui_sai_quest() == 1:
            self.quests_manager.set_entry_active('56794')
        if self.world_manager.get_qui_sai_quest() > 1:
            self.quests_manager.set_entry_done('66577')
        if self.world_manager.get_fedex() == 10:
            self.quests_manager.set_entry_active('61162')
        if self.world_manager.get_fedex() == 11 and \
           self.world_manager.get_mar_dead_kaputz():
            self.quests_manager.set_entry_done('60399')
        if self.world_manager.get_fedex() == 11:
            self.quests_manager.set_entry_done('39484')
        if self.world_manager.get_pregnant_quest() == 1:
            self.quests_manager.set_entry_active('52683')
        if self.world_manager.get_pregnant_quest() == 2:
            self.quests_manager.set_entry_done('52679')
        if self.world_manager.get_join_godsmen() > 1 and \
           self.world_manager.get_join_godsmen() < 6:
            self.quests_manager.set_entry_active('60648')
        if self.world_manager.get_join_godsmen() == 6:
            self.quests_manager.set_entry_done('60681')
        if self.world_manager.get_baen_quest() > 0 and \
           self.world_manager.get_baen_quest() < 3:
            self.quests_manager.set_entry_active('59117')
        if self.world_manager.get_baen_quest() == 3:
            self.quests_manager.set_entry_done('59118')
        if self.world_manager.get_dustman_initiation() == 4 and \
           self.world_manager.get_join_dustmen() != 3:
            self.quests_manager.set_entry_active('59879')
        if self.world_manager.get_dustman_initiation() > 4:
            self.quests_manager.set_entry_done('59880')
        if self.world_manager.get_grace_quest() == 1:
            self.quests_manager.set_entry_active('60801')
        if self.world_manager.get_grace_quest() == 2:
            self.quests_manager.set_entry_done('60802')
        if self.world_manager.get_outland_portal() == 1 and \
           not self.locations_manager.is_visited('AR1101'):
            self.quests_manager.set_entry_active('54572')
        if self.locations_manager.is_visited('AR1101'):
            self.quests_manager.set_entry_done('60799')
        if self.world_manager.get_mertwyn_head() == 2 and \
           self.world_manager.get_mertwyn() < 2:
            self.quests_manager.set_entry_active('41629')
        if self.world_manager.get_mertwyn_head() == 2 and \
           self.world_manager.get_mertwyn() == 2:
            self.quests_manager.set_entry_done('56738')
        if self.world_manager.get_sharegrave() > 4:
            self.quests_manager.set_entry_active('18449')
        if self.world_manager.get_shite() == 1:
            self.quests_manager.set_entry_done('18468')
        if self.world_manager.get_free_fiend() > 0 and \
           self.world_manager.get_free_fiend() < 4:
            self.quests_manager.set_entry_active('50051')
        if self.world_manager.get_free_fiend() == 4 and \
           self.world_manager.get_agril_dead_kaputz():
            self.quests_manager.set_entry_done('60785')
        if self.world_manager.get_free_fiend() == 4 and \
           not self.world_manager.get_agril_dead_kaputz():
            self.quests_manager.set_entry_done('60786')
        if self.world_manager.get_c_off() > 1 and \
           self.world_manager.get_c_off() < 6:
            self.quests_manager.set_entry_active('49411')
        if self.world_manager.get_c_off() == 7:
            self.quests_manager.set_entry_done('60782')
        if self.world_manager.get_c_off() == 6:
            self.quests_manager.set_entry_done('60783')
        if self.world_manager.get_c_off() == 8:
            self.quests_manager.set_entry_done('60784')
        if self.world_manager.get_trias_sword() == 1:
            self.quests_manager.set_entry_active('60758')
        if self.world_manager.get_trias_sword() > 1:
            self.quests_manager.set_entry_done('60759')
        if self.world_manager.get_lo_quest() == 2:
            self.quests_manager.set_entry_active('60714')
        if self.locations_manager.is_visited('AR0508') and \
           self.world_manager.get_lo_quest() == 3:
            self.quests_manager.set_entry_done('60729')
        if self.world_manager.get_delta() == 1 and \
           self.world_manager.get_gamma() == 0:
            self.quests_manager.set_entry_active('60387')
        if self.world_manager.get_delta() == 2:
            self.quests_manager.set_entry_done('106729')
        if self.world_manager.get_delta() == 1 and \
           self.world_manager.get_releaseh() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106717')
        if self.world_manager.get_delta() == 1 and \
           self.world_manager.get_releaseb() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106720')
        if self.world_manager.get_delta() == 1 and \
           self.world_manager.get_boxleft() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106723')
        if self.world_manager.get_delta() == 1 and \
           self.world_manager.get_demonbox() == 4:
            self.quests_manager.set_entry_done('106726')
        if self.world_manager.get_br_krys() == 2 and \
           not self.world_manager.get_blackr_dead_kaputz():
            self.quests_manager.set_entry_active('39742')
        if self.world_manager.get_br_krys() == 3 and \
           not self.world_manager.get_blackr_dead_kaputz():
            self.quests_manager.set_entry_done('39743')
        if self.world_manager.get_caretaker() > 0 and \
           self.world_manager.get_caretaker() < 6:
            self.quests_manager.set_entry_active('47847')
        if self.world_manager.get_caretaker() > 5:
            self.quests_manager.set_entry_done('60780')
        if self.world_manager.get_lo_quest() == 4:
            self.quests_manager.set_entry_active('60716')
        if self.world_manager.get_lo_quest() > 4:
            self.quests_manager.set_entry_done('60717')
        if self.world_manager.get_mediate() > 0 and \
           self.world_manager.get_mediate() < 6:
            self.quests_manager.set_entry_active('60771')
        if self.world_manager.get_mediate() == 6:
            self.quests_manager.set_entry_done('60772')
        if self.world_manager.get_mediate() == 7:
            self.quests_manager.set_entry_done('60776')
        if self.world_manager.get_mediate() == 8:
            self.quests_manager.set_entry_done('60777')
        if self.world_manager.get_mediate() == 9:
            self.quests_manager.set_entry_done('60778')
        if self.world_manager.get_mediate() == 10:
            self.quests_manager.set_entry_done('60778')
        if self.world_manager.get_g_test2() > 0 and \
           self.world_manager.get_g_test2() < 9:
            self.quests_manager.set_entry_active('60695')
        if self.world_manager.get_g_test2() == 9:
            self.quests_manager.set_entry_done('60696')
        if self.world_manager.get_g_test2() == 10:
            self.quests_manager.set_entry_done('60706')
        if self.world_manager.get_g_test2() == 11:
            self.quests_manager.set_entry_done('60704')
        if self.world_manager.get_g_test1() > 0 and \
           self.world_manager.get_g_test1() < 6:
            self.quests_manager.set_entry_active('60691')
        if self.world_manager.get_g_test1() == 6:
            self.quests_manager.set_entry_done('60692')
        if self.world_manager.get_p_journal() == 3:
            self.quests_manager.set_entry_active('56754')
        if self.world_manager.get_p_journal() > 3:
            self.quests_manager.set_entry_done('56773')
        if self.world_manager.get_pregnant_quest() == 2:
            self.quests_manager.set_entry_active('106699')
        if self.world_manager.get_pregnant_quest() == 3:
            self.quests_manager.set_entry_done('52678')
        if self.world_manager.get_finam() == 1:
            self.quests_manager.set_entry_active('49988')
        if self.world_manager.get_finam() == 2:
            self.quests_manager.set_entry_done('49987')
        if self.world_manager.get_sybil_quest() == 1:
            self.quests_manager.set_entry_active('36033')
        if self.world_manager.get_sybil_quest() == 3:
            self.quests_manager.set_entry_done('36032')
        if self.world_manager.get_rings3() == 1:
            self.quests_manager.set_entry_active('49916')
        if self.world_manager.get_rings3() == 2:
            self.quests_manager.set_entry_done('49919')
        if self.world_manager.get_smuggle() > 0 and \
           self.world_manager.get_smuggle() < 6 and \
           self.world_manager.get_smuggle() != 3:
            self.quests_manager.set_entry_active('60636')
        if self.world_manager.get_smuggle() == 3:
            self.quests_manager.set_entry_done('60796')
        if self.world_manager.get_smuggle() == 6:
            self.quests_manager.set_entry_done('60650')
        if self.world_manager.get_waste_quisai() == 1:
            self.quests_manager.set_entry_active('60578')
        if self.world_manager.get_join_anarchists() == 1:
            self.quests_manager.set_entry_done('60579')
        if self.world_manager.get_kill_vorten() > 0 and \
           self.world_manager.get_kill_vorten() < 3:
            self.quests_manager.set_entry_active('39497')
        if self.world_manager.get_kill_vorten() == 3:
            self.quests_manager.set_entry_done('39496')
        if self.world_manager.get_gilt_miss() > 4 and \
           self.world_manager.get_gilt_miss() < 7:
            self.quests_manager.set_entry_active('39508')
        if self.world_manager.get_gilt_miss() > 6:
            self.quests_manager.set_entry_done('60575')
        if self.world_manager.get_gilt_miss() == 3:
            self.quests_manager.set_entry_active('67289')
        if self.world_manager.get_gilt_miss() > 3:
            self.quests_manager.set_entry_done('60573')
        if self.world_manager.get_gilt_miss() == 1:
            self.quests_manager.set_entry_active('39510')
        if self.world_manager.get_gilt_miss() > 1:
            self.quests_manager.set_entry_done('60572')
        if self.world_manager.get_vristigor() == 1:
            self.quests_manager.set_entry_active('39476')
        if self.world_manager.get_vristigor() == 2:
            self.quests_manager.set_entry_done('39489')
        if self.world_manager.get_cr_vic() == 1:
            self.quests_manager.set_entry_active('60585')
        if self.world_manager.get_cr_vic() == 3:
            self.quests_manager.set_entry_done('60560')
        if self.world_manager.get_cr_vic() == 5:
            self.quests_manager.set_entry_done('60561')
        if self.world_manager.get_cr_vic() == 6:
            self.quests_manager.set_entry_done('60563')
        if self.world_manager.get_epsilon() == 1 and \
           self.world_manager.get_gamma() == 0:
            self.quests_manager.set_entry_active('60388')
        if self.world_manager.get_epsilon() == 2:
            self.quests_manager.set_entry_done('60389')
        if self.world_manager.get_epsilon() == 1 and \
           self.world_manager.get_releaseh() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106718')
        if self.world_manager.get_epsilon() == 1 and \
           self.world_manager.get_releaseb() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106721')
        if self.world_manager.get_epsilon() == 1 and \
           self.world_manager.get_boxleft() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106724')
        if self.world_manager.get_epsilon() == 1 and \
           self.world_manager.get_demonbox() == 4:
            self.quests_manager.set_entry_done('106727')
        if self.world_manager.get_slavers() > 1 and \
           self.world_manager.get_slavers() < 5:
            self.quests_manager.set_entry_active('60766')
        if self.world_manager.get_slavers() == 5:
            self.quests_manager.set_entry_done('60767')
        if self.world_manager.get_slavers() == 7:
            self.quests_manager.set_entry_done('60768')
        if self.world_manager.get_beta() == 1 and \
           self.world_manager.get_gamma() == 0:
            self.quests_manager.set_entry_active('39488')
        if self.world_manager.get_beta() == 2:
            self.quests_manager.set_entry_done('106728')
        if self.world_manager.get_beta() == 1 and \
           self.world_manager.get_releaseh() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106716')
        if self.world_manager.get_beta() == 1 and \
           self.world_manager.get_releaseb() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106719')
        if self.world_manager.get_beta() == 1 and \
           self.world_manager.get_boxleft() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('106722')
        if self.world_manager.get_beta() == 1 and \
           self.world_manager.get_demonbox() == 4:
            self.quests_manager.set_entry_done('106725')
        if self.world_manager.get_alpha() == 1 and \
           self.world_manager.get_gamma() == 0:
            self.quests_manager.set_entry_active('39481')
        if self.world_manager.get_alpha() == 2:
            self.quests_manager.set_entry_done('106715')
        if self.world_manager.get_alpha() == 1 and \
           self.world_manager.get_releaseh() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('39504')
        if self.world_manager.get_alpha() == 1 and \
           self.world_manager.get_releaseb() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('39507')
        if self.world_manager.get_alpha() == 1 and \
           self.world_manager.get_boxleft() == 1 and \
           self.world_manager.get_gamma() == 1:
            self.quests_manager.set_entry_done('39482')
        if self.world_manager.get_alpha() == 1 and \
           self.world_manager.get_demonbox() == 4:
            self.quests_manager.set_entry_done('60807')
        if self.world_manager.get_talk_to_betrayer() == 1 and \
           self.world_manager.get_regret() == 0:
            self.quests_manager.set_entry_active('60323')
        if self.world_manager.get_regret() > 0:
            self.quests_manager.set_entry_done('60324')
        if self.world_manager.get_know_ravel_key() == 1:
            self.quests_manager.set_entry_active('28832')
        if self.world_manager.get_know_ravel_key() == 3:
            self.quests_manager.set_entry_done('39517')
        if self.world_manager.get_dustman_initiation() == 5 and \
           self.world_manager.get_join_dustmen() != 5:
            self.quests_manager.set_entry_active('59884')
        if self.world_manager.get_dustman_initiation() > 5:
            self.quests_manager.set_entry_done('59885')
        if self.world_manager.get_snuff_carl() == 3 and \
           self.world_manager.get_carl_snuffed() == 0:
            self.quests_manager.set_entry_active('60804')
        if self.world_manager.get_carl_snuffed() > 1:
            self.quests_manager.set_entry_done('61966')
        if self.world_manager.get_roberta_betrayed() == 1:
            self.quests_manager.set_entry_done('61967')
        if self.world_manager.get_dream() == 2:
            self.quests_manager.set_entry_active('68040')
        if self.world_manager.get_dream() > 2 and \
           self.world_manager.get_dream() != 6:
            self.quests_manager.set_entry_done('106714')
        if self.world_manager.get_rat_quest() == 1:
            self.quests_manager.set_entry_active('44298')
        if self.world_manager.get_rat_quest() == 2:
            self.quests_manager.set_entry_done('44299')
        if self.world_manager.get_karina_friend() == 1:
            self.quests_manager.set_entry_active('3689')
        if self.world_manager.get_karina_friend() > 2:
            self.quests_manager.set_entry_done('3691')
        if self.world_manager.get_ecco_speak() > 2 and \
           self.world_manager.get_ecco_speak() < 5:
            self.quests_manager.set_entry_active('56501')
        if self.world_manager.get_ecco_speak() == 5:
            self.quests_manager.set_entry_done('56502')
        if self.world_manager.get_aelwyn() == 2:
            self.quests_manager.set_entry_active('56481')
        if self.world_manager.get_aelwyn() == 3:
            self.quests_manager.set_entry_active('56482')
        if self.world_manager.get_aelwyn() == 4:
            self.quests_manager.set_entry_done('56483')
        if self.world_manager.get_ingress() > 4 and \
           self.world_manager.get_ingress() < 8:
            self.quests_manager.set_entry_active('57911')
        if self.world_manager.get_ingress() == 8:
            self.quests_manager.set_entry_done('57912')
        if self.world_manager.get_rw() > 0 and \
           self.world_manager.get_rw() < 3 and \
           not self.world_manager.get_rwill_dead_kaputz():
            self.quests_manager.set_entry_active('39739')
        if self.world_manager.get_rw() > 2 and \
           not self.world_manager.get_rwill_dead_kaputz():
            self.quests_manager.set_entry_done('106709')
        if self.world_manager.get_curst_key() > 0 and \
           self.world_manager.get_curst_key() < 6:
            self.quests_manager.set_entry_active('60762')
        if self.world_manager.get_curst_key() == 6:
            self.quests_manager.set_entry_done('60763')
        if self.world_manager.get_quint_item() > 0 and \
           self.world_manager.get_quint_item() < 3:
            self.quests_manager.set_entry_active('57938')
        if self.world_manager.get_quint_item() == 3:
            self.quests_manager.set_entry_done('57937')
        if self.world_manager.get_release_dimtree() == 3:
            self.quests_manager.set_entry_active('34229')
        if self.world_manager.get_release_dimtree() == 5:
            self.quests_manager.set_entry_done('34230')
        if self.world_manager.get_pharod() == 0:
            self.quests_manager.set_entry_active('39732')
        if self.world_manager.get_pharod() > 0:
            self.quests_manager.set_entry_done('39733')
        if self.world_manager.get_scent_quest_qj() == 1:
            self.quests_manager.set_entry_active('56685')
        if self.world_manager.get_scent_quest_qj() == 2:
            self.quests_manager.set_entry_done('56686')
        if self.world_manager.get_arlo_quest() == 1:
            self.quests_manager.set_entry_active('29872')
        if self.world_manager.get_nestor_dead_kaputz() and \
           self.world_manager.get_arlo_quest() == 2:
            self.quests_manager.set_entry_done('29870')
        if self.world_manager.get_arlo_quest() == 2 and \
           self.world_manager.get_nestor_quest() == 2:
            self.quests_manager.set_entry_done('29869')
        if self.world_manager.get_journal() == 0:
            self.quests_manager.set_entry_active('39735')
        if self.world_manager.get_journal() > 0:
            self.quests_manager.set_entry_done('39736')
        if self.world_manager.get_mebbeth_quest() > 0 and \
           self.world_manager.get_mebbeth_quest() < 11 and \
           not self.world_manager.get_mebbeth_dead_kaputz():
            self.quests_manager.set_entry_active('57914')
        if self.world_manager.get_mebbeth_quest() == 11:
            self.quests_manager.set_entry_done('57915')
        if self.world_manager.get_mebbeth_quest() == 12:
            self.quests_manager.set_entry_done('57916')
        if self.world_manager.get_mebbeth_quest() == 1:
            self.quests_manager.set_entry_active('57918')
        if not self.world_manager.get_mftree_dead_kaputz() and \
           self.world_manager.get_mebbeth_quest() > 1:
            self.quests_manager.set_entry_done('57919')
        if self.world_manager.get_mftree_dead_kaputz() and \
           self.world_manager.get_mebbeth_quest() > 1:
            self.quests_manager.set_entry_done('57920')
        if not self.world_manager.get_mftree_dead_kaputz() and \
           self.world_manager.get_mebbeth_quest() == 2:
            self.quests_manager.set_entry_active('57922')
        if self.world_manager.get_mebbeth_quest() > 2 and \
           self.world_manager.get_mebbeth_fail() == 0:
            self.quests_manager.set_entry_done('57923')
        if self.world_manager.get_mebbeth_quest() > 2 and \
           self.world_manager.get_mebbeth_fail() == 1:
            self.quests_manager.set_entry_done('64155')
        if self.world_manager.get_mebbeth_quest() > 6 and \
           self.world_manager.get_mebbeth_quest() < 10:
            self.quests_manager.set_entry_active('57931')
        if self.world_manager.get_mebbeth_quest() > 9:
            self.quests_manager.set_entry_done('57932')
        if self.world_manager.get_dream() == 1:
            self.quests_manager.set_entry_active('68039')
        if self.world_manager.get_dream() > 1 and \
           self.world_manager.get_dream() != 6:
            self.quests_manager.set_entry_done('106713')
        if self.world_manager.get_pharod_quest() == 1:
            self.quests_manager.set_entry_active('59111')
        if self.world_manager.get_pharod_quest() > 1:
            self.quests_manager.set_entry_done('59112')
        if self.world_manager.get_sevtai_quest() == 1:
            self.quests_manager.set_entry_active('57904')
        if self.world_manager.get_sevtai_quest() == 2 and \
           self.world_manager.get_chaotic_sevtai_1() == 0:
            self.quests_manager.set_entry_done('57905')
        if self.world_manager.get_sevtai_quest() == 2 and \
           self.world_manager.get_chaotic_sevtai_1() == 1:
            self.quests_manager.set_entry_done('57906')
        if self.world_manager.get_embalm_key_quest() > 0 and \
           self.world_manager.get_embalm_key_quest() < 3:
            self.quests_manager.set_entry_active('34226')
        if self.world_manager.get_embalm_key_quest() > 2:
            self.quests_manager.set_entry_done('34227')
        if self.world_manager.get_porphiron_quest() == 1:
            self.quests_manager.set_entry_active('57908')
        if self.world_manager.get_porphiron_quest() == 2:
            self.quests_manager.set_entry_done('57909')
        if self.world_manager.get_eivene() == 1 and \
           self.world_manager.get_eivene_delivery() == 0:
            self.quests_manager.set_entry_active('34223')
        if self.world_manager.get_eivene_delivery() == 1:
            self.quests_manager.set_entry_done('34224')
        if self.world_manager.get_angyar_quest() > 1 and \
           self.world_manager.get_angyar_quest() < 4:
            self.quests_manager.set_entry_active('59908')
        if self.world_manager.get_angyar_quest() == 4:
            self.quests_manager.set_entry_done('59909')
        if self.world_manager.get_mausoleum_quest() > 0 and \
           self.world_manager.get_mausoleum_quest() < 3:
            self.quests_manager.set_entry_active('17134')
        if self.world_manager.get_mausoleum_quest() == 3:
            self.quests_manager.set_entry_done('17062')
        if self.world_manager.get_uhir() == 2:
            self.quests_manager.set_entry_active('44295')
        if self.world_manager.get_uhir() == 3:
            self.quests_manager.set_entry_done('44296')
        if self.locations_manager.get_current_internal == 'AR0500':
            self.quests_manager.set_entry_active('106824')
        if self.world_manager.get_know_ravel() == 1:
            self.quests_manager.set_entry_done('106825')


    def _log(self, line):
        self._log_events_manager.write_log_event(line)
