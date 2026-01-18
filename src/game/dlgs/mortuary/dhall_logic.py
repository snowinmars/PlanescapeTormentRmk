class DhallLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r827_action(self):
        #$% SetGlobal("0202_Dhall_Face_Player","AR0202",1) %$#
        return


    def j39468_s3_r830_action(self):
        self.state_manager.journal_manager.update_journal('39468')
        #$% .register('39468', 'Я рассказал писарю Дхоллу о Ваксисе и его маскировке. Дхолл должен послать других тленных схватить Ваксиса.') %$#


    def r830_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', 'Да, я обещал Ваксису, что не выдам его тленным, ну и что? Я рассказал писарю Дхоллу о Ваксисе и его маскировке. Дхолл должен послать других тленных схватить Ваксиса. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'Я спросил Дхолла, знает ли он меня, и он ответил, что знает обо мне очень мало, и еще меньше — о моих спутниках, сопровождавших меня в прошлом. Вероятно, их тела находятся здесь, в Морге... возможно, увидев их, я смогу что-нибудь вспомнить.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'По всей видимости, мое тело доставил сюда на повозке Фарод вместе с кучей других трупов. Был ли я действительно *мертв*, когда он это делал?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Дхолл сказал мне, что Фарода можно найти за пределами Морга, в месте под названием «Улей». Он не хочет, чтобы я охотился за Фародом, но ведь это не он потерял память и восстал из мертвых, так что он может оставить свое мнение при себе. Дхолл посоветовал мне узнать местонахождение Фарода у кого-нибудь в Улье.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Дхолл сказал мне, что в мемориальном зале на первом этаже Морга погребена женщина, которая сопровождала меня.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Дхолл сказал мне, что это благодаря ему мои визиты в Морг остаются в тайне от остальных тленных. До тех пор, пока он остается писарем в приемной, он будет единственным, кто видит мое тело, прибывающее сюда.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Дхолл предположил, что раны, полученные мною, незначительны по сравнению с теми, что нанесены моему разуму... Он также предположил, что эти раны стали причиной моей потери памяти, и что увечья разума не ограничились амнезией. Эта мысль мне неприятна: неплохо бы слышать побольше *хороших* новостей время от времени.') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'В Морге я встретил больного писаря по имени Дхолл... он знал, что я потерял свою память, прежде чем я заговорил с ним. Были ли мы знакомы до того, как я потерял память? Я надеюсь получить несколько ответов, но это место порождает все больше и больше вопросов.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'В Морге я встретил больного писаря по имени Дхолл... он знал, что я потерял свою память, прежде чем я заговорил с ним. Были ли мы знакомы до того, как я потерял память? Я надеюсь получить несколько ответов, но это место порождает все больше и больше вопросов.') %$#


    def r6033_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5071_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5072_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r5073_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5074_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r6064_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r13288_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r830_condition(self):
        return not self.state_manager.world_manager.get_vaxis_lawful()


    def r831_condition(self):
        return self.state_manager.world_manager.get_vaxis_lawful()


    def r839_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_mortualy_alarmed()


    def r839_extra_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_mortualy_alarmed()


    def r835_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_mortualy_alarmed()


    def r5058_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_mortualy_alarmed()


    def r842_condition(self):
        return self.state_manager.world_manager.get_dhall() > 0


    def r843_condition(self):
        return self.state_manager.world_manager.get_dhall() > 0


    def r5062_condition(self):
        return self.state_manager.world_manager.get_dhall() == 0


    def r854_condition(self):
        return self.state_manager.world_manager.get_vaxis() == 1 and \
               not self.state_manager.world_manager.get_dead_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_leave() and \
               self.state_manager.world_manager.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.locations_manager.is_visited_internal('AR0200')


    def r870_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r891_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r892_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r898_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r910_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r931_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 11


    def r942_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r943_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6026_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r874_condition(self):
        return self.state_manager.world_manager.get_pharod() > 0


    def r948_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6027_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6066_condition(self):
        return self.state_manager.world_manager.get_pharod() > 0


    def r964_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r968_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r5076_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5077_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r5078_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5079_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r5081_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5082_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5083_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r6032_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


class DhallLogic(DhallLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def set_know_dhall_name(self):
        self.state_manager.world_manager.set_know_dhall_name(True)


    def get_know_dhall_name(self):
        return self.state_manager.world_manager.get_know_dhall_name()


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_dhall_times()
