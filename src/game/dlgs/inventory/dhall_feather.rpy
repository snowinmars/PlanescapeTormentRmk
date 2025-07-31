init 10 python in dhall_feather:
    from dlgs.inventory.dhall_feather_logic import DhallFeatherLogic
    dhallFeatherLogic = DhallFeatherLogic(renpy.store.global_settings_manager)

# ###
# Original:  ITM/QUILL.ITM
# ###


label start_dhall_feather:
    $ dhallFeatherLogic.break_feather()
    teller 'Разломив перо, ты на секунду вспоминаешь кашель странного существа из Морга. Ты начинаешь понимать больше.'
    jump show_graphics_menu
