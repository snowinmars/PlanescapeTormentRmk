init python:
  def regain_custom_achievements():
    if persistent.add_custom_achievements:
      if runtime.global_state_manager.world_manager.get_know_oinosian_name():
        achievement_meet_arabhiem.grant()
      if runtime.global_state_manager.world_manager.get_know_asonje_name():
        achievement_meet_asonje.grant()
      if runtime.global_state_manager.world_manager.get_know_bei_name():
        achievement_meet_bei.grant()
      if runtime.global_state_manager.world_manager.get_know_dhall_name():
        achievement_meet_dhall.grant()
      if runtime.global_state_manager.world_manager.get_know_soego_name():
        achievement_meet_soego.grant()
      if runtime.global_state_manager.world_manager.get_know_vaxis_name():
        achievement_meet_vaxis.grant()
      if runtime.global_state_manager.world_manager.get_know_xachariah_name():
        achievement_meet_xachariah.grant()

      if runtime.global_state_manager.world_manager.get_know_annah_name():
        achievement_meet_annah.grant()
      if runtime.global_state_manager.world_manager.get_know_dakkon_name():
        achievement_meet_dakkon.grant()
      if runtime.global_state_manager.world_manager.get_know_deionarra_name():
        achievement_meet_deionarra.grant()
      if runtime.global_state_manager.world_manager.get_know_eivene_name():
        achievement_meet_eivene.grant()
      if runtime.global_state_manager.world_manager.get_know_grace_name():
        achievement_meet_grace.grant()
      if runtime.global_state_manager.world_manager.get_know_ignus_name():
        achievement_meet_ignus.grant()
      if runtime.global_state_manager.world_manager.get_know_morte_name():
        achievement_meet_morte.grant()
      if runtime.global_state_manager.world_manager.get_know_nordom_name():
        achievement_meet_nordom.grant()
      if runtime.global_state_manager.world_manager.get_know_vhail_name():
        achievement_meet_vhail.grant()

      if runtime.global_state_manager.world_manager.get_crispy_value() > 0:
        achievement_meet_zm1146_spirit.grant()
      if runtime.global_state_manager.world_manager.get_know_zm257_spirit():
        achievement_meet_zm257_spirit.grant()

    else:
      achievement_meet_arabhiem.clear()
      achievement_meet_asonje.clear()
      achievement_meet_bei.clear()
      achievement_meet_dhall.clear()
      achievement_meet_soego.clear()
      achievement_meet_vaxis.clear()
      achievement_meet_xachariah.clear()

      achievement_meet_annah.clear()
      achievement_meet_dakkon.clear()
      achievement_meet_deionarra.clear()
      achievement_meet_eivene.clear()
      achievement_meet_grace.clear()
      achievement_meet_ignus.clear()
      achievement_meet_morte.clear()
      achievement_meet_nordom.clear()
      achievement_meet_vhail.clear()

      achievement_meet_zm1146_spirit.clear()
      achievement_meet_zm257_spirit.clear()

define achievement_meet_arabhiem = Achievement(
  name=_("meet_arabhiem_name"), # Meet Arabhiem
  id="meet_arabhiem",
  description=_("meet_arabhiem_description"), # Meet Arabhiem
  unlocked_image="gui/achievements/meet_arabhiem.png",
  is_custom=True
)
define achievement_meet_asonje = Achievement(
  name=_("meet_asonje_name"), # Meet Asonje
  id="meet_asonje",
  description=_("meet_asonje_description"), # Meet Asonje
  unlocked_image="gui/achievements/meet_asonje.png",
  is_custom=True
)
define achievement_meet_bei = Achievement(
  name=_("meet_bei_name"), # Meet Bei
  id="meet_bei",
  description=_("meet_bei_description"), # Meet Bei
  unlocked_image="gui/achievements/meet_bei.png",
  is_custom=True
)
define achievement_meet_dhall = Achievement(
  name=_("meet_dhall_name"), # Meet Dhall
  id="meet_dhall",
  description=_("meet_dhall_description"), # Meet Dhall
  unlocked_image="gui/achievements/meet_dhall.png",
  is_custom=True
)
define achievement_meet_soego = Achievement(
  name=_("meet_soego_name"), # Meet Soego
  id="meet_soego",
  description=_("meet_soego_description"), # Meet Soego
  unlocked_image="gui/achievements/meet_soego.png",
  is_custom=True
)
define achievement_meet_vaxis = Achievement(
  name=_("meet_vaxis_name"), # Meet Vaxis
  id="meet_vaxis",
  description=_("meet_vaxis_description"), # Meet Vaxis
  unlocked_image="gui/achievements/meet_vaxis.png",
  is_custom=True
)
define achievement_meet_xachariah = Achievement(
  name=_("meet_xachariah_name"), # Meet Xachariah
  id="meet_xachariah",
  description=_("meet_xachariah_description"), # Meet Xachariah
  unlocked_image="gui/achievements/meet_xachariah.png",
  is_custom=True
)

