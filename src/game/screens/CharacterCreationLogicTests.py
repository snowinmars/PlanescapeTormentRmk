import unittest

from game.engine.LogicTests import (LogicTests)
from game.engine.characters.Character import (Character)
from game.screens.CharacterCreationLogic import (CharacterCreationLogic)


class CharactersStoreTests(LogicTests):
    def setUp(self):
        super(CharactersStoreTests, self).setUp()
        self.min_prop_value = 9
        self.max_prop_value = 18
        self.logic = CharacterCreationLogic(
            self.state_manager,
            min_prop_value=self.min_prop_value,
            max_prop_value=self.max_prop_value
        )


    def test_ctor(self):
        min_prop_value=3
        max_prop_value=25
        max_props_sum=70
        default_health=30
        constitution_threshhold=20

        logic = CharacterCreationLogic(
            self.state_manager,
            min_prop_value=min_prop_value,
            max_prop_value=max_prop_value,
            max_props_sum=max_props_sum,
            default_health=default_health,
            constitution_threshhold=constitution_threshhold
        )

        self.assertEqual(logic.min_prop_value   , min_prop_value)
        self.assertEqual(logic.max_prop_value   , max_prop_value)
        self.assertEqual(logic.max_props_sum    , max_props_sum)
        self.assertEqual(logic.default_health   , default_health)
        self.assertEqual(logic.constitution_threshhold, constitution_threshhold)


    def test_get_character(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))
        character = self.logic.get_character(character_name)

        self.assertIsNotNone(character)
        self.assertEqual(character.name, character_name)


    def test_dec_prop_strength(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'strength')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength - 1, character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_strength_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, strength=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'strength')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_dexterity(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'dexterity')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength     , character.strength)
        self.assertEqual(character_dexterity - 1, character.dexterity)
        self.assertEqual(character_intelligence , character.intelligence)
        self.assertEqual(character_constitution , character.constitution)
        self.assertEqual(character_wisdom       , character.wisdom)
        self.assertEqual(character_charisma     , character.charisma)


    def test_dec_prop_dexterity_below(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, dexterity=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'dexterity')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_intelligence(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'intelligence')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength        , character.strength)
        self.assertEqual(character_dexterity       , character.dexterity)
        self.assertEqual(character_intelligence - 1, character.intelligence)
        self.assertEqual(character_constitution    , character.constitution)
        self.assertEqual(character_wisdom          , character.wisdom)
        self.assertEqual(character_charisma        , character.charisma)


    def test_dec_prop_intelligence_below(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, intelligence=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'intelligence')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_constitution(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'constitution')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength        , character.strength)
        self.assertEqual(character_dexterity       , character.dexterity)
        self.assertEqual(character_intelligence    , character.intelligence)
        self.assertEqual(character_constitution - 1, character.constitution)
        self.assertEqual(character_wisdom          , character.wisdom)
        self.assertEqual(character_charisma        , character.charisma)


    def test_dec_prop_constitution_below(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, constitution=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'constitution')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_constitution_health_changes(self):
        max_health = 20
        starting_constitution = 18

        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, max_health=20, constitution=starting_constitution))
        character = self.logic.get_character(character_name)

        self.logic._update_max_health(character)
        # here hp = 42, con = 18

        character = self.logic.get_character(character_name)
        self.assertEqual(18, character.constitution)
        self.assertEqual(42, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(17, character.constitution)
        self.assertEqual(39, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(16, character.constitution)
        self.assertEqual(36, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(15, character.constitution)
        self.assertEqual(33, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(14, character.constitution)
        self.assertEqual(30, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(13, character.constitution)
        self.assertEqual(28, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(12, character.constitution)
        self.assertEqual(26, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(11, character.constitution)
        self.assertEqual(24, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(10, character.constitution)
        self.assertEqual(22, character.max_health)

        self.logic.dec_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual( 9, character.constitution)
        self.assertEqual(20, character.max_health)


    def test_dec_prop_wisdom(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'wisdom')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom - 1  , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_wisdom_below(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, wisdom=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'wisdom')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_dec_prop_charisma(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'charisma')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma - 1, character.charisma)


    def test_dec_prop_charisma_below(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, charisma=self.min_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.dec_prop(character_name, 'charisma')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_strength(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'strength')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength + 1, character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_strength_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, strength=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'strength')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_dexterity(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'dexterity')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength     , character.strength)
        self.assertEqual(character_dexterity + 1, character.dexterity)
        self.assertEqual(character_intelligence , character.intelligence)
        self.assertEqual(character_constitution , character.constitution)
        self.assertEqual(character_wisdom       , character.wisdom)
        self.assertEqual(character_charisma     , character.charisma)


    def test_inc_prop_dexterity_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, dexterity=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'dexterity')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_intelligence(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'intelligence')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength        , character.strength)
        self.assertEqual(character_dexterity       , character.dexterity)
        self.assertEqual(character_intelligence + 1, character.intelligence)
        self.assertEqual(character_constitution    , character.constitution)
        self.assertEqual(character_wisdom          , character.wisdom)
        self.assertEqual(character_charisma        , character.charisma)


    def test_inc_prop_intelligence_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, intelligence=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'intelligence')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_constitution(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'constitution')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength        , character.strength)
        self.assertEqual(character_dexterity       , character.dexterity)
        self.assertEqual(character_intelligence    , character.intelligence)
        self.assertEqual(character_constitution + 1, character.constitution)
        self.assertEqual(character_wisdom          , character.wisdom)
        self.assertEqual(character_charisma        , character.charisma)


    def test_inc_prop_constitution_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, constitution=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'constitution')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_constitution_health_changes(self):
        max_health = 20
        starting_constitution = 9

        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, max_health=20, constitution=starting_constitution))
        character = self.logic.get_character(character_name)

        self.logic._update_max_health(character)
        # here hp = 20, con = 9

        character = self.logic.get_character(character_name)
        self.assertEqual( 9, character.constitution)
        self.assertEqual(20, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(10, character.constitution)
        self.assertEqual(22, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(11, character.constitution)
        self.assertEqual(24, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(12, character.constitution)
        self.assertEqual(26, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(13, character.constitution)
        self.assertEqual(28, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(14, character.constitution)
        self.assertEqual(30, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(15, character.constitution)
        self.assertEqual(33, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(16, character.constitution)
        self.assertEqual(36, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(17, character.constitution)
        self.assertEqual(39, character.max_health)

        self.logic.inc_prop(character_name, 'constitution')
        character = self.logic.get_character(character_name)
        self.assertEqual(18, character.constitution)
        self.assertEqual(42, character.max_health)


    def test_inc_prop_wisdom(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'wisdom')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom + 1  , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_wisdom_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, wisdom=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'wisdom')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    , character.strength)
        self.assertEqual(character_dexterity   , character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom      , character.wisdom)
        self.assertEqual(character_charisma    , character.charisma)


    def test_inc_prop_charisma(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'charisma')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength    ,  character.strength)
        self.assertEqual(character_dexterity   ,  character.dexterity)
        self.assertEqual(character_intelligence,  character.intelligence)
        self.assertEqual(character_constitution,  character.constitution)
        self.assertEqual(character_wisdom      ,  character.wisdom)
        self.assertEqual(character_charisma + 1,  character.charisma)


    def test_inc_prop_charisma_above(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(character_name, charisma=self.max_prop_value))

        character = self.logic.get_character(character_name)
        character_strength     = character.strength
        character_dexterity    = character.dexterity
        character_intelligence = character.intelligence
        character_constitution = character.constitution
        character_wisdom       = character.wisdom
        character_charisma     = character.charisma

        self.logic.inc_prop(character_name, 'charisma')

        character = self.logic.get_character(character_name)
        self.assertEqual(character_strength,     character.strength)
        self.assertEqual(character_dexterity,    character.dexterity)
        self.assertEqual(character_intelligence, character.intelligence)
        self.assertEqual(character_constitution, character.constitution)
        self.assertEqual(character_wisdom,       character.wisdom)
        self.assertEqual(character_charisma,     character.charisma)


    def test_minus_sensitive(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(
            character_name,
            strength=self.min_prop_value,
            dexterity=self.min_prop_value,
            intelligence=self.min_prop_value,
            constitution=self.min_prop_value,
            wisdom=self.min_prop_value,
            charisma=self.min_prop_value
        ))

        self.assertFalse(self.logic.minus_sensitive(character_name, 'strength'))
        self.assertFalse(self.logic.minus_sensitive(character_name, 'dexterity'))
        self.assertFalse(self.logic.minus_sensitive(character_name, 'intelligence'))
        self.assertFalse(self.logic.minus_sensitive(character_name, 'constitution'))
        self.assertFalse(self.logic.minus_sensitive(character_name, 'wisdom'))
        self.assertFalse(self.logic.minus_sensitive(character_name, 'charisma'))

        self.logic.inc_prop(character_name, 'strength')
        self.logic.inc_prop(character_name, 'dexterity')
        self.logic.inc_prop(character_name, 'intelligence')
        self.logic.inc_prop(character_name, 'constitution')
        self.logic.inc_prop(character_name, 'wisdom')
        self.logic.inc_prop(character_name, 'charisma')

        self.assertTrue(self.logic.minus_sensitive(character_name, 'strength'))
        self.assertTrue(self.logic.minus_sensitive(character_name, 'dexterity'))
        self.assertTrue(self.logic.minus_sensitive(character_name, 'intelligence'))
        self.assertTrue(self.logic.minus_sensitive(character_name, 'constitution'))
        self.assertTrue(self.logic.minus_sensitive(character_name, 'wisdom'))
        self.assertTrue(self.logic.minus_sensitive(character_name, 'charisma'))


    def test_plus_sensitive_when_above(self):
        min_prop_value = 1
        max_prop_value = 5
        max_props_sum = 75
        logic = CharacterCreationLogic(
            self.state_manager,
            min_prop_value=min_prop_value,
            max_prop_value=max_prop_value,
            max_props_sum=max_props_sum
        )

        props_count = 6
        self.assertTrue(logic.max_prop_value * props_count < logic.max_props_sum)

        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(
            character_name,
            strength=logic.max_prop_value,
            dexterity=logic.max_prop_value,
            intelligence=logic.max_prop_value,
            constitution=logic.max_prop_value,
            wisdom=logic.max_prop_value,
            charisma=logic.max_prop_value
        ))

        character = self.logic.get_character(character_name)

        self.assertEqual(character.strength    , logic.max_prop_value)
        self.assertEqual(character.dexterity   , logic.max_prop_value)
        self.assertEqual(character.intelligence, logic.max_prop_value)
        self.assertEqual(character.constitution, logic.max_prop_value)
        self.assertEqual(character.wisdom      , logic.max_prop_value)
        self.assertEqual(character.charisma    , logic.max_prop_value)
        self.assertFalse(logic.plus_sensitive(character_name, 'strength'))
        self.assertFalse(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertFalse(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertFalse(logic.plus_sensitive(character_name, 'constitution'))
        self.assertFalse(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertFalse(logic.plus_sensitive(character_name, 'charisma'))

        logic.dec_prop(character_name, 'strength')
        logic.dec_prop(character_name, 'dexterity')
        logic.dec_prop(character_name, 'intelligence')
        logic.dec_prop(character_name, 'constitution')
        logic.dec_prop(character_name, 'wisdom')
        logic.dec_prop(character_name, 'charisma')

        self.assertEqual(character.strength    , logic.max_prop_value - 1)
        self.assertEqual(character.dexterity   , logic.max_prop_value - 1)
        self.assertEqual(character.intelligence, logic.max_prop_value - 1)
        self.assertEqual(character.constitution, logic.max_prop_value - 1)
        self.assertEqual(character.wisdom      , logic.max_prop_value - 1)
        self.assertEqual(character.charisma    , logic.max_prop_value - 1)
        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))


    def test_plus_sensitive_when_sum_above_remaning_points_and_done(self):
        min_prop_value = 1
        max_prop_value = 7
        max_props_sum = 30 # 6 props, so 5 max each
        logic = CharacterCreationLogic(
            self.state_manager,
            min_prop_value=min_prop_value,
            max_prop_value=max_prop_value,
            max_props_sum=max_props_sum
        )

        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(
            character_name,
            strength=5,
            dexterity=5,
            intelligence=5,
            constitution=5,
            wisdom=5,
            charisma=5
        ))

        self.assertFalse(logic.plus_sensitive(character_name, 'strength'))
        self.assertFalse(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertFalse(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertFalse(logic.plus_sensitive(character_name, 'constitution'))
        self.assertFalse(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertFalse(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 0)
        self.assertTrue(logic.done(character_name))

        logic.dec_prop(character_name, 'strength')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))

        logic.inc_prop(character_name, 'strength')
        logic.dec_prop(character_name, 'dexterity')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))

        logic.inc_prop(character_name, 'dexterity')
        logic.dec_prop(character_name, 'intelligence')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))

        logic.inc_prop(character_name, 'intelligence')
        logic.dec_prop(character_name, 'constitution')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))

        logic.inc_prop(character_name, 'constitution')
        logic.dec_prop(character_name, 'wisdom')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))

        logic.inc_prop(character_name, 'wisdom')
        logic.dec_prop(character_name, 'charisma')

        self.assertTrue(logic.plus_sensitive(character_name, 'strength'))
        self.assertTrue(logic.plus_sensitive(character_name, 'dexterity'))
        self.assertTrue(logic.plus_sensitive(character_name, 'intelligence'))
        self.assertTrue(logic.plus_sensitive(character_name, 'constitution'))
        self.assertTrue(logic.plus_sensitive(character_name, 'wisdom'))
        self.assertTrue(logic.plus_sensitive(character_name, 'charisma'))
        self.assertEqual(logic.remaning_points(character_name), 1)
        self.assertFalse(logic.done(character_name))


    def test_set_mage(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(
            character_name,
            strength=7,
            dexterity=7,
            intelligence=7,
            constitution=7,
            wisdom=7,
            charisma=7
        ))
        character = self.logic.get_character(character_name)

        self.assertEqual(character.strength, 7)
        self.assertEqual(character.dexterity, 7)
        self.assertEqual(character.intelligence, 7)
        self.assertEqual(character.constitution, 7)
        self.assertEqual(character.wisdom, 7)
        self.assertEqual(character.charisma, 7)

        self.logic.set_mage(character_name)
        character = self.logic.get_character(character_name)

        self.assertEqual(character.strength, 9)
        self.assertEqual(character.dexterity, 9)
        self.assertEqual(character.intelligence, 16)
        self.assertEqual(character.constitution, 9)
        self.assertEqual(character.wisdom, 17)
        self.assertEqual(character.charisma, 15)


    def test_reset_character(self):
        character_name = 'character_name'
        self.characters_manager.add_character(self._create_char(
            character_name,
            strength=7,
            dexterity=7,
            intelligence=7,
            constitution=7,
            wisdom=7,
            charisma=7
        ))
        character = self.logic.get_character(character_name)

        self.assertEqual(character.strength, 7)
        self.assertEqual(character.dexterity, 7)
        self.assertEqual(character.intelligence, 7)
        self.assertEqual(character.constitution, 7)
        self.assertEqual(character.wisdom, 7)
        self.assertEqual(character.charisma, 7)

        self.logic.reset_character(character_name)
        character = self.logic.get_character(character_name)

        self.assertEqual(character.strength, 9)
        self.assertEqual(character.dexterity, 9)
        self.assertEqual(character.intelligence, 9)
        self.assertEqual(character.constitution, 9)
        self.assertEqual(character.wisdom, 9)
        self.assertEqual(character.charisma, 9)


    def _create_char(
        self,
        name,
        strength=None,
        dexterity=None,
        intelligence=None,
        constitution=None,
        wisdom=None,
        charisma=None,
        max_health=20
    ):
        default_property_value = self.min_prop_value + 2 # to make dec/inc easy
        return Character(
            name=name, current_class='mage', race='human', sex='man', \
            max_health=max_health, current_health=max_health, ac=10, \
            good=0, law=0, \
            lore=0, experience=0, \
            strength=strength or default_property_value, \
            dexterity=dexterity or default_property_value, \
            intelligence=intelligence or default_property_value, \
            constitution=constitution or default_property_value, \
            wisdom=wisdom or default_property_value, \
            charisma=charisma or default_property_value, \
            looks_like=''
        )


    def _assert_characters(self, lhs, rhs):
        self.assertEqual(lhs.strength    , rhs.strength)
        self.assertEqual(lhs.dexterity   , rhs.dexterity)
        self.assertEqual(lhs.intelligence, rhs.intelligence)
        self.assertEqual(lhs.constitution, rhs.constitution)
        self.assertEqual(lhs.wisdom      , rhs.wisdom)
        self.assertEqual(lhs.charisma    , rhs.charisma)
