import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init(gsm):
    gsm.set_location('mortuary6')
    renpy.exports.show("bg mortuary6")
    _show('vaxis_img default', center_left_down)
def _dispose():
    _hide('vaxis_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _embalm(gsm):
    gsm.set_has_embalm(True)
def _kill_vaxis(gsm):
    gsm.set_dead_vaxis(True)
###
def _r454_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r454_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r455_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r456_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r457_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r461_action(gsm):
    gsm.set_meet_vaxis(True)
def _r464_action(gsm):
    gsm.update_journal('64513')
def _r465_action(gsm):
    gsm.update_journal('64513')
def _r466_action(gsm):
    gsm.update_journal('64513')
def _r468_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r472_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r472_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r473_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r475_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r476_action(gsm):
    gsm.dec_once_good('evil_vaxis_2')
    _dispose()
def _r477_action(gsm):
    gsm.inc_once_law('lawful_vaxis_1')
    gsm.inc_once_good('good_vaxis_1')
    _dispose()
def _r480_action(gsm):
    gsm.set_meet_vaxis(True)
    gsm.update_journal('64513')
def _r481_action(gsm):
    gsm.set_meet_vaxis(True)
    gsm.update_journal('64513')
def _r482_action(gsm):
    gsm.set_meet_vaxis(True)
    gsm.update_journal('64513')
def _r484_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r487_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r487_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r488_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r491_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r492_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r493_condition(gsm):
    return not gsm.get_in_party_morte()
def _r493_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_2')
def _r494_condition(gsm):
    return gsm.get_in_party_morte()
def _r494_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_2')
def _r495_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r496_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r1306_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r1306_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r1348_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r1348_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r1359_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1359_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r1360_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') \
           and gsm.check_char_prop_lt('protagonist',12,'int')
def _r1360_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r1361_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r1361_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r4362_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4363_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4364_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4364_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4365_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4365_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4368_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4370_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') \
           and gsm.check_char_prop_lt('protagonist',12,'int')
def _r4370_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r4371_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r4371_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_1')
def _r4379_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4380_condition(gsm):
    return gsm.get_in_party_morte()
def _r4381_action(gsm):
    gsm.inc_once_law('lawful_vaxis_2')
    gsm.inc_once_good('good_vaxis_2')
def _r4385_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4386_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4387_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4387_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4388_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4388_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4391_action(gsm):
    gsm.inc_once_law('lawful_vaxis_2')
    gsm.inc_once_good('good_vaxis_2')
def _r4395_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4396_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4397_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4397_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4398_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4398_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4401_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4401_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4402_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4402_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
    gsm.set_vaxis_aggressive(True)
def _r4405_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4408_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4409_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4410_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
    gsm.set_vaxis_aggressive(True)
def _r4413_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4426_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4427_condition(gsm):
    return gsm.get_in_party_morte()
def _r4428_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4428_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4429_condition(gsm):
    return gsm.get_in_party_morte()
def _r4429_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4434_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_5')
def _r4438_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4440_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4441_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4442_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4442_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4443_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4443_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4446_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'chr') \
           and gsm.check_char_prop_lt('protagonist',12,'int')
def _r4447_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'chr') \
           and gsm.check_char_prop_lt('protagonist',12,'int')
def _r4447_action(gsm):
    gsm.set_vaxis_orders(True)
def _r4448_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'int')
def _r4448_action(gsm):
    gsm.set_vaxis_orders(True)
def _r4452_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4454_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4455_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4456_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4456_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4457_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4457_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4469_condition(gsm):
    return not gsm.get_vaxis_leave()
def _r4469_action(gsm):
    gsm.set_vaxis_leave(True)
    gsm.set_has_bandages(True)
    gsm.set_has_embalm(True)
    gsm.set_has_needle(True)
    gsm.update_journal('64517')
def _r4474_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4474_action(gsm):
    gsm.inc_once_good('good_vaxis_3')
def _r4475_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4476_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4477_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4477_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4478_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4478_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4482_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4483_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4484_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4484_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4485_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4485_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4672_action(gsm):
    gsm.set_strong_arm_vaxis(True)
def _r4489_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4489_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4490_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4490_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4494_condition(gsm):
    return gsm.get_has_keyem()
def _r4494_action(gsm):
    gsm.set_has_keyem(False)
    gsm.set_vaxis_has_keyem(True)
def _r4496_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4496_action(gsm):
    gsm.set_vaxis_orders(False)
def _r4497_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4497_action(gsm):
    gsm.set_vaxis_orders(False)
def _r4498_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',12,'str')
def _r4498_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
    gsm.set_vaxis_orders(False)
def _r4499_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',11,'str')
def _r4499_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
    gsm.set_vaxis_orders(False)
def _r4502_condition(gsm):
    return gsm.get_has_keyem()
def _r4502_action(gsm):
     gsm.set_has_keyem(False)
     gsm.set_vaxis_has_keyem(True)
def _r64520_condition(gsm):
    return gsm.get_meet_eivene()
def _r64520_action(gsm):
    gsm.update_journal('64519')
def _r4503_condition(gsm):
    return not gsm.get_meet_eivene()
def _r4503_action(gsm):
    gsm.update_journal('64518')
def _r4504_action(gsm):
    gsm.dec_once_law('chaotic_vaxis_6')
def _r4506_condition(gsm):
    return gsm.get_meet_eivene()
def _r4506_action(gsm):
    gsm.update_journal('64519')
def _r66150_condition(gsm):
    return not gsm.get_meet_eivene()
def _r66150_action(gsm):
    gsm.update_journal('64518')
def _r4508_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4508_action(gsm):
    gsm.set_embalm_key_quest(1)
    _dispose()
def _r4509_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4509_action(gsm):
    gsm.set_embalm_key_quest(1)
    _dispose()
def _r4510_condition(gsm):
    return gsm.get_embalm_key_quest() != 0
def _r4511_condition(gsm):
    return gsm.get_embalm_key_quest() != 0
def _r4519_action(gsm):
    gsm.set_has_keyem(False)
    gsm.set_vaxis_has_keyem(True)
    gsm.set_embalm_key_quest(3)
    _dispose()
def _r4521_condition(gsm):
    return not gsm.get_escape_mortuary()
def _r4521_action(gsm):
    gsm.set_embalm_key_quest(3)
    gsm.update_journal('64521')
def _r4522_condition(gsm):
    return gsm.get_escape_mortuary()
def _r4522_action(gsm):
    gsm.set_embalm_key_quest(3)
    gsm.update_journal('64521')
def _r64508_condition(gsm):
    return not gsm.get_escape_mortuary() \
           and not gsm.get_vaxis_help() \
           and gsm.get_embalm_key_quest() == 0 \
           and gsm.get_strong_arm_vaxis()
def _r4524_condition(gsm):
    return not gsm.get_escape_mortuary() \
           and not gsm.get_vaxis_help() \
           and gsm.get_embalm_key_quest() == 0 \
           and not gsm.get_strong_arm_vaxis()
def _r4525_condition(gsm):
    return gsm.get_vaxis_help()
def _r4526_condition(gsm):
    return gsm.get_vaxis_zombie_disguise() == 1 \
           and not gsm.get_appearance()
def _r4527_condition(gsm):
    return gsm.get_vaxis_zombie_disguise() == 2 \
           and not gsm.get_appearance()
def _r4528_condition(gsm):
    return gsm.get_vaxis_orders()
def _r4673_condition(gsm):
    return not gsm.get_meet_pharod()
def _r4530_condition(gsm):
    return not gsm.get_journal()
def _r4531_condition(gsm):
    return gsm.get_meet_dhall()
def _r4532_condition(gsm):
    return gsm.get_meet_deionarra()
def _r4533_condition(gsm):
    return gsm.get_meet_soego()
def _r4534_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4535_condition(gsm):
    return gsm.get_in_party_morte()
def _r4539_action(gsm):
    gsm.update_journal('64522')
def _r4543_action(gsm):
    gsm.update_journal('64522')
def _r4547_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4548_condition(gsm):
    return gsm.get_in_party_morte()
def _r4552_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4553_condition(gsm):
    return gsm.get_in_party_morte()
def _r4564_condition(gsm):
    return not gsm.get_strong_arm_vaxis() \
           and gsm.get_embalm_key_quest() == 0 \
           and not gsm.get_vaxis_orders()
def _r64509_condition(gsm):
    return not gsm.get_strong_arm_vaxis() \
           and gsm.get_embalm_key_quest() > 2 \
           and not gsm.get_vaxis_orders()
def _r64510_condition(gsm):
    return gsm.get_strong_arm_vaxis() \
           and not gsm.get_vaxis_orders()
def _r64511_condition(gsm):
    return gsm.get_vaxis_orders()
def _r64527_condition(gsm):
    return not gsm.get_has_bone_chrm()
def _r64527_action(gsm):
    gsm.set_vaxis_help(True)
    gsm.update_journal('64528')
def _r4568_condition(gsm):
    return gsm.get_has_bone_chrm()
def _r4568_action(gsm):
    gsm.set_vaxis_help(True)
    gsm.update_journal('64529')
def _r4569_condition(gsm):
    return gsm.get_has_bone_chrm()
def _r4569_action(gsm):
    gsm.set_vaxis_help(True)
    gsm.update_journal('64529')
    _dispose()
def _r4580_action(gsm):
    gsm.set_vaxis_exposes_soego(True)
    gsm.update_journal('64530')
def _r4586_condition(gsm):
    return gsm.get_embalm_key_quest() == 1
def _r4587_condition(gsm):
    return gsm.get_embalm_key_quest() == 2
def _r4588_condition(gsm):
    return gsm.get_embalm_key_quest() != 1 \
           and gsm.get_embalm_key_quest() != 2 \
           and not gsm.get_vaxis_orders()
def _r4589_condition(gsm):
    return gsm.get_embalm_key_quest() != 1 \
           and gsm.get_embalm_key_quest() != 2 \
           and gsm.get_vaxis_orders()
def _r4592_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and gsm.get_has_keyem()
def _r4592_action(gsm):
     gsm.set_has_keyem(False)
def _r4593_condition(gsm):
    return gsm.get_embalm_key_quest() == 2 \
           and gsm.get_has_keyem()
def _r4593_action(gsm):
     gsm.set_has_keyem(False)
def _r4594_condition(gsm):
    return gsm.get_embalm_key_quest() == 1 \
           and not gsm.get_has_keyem()
def _r4599_condition(gsm):
    return gsm.get_embalm_key_quest() == 0
def _r4600_condition(gsm):
    return gsm.get_embalm_key_quest() > 0
def _r4604_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
           and not gsm.get_appearance()