define achievement_meet_annah = Achievement(
  name=_("meet_annah_name"), # Meet Annah
  id="meet_annah",
  description=_("meet_annah_description"), # Meet Annah
  unlocked_image="gui/achievements/meet_annah.png",
  is_custom=True
)
define achievement_meet_dakkon = Achievement(
  name=_("meet_dakkon_name"), # Meet Dak’kon
  id="meet_dakkon",
  description=_("meet_dakkon_description"), # Meet Dak’kon
  unlocked_image="gui/achievements/meet_dakkon.png",
  is_custom=True
)
define achievement_meet_deionarra = Achievement(
  name=_("meet_deionarra_name"), # Meet Deionarra
  id="meet_deionarra",
  description=_("meet_deionarra_description"), # Meet Deionarra
  unlocked_image="gui/achievements/meet_deionarra.png",
  is_custom=True
)
define achievement_meet_eivene = Achievement(
  name=_("meet_eivene_name"), # Meet Ei-Vene
  id="meet_eivene",
  description=_("meet_eivene_description"), # Meet Ei-Vene
  unlocked_image="gui/achievements/meet_eivene.png",
  is_custom=True
)
define achievement_meet_grace = Achievement(
  name=_("meet_grace_name"), # Meet Fall-From-Grace
  id="meet_grace",
  description=_("meet_grace_description"), # Meet Fall-From-Grace
  unlocked_image="gui/achievements/meet_grace.png",
  is_custom=True
)
define achievement_meet_ignus = Achievement(
  name=_("meet_ignus_name"), # Meet Ignus
  id="meet_ignus",
  description=_("meet_ignus_description"), # Meet Ignus
  unlocked_image="gui/achievements/meet_ignus.png",
  is_custom=True
)
define achievement_meet_morte = Achievement(
  name=_("meet_morte_name"), # Meet Morte
  id="meet_morte",
  description=_("meet_morte_description"), # Meet Morte
  unlocked_image="gui/achievements/meet_morte.png",
  is_custom=True
)
define achievement_meet_nordom = Achievement(
  name=_("meet_nordom_name"), # Meet Nordom
  id="meet_nordom",
  description=_("meet_nordom_description"), # Meet Nordom
  unlocked_image="gui/achievements/meet_nordom.png",
  is_custom=True
)
define achievement_meet_vhail = Achievement(
  name=_("meet_vhail_name"), # Meet Vhail
  id="meet_vhail",
  description=_("meet_vhail_description"), # Meet Vhail
  unlocked_image="gui/achievements/meet_vhail.png",
  is_custom=True
)

define achievement_meet_zm1146_spirit = Achievement(
  name=_("meet_zm1146_spirit_name"), # Meet spirit of #1146 zombie
  id="meet_zm1146_spirit",
  description=_("meet_zm1146_spirit_description"), # Meet spirit of #1146 zombie
  unlocked_image="gui/achievements/meet_zm1146_spirit.png",
  is_custom=True
)
define achievement_meet_zm257_spirit = Achievement(
  name=_("meet_zm257_spirit_name"), # Meet spirit of #257 zombie
  id="meet_zm257_spirit",
  description=_("meet_zm257_spirit_description"), # Meet spirit of #257 zombie
  unlocked_image="gui/achievements/meet_zm257_spirit.png",
  is_custom=True
)