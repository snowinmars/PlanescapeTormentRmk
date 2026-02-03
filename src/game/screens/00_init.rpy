################################################################################
## Инициализация
################################################################################

init offset = -1
define hover_matrix = BrightnessMatrix(0.2)
define insensitive_matrix = SaturationMatrix(0.3) * BrightnessMatrix(-0.1)
define no_opacity = OpacityMatrix(1)
define small_opacity = OpacityMatrix(0.9)
define colorized_opacity = small_opacity * ColorizeMatrix('#ff0000', '#00ff00')

define color_yellow       = '#dbc401'
define color_orange       = '#bd7a10'
define color_white        = '#f8f6de'
define color_narrator     = '#98afb5'
define color_npc          = '#9ba290'
define color_br           = '#c4a28a'
define color_scars        = '#bf6b5f'
define color_nameless_one = '#ff2e21'
define color_default      = '#b8a175'

define font_exocet        = 'exocet.ttf'
define font_notosans      = 'NotoSans-Regular.ttf'
define font_dejavusans    = 'DejaVuSans.ttf'

define cached_button_background = 'gui_button'
define cached_button_hover_background = Transform('gui_button', matrixcolor=hover_matrix)
define cached_button_insensitive_background = Transform('gui_button', matrixcolor=insensitive_matrix)
define cached_settings_button_background = 'gui_settings_button_idle'
define cached_settings_button_hover_background = Transform('gui_settings_button_idle', matrixcolor=hover_matrix)


define infinite_float_value       = float('inf')

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


    MAX_TEXTURE_CACHE_LENGTH = 100
    _inventory_item_cache = {}
    def get_cached_inventory_item(texture_path):
        if texture_path in _inventory_item_cache:
            return _inventory_item_cache[texture_path]
        if len(_inventory_item_cache) > MAX_TEXTURE_CACHE_LENGTH:
            _inventory_item_cache.clear()
        idle  = Transform(texture_path, fit='contain', align=(0.5, 0.5))
        hover = Transform(texture_path, fit='contain', align=(0.5, 0.5), matrixcolor=hover_matrix)
        item = (idle, hover)
        _inventory_item_cache[texture_path] = item
        return item


    _menu_item_cache = {}
    def get_cached_menu_item(texture_path):
        if texture_path in _menu_item_cache:
            return _menu_item_cache[texture_path]
        if len(_menu_item_cache) > MAX_TEXTURE_CACHE_LENGTH:
            _menu_item_cache.clear()
        idle  = texture_path
        hover = Transform(texture_path, matrixcolor=hover_matrix)
        item = (idle, hover)
        _menu_item_cache[texture_path] = item
        return item


    _shadow_cache = {}
    def get_cached_shadow(texture_path):
        if texture_path in _shadow_cache:
            return _shadow_cache[texture_path]
        if len(_shadow_cache) > MAX_TEXTURE_CACHE_LENGTH:
            _shadow_cache.clear()
        idle  = Transform(texture_path, matrixcolor=no_opacity)
        hover = Transform(texture_path, matrixcolor=small_opacity)
        item = (idle, hover)
        _shadow_cache[texture_path] = item
        return item

    _curved_text_cache = {}
    def get_cached_curved_text(what, points, rot=True, t_start=0.0, t_end=1.0, **kwargs):
        if what in _curved_text_cache:
            return _curved_text_cache[what]
        if len(_curved_text_cache) > MAX_TEXTURE_CACHE_LENGTH:
            _curved_text_cache.clear()
        item = CurvedText(what, points, rot, t_start, t_end, **kwargs)
        _curved_text_cache[what] = item
        return item