def _r4609_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
           and not gsm.get_appearance()
def _r4610_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',10,'chr')
def _r4611_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',10,'chr')
def _r4612_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',9,'chr')
def _r4613_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',9,'chr')
def _r4615_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'int') \
           and not gsm.get_appearance()
def _r4616_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'chr')
def _r4617_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',13,'chr')
def _r4618_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'chr')
def _r4674_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',12,'chr')
def _r4620_condition(gsm):
    return gsm.get_has_embalm() \
           and gsm.get_has_needle()
def _r4620_action(gsm):
    gsm.set_vaxis_zombie_disguise(2)
def _r4621_action(gsm):
    gsm.set_vaxis_zombie_disguise(1)
def _r4622_action(gsm):
    gsm.set_vaxis_zombie_disguise(1)
    _dispose()
def _r4623_action(gsm):
    gsm.set_vaxis_zombie_disguise(1)
    _dispose()
def _r4625_action(gsm):
    gsm.set_vaxis_zombie_disguise(1)
def _r4628_action(gsm):
    gsm.set_vaxis_zombie_disguise(1)
    _dispose()
def _r4630_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_vaxis_global_xp()
def _r4630_action(gsm):
    gsm.set_looks_like("zombie")
    gsm.set_vaxis_global_xp(True)
def _r4631_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_vaxis_quip_1()
def _r4631_action(gsm):
    gsm.set_morte_vaxis_quip_1(True)
    _dispose()
def _r4632_condition(gsm):
    return gsm.get_in_party_morte() \
           and gsm.get_morte_vaxis_quip_1()
def _r4632_action(gsm):
    gsm.set_looks_like("zombie")
def _r64533_condition(gsm):
    return not gsm.get_in_party_morte() \
           and gsm.get_vaxis_global_xp()
def _r64533_action(gsm):
    gsm.set_looks_like("zombie")
def _r4634_condition(gsm):
    return not gsm.get_in_party_morte()
def _r4635_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_vaxis_quip_2()
def _r4635_action(gsm):
    gsm.set_morte_vaxis_quip_2(True)
    _dispose()
def _r4636_condition(gsm):
    return gsm.get_in_party_morte() \
           and gsm.get_morte_vaxis_quip_2()
def _r4638_action(gsm):
    gsm.update_journal('64531')
    gsm.set_vaxis_aggressive(True)
def _r4645_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4651_action(gsm):
    gsm.dec_once_good('evil_vaxis_1')
def _r4656_condition(gsm):
    return not gsm.get_vaxis_help()
def _r64532_condition(gsm):
    return gsm.get_vaxis_help()
    gsm.set_vaxis_aggressive(True)
def _r4661_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4664_condition(gsm):
    return gsm.check_char_prop_gt('protagonist',10,'chr')
def _r4665_condition(gsm):
    return gsm.check_char_prop_lt('protagonist',11,'chr')
def _r4666_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
def _r4669_action(gsm):
    gsm.set_vaxis_aggressive(True)
    _dispose()
###

