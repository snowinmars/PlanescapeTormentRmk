init 10 python in dhall_feather:
    from game.dlgs.inventory.dhall_feather_logic import DhallFeatherLogic
    dhallFeatherLogic = DhallFeatherLogic(renpy.store.global_state_manager)


# ###
# Original:  ITM/QUILL.ITM
# ###


label dhall_feather_s0:
    $ dhallFeatherLogic.break_feather()
    nr 'Разломив перо, ты на секунду вспоминаешь кашель странного существа из Морга. Ты начинаешь понимать больше.'
    jump dhall_feather_dispose
