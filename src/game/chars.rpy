# manually sync with script.rpy 'characters' variable
init 1 python:
    def get_oinosian_name():
        return _('oinosian_character_name') if zm310Logic.get_know_oinosian_name() else _('Зомби 310')
    def get_asonje_name():
        return _('asonje_character_name') if zm1094Logic.get_know_asonje_name() else _('Зомби 1094')
    def get_bei_name():
        return _('bei_character_name') if zm1041Logic.get_know_bei_name() else _('Зомби 1041')
    def get_dhall_name():
        return _('dhall_character_name') if dhallLogic.get_know_dhall_name() else '?'
    def get_soego_name():
        return _('soego_character_name') if soegoLogic.get_know_soego_name() else '?'
    def get_vaxis_name():
        return _('vaxis_character_name') if vaxisLogic.get_know_vaxis_name() else '?'
    def get_xach_name():
        return _('xachariah_character_name') if xachLogic.get_know_xachariah_name() else '?'

    def get_annah_name():
        return _('annah_character_name') if annahLogic.get_know_annah_name() else '?'
    def get_dakkon_name():
        return _('dakkon_character_name') if dakkonLogic.get_know_dakkon_name() else '?'
    def get_deionarra_name():
        return _('deionarra_character_name') if deionarraLogic.get_know_deionarra_name() else '?'
    def get_eivene_name():
        return _('eivene_character_name') if eiveneLogic.get_know_eivene_name() else '?'
    def get_grace_name():
        return _('grace_character_name') if graceLogic.get_know_grace_name() else '?'
    def get_ignus_name():
        return _('ignus_character_name') if ignusLogic.get_know_ignus_name() else '?'
    def get_morte_name():
        return _('morte_character_name') if morteLogic.get_know_morte_name() else '?'
    def get_nordom_name():
        return _('nordom_character_name') if nordomLogic.get_know_nordom_name() else '?'
    def get_vhail_name():
        return _('vhail_character_name') if vhailLogic.get_know_vhail_name() else '?'

    def get_zm1146_name():
        return _('crispy_character_name') if zm1146Logic.get_crispy_value() else _('zm1146_character_name')
    def get_zm257_name():
        return _('zm257_spirit_character_name') if zm257Logic.get_know_zm257_spirit() else _('zm257_character_name')


define arabhiem           = DynamicCharacter('get_oinosian_name()'      , color='#b8a175')
define asonje             = DynamicCharacter('get_asonje_name()'        , color='#b8a175')
define bei                = DynamicCharacter('get_bei_name()'           , color='#b8a175')
define dhall              = DynamicCharacter('get_dhall_name()'         , color='#b8a175')
define soego              = DynamicCharacter('get_soego_name()'         , color='#b8a175')
define vaxis              = DynamicCharacter('get_vaxis_name()'         , color='#b8a175')
define xach               = DynamicCharacter('get_xach_name()'          , color='#b8a175')

define annah              = DynamicCharacter('get_annah_name()'         , color='#b8a175')
define dakkon             = DynamicCharacter('get_dakkon_name()'        , color='#b8a175')
define deionarra          = DynamicCharacter('get_deionarra_name()'     , color='#b8a175')
define eivene             = DynamicCharacter('get_eivene_name()'        , color='#b8a175')
define grace              = DynamicCharacter('get_grace_name()'         , color='#b8a175')
define ignus              = DynamicCharacter('get_ignus_name()'         , color='#b8a175')
define morte              = DynamicCharacter('get_morte_name()'         , color='#b8a175')
define nordom             = DynamicCharacter('get_nordom_name()'        , color='#b8a175')
define vhail              = DynamicCharacter('get_vhail_name()'         , color='#b8a175')

define zm1146             = Character('get_zm1146_name()'               , color='#b8a175')
define zm257              = Character('get_zm257_name()'                , color='#b8a175')

define death_names        = Character(_('death_names_character_name')   , color='#b8a175')
define dust               = Character(_('dust_character_name')          , color='#b8a175')
define dustfem            = Character(_('dustfem_character_name')       , color='#b8a175')
define morte_story_1      = Character(_('morte_story_1_character_name') , color='#b8a175')
define morte_story_2      = Character(_('morte_story_2_character_name') , color='#b8a175')

define nr                 = Character(''                                , color='#b8a175')
define scars              = Character(''                                , color='#b8a175')
define the_nameless_one   = Character(_('protagonist_character_name')   , color='#85c8d5')

define snowinmars         = Character('dev'                             , color='#b8a175')