# DLG/DVAXIS.DLG
def dlg_dvaxis(manager):
    teller         = renpy.store.characters['teller']
    morte          = renpy.store.characters['morte']
    vaxis          = renpy.store.characters['vaxis']
    vaxis_unknown  = renpy.store.characters['vaxis_unknown']
    gsm            = renpy.store.global_settings_manager
    EXIT           = -1

    # Starts DVAXIS.D_s0 DVAXIS.D_s57
    DialogStateBuilder().state('DVAXIS.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say453').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DVAXIS.D_s5', 'r0', 'reply454').with_condition(lambda: _r454_condition(gsm)).with_action(lambda: _r454_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DVAXIS.D_s5', 'r1', 'reply455').with_condition(lambda: _r455_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DVAXIS.D_s5', 'r2', 'reply456').with_condition(lambda: _r456_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DVAXIS.D_s1', 'r3', 'reply457').with_condition(lambda: _r457_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", 'DVAXIS.D_s5', 'r4', 'reply458') \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply459').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s1', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Довольно странно, но твоя способность не работает с этим трупом.", 's1', 'say460') \
        .with_responses() \
            .response("Ткнуть его в глаз.", 'DVAXIS.D_s2', 'r6', 'reply461').with_action(lambda: _r461_action(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply462').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s2', '# from 1.0') \
        .with_npc_lines() \
            .line(teller, "После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.", 's2', 'say463') \
        .with_responses() \
            .response("Ты не зомби! Кто ты?", 'DVAXIS.D_s6', 'r8', 'reply464').with_action(lambda: _r464_action(gsm)) \
            .response("Зачем ты замаскировался под зомби?", 'DVAXIS.D_s6', 'r9', 'reply465').with_action(lambda: _r465_action(gsm)) \
            .response("Уйти. Быстро.", 'DVAXIS.D_s3', 'r10', 'reply466').with_action(lambda: _r466_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s3', '# from 2.2 5.2') \
        .with_npc_lines() \
            .line(teller, "Ты уже почти отвернулся, как зомби начинает что-то бормотать… кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно.", 's3', 'say467') \
            .line(vaxis_unknown, "Фто ТЫ? Фто тее нао?", 's3', 'say467') \
        .with_responses() \
            .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s7', 'r11', 'reply468').with_condition(lambda: _r468_condition(gsm)) \
            .response("Кто ты?", 'DVAXIS.D_s7', 'r12', 'reply469') \
            .response("Рассказывай, кто ты такой, или я позову стражу.", 'DVAXIS.D_s7', 'r13', 'reply470') \
            .response("Ложь: Чего… Я искал тебя.", 'DVAXIS.D_s24', 'r14', 'reply472').with_condition(lambda: _r472_condition(gsm)).with_action(lambda: _r472_action(gsm)) \
            .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s7', 'r15', 'reply473').with_action(lambda: _r473_action(gsm)) \
            .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r16', 'reply474') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s4', '# from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1') \
        .with_npc_lines() \
            .line(teller, "Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание.", 's4', 'say471') \
            .line(vaxis_unknown, "Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым.", 's4', 'say471') \
            .line(teller, "Он прикладывает палец к губам.", 's4', 'say471') \
            .line(vaxis_unknown, "Фффф. После этого он проводит пальцем по горлу. Или ты уфнефь нафегда. ПОЯЛ мея?", 's4', 'say471') \
        .with_responses() \
            .response("Ты пытаешься меня ЗАПУГАТЬ? Ну все… готовься к смерти.", EXIT, 'r17', 'reply475').with_action(lambda: _r475_action(gsm)) \
            .response("Ложь: Я даже и *не думал* ничего говорить тленным о тебе.", EXIT, 'r18', 'reply476').with_action(lambda: _r476_action(gsm)) \
            .response("Правда: Обещаю, что я ничего не скажу о тебе тленным.", EXIT, 'r19', 'reply477').with_action(lambda: _r477_action(gsm)) \
            .response("Как хочешь. У тебя свои дела, у меня — свои.", EXIT, 'r20', 'reply478').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s5', '# from 0.0 0.1 0.2 0.4') \
        .with_npc_lines() \
            .line(teller, "Зомби от неожиданности моргает при твоем обращении.", 's5', 'say479') \
            .line(vaxis_unknown, "А? Фто?", 's5', 'say479') \
        .with_responses() \
            .response("Ты не зомби! Кто ты?", 'DVAXIS.D_s6', 'r21', 'reply480').with_action(lambda: _r480_action(gsm)) \
            .response("Зачем ты замаскировался под зомби?", 'DVAXIS.D_s6', 'r22', 'reply481').with_action(lambda: _r481_action(gsm)) \
            .response("Уйти. Быстро.", 'DVAXIS.D_s3', 'r23', 'reply482').with_action(lambda: _r482_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s6', '# from 2.0 2.1 5.0 5.1') \
        .with_npc_lines() \
            .line(teller, "Зомби пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы.", 's6', 'say483') \
            .line(vaxis_unknown, "Фто ТЫ? Фего тее нао?", 's6', 'say483') \
        .with_responses() \
            .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s7', 'r24', 'reply484').with_condition(lambda: _r484_condition(gsm)) \
            .response("Кто ты?", 'DVAXIS.D_s7', 'r25', 'reply485') \
            .response("Рассказывай, кто ты такой, или я позову стражу.", 'DVAXIS.D_s7', 'r26', 'reply486') \
            .response("Ложь: Чего… Я искал тебя.", 'DVAXIS.D_s24', 'r27', 'reply487').with_condition(lambda: _r487_condition(gsm)).with_action(lambda: _r487_action(gsm)) \
            .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s7', 'r28', 'reply488').with_action(lambda: _r488_action(gsm)) \
            .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r29', 'reply489') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s7', '# from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4') \
        .with_npc_lines() \
            .line(teller, "Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится.", 's7', 'say490') \
            .line(vaxis_unknown, "Фто ты фдефь делаефь?", 's7', 'say490') \
            .line(teller, "Его глаза недоверчиво сужаются.", 's7', 'say490') \
            .line(vaxis_unknown, "Фпионифь за Мертфяками?", 's7', 'say490') \
        .with_responses() \
            .response("Нет. Я пытаюсь сбежать отсюда.", 'DVAXIS.D_s12', 'r30', 'reply491').with_condition(lambda: _r491_condition(gsm)) \
            .response("Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?", 'DVAXIS.D_s31', 'r31', 'reply492').with_condition(lambda: _r492_condition(gsm)) \
            .response("Ложь: Да, я шпионю здесь за… трухлявыми.", 'DVAXIS.D_s8', 'r32', 'reply493').with_condition(lambda: _r493_condition(gsm)).with_action(lambda: _r493_action(gsm)) \
            .response("Ложь: Да, я шпионю здесь за… трухлявыми.", 'DVAXIS.D_s9', 'r33', 'reply494').with_condition(lambda: _r494_condition(gsm)).with_action(lambda: _r494_action(gsm)) \
            .response("Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.", 'DVAXIS.D_s21', 'r34', 'reply495').with_condition(lambda: _r495_condition(gsm)) \
            .response("Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу.", 'DVAXIS.D_s17', 'r35', 'reply496').with_condition(lambda: _r496_condition(gsm)) \
            .response("Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r36', 'reply1306').with_condition(lambda: _r1306_condition(gsm)).with_action(lambda: _r1306_action(gsm)) \
            .response("Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r37', 'reply1348').with_condition(lambda: _r1348_condition(gsm)).with_action(lambda: _r1348_action(gsm)) \
            .response("Я должен идти. Прощай.", 'DVAXIS.D_s4', 'r38', 'reply1349') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s8', '# from 7.2') \
        .with_npc_lines() \
            .line(teller, "Он изучает тебя более пристально.", 's8', 'say1350') \
            .line(vaxis_unknown, "Ты фпион? Ты иф яфейки?", 's8', 'say1350') \
        .with_responses() \
            .response("А?", 'DVAXIS.D_s10', 'r39', 'reply4671') \
            .response("Яфейки?", 'DVAXIS.D_s10', 'r40', 'reply1352') \
            .response("Ложь: Да… Я искал тебя. И очень рад, что нашел.", 'DVAXIS.D_s24', 'r41', 'reply1359').with_condition(lambda: _r1359_condition(gsm)).with_action(lambda: _r1359_action(gsm)) \
            .response("Ложь: Да… но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?", 'DVAXIS.D_s28', 'r42', 'reply1360').with_condition(lambda: _r1360_condition(gsm)).with_action(lambda: _r1360_action(gsm)) \
            .response("Ложь: Да… но я не могу говорить об этом сейчас. Что ты делаешь здесь?", 'DVAXIS.D_s28', 'r43', 'reply1361').with_condition(lambda: _r1361_condition(gsm)).with_action(lambda: _r1361_action(gsm)) \
            .response("Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.", 'DVAXIS.D_s4', 'r44', 'reply1362') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s9', '# from 7.3 // Manually checked EXTENDS ~DMORTE~ : 85') \
        .with_npc_lines() \
            .line(teller, "Он изучает тебя более пристально.", 's9', 'say1363') \
            .line(vaxis_unknown, "Ты фпион? Ты иф яфейки?", 's9', 'say1363') \
        .with_responses() \
            .response("А?", 'DMORTE.D_s85', 'r45', 'reply4359') \
            .response("Яфейки?", 'DMORTE.D_s85', 'r46', 'reply4360') \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s85', '# from -') \
        .with_npc_lines() \
            .line(morte, "Морт шепотом вклинивается в разговор. О силы… этот пень — *анархист*. Строить из себя зомби — это первое, что может взбрести в их пустые головы.", 's85', 'say4675') \
        .with_responses() \
            .response("Анархист?", 'DMORTE.D_s86', 'r238', 'reply4676').with_action(lambda: _r4676_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s86', '# from 85.0 // Manually checked EXTENDS ~DVAXIS~ : 10') \
        .with_npc_lines() \
            .line(morte, "Анархисты… это такая фракция…", 's86', 'say4677') \
            .line(teller, "Похоже, Морт еле сдерживает поток оскорблений, но затем замечает, что зомби смотрит на вас обоих, внимательно слушая.", 's86', 'say4677') \
            .line(morte, "…они, э, хотят *освободить* всех от оков правительства. Свергнуть старый порядок, чтобы установить новый — без никаких порядков.", 's86', 'say4677') \
        .with_responses() \
            .response("Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.", 'DVAXIS.D_s11', 'r239', 'reply4678').with_action(lambda: _r4678_action(gsm)) \
            .response("Ложь: Похоже на благородное стремление. Любой анархист, посвятивший себя столь высокой цели, *определенно* является мне другом.", 'DVAXIS.D_s11', 'r240', 'reply4679').with_action(lambda: _r4679_action(gsm)) \
            .response("Это все довольно… противоречиво.", 'DVAXIS.D_s10', 'r241', 'reply4680') \
            .response("Это одна из самых идиотских вещей, которую я когда-либо слышал.", 'DVAXIS.D_s10', 'r242', 'reply4681') \
            .response("Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.", 'DVAXIS.D_s10', 'r243', 'reply4682').with_action(lambda: _r4682_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s10', '# from 8.0 8.1') \
        .with_npc_lines() \
            .line(teller, "Хмурясь, он шипит на тебя.", 's10', 'say4361') \
            .line(vaxis_unknown, "Ты не фпион!", 's10', 'say4361') \
            .line(teller, "Он гонит тебя прочь.", 's10', 'say4361') \
            .line(vaxis_unknown, "Профь! Профь!", 's10', 'say4361') \
        .with_responses() \
            .response("Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r47', 'reply4362').with_condition(lambda: _r4362_condition(gsm)) \
            .response("Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r48', 'reply4363').with_condition(lambda: _r4363_condition(gsm)) \
            .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r49', 'reply4364').with_condition(lambda: _r4364_condition(gsm)).with_action(lambda: _r4364_action(gsm)) \
            .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r50', 'reply4365').with_condition(lambda: _r4365_condition(gsm)).with_action(lambda: _r4365_action(gsm)) \
            .response("Ну хорошо, хорошо… Я ухожу.", 'DVAXIS.D_s4', 'r51', 'reply4367') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s11', '# from -') \
        .with_npc_lines() \
            .line(teller, "Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.", 's11', 'say4366') \
        .with_responses() \
            .response("Ты поможешь мне выбраться отсюда?", 'DVAXIS.D_s12', 'r52', 'reply4368').with_condition(lambda: _r4368_condition(gsm)) \
            .response("Так что же ты делаешь здесь?", 'DVAXIS.D_s28', 'r53', 'reply4369') \
            .response("Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?", 'DVAXIS.D_s28', 'r54', 'reply4370').with_condition(lambda: _r4370_condition(gsm)).with_action(lambda: _r4370_action(gsm)) \
            .response("Ложь: Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми… Но сейчас я не могу об этом говорить. Что ты здесь делаешь?", 'DVAXIS.D_s28', 'r55', 'reply4371').with_condition(lambda: _r4371_condition(gsm)).with_action(lambda: _r4371_action(gsm)) \
            .response("Э-э, сейчас у меня нет времени на разговоры… может, как-нибудь в другой раз.", 'DVAXIS.D_s4', 'r56', 'reply4372') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s12', '# from 7.0 11.0') \
        .with_npc_lines() \
            .line(teller, "Зомби выглядит заинтересованным.", 's12', 'say4373') \
            .line(vaxis_unknown, "Пвоулемы? Фево ты натвовил?", 's12', 'say4373') \
        .with_responses() \
            .response("Я очнулся на одной из плит на верхнем этаже.", 'DVAXIS.D_s13', 'r57', 'reply4374') \
            .response("Каким-то образом я… оказался здесь запертым. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r58', 'reply4375') \
            .response("Поговорим об этом в другой раз.", 'DVAXIS.D_s4', 'r59', 'reply4376') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s13', '# from 12.0 // Manually checked EXTENDS ~DMORTE~ : 87') \
        .with_npc_lines() \
            .line(teller, "Зомби смотрит на тебя как на умалишенного.", 's13', 'say4377') \
            .line(vaxis_unknown, "Ты фпятил?", 's13', 'say4377') \
        .with_responses() \
            .response("Да, я фпятил. Я окончательно фпятил.", 'DVAXIS.D_s14', 'r60', 'reply4378') \
            .response("Фпятил? Что это значит?", 'DVAXIS.D_s16', 'r61', 'reply4379').with_condition(lambda: _r4379_condition(gsm)) \
            .response("Фпятил? Что это значит?", 'DMORTE.D_s87', 'r62', 'reply4380').with_condition(lambda: _r4380_condition(gsm)) \
            .response("Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже.", 'DVAXIS.D_s14', 'r63', 'reply4381').with_action(lambda: _r4381_action(gsm)) \
            .response("Э-э, нет… На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r64', 'reply4382') \
            .response("Забудь о нашем разговоре. Мне нужно идти.", 'DVAXIS.D_s4', 'r65', 'reply4383') \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s87', '# from -') \
        .with_npc_lines() \
            .line(teller, "Морт говорит шёпотом.", 's87', 'say4683') \
            .line(morte, "Он интересуется, не спятил ли ты, не слетел с катушек, не выжил из ума… и я, кстати, тоже.", 's87', 'say4683') \
            .line(morte, "А теперь выкинь это 'Я очнулся из мертвых' из своего лексикона, хорошо?! Ты ставишь меня в глупое положение.", 's87', 'say4683') \
        .with_responses() \
            .response("Я смущаю ТЕБЯ?", 'DMORTE.D_s88', 'r244', 'reply4684') \
            .response("Я просто хотел узнать, о чем этот… труп… говорит. Ясно?", 'DMORTE.D_s88', 'r245', 'reply4685') \
            .response("Не моя вина, что никто в этом сумасшедшем… 'чокнутом'… месте не говорит нормально… или хотя бы не ВЫГЛЯДИТ так.", 'DMORTE.D_s88', 'r246', 'reply4686').with_condition(lambda: _r4686_condition(gsm)) \
            .response("Слушай, я НЕ хочу лгать этому парню. Лучше говорить с ним напрямую.", 'DMORTE.D_s88', 'r247', 'reply4687').with_action(lambda: _r4687_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s88', '# from 87.0 87.1 87.2 87.3 // Manually checked EXTENDS ~DVAXIS~ : 15') \
        .with_npc_lines() \
            .line(teller, "Морт вздыхает.", 's88', 'say4688') \
            .line(morte, "Слушай, шеф… ты должен понимать свою ситуацию. Ты не сможешь разгуливать, рассказывая всем одну только ПРАВДУ. Мы не должны делать себя целями ловца кроликов, ясно?", 's88', 'say4688') \
        .with_responses() \
            .response("Ловец кроликов? Цели? Что это… а, неважно.", 'DVAXIS.D_s15', 'r248', 'reply4689') \
            .response("Замолкни, Морт.", 'DVAXIS.D_s15', 'r249', 'reply4690') \
            .response("Я… я запомню это. Мне нужно поговорить с этим 'зомби'.", 'DVAXIS.D_s15', 'r250', 'reply4691') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s14', '# from 13.0 13.3 15.0') \
        .with_npc_lines() \
            .line(teller, "Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.", 's14', 'say4384') \
            .line(vaxis_unknown, "Ты фпятил! Профь от мея!", 's14', 'say4384') \
        .with_responses() \
            .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r66', 'reply4385').with_condition(lambda: _r4385_condition(gsm)) \
            .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r67', 'reply4386').with_condition(lambda: _r4386_condition(gsm)) \
            .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s19', 'r68', 'reply4387').with_condition(lambda: _r4387_condition(gsm)).with_action(lambda: _r4387_action(gsm)) \
            .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r69', 'reply4388').with_condition(lambda: _r4388_condition(gsm)).with_action(lambda: _r4388_action(gsm)) \
            .response("Ну ладно, ладно… прощай.", 'DVAXIS.D_s4', 'r70', 'reply4389') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s15', '# from -') \
        .with_npc_lines() \
            .line(teller, "Фальшивый зомби недоверчиво смотрит на вас обоих.", 's15', 'say4390') \
        .with_responses() \
            .response("Это правда — я очнулся на одной из здешних плит.", 'DVAXIS.D_s14', 'r71', 'reply4391').with_action(lambda: _r4391_action(gsm)) \
            .response("Э-э, прошу прощения… На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?", 'DVAXIS.D_s31', 'r72', 'reply4392') \
            .response("Неважно. Мне нужно идти.", 'DVAXIS.D_s4', 'r73', 'reply4393') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s16', '# from 13.1') \
        .with_npc_lines() \
            .line(teller, "Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя.", 's16', 'say4394') \
            .line(vaxis_unknown, "Пуфтогоовый! Приурок! Профь от мея, пей! Профь!", 's16', 'say4394') \
        .with_responses() \
            .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r74', 'reply4395').with_condition(lambda: _r4395_condition(gsm)) \
            .response("Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r75', 'reply4396').with_condition(lambda: _r4396_condition(gsm)) \
            .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s19', 'r76', 'reply4397').with_condition(lambda: _r4397_condition(gsm)).with_action(lambda: _r4397_action(gsm)) \
            .response("Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r77', 'reply4398').with_condition(lambda: _r4398_condition(gsm)).with_action(lambda: _r4398_action(gsm)) \
            .response("Ну хорошо, хорошо… Я ухожу.", 'DVAXIS.D_s4', 'r78', 'reply4399') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s17', '# from 7.5 10.1 14.1 16.1 25.3 27.3') \
        .with_npc_lines() \
            .line(teller, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.", 's17', 'say4400') \
            .line(vaxis_unknown, "Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.", 's17', 'say4400') \
        .with_responses() \
            .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s18', 'r79', 'reply4401').with_condition(lambda: _r4401_condition(gsm)).with_action(lambda: _r4401_action(gsm)) \
            .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s22', 'r80', 'reply4402').with_condition(lambda: _r4402_condition(gsm)).with_action(lambda: _r4402_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу.", 'DVAXIS.D_s4', 'r81', 'reply4403') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s18', '# from 17.0') \
        .with_npc_lines() \
            .line(teller, "Глаза зомби превращаются в щелочки, он шипит на тебя.", 's18', 'say4404') \
            .line(vaxis_unknown, "Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.", 's18', 'say4404') \
        .with_responses() \
            .response("Я рискну. Готовься к смерти.", EXIT, 'r82', 'reply4405').with_action(lambda: _r4405_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r83', 'reply4406') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s19', '# from 7.6 10.2 14.2 16.2 25.4 27.4') \
        .with_npc_lines() \
            .line(teller, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.", 's19', 'say4407') \
            .line(vaxis_unknown, "ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.", 's19', 'say4407') \
        .with_responses() \
            .response("Я рискну. Готовься к смерти.", EXIT, 'r84', 'reply4408').with_action(lambda: _r4408_action(gsm)) \
            .response("Что, если я раскрою твою маскировку перед стражей?", 'DVAXIS.D_s21', 'r85', 'reply4409').with_condition(lambda: _r4409_condition(gsm)) \
            .response("Что, если я раскрою твою маскировку перед стражей?", 'DVAXIS.D_s20', 'r86', 'reply4410').with_condition(lambda: _r4410_condition(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r87', 'reply4411') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s20', '# from 19.2') \
        .with_npc_lines() \
            .line(teller, "Глаза зомби превращаются в щелочки, он шипит на тебя.", 's20', 'say4412') \
            .line(vaxis_unknown, "Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.", 's20', 'say4412') \
        .with_responses() \
            .response("Это был твой последний шанс, труп. Готовься к смерти.", EXIT, 'r88', 'reply4413').with_action(lambda: _r4413_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*.", 'DVAXIS.D_s4', 'r89', 'reply4414') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s21', '# from 7.4 10.0 14.0 16.0 19.1 25.2 27.2') \
        .with_npc_lines() \
            .line(teller, "Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа.", 's21', 'say4415') \
            .line(vaxis_unknown, "Не-не-не! Не наа фвать фтражу!", 's21', 'say4415') \
            .line(teller, "Он явно напуган.", 's21', 'say4415') \
            .line(vaxis_unknown, "Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе.", 's21', 'say4415') \
        .with_responses() \
            .response("Шпионишь? Для кого?", 'DVAXIS.D_s23', 'r90', 'reply4416') \
            .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r91', 'reply4417') \
            .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r92', 'reply4418') \
            .response("Это все, что я хотел узнать. Прощай, *зомби*.", EXIT, 'r93', 'reply4419').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s22', '# from 7.7 10.3 14.3 16.3 17.1 25.5 27.5') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Не-не-не! Не твогаи мея!", 's22', 'say4420') \
            .line(teller, "Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа.", 's22', 'say4420') \
            .line(vaxis_unknown, "Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе.", 's22', 'say4420') \
        .with_responses() \
            .response("Шпионишь? Для кого?", 'DVAXIS.D_s23', 'r94', 'reply4421') \
            .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r95', 'reply4422') \
            .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r96', 'reply4423') \
            .response("Это все, что я хотел знать. А теперь прочь с дороги, *зомби*.", EXIT, 'r97', 'reply4424').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s23', '# from 21.0 22.0 // Manually checked EXTENDS ~DMORTE~ : 89') \
        .with_npc_lines() \
            .line(teller, "Зомби в страхе умолкает, ничего не желая говорить.", 's23', 'say4425') \
        .with_responses() \
            .response("Ну же, для кого ты следишь за этим местом?", 'DVAXIS.D_s70', 'r98', 'reply4426').with_condition(lambda: _r4426_condition(gsm)) \
            .response("Ну же, для кого ты следишь за этим местом?", 'DMORTE.D_s89', 'r99', 'reply4427').with_condition(lambda: _r4427_condition(gsm)) \
            .response("Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.", 'DVAXIS.D_s70', 'r100', 'reply4428').with_condition(lambda: _r4428_condition(gsm)).with_action(lambda: _r4428_action(gsm)) \
            .response("Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли.", 'DMORTE.D_s89', 'r101', 'reply4429').with_condition(lambda: _r4429_condition(gsm)).with_action(lambda: _r4429_action(gsm)) \
            .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r102', 'reply4430') \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r103', 'reply4431') \
            .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, 'r104', 'reply4432').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s89', '# from -') \
        .with_npc_lines() \
            .line(morte, "Погоди… — говорит Морт удивленно. — Да этот пень — *анархист*. Ха. Строить из себя зомби — это первое, что может взбрести в их пустые головы.", 's89', 'say4692') \
        .with_responses() \
            .response("Анархист?", 'DMORTE.D_s90', 'r251', 'reply4693').with_action(lambda: _r4693_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s90', '# from 89.0 // Manually checked EXTENDS ~DVAXIS~ : 71') \
        .with_npc_lines() \
            .line(morte, "Анархисты — это фракция, которая тратит свое время на слежку за представителями власти и на поиски способов низвергнуть все, от чего несет порядком или контролем.", 's90', 'say4694') \
            .line(teller, "Морт фыркает.", 's90', 'say4694') \
            .line(morte, "Анархисты считают, что каждый пень на планах должен быть свободен и счастлив искать свою собственную 'правду', как только правительство будет сожжено дотла.", 's90', 'say4694') \
            .line(morte, "Они хотят основать новый порядок, в котором не будет никакого порядка.", 's90', 'say4694') \
        .with_responses() \
            .response("Правда: Похоже на благородное стремление. Порядку время от времени не помешает хорошая встряска.", 'DVAXIS.D_s71', 'r252', 'reply4695').with_action(lambda: _r4695_action(gsm)) \
            .response("Это все довольно… противоречиво.", 'DVAXIS.D_s71', 'r253', 'reply4696') \
            .response("Это одна из самых идиотских вещей, которую я когда-либо слышал.", 'DVAXIS.D_s71', 'r254', 'reply4697') \
            .response("Как хочешь.", 'DVAXIS.D_s71', 'r255', 'reply4698') \
            .response("Правда: Вряд ли кому-то это покажется созиданием. Для прогресса всегда нужны какой-никакой порядок и закон.", 'DVAXIS.D_s71', 'r256', 'reply4699').with_action(lambda: _r4699_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s24', '# from 3.3 6.3 8.2') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Иффефь мея? Вафем?", 's24', 'say4433') \
            .line(teller, "Он искоса смотрит на тебя.", 's24', 'say4433') \
            .line(vaxis_unknown, "У тея соофение двя мея?", 's24', 'say4433') \
        .with_responses() \
            .response("Ложь: Да, у меня есть сообщение для тебя.", 'DVAXIS.D_s26', 'r105', 'reply4434').with_action(lambda: _r4434_action(gsm)) \
            .response("Сообщение от кого?", 'DVAXIS.D_s27', 'r106', 'reply4435') \
            .response("Нет, у меня нет сообщений.", 'DVAXIS.D_s25', 'r107', 'reply4436') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s25', '# from 24.2') \
        .with_npc_lines() \
            .line(teller, "Яростно шепчет.", 's25', 'say4437') \
            .line(vaxis_unknown, "Тада фео тее *надо*, пей?!", 's25', 'say4437') \
        .with_responses() \
            .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s31', 'r108', 'reply4438').with_condition(lambda: _r4438_condition(gsm)) \
            .response("Мне нужны кое-какие сведения…", 'DVAXIS.D_s43', 'r109', 'reply4439') \
            .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r110', 'reply4440').with_condition(lambda: _r4440_condition(gsm)) \
            .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r111', 'reply4441').with_condition(lambda: _r4441_condition(gsm)) \
            .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r112', 'reply4442').with_condition(lambda: _r4442_condition(gsm)).with_action(lambda: _r4442_action(gsm)) \
            .response("Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r113', 'reply4443').with_condition(lambda: _r4443_condition(gsm)).with_action(lambda: _r4443_action(gsm)) \
            .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r114', 'reply4444') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s26', '# from 24.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Какое фоофение?", 's26', 'say4445') \
        .with_responses() \
            .response("Ты должен сообщить мне свое задание.", 'DVAXIS.D_s28', 'r115', 'reply4446').with_condition(lambda: _r4446_condition(gsm)) \
            .response("Ложь: У меня к тебе новые распоряжения.", 'DVAXIS.D_s30', 'r116', 'reply4447').with_condition(lambda: _r4447_condition(gsm)).with_action(lambda: _r4447_action(gsm)) \
            .response("Ложь: У меня… к тебе новые распоряжения.", 'DVAXIS.D_s30', 'r117', 'reply4448').with_condition(lambda: _r4448_condition(gsm)).with_action(lambda: _r4448_action(gsm)) \
            .response("Извини, у меня нет сообщений.", 'DVAXIS.D_s27', 'r118', 'reply4449') \
            .response("Неважно. Извини за беспокойство. Прощай.", 'DVAXIS.D_s27', 'r119', 'reply4450') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s27', '# from 24.1 26.3 26.4') \
        .with_npc_lines() \
            .line(teller, "Его глаза в ярости сужаются.", 's27', 'say4451') \
            .line(vaxis_unknown, "Ты не фьяфной. Фто ты?", 's27', 'say4451') \
        .with_responses() \
            .response("Я ищу выход отсюда. Ты можешь мне помочь?", 'DVAXIS.D_s31', 'r120', 'reply4452').with_condition(lambda: _r4452_condition(gsm)) \
            .response("Мне нужны кое-какие сведения…", 'DVAXIS.D_s43', 'r121', 'reply4453') \
            .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s21', 'r122', 'reply4454').with_condition(lambda: _r4454_condition(gsm)) \
            .response("Рассказывай, что ты здесь делаешь, или я позову стражу.", 'DVAXIS.D_s17', 'r123', 'reply4455').with_condition(lambda: _r4455_condition(gsm)) \
            .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s19', 'r124', 'reply4456').with_condition(lambda: _r4456_condition(gsm)).with_action(lambda: _r4456_action(gsm)) \
            .response("*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей.", 'DVAXIS.D_s22', 'r125', 'reply4457').with_condition(lambda: _r4457_condition(gsm)).with_action(lambda: _r4457_action(gsm)) \
            .response("Извини, что побеспокоил тебя… кем бы ты ни был. Прощай.", 'DVAXIS.D_s4', 'r126', 'reply4458') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s28', '# from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе.", 's28', 'say4459') \
        .with_responses() \
            .response("И чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r127', 'reply4460') \
            .response("Понятно. Я хотел спросить у тебя еще кое-что…", 'DVAXIS.D_s43', 'r128', 'reply4461') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r129', 'reply4462').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s29', '# from 21.1 22.1 23.4 28.0 70.1 71.2') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают.", 's29', 'say4463') \
            .line(teller, "Его глаза деловито сужаются.", 's29', 'say4463') \
            .line(vaxis_unknown, "Буу дальфе фледить.", 's29', 'say4463') \
        .with_responses() \
            .response("Понятно. Я хотел спросить у тебя еще кое-что…", 'DVAXIS.D_s43', 'r130', 'reply4464') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r131', 'reply4465').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s30', '# from 26.1 26.2') \
        .with_npc_lines() \
            .line(teller, "Он сужает глаза, будто пытаясь тебя вычислить.", 's30', 'say4466') \
            .line(vaxis_unknown, "Какие вафповявения?", 's30', 'say4466') \
        .with_responses() \
            .response("Доложи свою миссию.", 'DVAXIS.D_s28', 'r132', 'reply4467') \
            .response("Мне нужно найти выход, через который можно уйти незамеченным.", 'DVAXIS.D_s49', 'r133', 'reply4468') \
            .response("Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место.", 'DVAXIS.D_s72', 'r134', 'reply4469').with_condition(lambda: _r4469_condition(gsm)).with_action(lambda: _r4469_action(gsm)) \
            .response("Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться.", 'DVAXIS.D_s35', 'r135', 'reply4470') \
            .response("Твои распоряжения будут переданы в свое время. Я вернусь.", EXIT, 'r136', 'reply4471').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s31', '# from 7.1 12.1 13.4 15.1 25.0 27.0 50.0') \
        .with_npc_lines() \
            .line(teller, "Он на секунду умолкает, затем медленно, будто бы понимающе кивает.", 's31', 'say4472') \
            .line(vaxis_unknown, "Пофеу я доувен помоать тее?", 's31', 'say4472') \
        .with_responses() \
            .response("Потому что мне нужна твоя помощь.", 'DVAXIS.D_s32', 'r137', 'reply4473') \
            .response("Мы можем помочь друг другу. Что ты хочешь взамен?", 'DVAXIS.D_s35', 'r138', 'reply4474').with_condition(lambda: _r4474_condition(gsm)).with_action(lambda: _r4474_action(gsm)) \
            .response("Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.", 'DVAXIS.D_s33', 'r139', 'reply4475').with_condition(lambda: _r4475_condition(gsm)) \
            .response("Потому что я не хотел бы *раскрывать* твою маскировочку… если только ты не поможешь мне.", 'DVAXIS.D_s34', 'r140', 'reply4476').with_condition(lambda: _r4476_condition(gsm)) \
            .response("Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?", 'DVAXIS.D_s75', 'r141', 'reply4477').with_condition(lambda: _r4477_condition(gsm)).with_action(lambda: _r4477_action(gsm)) \
            .response("Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?", 'DVAXIS.D_s33', 'r142', 'reply4478').with_condition(lambda: _r4478_condition(gsm)).with_action(lambda: _r4478_action(gsm)) \
            .response("Забудь о нашей встрече. Я должен идти. Прощай.", 'DVAXIS.D_s4', 'r143', 'reply4479') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s32', '# from 31.0') \
        .with_npc_lines() \
            .line(teller, "Зомби едва усмехается.", 's32', 'say4480') \
            .line(vaxis_unknown, "Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу.", 's32', 'say4480') \
        .with_responses() \
            .response("Что тебе надо?", 'DVAXIS.D_s35', 'r144', 'reply4481') \
            .response("Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?", 'DVAXIS.D_s33', 'r145', 'reply4482').with_condition(lambda: _r4482_condition(gsm)) \
            .response("Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?", 'DVAXIS.D_s34', 'r146', 'reply4483').with_condition(lambda: _r4483_condition(gsm)) \
            .response("Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?", 'DVAXIS.D_s75', 'r147', 'reply4484').with_condition(lambda: _r4484_condition(gsm)).with_action(lambda: _r4484_action(gsm)) \
            .response("Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак… в последний раз спрашиваю: как мне отсюда выбраться?", 'DVAXIS.D_s33', 'r148', 'reply4485').with_condition(lambda: _r4485_condition(gsm)).with_action(lambda: _r4485_action(gsm)) \
            .response("Неинтересно. Прощай.", 'DVAXIS.D_s4', 'r149', 'reply4486') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s33', '# from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0') \
        .with_npc_lines() \
            .line(teller, "Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого.", 's33', 'say4487') \
            .line(vaxis_unknown, "Хм-м. Ты мовефь убевать фееф поуталы.", 's33', 'say4487') \
        .with_responses() \
            .response("Порталы?", 'DVAXIS.D_s50', 'r150', 'reply4672').with_action(lambda: _r4672_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s34', '# from 31.3 32.2 35.3') \
        .with_npc_lines() \
            .line(teller, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.", 's34', 'say4491') \
            .line(vaxis_unknown, "Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу.", 's34', 'say4491') \
        .with_responses() \
            .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s74', 'r151', 'reply4489').with_condition(lambda: _r4489_condition(gsm)).with_action(lambda: _r4489_action(gsm)) \
            .response("Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей.", 'DVAXIS.D_s33', 'r152', 'reply4490').with_condition(lambda: _r4490_condition(gsm)).with_action(lambda: _r4490_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу.", 'DVAXIS.D_s4', 'r153', 'reply4492') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s35', '# from 30.3 31.1 32.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе.", 's35', 'say4493') \
        .with_responses() \
            .response("Ты имеешь в виду этот ключ?", 'DVAXIS.D_s42', 'r154', 'reply4494').with_condition(lambda: _r4494_condition(gsm)).with_action(lambda: _r4494_action(gsm)) \
            .response("Хорошо. Где этот ключ?", 'DVAXIS.D_s36', 'r155', 'reply4495') \
            .response("У меня нет времени на это. Помоги мне сбежать, или я позову стражу.", 'DVAXIS.D_s33', 'r156', 'reply4496').with_condition(lambda: _r4496_condition(gsm)).with_action(lambda: _r4496_action(gsm)) \
            .response("У меня нет времени на это. Помоги мне сбежать, или я позову стражу.", 'DVAXIS.D_s34', 'r157', 'reply4497').with_condition(lambda: _r4497_condition(gsm)).with_action(lambda: _r4497_action(gsm)) \
            .response("Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.", 'DVAXIS.D_s75', 'r158', 'reply4498').with_condition(lambda: _r4498_condition(gsm)).with_action(lambda: _r4498_action(gsm)) \
            .response("Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею.", 'DVAXIS.D_s33', 'r159', 'reply4499').with_condition(lambda: _r4499_condition(gsm)).with_action(lambda: _r4499_action(gsm)) \
            .response("Нет, спасибо. Может быть, в другой раз.", 'DVAXIS.D_s4', 'r160', 'reply4500') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s36', '# from 35.1 58.2') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Он у твуфьявой.", 's36', 'say4501') \
            .line(teller, "Он показывает на свои глаза.", 's36', 'say4501') \
            .line(vaxis_unknown, "У нее воутые глафифи… Затем он делает движение руками, похожее на стрижку ножницами. Лефвия на пайфах.", 's36', 'say4501') \
        .with_responses() \
            .response("Я уже с ней встречался. Вот ключ.", 'DVAXIS.D_s42', 'r161', 'reply4502').with_condition(lambda: _r4502_condition(gsm)).with_action(lambda: _r4502_action(gsm)) \
            .response("Тленная… с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди… я скоро вернусь с ключом.", 'DVAXIS.D_s38', 'r162', 'reply64520').with_condition(lambda: _r64520_condition(gsm)).with_action(lambda: _r64520_action(gsm)) \
            .response("Тленная… с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом.", 'DVAXIS.D_s38', 'r163', 'reply4503').with_condition(lambda: _r4503_condition(gsm)).with_action(lambda: _r4503_action(gsm)) \
            .response("Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?", 'DVAXIS.D_s37', 'r164', 'reply4504').with_action(lambda: _r4504_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s37', '# from 36.3') \
        .with_npc_lines() \
            .line(teller, "Зомби моргает. Кажется, он тебя не понял.", 's37', 'say4505') \
        .with_responses() \
            .response("Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.", 'DVAXIS.D_s38', 'r165', 'reply4506').with_condition(lambda: _r4506_condition(gsm)).with_action(lambda: _r4506_action(gsm)) \
            .response("Это была шутка, видишь ли, ты… а, забудь, найду я твой ключ.", 'DVAXIS.D_s38', 'r166', 'reply66150').with_condition(lambda: _r66150_condition(gsm)).with_action(lambda: _r66150_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s38', '# from 36.1 36.2 37.0 37.1') \
        .with_npc_lines() \
            .line(teller, "Зомби косо на тебя смотрит.", 's38', 'say4507') \
            .line(vaxis_unknown, "Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать.", 's38', 'say4507') \
        .with_responses() \
            .response("Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?", EXIT, 'r167', 'reply4508').with_condition(lambda: _r4508_condition(gsm)).with_action(lambda: _r4508_action(gsm)) \
            .response("Я еще вернусь.", EXIT, 'r168', 'reply4509').with_condition(lambda: _r4509_condition(gsm)).with_action(lambda: _r4509_action(gsm)) \
            .response("Я найду твой треклятый ключ… но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?", EXIT, 'r169', 'reply4510').with_condition(lambda: _r4510_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Я еще вернусь.", EXIT, 'r170', 'reply4511').with_condition(lambda: _r4511_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s39', '# from 43.12 // Manually checked EXTENDS ~DMORTE~ : 93') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби.", 's39', 'say4512') \
            .line(teller, "Зомби хихикает через зашитые губы, потом стучит себя по голове.", 's39', 'say4512') \
            .line(vaxis_unknown, "Твуфяки тууупые.", 's39', 'say4512') \
            .line(morte, "Ага, уж кто тупые, так это *они*. Это точно.", 's93', 'say4706') \
        .with_responses() \
            .response("(...)", 'DVAXIS.D_s61', 'r261', '-') \
        .push(manager)

    # TODO [snow]: orphan
    DialogStateBuilder().state('DVAXIS.D_s40', '# from -') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Я фду тея фдефь. Найди кьюч.", 's40', 'say4514') \
            .line(teller, "Зомби улыбается мертвецким оскалом.", 's40', 'say4514') \
            .line(vaxis_unknown, "Потом я помоу тее.", 's40', 'say4514') \
        .with_responses() \
            .response("Если я найду его, то принесу.", EXIT, 'r172', 'reply4515').with_action(lambda: _dispose()) \
            .response("Тогда забудь об этом.", EXIT, 'r173', 'reply4516').with_action(lambda: _dispose()) \
        .push(manager)

    # TODO [snow]: orphan
    DialogStateBuilder().state('DVAXIS.D_s41', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дай его мие.", 's41', 'say4517') \
            .line(vaxis_unknown, "Дай его мие.", 's41', 'say4517') \
        .with_responses() \
            .response("Секундочку. Я хочу кое-что взамен.", EXIT, 'r174', 'reply4518').with_action(lambda: _dispose()) \
            .response("На, бери.", EXIT, 'r175', 'reply4519').with_action(lambda: _r4519_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s42', '# from 35.0 36.0 58.0 58.1') \
        .with_npc_lines() \
            .line(teller, "Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая.", 's42', 'say4520') \
            .line(vaxis_unknown, "Хорофо… хорофо.", 's42', 'say4520') \
        .with_responses() \
            .response("А теперь… Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r176', 'reply4521').with_condition(lambda: _r4521_condition(gsm)).with_action(lambda: _r4521_action(gsm)) \
            .response("А теперь… Есть кое-что, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r177', 'reply4522').with_condition(lambda: _r4522_condition(gsm)).with_action(lambda: _r4522_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s43', '# from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Фто ты хофефь уфнать?", 's43', 'say4523') \
        .with_responses() \
            .response("Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r178', 'reply64508').with_condition(lambda: _r64508_condition(gsm)) \
            .response("Как мне выбраться отсюда?", 'DVAXIS.D_s49', 'r179', 'reply4524').with_condition(lambda: _r4524_condition(gsm)) \
            .response("Еще раз — где тот портал, о котором ты говорил?", 'DVAXIS.D_s52', 'r180', 'reply4525').with_condition(lambda: _r4525_condition(gsm)) \
            .response("Ты можешь замаскировать меня под зомби?", 'DVAXIS.D_s63', 'r181', 'reply4526').with_condition(lambda: _r4526_condition(gsm)) \
            .response("Ты можешь еще раз замаскировать меня под зомби?", 'DVAXIS.D_s63', 'r182', 'reply4527').with_condition(lambda: _r4527_condition(gsm)) \
            .response("Что ты здесь делаешь?", 'DVAXIS.D_s28', 'r183', 'reply4528').with_condition(lambda: _r4528_condition(gsm)) \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DVAXIS.D_s44', 'r184', 'reply4673').with_condition(lambda: _r4673_condition(gsm)) \
            .response("Я потерял дневник. Тебе ничего такого не попадалось?", 'DVAXIS.D_s47', 'r185', 'reply4530').with_condition(lambda: _r4530_condition(gsm)) \
            .response("Что ты можешь сказать о Дхолле?", 'DVAXIS.D_s53', 'r186', 'reply4531').with_condition(lambda: _r4531_condition(gsm)) \
            .response("Что ты можешь сказать о Дейонарре?", 'DVAXIS.D_s54', 'r187', 'reply4532').with_condition(lambda: _r4532_condition(gsm)) \
            .response("Что ты можешь сказать о Соэго?", 'DVAXIS.D_s55', 'r188', 'reply4533').with_condition(lambda: _r4533_condition(gsm)) \
            .response("Как ты приобрел такой внешний вид?", 'DVAXIS.D_s60', 'r189', 'reply4534').with_condition(lambda: _r4534_condition(gsm)) \
            .response("Как ты приобрел такой внешний вид?", 'DVAXIS.D_s39', 'r190', 'reply4535').with_condition(lambda: _r4535_condition(gsm)) \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r191', 'reply4536').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s44', '# from 43.6') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Фа-ОД?", 's44', 'say4537') \
            .line(teller, "Нахмурившись, зомби напряженно думает.", 's44', 'say4537') \
            .line(vaxis_unknown, "Я… фвыфал, фто он фиет де-то ф Уле.", 's44', 'say4537') \
            .line(teller, "Он качает головой.", 's44', 'say4537') \
            .line(vaxis_unknown, "Нефнаю где.", 's44', 'say4537') \
            .line(teller, "Он снова хмурится.", 's44', 'say4537') \
            .line(vaxis_unknown, "Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода.", 's44', 'say4537') \
        .with_responses() \
            .response("Улей?", 'DVAXIS.D_s45', 'r192', 'reply4538') \
            .response("А почему тленные не любят Фарода?", 'DVAXIS.D_s46', 'r193', 'reply4539').with_action(lambda: _r4539_action(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r194', 'reply4540') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r195', 'reply4541').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s45', '# from 44.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Твуффобы фнауви.", 's45', 'say4542') \
        .with_responses() \
            .response("А почему тленные не любят Фарода?", 'DVAXIS.D_s46', 'r196', 'reply4543').with_action(lambda: _r4543_action(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r197', 'reply4544') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r198', 'reply4545').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s46', '# from 44.1 45.0 // Manually checked EXTENDS ~DMORTE~ : 91') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых.", 's46', 'say4546') \
        .with_responses() \
            .response("Э-э… что?", 'DVAXIS.D_s48', 'r199', 'reply4547').with_condition(lambda: _r4547_condition(gsm)) \
            .response("Э-э… что?", 'DMORTE.D_s91', 'r200', 'reply4548').with_condition(lambda: _r4548_condition(gsm)) \
            .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r201', 'reply4549') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r202', 'reply4550').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s91', '# from - // Manually checked EXTENDS ~DVAXIS~ : 43') \
        .with_npc_lines() \
            .line(morte, "Он говорит, что этот Фарод продал очень много жмуриков… трупов… тленным. Ну, сборщики занимаются этим — находят тела мертвых и продают их тленным.", 's91', 'say4700') \
            .line(morte, "Похоже, этот Фарод запродал так много жмуриков, что трухлявые начали подозревать, что он записывает жителей Улья в книгу мертвых раньше положенного срока… ну, ты понял, просто убивает их.", 's91', 'say4700') \
        .with_responses() \
            .response("Понятно. Я хотел бы знать кое-что еще…", 'DVAXIS.D_s43', 'r257', 'reply4701') \
            .response("Да этот Фарод просто святой. Возможно, позже у меня будут другие вопросы. Никуда не уходи.", EXIT, 'r258', 'reply4702') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s47', '# from 43.7 // Manually checked EXTENDS ~DMORTE~ : 92') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Ненают. Какой-то пей обфифтил тея?", 's47', 'say4551') \
        .with_responses() \
            .response("Э-э… что?", 'DVAXIS.D_s48', 'r203', 'reply4552').with_condition(lambda: _r4552_condition(gsm)) \
            .response("Э-э… что?", 'DMORTE.D_s92', 'r204', 'reply4553').with_condition(lambda: _r4553_condition(gsm)) \
            .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r205', 'reply4554') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r206', 'reply4555').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s92', '# from - // Manually checked EXTENDS ~DVAXIS~ : 43') \
    .with_npc_lines() \
        .line(morte, "Он хочет знать, не обокрал ли кто тебя. Наверно, интересуется, что случилось.", 's92', 'say4703') \
    .with_responses() \
        .response("Понятно. Я хотел бы знать кое-что еще…", 'DVAXIS.D_s43', 'r259', 'reply4704') \
        .response("Да, я жду не дождусь поймать этого вора. Слушай, возможно, позже у меня будут другие вопросы. Никуда не уходи.", EXIT, 'r260', 'reply4705').with_action(lambda: _dispose()) \
    .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s48', '# from 46.0 47.0') \
        .with_npc_lines() \
            .line(teller, "Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.", 's48', 'say4556') \
        .with_responses() \
            .response("А… Есть кое-что еще, о чем я хочу узнать…", 'DVAXIS.D_s43', 'r207', 'reply4557') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r208', 'reply4558').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s49', '# from 30.1 42.0 43.0 43.1') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Зомби ворчит. Ты мовешь убевафь феев поуталы.", 's49', 'say4559') \
            .line(teller, "Он взмахивает руками.", 's49', 'say4559') \
            .line(vaxis_unknown, "Пуф.", 's49', 'say4559') \
        .with_responses() \
            .response("Порталы? Что за порталы?", 'DVAXIS.D_s50', 'r209', 'reply4560') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s50', '# from 33.0 49.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Поуталы…", 's50', 'say4563') \
            .line(teller, "Зомби окидывает широким жестом пространство вокруг себя.", 's50', 'say4563') \
            .line(vaxis_unknown, "Поуталы вефде.", 's50', 'say4563') \
        .with_responses() \
            .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s31', 'r210', 'reply4564').with_condition(lambda: _r4564_condition(gsm)) \
            .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r211', 'reply64509').with_condition(lambda: _r64509_condition(gsm)) \
            .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r212', 'reply64510').with_condition(lambda: _r64510_condition(gsm)) \
            .response("Ты можешь показать мне один из этих порталов?", 'DVAXIS.D_s51', 'r213', 'reply64511').with_condition(lambda: _r64511_condition(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s51', '# from 50.1 50.2 50.3 72.0') \
        .with_npc_lines() \
            .line(teller, "Зомби кивает.", 's51', 'say4567') \
            .line(vaxis_unknown, "Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал… Тее нувна кофть паица, фогнутоо в кьюк…", 's51', 'say4567') \
            .line(teller, "Он поднимает указательный палец и сгибает его в крюк.", 's51', 'say4567') \
            .line(vaxis_unknown, "Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод.", 's51', 'say4567') \
            .line(teller, "Он энергично кивает.", 's51', 'say4567') \
            .line(vaxis_unknown, "Там ты мовефь ОДОФНУТЬ.", 's51', 'say4567') \
        .with_responses() \
            .response("Кость согнутого пальца? А где можно найти ее?", 'DVAXIS.D_s77', 'r214', 'reply64527').with_condition(lambda: _r64527_condition(gsm)).with_action(lambda: _r64527_action(gsm)) \
            .response("У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r215', 'reply4568').with_condition(lambda: _r4568_condition(gsm)).with_action(lambda: _r4568_action(gsm)) \
            .response("Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю.", EXIT, 'r216', 'reply4569').with_condition(lambda: _r4569_condition(gsm)).with_action(lambda: _r4569_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s52', '# from 43.2') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Фуфай! Фапомиай!", 's52', 'say4570') \
            .line(teller, "В голосе зомби слышна раздраженность.", 's52', 'say4570') \
            .line(vaxis_unknown, "Арка, пеувый этаж, феверо-фападная коуната…", 's52', 'say4570') \
            .line(teller, "Он поднимает указательный палец и сгибает его.", 's52', 'say4570') \
            .line(vaxis_unknown, "Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ.", 's52', 'say4570') \
        .with_responses() \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r217', 'reply4571') \
            .response("Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил.", EXIT, 'r218', 'reply4572').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s53', '# from 43.8') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Пифец.", 's53', 'say4573') \
            .line(teller, "Пожимает плечами.", 's53', 'say4573') \
            .line(vaxis_unknown, "Фтарый. Вовтый.", 's53', 'say4573') \
        .with_responses() \
            .response("Полагаю, добавить больше нечего. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r219', 'reply4574') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r220', 'reply4575').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s54', '# from 43.9') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Э?", 's54', 'say4576') \
            .line(teller, "Хмурится.", 's54', 'say4576') \
            .line(vaxis_unknown, "Фто она?", 's54', 'say4576') \
        .with_responses() \
            .response("Забудь. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r221', 'reply4577') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r222', 'reply4578').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s55', '# from 43.10') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?", 's55', 'say4579') \
        .with_responses() \
            .response("Что ты знаешь о нем?", 'DVAXIS.D_s56', 'r223', 'reply4580').with_action(lambda: _r4580_action(gsm)) \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r224', 'reply4581').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s56', '# from 55.0') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Фтвааный. Не твуфявый, не анавфифт. Гуава двугие…", 's56', 'say4582') \
            .line(teller, "Пожимает плечами.", 's56', 'say4582') \
            .line(vaxis_unknown, "Как у квыфы. Фтванно.", 's56', 'say4582') \
        .with_responses() \
            .response("Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще…", 'DVAXIS.D_s43', 'r225', 'reply4583') \
            .response("Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи.", EXIT, 'r226', 'reply4584').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s57', '# from -') \
        .with_npc_lines() \
            .line(teller, "Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.", 's57', 'say4585').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Приветствую.", 'DVAXIS.D_s58', 'r227', 'reply4586').with_condition(lambda: _r4586_condition(gsm)) \
            .response("Приветствую.", 'DVAXIS.D_s58', 'r228', 'reply4587').with_condition(lambda: _r4587_condition(gsm)) \
            .response("Приветствую.", 'DVAXIS.D_s59', 'r229', 'reply4588').with_condition(lambda: _r4588_condition(gsm)) \
            .response("Приветствую.", 'DVAXIS.D_s58', 'r230', 'reply4589').with_condition(lambda: _r4589_condition(gsm)) \
            .response("Оставить его в покое.", EXIT, 'r231', 'reply4590').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s58', '# from 57.0 57.1 57.3') \
        .with_npc_lines() \
            .line(teller, "Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе.", 's58', 'say4591') \
            .line(vaxis_unknown, "Фто?", 's58', 'say4591') \
        .with_responses() \
            .response("Вот ключ к бальзамационной комнате, который ты хотел.", 'DVAXIS.D_s42', 'r232', 'reply4592').with_condition(lambda: _r4592_condition(gsm)).with_action(lambda: _r4592_action(gsm)) \
            .response("Вот ключ к бальзамационной комнате, который ты хотел.", 'DVAXIS.D_s42', 'r233', 'reply4593').with_condition(lambda: _r4593_condition(gsm)).with_action(lambda: _r4593_action(gsm)) \
            .response("Еще раз — где тот ключ, о котором ты говорил?", 'DVAXIS.D_s36', 'r234', 'reply4594').with_condition(lambda: _r4594_condition(gsm)) \
            .response("У меня есть несколько вопросов к тебе…", 'DVAXIS.D_s43', 'r235', 'reply4595') \
            .response("Неважно.", EXIT, 'r236', 'reply4596').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s59', '# from 57.2') \
        .with_npc_lines() \
            .line(teller, "Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя.", 's59', 'say4597') \
            .line(vaxis_unknown, "Ухои! Вон!", 's59', 'say4597') \
        .with_responses() \
            .response("Нет. Сначала у меня несколько вопросов к тебе…", 'DVAXIS.D_s43', 'r237', 'reply4598') \
            .response("Тогда неважно.", 'DVAXIS.D_s4', 'r238', 'reply4599').with_condition(lambda: _r4599_condition(gsm)) \
            .response("Тогда неважно.", EXIT, 'r239', 'reply4600').with_condition(lambda: _r4600_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s60', '# from 43.11') \
        .with_npc_lines() \
            .line(vaxis_unknown, "Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби.", 's60', 'say4601') \
            .line(teller, "Зомби хихикает через зашитые губы, потом стучит себя по голове.", 's60', 'say4601') \
            .line(vaxis_unknown, "Твуфяки тууупые.", 's60', 'say4601') \
        .with_responses() \
            .response("Ага, уж кто тупой, так это они. Это точно.", 'DVAXIS.D_s61', 'r240', 'reply4602') \
            .response("Это не больно?", 'DVAXIS.D_s62', 'r241', 'reply4603') \
            .response("Довольно неплохая маскировка. Скажи… а ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r242', 'reply4604').with_condition(lambda: _r4604_condition(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r243', 'reply4605') \
            .response("Мне нужно идти. Прощай.", EXIT, 'r244', 'reply4606').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s61', '# from 60.0') \
        .with_npc_lines() \
            .line(teller, "Зомби определенно не понял сарказма, энергично кивая словам.", 's61', 'say4607') \
            .line(vaxis_unknown, "Тупие твуфявые. Ив мея ХОВОФЫЙ фомби.", 's61', 'say4607') \
        .with_responses() \
            .response("Это не больно?", 'DVAXIS.D_s62', 'r245', 'reply4608') \
            .response("Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r246', 'reply4609').with_condition(lambda: _r4609_condition(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s64', 'r247', 'reply4610').with_condition(lambda: _r4610_condition(gsm)) \
            .response("Мне нужно идти. Прощай.", 'DVAXIS.D_s64', 'r248', 'reply4611').with_condition(lambda: _r4611_condition(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r249', 'reply4612').with_condition(lambda: _r4612_condition(gsm)) \
            .response("Мне нужно идти. Прощай.", EXIT, 'r250', 'reply4613').with_condition(lambda: _r4613_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s62', '# from 60.1 61.0') \
        .with_npc_lines() \
            .line(teller, "Он смотрит на твои шрамы.", 's62', 'say4614') \
            .line(vaxis_unknown, "А как ты думаефь? По мие, нет, не офень.", 's62', 'say4614') \
            .line(teller, "Бьет себя по груди.", 's62', 'say4614') \
            .line(vaxis_unknown, "Я КИЕПКИЙ.", 's62', 'say4614') \
        .with_responses() \
            .response("Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?", 'DVAXIS.D_s63', 'r251', 'reply4615').with_condition(lambda: _r4615_condition(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s64', 'r252', 'reply4616').with_condition(lambda: _r4616_condition(gsm)) \
            .response("Мне нужно идти. Прощай.", 'DVAXIS.D_s64', 'r253', 'reply4617').with_condition(lambda: _r4617_condition(gsm)) \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r254', 'reply4618').with_condition(lambda: _r4618_condition(gsm)) \
            .response("Мне нужно идти. Прощай.", EXIT, 'r255', 'reply4674').with_condition(lambda: _r4674_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s63', '# from 43.3 43.4 60.2 61.1 62.0 64.1 64.2') \
        .with_npc_lines() \
            .line(teller, "Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает.", 's63', 'say4619') \
            .line(vaxis_unknown, "Уху. Мие нуна банка баифама.", 's63', 'say4619') \
            .line(teller, "Показывает на шрамы на твоей груди.", 's63', 'say4619') \
            .line(vaxis_unknown, "И игоука ф ниткой.", 's63', 'say4619') \
        .with_responses() \
            .response("На, бери.", 'DVAXIS.D_s65', 'r256', 'reply4620').with_condition(lambda: _r4620_condition(gsm)).with_action(lambda: _r4620_action(gsm)) \
            .response("Я подумаю над этим. У меня есть еще несколько вопросов…", 'DVAXIS.D_s43', 'r257', 'reply4621').with_action(lambda: _r4621_action(gsm)) \
            .response("Может, быть в другой раз, спасибо… Прощай.", EXIT, 'r258', 'reply4622').with_action(lambda: _r4622_action(gsm)) \
            .response("Бальзамирующая жидкость и нитка? Пойду, поищу их.", EXIT, 'r259', 'reply4623').with_action(lambda: _r4623_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s64', '# from 61.2 61.3 62.1 62.2') \
        .with_npc_lines() \
            .line(teller, "Странным взглядом он осматривает тебя с ног до головы.", 's64', 'say4624') \
            .line(vaxis_unknown, "Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка.", 's64', 'say4624') \
        .with_responses() \
            .response("Спасибо. У меня есть другие вопросы к тебе…", 'DVAXIS.D_s43', 'r260', 'reply4625').with_action(lambda: _r4625_action(gsm)) \
            .response("Конечно. Ты сможешь сделать это?", 'DVAXIS.D_s63', 'r261', 'reply4626') \
            .response("Почему бы и нет? Я и так чувствую себя ходячим мертвецом.", 'DVAXIS.D_s63', 'r262', 'reply4627') \
            .response("Нет… нет… так тоже неплохо. Прощай.", EXIT, 'r263', 'reply4628').with_action(lambda: _r4628_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s65', '# from 63.0 // Check EXTENDS ~DMORTE~ : 94') \
        .with_npc_lines() \
            .line(teller, "Зомби берет у тебя предметы и приступает к работе…", 's65', 'say4629') \
        .with_responses() \
            .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r264', 'reply4630').with_condition(lambda: _r4630_condition(gsm)).with_action(lambda: _r4630_action(gsm)) \
            .response("Попробовать не двигаться.", 'DMORTE.D_s94', 'r265', 'reply4631').with_condition(lambda: _r4631_condition(gsm)).with_action(lambda: _r4631_action(gsm)) \
            .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r266', 'reply4632').with_condition(lambda: _r4632_condition(gsm)).with_action(lambda: _r4632_action(gsm)) \
            .response("Попробовать не двигаться.", 'DVAXIS.D_s66', 'r267', 'reply64533').with_condition(lambda: _r64533_condition(gsm)).with_action(lambda: _r64533_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s94', '# from - // Check EXTENDS ~DVAXIS~ : 66') \
        .with_npc_lines() \
            .line(morte, "Не могу поверить, что ты делаешь это. Ты, что, СОВСЕМ спятил?", 's94', 'say4708') \
        .with_responses() \
            .response("Бред, как по мне…", 'DVAXIS.D_s66', 'r262', 'reply64535').with_condition(lambda: _r64535_condition(gsm)).with_action(lambda: _r64535_action(gsm)) \
            .response("Бред, как по мне…", 'DVAXIS.D_s66', 'r263', 'reply64534').with_condition(lambda: _r64534_condition(gsm)).with_action(lambda: _r64534_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s66', '# from 65.0 65.2 65.3 // Check EXTENDS ~DMORTE~ : 95') \
        .with_npc_lines() \
            .line(teller, "Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов.", 's66', 'say4633') \
            .line(teller, "Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.", 's66', 'say4633') \
        .with_responses() \
            .response("Ммм-ммф-ммм… Фпафибо.", 'DVAXIS.D_s67', 'r268', 'reply4634').with_condition(lambda: _r4634_condition(gsm)) \
            .response("Ммм-ммф-ммм… Фпафибо.", EXIT, 'r269', 'reply4635').with_condition(lambda: _r4635_condition(gsm)).with_action(lambda: _r4635_action(gsm)) \
            .response("Ммм-ммф-ммм… Фпафибо.", 'DVAXIS.D_s67', 'r270', 'reply4636').with_condition(lambda: _r4636_condition(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s67', '# from 66.0 66.2') \
        .with_npc_lines() \
            .line(teller, "Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно.", 's67', 'say4637') \
            .line(vaxis_unknown, "Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно.", 's67', 'say4637') \
        .with_responses() \
            .response("Ммф… ммм. Я… понимаю.", 'DVAXIS.D_s68', 'r271', 'reply4638').with_action(lambda: _r4638_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s68', '# from 67.0') \
        .with_npc_lines() \
            .line(teller, "Зомби хмурится.", 's68', 'say4639') \
            .line(vaxis_unknown, "Мафкирофка не деужится доуго… бальфам выфыхает, фвы рвутфя.", 's68', 'say4639') \
            .line(teller, "Он жмет плечами.", 's68', 'say4639') \
            .line(vaxis_unknown, "Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку.", 's68', 'say4639') \
        .with_responses() \
            .response("Снова кивнуть, уйти.", EXIT, 'r272', 'reply4640').with_action(lambda: _dispose()) \
        .push(manager)

    # TODO [snow]: orphan
    DialogStateBuilder().state('DVAXIS.D_s69', '# from -') \
        .with_npc_lines() \
            .line(teller, "Зомби хмурится.", 's69', 'say4641') \
            .line(vaxis_unknown, "Фде-то я тея виел. Мы не виелифь раньфе?", 's69', 'say4641') \
        .with_responses() \
            .response("Может быть. Где ты меня видел?", EXIT, 'r273', 'reply4642').with_action(lambda: _dispose()) \
            .response("X.", EXIT, 'r274', 'reply4643').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s70', '# from 23.0 23.2 71.0 71.1') \
        .with_npc_lines() \
            .line(teller, "К твоему удивлению, зомби отступается от тебя… Он начинает со страхом озираться.", 's70', 'say4644') \
        .with_responses() \
            .response("Не хочешь говорить? Тогда приготовься кричать.", EXIT, 'r275', 'reply4645').with_action(lambda: _r4645_action(gsm)) \
            .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r276', 'reply4646') \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r277', 'reply4647') \
            .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, '278', 'reply4648').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s71', '# from -') \
        .with_npc_lines() \
            .line(teller, "Зомби смотрит на вас обоих с явной опаской, продолжая молчать… но что-то в его выражении говорит тебе, что предположение Морта верно.", 's71', 'say4649') \
        .with_responses() \
            .response("Значит, анархисты? Так за кем вы тут следите?", 'DVAXIS.D_s70', 'r279', 'reply4650') \
            .response("Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше.", 'DVAXIS.D_s70', 'r280', 'reply4651').with_action(lambda: _r4651_action(gsm)) \
            .response("Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?", 'DVAXIS.D_s29', 'r281', 'reply4652') \
            .response("Есть еще кое-что, что я хочу узнать…", 'DVAXIS.D_s43', 'r282', 'reply4653') \
            .response("Тогда забудь об этом. Прощай, *зомби*.", EXIT, 'r283', 'reply4654').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s72', '# from 30.2') \
        .with_npc_lines() \
            .line(teller, "Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике.", 's72', 'say4655') \
            .line(vaxis_unknown, "Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета.", 's72', 'say4655') \
            .line(teller, "Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит.", 's72', 'say4655') \
            .line(vaxis_unknown, "Вот...", 's72', 'say4655') \
            .line(teller, "Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска.", 's72', 'say4655') \
            .line(vaxis_unknown, "Я фкоро уйду.", 's72', 'say4655') \
        .with_responses() \
            .response("Уйдешь? Как?", 'DVAXIS.D_s51', 'r284', 'reply4656').with_condition(lambda: _r4656_condition(gsm)) \
            .response("Отлично. Прощай, Ваксис.", EXIT, 'r285', 'reply64532').with_condition(lambda: _r64532_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    # TODO [snow]: orphan
    DialogStateBuilder().state('DVAXIS.D_s73', '# from -') \
        .with_npc_lines() \
            .line(teller, "Зомби ворчит.", 's73', 'say4658') \
            .line(vaxis_unknown, "Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания.", 's73', 'say4658') \
            .line(teller, "Он кивает.", 's73', 'say4658') \
            .line(vaxis_unknown, "Удафи.", 's73', 'say4658') \
        .with_responses() \
            .response("Э-э… Ладно.", EXIT, 'r286', 'reply4659').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s74', '# from 34.0') \
        .with_npc_lines() \
            .line(teller, "Глаза зомби превращаются в щелочки, он шипит на тебя.", 's74', 'say4660') \
            .line(vaxis_unknown, "Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят.", 's74', 'say4660') \
        .with_responses() \
            .response("Это был твой последний шанс. Готовься к смерти.", EXIT, 'r287', 'reply4661').with_action(lambda: _r4661_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*!", 'DVAXIS.D_s4', 'r288', 'reply4662') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s75', '# from 31.4 32.3 35.4') \
        .with_npc_lines() \
            .line(teller, "На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка.", 's75', 'say4663') \
            .line(vaxis_unknown, "ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят.", 's75', 'say4663') \
        .with_responses() \
            .response("А что, если я раскрою твою маскировку страже?", 'DVAXIS.D_s33', 'r289', 'reply4664').with_condition(lambda: _r4664_condition(gsm)) \
            .response("А что, если я раскрою твою маскировку страже?", 'DVAXIS.D_s76', 'r290', 'reply4665').with_condition(lambda: _r4665_condition(gsm)) \
            .response("Я рискну. Готовься к смерти.", EXIT, 'r291', 'reply4666').with_action(lambda: _r4666_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r292', 'reply4667') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s76', '# from 75.1') \
        .with_npc_lines() \
            .line(teller, "Глаза зомби превращаются в щелочки, он шипит на тебя.", 's76', 'say4668') \
            .line(vaxis_unknown, "Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу.", 's76', 'say4668') \
        .with_responses() \
            .response("Это был твой последний шанс, труп. Готовься к смерти.", EXIT, 'r293', 'reply4669').with_action(lambda: _r4669_action(gsm)) \
            .response("Тогда гори в аду. Я ухожу. Тебе лучше быть настороже… *зомби*.", 'DVAXIS.D_s4', 'r294', 'reply4670') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s77', '# from 51.0') \
        .with_npc_lines() \
            .line(teller, "Он пожимает плечами.", 's77', 'say64523') \
            .line(vaxis_unknown, "Доувен быть де-то фдефь… Ифи на фкладах навеуху. Мовет быть, там.", 's77', 'say64523') \
        .with_responses() \
            .response("Хорошо. У меня есть другие вопросы…", 'DVAXIS.D_s43', 'r295', 'reply64524') \
            .response("Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно.", EXIT, 'r296', 'reply64525').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s99999999_k1', '# from -') \
        .with_npc_lines() \
            .line(teller, "Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 821, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say453') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить Эи-Вейн.", 'DVAXIS.D_s99999999_k1_', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s99999999_k1_', '# from -') \
        .with_npc_lines() \
            .line(teller, "Я втыкаю скальпель в один из ходящих трупов. Зомби неожиданно вскрикивает.", '-', '-') \
            .line(vaxis_unknown, "ААА! Фто ты...", 's77', 'say64523') \
            .line(teller, "Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_vaxis(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s99999999_k2', '# from -') \
        .with_npc_lines() \
            .line(teller, "Ты видишь фальшивого зомби. Ты удивлен его маскировке… его дыхание едва заметно, ты практически не можешь уловить его.", 's57', 'say4585') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить Эи-Вейн.", 'DVAXIS.D_s99999999_k2', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s99999999_k2', '# from -') \
        .with_npc_lines() \
            .line(teller, "Я втыкаю скальпель в грудь Ваксиса. Он вскрикивает и отскакивает.", '-', '-') \
            .line(vaxis_unknown, "ААА! Фто ты...", 's77', 'say64523') \
            .line(teller, "Его маскировка разрушена. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает.", '-', '-').with_action(lambda: _kill_vaxis(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DVAXIS.D_s99999999_e', '# from -') \
        .with_npc_lines() \
            .line(teller, "На столе стоят несколько бутылок с мутно-зелёной жидкостью. Мне стоит взять парочку.", '-', '-').with_action(lambda: _embalm(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
