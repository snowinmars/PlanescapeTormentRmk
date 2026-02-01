################################################################################
## Инициализация
################################################################################

init offset = -1
define hover_matrix = BrightnessMatrix(0.2)
define insensitive_matrix = SaturationMatrix(0.3) * BrightnessMatrix(-0.1)
define no_opacity = OpacityMatrix(1)
define small_opacity = OpacityMatrix(0.9)
define colorized_opacity = small_opacity * ColorizeMatrix("#ff0000", '#00ff00')

define color_yellow = '#dbc401'
define color_orange = '#bd7a10'
define color_white = '#f8f6de'

init 2 python:
    keymap_inventory_screen = [ 'K_i' ]
    keymap_character_screen = [ 'K_c' ]
    keymap_journal_screen   = [ 'K_j' ]

    def change_hex(hex_color, hue_percent=0, saturation_percent=0, value_percent=0):
        import colorsys

        hex_color = hex_color.lstrip('#')
        r = int(hex_color[0:2], 16) / 255.0
        g = int(hex_color[2:4], 16) / 255.0
        b = int(hex_color[4:6], 16) / 255.0

        h, s, v = colorsys.rgb_to_hsv(r, g, b)

        h *= (1 - hue_percent/100.0)
        s *= (1 - saturation_percent/100.0)
        v *= (1 - value_percent/100.0)

        r, g, b = colorsys.hsv_to_rgb(h, s, v)
        return '#{:02x}{:02x}{:02x}'.format(int(r*255), int(g*255), int(b*255))


