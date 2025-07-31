import logging

class StaticGraphic:
    def __init__(self, image, condition, xpos=0, ypos=0, width=32, height=64):
        self.image = image
        self.condition = condition
        self.xpos = xpos
        self.ypos = ypos
        self.width = width
        self.height = height

class GraphicMenuOption:
    def __init__(self, title, label_id, condition, priority=0,
                 idle_image=None, hover_image=None, tooltip=None,
                 xpos=0, ypos=0, width=24, height=24):
        self._title = title  # Can be string or callable
        self._label_id = label_id  # Can be string or callable
        self.condition = condition
        self.priority = priority
        self.idle_image = idle_image
        self.hover_image = hover_image
        self._tooltip = tooltip  # Can be string or callable
        self.xpos = xpos
        self.ypos = ypos
        self.width = width
        self.height = height

    def get_title(self):
        return self._title() if callable(self._title) else self._title

    def get_label_id(self):
        return self._label_id() if callable(self._label_id) else self._label_id

    def get_tooltip(self):
        if self._tooltip is None:
            return self.get_title()
        return self._tooltip() if callable(self._tooltip) else self._tooltip

class MenuBuilder:
    def __init__(self, location_id):
        self._location_id = location_id
        self._graphic_options = []
        self._static_graphics = []
        self._current_graphic_option = None
        self._styles = {}
        self._auto_position = None
        self._auto_index = 0
        self.define_style("kill", "images/icons/kill_idle.png", "images/icons/kill_hover.png")
        self.define_style("talk", "images/icons/speak_idle.png", "images/icons/speak_hover.png")
        self.define_style("open", "images/icons/open_idle.png", "images/icons/open_hover.png")

    def define_style(self, style_name, idle_image, hover_image):
        self._styles[style_name] = {
            'idle_image': idle_image,
            'hover_image': hover_image
        }
        return self

    def with_main_texture(self, image, condition, xpos, ypos, width=32, height=64):
        self._static_graphics.append(StaticGraphic(
            image=image,
            condition=condition,
            xpos=xpos,
            ypos=ypos,
            width=width,
            height=height,
        ))
        return self

    def auto_position(self, base_x, base_y, width=24, height=24, padding=0):
        self._auto_position = (base_x, base_y, width, height, padding)
        self._auto_index = 0
        return self

    def option(self, title):
        self._complete()
        self._current_graphic_option = {
            'title': title,
            'label_id': None,
            'condition': None,
            'priority': 0,
            'idle_image': None,
            'hover_image': None,
            'tooltip': title,
            'xpos': None,
            'ypos': None,
            'width': None,
            'height': None,
        }
        return self

    def style(self, style_name):
        if style_name not in self._styles:
            raise ValueError(f"Style '{style_name}' not defined")
        style = self._styles[style_name]
        self._current_graphic_option['idle_image'] = style['idle_image']
        self._current_graphic_option['hover_image'] = style['hover_image']
        return self

    def jump(self, label_id):
        self._current_graphic_option['label_id'] = label_id
        return self

    def when(self, condition):
        self._current_graphic_option['condition'] = condition
        return self

    def priority(self, priority):
        self._current_graphic_option['priority'] = priority
        return self

    def position(self, xpos, ypos):
        self._current_graphic_option['xpos'] = xpos
        self._current_graphic_option['ypos'] = ypos
        return self

    def size(self, width, height):
        self._current_graphic_option['width'] = width
        self._current_graphic_option['height'] = height
        return self

    def done(self, manager):
        if not self._location_id:
            raise Exception("Menu location_id not specified")

        self._complete()
        for graphic_option in self._graphic_options:
            manager.add_graphic_option(self._location_id, graphic_option)

        for static_graphic in self._static_graphics:
            manager.add_static_graphic(self._location_id, static_graphic)

    def _complete(self):
        if self._current_graphic_option is None:
            return

        # Apply auto-positioning if configured
        if self._auto_position:
            base_x, base_y, width, height, padding = self._auto_position
            self._current_graphic_option.update({
                'xpos': base_x,
                'ypos': base_y + self._auto_index * (height + padding),
                'width': width,
                'height': height
            })
            self._auto_index += 1

        if not self._current_graphic_option['title'] or not self._current_graphic_option['label_id']:
            raise Exception("Incomplete menu option")

        self._graphic_options.append(GraphicMenuOption(
            title=self._current_graphic_option['title'],
            label_id=self._current_graphic_option['label_id'],
            condition=self._current_graphic_option['condition'],
            priority=self._current_graphic_option['priority'],
            idle_image=self._current_graphic_option['idle_image'],
            hover_image=self._current_graphic_option['hover_image'],
            tooltip=self._current_graphic_option['tooltip'],
            xpos=self._current_graphic_option['xpos'],
            ypos=self._current_graphic_option['ypos'],
            width=self._current_graphic_option['width'],
            height=self._current_graphic_option['height'],
        ))
        self._current_graphic_option = None


class MenuManager:
    def __init__(self):
        self._graphic_registry = {}
        self._static_graphic_registry = {}

    def add_graphic_option(self, location_id, option):
        if location_id not in self._graphic_registry:
            self._graphic_registry[location_id] = []
        self._graphic_registry[location_id].append(option)

    def add_static_graphic(self, location_id, option):
        if location_id not in self._static_graphic_registry:
            self._static_graphic_registry[location_id] = []
        self._static_graphic_registry[location_id].append(option)

    def get_available_static_graphic(self, location_id):
        if location_id not in self._static_graphic_registry:
            return []

        menu_items = [opt for opt in self._static_graphic_registry[location_id] if (opt.condition is None) or (opt.condition is not None and opt.condition())]
        if len(menu_items) != 0:
            return menu_items

        builder = 'register keys ['
        for a in self._static_graphic_registry.keys():
            builder += f'"{a}", '
        builder += ']?'

        if location_id in self._static_graphic_registry:
            builder = f'Why static graphic menu items for location "{location_id}" were not found in graphic {builder}?'
        else:
            builder = f'Why location "{location_id}" was not found in static graphic {builder}?'
        raise Exception(builder)

    def get_available_graphic_options(self, location_id):
        if location_id not in self._graphic_registry:
            return []

        menu_items = [opt for opt in self._graphic_registry[location_id] if (opt.condition is None) or (opt.condition is not None and opt.condition())]
        if len(menu_items) != 0:
            return menu_items

        builder = 'register keys ['
        for a in self._graphic_registry.keys():
            builder += f'"{a}", '
        builder += ']?'

        if location_id in self._graphic_registry:
            builder = f'Why graphic menu items for location "{location_id}" were not found in graphic {builder}?'
        else:
            builder = f'Why location "{location_id}" was not found in graphic {builder}?'
        raise Exception(builder)

    def get_background(self, location_id):
        return f"bg/{location_id}.png"
