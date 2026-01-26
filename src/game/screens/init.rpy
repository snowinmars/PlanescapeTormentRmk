################################################################################
## Инициализация
################################################################################

init offset = -1
define hover_matrix = BrightnessMatrix(0.2)
define insensitive_matrix = SaturationMatrix(0.3) * BrightnessMatrix(-0.1)

init 2 python:
    keymap_inventory_screen = [ 'K_i' ]
    keymap_character_screen = [ 'K_c' ]
    keymap_journal_screen   = [ 'K_j' ]
