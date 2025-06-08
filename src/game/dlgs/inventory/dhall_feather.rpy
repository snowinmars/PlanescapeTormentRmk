init 10 python:
    gsm = renpy.store.global_settings_manager

# ###
# Original:  ITM/QUILL.ITM
# ###


label start_dhall_feather:
    $ gsm.inc_lore()
    teller 'Разломив перо, ты на секунду вспоминаешь кашель странного существа из Морга. Ты начинаешь понимать больше.'
    jump show_graphics_menu