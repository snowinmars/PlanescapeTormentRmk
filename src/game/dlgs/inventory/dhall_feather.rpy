init 10 python in dhall_feather:
    from game.dlgs.inventory.dhall_feather_logic import DhallFeatherLogic
    dhallFeatherLogic = DhallFeatherLogic(renpy.store.global_settings_manager)

# ###
# Original:  ITM/QUILL.ITM
# ###


label start_dhall_feather:
    $ dhallFeatherLogic.break_feather()
    nr 'Разломив перо, ты на секунду вспоминаешь кашель странного существа из Морга. Ты начинаешь понимать больше.'
    jump graphics_menu
