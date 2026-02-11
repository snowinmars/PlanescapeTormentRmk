import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.inventory_items.InventoryItem import (
    InventoryItem          ,
    InventoryItemFlags     ,
    InventoryItemUnusableBy
)


class InventoryItemsTests(LogicTests):
    def test_ctor(self):
        the_id               = 'the_id'
        category             = 'category'
        minimal_strength     = 2
        minimal_dexterity    = 3
        minimal_constitution = 5
        minimal_intelligence = 7
        minimal_wisdom       = 11
        minimal_charisma     = 13
        price                = 17
        lore_to_identify     = 19
        enchantment          = 23
        weigth               = 29
        jump_on_use_to       = 'jump_on_use_to'
        owned_count          = 31

        item = self._create_inventory_item(
            the_id               = the_id              ,
            category             = category            ,
            minimal_strength     = minimal_strength    ,
            minimal_dexterity    = minimal_dexterity   ,
            minimal_constitution = minimal_constitution,
            minimal_intelligence = minimal_intelligence,
            minimal_wisdom       = minimal_wisdom      ,
            minimal_charisma     = minimal_charisma    ,
            price                = price               ,
            lore_to_identify     = lore_to_identify    ,
            enchantment          = enchantment         ,
            weigth               = weigth              ,
            jump_on_use_to       = jump_on_use_to      ,
            owned_count          = owned_count
        )

        self.assertIsNotNone(item)

        self.assertEqual(item.the_id              , the_id)
        self.assertEqual(item.category            , category)
        self.assertEqual(item.minimal_strength    , minimal_strength)
        self.assertEqual(item.minimal_dexterity   , minimal_dexterity)
        self.assertEqual(item.minimal_constitution, minimal_constitution)
        self.assertEqual(item.minimal_intelligence, minimal_intelligence)
        self.assertEqual(item.minimal_wisdom      , minimal_wisdom)
        self.assertEqual(item.minimal_charisma    , minimal_charisma)
        self.assertEqual(item.price               , price)
        self.assertEqual(item.lore_to_identify    , lore_to_identify)
        self.assertEqual(item.enchantment         , enchantment)
        self.assertEqual(item.weigth              , weigth)
        self.assertEqual(item.jump_on_use_to      , jump_on_use_to)
        self.assertEqual(item.owned_count         , owned_count)

        self.assertEqual(item.general_name          , f'inventory_item_the_id_general_name')
        self.assertEqual(item.identified_name       , f'inventory_item_the_id_identified_name')
        self.assertEqual(item.general_description   , f'inventory_item_the_id_general_description')
        self.assertEqual(item.identified_description, f'inventory_item_the_id_identified_description')
        self.assertEqual(item.fake_properties       , f'inventory_item_the_id_fake_properties')
        self.assertEqual(item.grid_image            , f'images_inventory_items_the_id_grid')
        self.assertEqual(item.detail_image          , f'images_inventory_items_the_id_detail')

    def test_reserialize_pickle(self):
        item = self._create_inventory_item()

        dump = pickle.dumps(item)
        expected = b'\x80\x05\x95\x9a\x01\x00\x00\x00\x00\x00\x00\x8c)game.engine.inventory_items.InventoryItem\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x06the_id\x94h\x05\x8c\x08category\x94h\x06\x8c\x10minimal_strength\x94K\x02\x8c\x11minimal_dexterity\x94K\x03\x8c\x14minimal_constitution\x94K\x05\x8c\x14minimal_intelligence\x94K\x07\x8c\x0eminimal_wisdom\x94K\x0b\x8c\x10minimal_charisma\x94K\r\x8c\x05price\x94K\x11\x8c\x10lore_to_identify\x94K\x13\x8c\x0benchantment\x94K\x17\x8c\x06weigth\x94K\x1d\x8c\x0ejump_on_use_to\x94h\x11\x8c\x0bowned_count\x94K\x1f\x8c\x05flags\x94h\x00\x8c\x12InventoryItemFlags\x94\x93\x94K\x00\x85\x94R\x94\x8c\x0bunusable_by\x94h\x00\x8c\x17InventoryItemUnusableBy\x94\x93\x94K\x00\x85\x94R\x94ub.'
        self.assertEqual(dump, expected)

        restored_item = pickle.loads(dump)
        self._assert_inventory_items(item, restored_item)


    def test_reserialize_json(self):
        item = self._create_inventory_item()

        dump = item.toJson()
        expected = '{"the_id": "the_id", "category": "category", "minimal_strength": 2, "minimal_dexterity": 3, "minimal_constitution": 5, "minimal_intelligence": 7, "minimal_wisdom": 11, "minimal_charisma": 13, "price": 17, "lore_to_identify": 19, "enchantment": 23, "weigth": 29, "jump_on_use_to": "jump_on_use_to", "owned_count": 31, "flags": 0, "unusable_by": 0}'
        self.assertEqual(dump, expected)

        restored_item = InventoryItem.fromJson(dump)
        self._assert_inventory_items(item, restored_item)


    def test_flags(self):
        item = self._create_inventory_item()

        item.flags = InventoryItemFlags.unsellable
        self.assertTrue (item.unsellable())
        self.assertFalse(item.two_handed())

        item.flags = InventoryItemFlags.two_handed
        self.assertFalse(item.unsellable())
        self.assertTrue (item.two_handed())
        self.assertFalse(item.droppable())

        item.flags = InventoryItemFlags.droppable
        self.assertFalse(item.two_handed())
        self.assertTrue (item.droppable())
        self.assertFalse(item.displayable())

        item.flags = InventoryItemFlags.displayable
        self.assertFalse(item.droppable())
        self.assertTrue (item.displayable())
        self.assertFalse(item.cursed())

        item.flags = InventoryItemFlags.cursed
        self.assertFalse(item.displayable())
        self.assertTrue (item.cursed())
        self.assertFalse(item.not_copyable())

        item.flags = InventoryItemFlags.not_copyable
        self.assertFalse(item.cursed())
        self.assertTrue (item.not_copyable())
        self.assertFalse(item.magical())

        item.flags = InventoryItemFlags.magical
        self.assertFalse(item.not_copyable())
        self.assertTrue (item.magical())
        self.assertFalse(item.left_handed())

        item.flags = InventoryItemFlags.left_handed
        self.assertFalse(item.magical())
        self.assertTrue (item.left_handed())
        self.assertFalse(item.silver())

        item.flags = InventoryItemFlags.silver
        self.assertFalse(item.left_handed())
        self.assertTrue (item.silver())
        self.assertFalse(item.cold_iron())

        item.flags = InventoryItemFlags.cold_iron
        self.assertFalse(item.silver())
        self.assertTrue (item.cold_iron())
        self.assertFalse(item.steel())

        item.flags = InventoryItemFlags.steel
        self.assertFalse(item.cold_iron())
        self.assertTrue (item.steel())
        self.assertFalse(item.conversiable())

        item.flags = InventoryItemFlags.conversiable
        self.assertFalse(item.steel())
        self.assertTrue (item.conversiable())
        self.assertFalse(item.fake_two_handed())

        item.flags = InventoryItemFlags.ee_fake_two_handed
        self.assertFalse(item.conversiable())
        self.assertTrue (item.fake_two_handed())
        self.assertFalse(item.forbid_offhand_weapon())

        item.flags = InventoryItemFlags.ee_forbid_offhand_weapon
        self.assertFalse(item.fake_two_handed())
        self.assertTrue (item.forbid_offhand_weapon())
        self.assertFalse(item.usable_in_inventory())

        item.flags = InventoryItemFlags.usable_in_inventory
        self.assertFalse(item.forbid_offhand_weapon())
        self.assertTrue (item.usable_in_inventory())
        self.assertFalse(item.adamantine())

        item.flags = InventoryItemFlags.ee_adamantine
        self.assertFalse(item.usable_in_inventory())
        self.assertTrue (item.adamantine())
        self.assertFalse(item.undispellable())

        item.flags = InventoryItemFlags.ee_ex_undispellable
        self.assertFalse(item.adamantine())
        self.assertTrue (item.undispellable())
        self.assertFalse(item.toggle_critical_hits())

        item.flags = InventoryItemFlags.ee_ex_toggle_critical_hits
        self.assertFalse(item.undispellable())
        self.assertTrue (item.toggle_critical_hits())


    def test_unusable_by(self):
        item = self._create_inventory_item()

        item.unusable_by = InventoryItemUnusableBy.chaotic
        self.assertTrue(item.unusable_by_chaotic())
        self.assertFalse(item.unusable_by_evil())

        item.unusable_by = InventoryItemUnusableBy.evil
        self.assertFalse(item.unusable_by_chaotic())
        self.assertTrue (item.unusable_by_evil())
        self.assertFalse(item.unusable_by_good())

        item.unusable_by = InventoryItemUnusableBy.good
        self.assertFalse(item.unusable_by_evil())
        self.assertTrue (item.unusable_by_good())
        self.assertFalse(item.unusable_by_x_neutral())

        item.unusable_by = InventoryItemUnusableBy.x_neutral
        self.assertFalse(item.unusable_by_good())
        self.assertTrue (item.unusable_by_x_neutral())
        self.assertFalse(item.unusable_by_lawful())

        item.unusable_by = InventoryItemUnusableBy.lawful
        self.assertFalse(item.unusable_by_x_neutral())
        self.assertTrue (item.unusable_by_lawful())
        self.assertFalse(item.unusable_by_neutral_x())

        item.unusable_by = InventoryItemUnusableBy.neutral_x
        self.assertFalse(item.unusable_by_lawful())
        self.assertTrue (item.unusable_by_neutral_x())
        self.assertFalse(item.unusable_by_sensate())

        item.unusable_by = InventoryItemUnusableBy.sensate
        self.assertFalse(item.unusable_by_neutral_x())
        self.assertTrue (item.unusable_by_sensate())
        self.assertFalse(item.unusable_by_priest())

        item.unusable_by = InventoryItemUnusableBy.priest
        self.assertFalse(item.unusable_by_sensate())
        self.assertTrue (item.unusable_by_priest())
        self.assertFalse(item.unusable_by_godsman())

        item.unusable_by = InventoryItemUnusableBy.godsman
        self.assertFalse(item.unusable_by_priest())
        self.assertTrue (item.unusable_by_godsman())
        self.assertFalse(item.unusable_by_anarchist())

        item.unusable_by = InventoryItemUnusableBy.anarchist
        self.assertFalse(item.unusable_by_godsman())
        self.assertTrue (item.unusable_by_anarchist())
        self.assertFalse(item.unusable_by_xaositect())

        item.unusable_by = InventoryItemUnusableBy.xaositect
        self.assertFalse(item.unusable_by_anarchist())
        self.assertTrue (item.unusable_by_xaositect())
        self.assertFalse(item.unusable_by_fighter())

        item.unusable_by = InventoryItemUnusableBy.fighter
        self.assertFalse(item.unusable_by_xaositect())
        self.assertTrue (item.unusable_by_fighter())
        self.assertFalse(item.unusable_by_non_aligned())

        item.unusable_by = InventoryItemUnusableBy.non_aligned
        self.assertFalse(item.unusable_by_fighter())
        self.assertTrue (item.unusable_by_non_aligned())
        self.assertFalse(item.unusable_by_fighter_mage())

        item.unusable_by = InventoryItemUnusableBy.fighter_mage
        self.assertFalse(item.unusable_by_non_aligned())
        self.assertTrue (item.unusable_by_fighter_mage())
        self.assertFalse(item.unusable_by_dustman())

        item.unusable_by = InventoryItemUnusableBy.dustman
        self.assertFalse(item.unusable_by_fighter_mage())
        self.assertTrue (item.unusable_by_dustman())
        self.assertFalse(item.unusable_by_mercykiller())

        item.unusable_by = InventoryItemUnusableBy.mercykiller
        self.assertFalse(item.unusable_by_dustman())
        self.assertTrue (item.unusable_by_mercykiller())
        self.assertFalse(item.unusable_by_indep())

        item.unusable_by = InventoryItemUnusableBy.indep
        self.assertFalse(item.unusable_by_mercykiller())
        self.assertTrue (item.unusable_by_indep())
        self.assertFalse(item.unusable_by_fighter_theif())

        item.unusable_by = InventoryItemUnusableBy.fighter_theif
        self.assertFalse(item.unusable_by_indep())
        self.assertTrue (item.unusable_by_fighter_theif())
        self.assertFalse(item.unusable_by_mage())

        item.unusable_by = InventoryItemUnusableBy.mage
        self.assertFalse(item.unusable_by_fighter_theif())
        self.assertTrue (item.unusable_by_mage())
        self.assertFalse(item.unusable_by_mage_thief())

        item.unusable_by = InventoryItemUnusableBy.mage_thief
        self.assertFalse(item.unusable_by_mage())
        self.assertTrue (item.unusable_by_mage_thief())
        self.assertFalse(item.unusable_by_dakkon())

        item.unusable_by = InventoryItemUnusableBy.dakkon
        self.assertFalse(item.unusable_by_mage_thief())
        self.assertTrue (item.unusable_by_dakkon())
        self.assertFalse(item.unusable_by_fall_from_grace())

        item.unusable_by = InventoryItemUnusableBy.fall_from_grace
        self.assertFalse(item.unusable_by_dakkon())
        self.assertTrue (item.unusable_by_fall_from_grace())
        self.assertFalse(item.unusable_by_thief())

        item.unusable_by = InventoryItemUnusableBy.thief
        self.assertFalse(item.unusable_by_fall_from_grace())
        self.assertTrue (item.unusable_by_thief())
        self.assertFalse(item.unusable_by_vhailor())

        item.unusable_by = InventoryItemUnusableBy.vhailor
        self.assertFalse(item.unusable_by_thief())
        self.assertTrue (item.unusable_by_vhailor())
        self.assertFalse(item.unusable_by_ignus())

        item.unusable_by = InventoryItemUnusableBy.ignus
        self.assertFalse(item.unusable_by_vhailor())
        self.assertTrue (item.unusable_by_ignus())
        self.assertFalse(item.unusable_by_morte())

        item.unusable_by = InventoryItemUnusableBy.morte
        self.assertFalse(item.unusable_by_ignus())
        self.assertTrue (item.unusable_by_morte())
        self.assertFalse(item.unusable_by_nordom())

        item.unusable_by = InventoryItemUnusableBy.nordom
        self.assertFalse(item.unusable_by_morte())
        self.assertTrue (item.unusable_by_nordom())
        self.assertFalse(item.unusable_by_human())

        item.unusable_by = InventoryItemUnusableBy.human
        self.assertFalse(item.unusable_by_nordom())
        self.assertTrue (item.unusable_by_human())
        self.assertFalse(item.unusable_by_annah())

        item.unusable_by = InventoryItemUnusableBy.annah
        self.assertFalse(item.unusable_by_human())
        self.assertTrue (item.unusable_by_annah())
        self.assertFalse(item.unusable_by_monk())

        item.unusable_by = InventoryItemUnusableBy.ee_monk
        self.assertFalse(item.unusable_by_annah())
        self.assertTrue (item.unusable_by_monk())
        self.assertFalse(item.unusable_by_nameless_one())

        item.unusable_by = InventoryItemUnusableBy.nameless_one
        self.assertFalse(item.unusable_by_monk())
        self.assertTrue (item.unusable_by_nameless_one())
        self.assertFalse(item.unusable_by_half_orc())

        item.unusable_by = InventoryItemUnusableBy.ee_half_orc
        self.assertFalse(item.unusable_by_nameless_one())
        self.assertTrue(item.unusable_by_half_orc())


    def _create_inventory_item(
        self                                   ,
        the_id               = 'the_id'        ,
        category             = 'category'      ,
        minimal_strength     = 2               ,
        minimal_dexterity    = 3               ,
        minimal_constitution = 5               ,
        minimal_intelligence = 7               ,
        minimal_wisdom       = 11              ,
        minimal_charisma     = 13              ,
        price                = 17              ,
        lore_to_identify     = 19              ,
        enchantment          = 23              ,
        weigth               = 29              ,
        jump_on_use_to       = 'jump_on_use_to',
        owned_count          = 31
    ):
        return InventoryItem(
            the_id               = the_id              ,
            category             = category            ,
            minimal_strength     = minimal_strength    ,
            minimal_dexterity    = minimal_dexterity   ,
            minimal_constitution = minimal_constitution,
            minimal_intelligence = minimal_intelligence,
            minimal_wisdom       = minimal_wisdom      ,
            minimal_charisma     = minimal_charisma    ,
            price                = price               ,
            lore_to_identify     = lore_to_identify    ,
            enchantment          = enchantment         ,
            weigth               = weigth              ,
            jump_on_use_to       = jump_on_use_to      ,
            owned_count          = owned_count
        )


    def _assert_inventory_items(self, lhs, rhs):
        self.assertEqual(lhs.the_id              , rhs.the_id)
        self.assertEqual(lhs.category            , rhs.category)
        self.assertEqual(lhs.minimal_strength    , rhs.minimal_strength)
        self.assertEqual(lhs.minimal_dexterity   , rhs.minimal_dexterity)
        self.assertEqual(lhs.minimal_constitution, rhs.minimal_constitution)
        self.assertEqual(lhs.minimal_intelligence, rhs.minimal_intelligence)
        self.assertEqual(lhs.minimal_wisdom      , rhs.minimal_wisdom)
        self.assertEqual(lhs.minimal_charisma    , rhs.minimal_charisma)
        self.assertEqual(lhs.price               , rhs.price)
        self.assertEqual(lhs.lore_to_identify    , rhs.lore_to_identify)
        self.assertEqual(lhs.enchantment         , rhs.enchantment)
        self.assertEqual(lhs.weigth              , rhs.weigth)
        self.assertEqual(lhs.jump_on_use_to      , rhs.jump_on_use_to)
        self.assertEqual(lhs.owned_count         , rhs.owned_count)
