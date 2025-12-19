# manually sync with script.rpy 'characters' variable
define the_nameless_one   = Character(_('Безымянный'),     color='#85c8d5')

init 1 python:
    def get_dhall_name():
        return _('Дхолл') if dhallLogic.get_know_dhall_name() else '?'
    def get_deionarra_name():
        return _('Дейонарра') if deionarraLogic.get_know_deionarra_name() else '?'
    def get_oinosian_name():
        return _('Арабейм') if zm310Logic.get_know_oinosian_name() else _('Зомби 310')
    def get_bei_name():
        return _('Бэй') if zm1041Logic.get_know_bei_name() else _('Зомби 1041')
    def get_asonje_name():
        return _('Асонж') if zm1041Logic.get_know_bei_name() else _('Зомби 1094')
    def get_vaxis_name():
        return _('Ваксис') if zm1041Logic.get_know_vaxis_name() else '?'
define dhall              = DynamicCharacter('get_dhall_name()',          color='#b8a175')
define deionarra          = DynamicCharacter('get_deionarra_name()',      color='#b8a175')
define arabhiem           = DynamicCharacter('get_oinosian_name()',       color='#b8a175')
define bei                = DynamicCharacter('get_bei_name()',            color='#b8a175')
define asonje             = DynamicCharacter('get_asonje_name()',         color='#b8a175')
define vaxis              = DynamicCharacter('get_vaxis_name()',          color='#b8a175')

define nr                 = Character('',                  color='#b8a175')
define morte_unknown      = Character('?',                 color='#b8a175')
define morte              = Character(_('Морт'),           color='#b8a175')
define morte_story_1      = Character(_('Старуха'),        color='#b8a175')
define morte_story_2      = Character(_('Старик'),         color='#b8a175')
define annah_unknown      = Character('?',                 color='#b8a175')
define annah              = Character(_('Анна'),           color='#b8a175')
define ignus_unknown      = Character('?',                 color='#b8a175')
define ignus              = Character(_('Игнус'),          color='#b8a175')
define grace_unknown      = Character('?',                 color='#b8a175')
define grace              = Character(_('Падшая грация'),  color='#b8a175')
define dakkon_unknown     = Character('?',                 color='#b8a175')
define dakkon             = Character(_('Дак’кон'),        color='#b8a175')
define nordom_unknown     = Character('?',                 color='#b8a175')
define nordom             = Character(_('Нордом'),         color='#b8a175')
define vhail_unknown      = Character('?',                 color='#b8a175')
define vhail              = Character(_('Вейлор'),         color='#b8a175')
define scars              = Character('',                  color='#b8a175')
define death_names        = Character(_('Смерть имён'),    color='#b8a175')
define eivene_unknown     = Character('?',                 color='#b8a175')
define eivene             = Character(_('Эи-Вейн'),        color='#b8a175')
define xach_unknown       = Character('?',                 color='#b8a175')
define xach               = Character(_('Захария'),        color='#b8a175')
define soego_unknown      = Character('?',                 color='#b8a175')
define soego              = Character(_('Соего'),          color='#b8a175')
define dust               = Character(_('Тленный'),        color='#b8a175')
define dustfem            = Character(_('Тленная'),        color='#b8a175')
define zm257          = Character(_('Зомби 257'),     color='#b8a175')
define zm1146         = Character(_('Зомби 1146'),    color='#b8a175')

define snowinmars     = Character('dev',          color='#b8a175')
