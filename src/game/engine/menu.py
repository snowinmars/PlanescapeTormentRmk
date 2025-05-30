import renpy
class MenuOption:
    def __init__(self, title, label_id, condition, priority=0):
        self.title = title
        self.label_id = label_id
        self.condition = condition
        self.priority = priority

class GraphicMenuOption:
    def __init__(self, title, label_id, condition, priority=0,
                 idle_image=None, hover_image=None, tooltip=None,
                 xpos=0, ypos=0, width=200, height=50):
        self.title = title
        self.label_id = label_id
        self.condition = condition
        self.priority = priority
        self.idle_image = idle_image
        self.hover_image = hover_image
        self.tooltip = tooltip
        self.xpos = xpos
        self.ypos = ypos
        self.width = width
        self.height = height

class MenuBuilder:
    def __init__(self, location_id):
        self._location_id = location_id
        self._options = []
        self._graphic_options = []
        self._current_option = None
        self._current_graphic_option = None

    def option(self, title):
        self._complete()
        self._current_option = {
            'title': title,
            'label_id': None,
            'condition': None,
            'priority': 0
        }
        self._current_graphic_option = {
            'title': title,
            'label_id': None,
            'condition': None,
            'priority': 0,
            'idle_image': None,
            'hover_image': None,
            'tooltip': None,
            'xpos': None,
            'ypos': None,
            'width': None,
            'height': None,
        }
        return self

    def jump(self, label_id):
        self._current_option['label_id'] = label_id
        self._current_graphic_option['label_id'] = label_id
        return self

    def when(self, condition):
        self._current_option['condition'] = condition
        self._current_graphic_option['condition'] = condition
        return self

    def priority(self, priority):
        self._current_option['priority'] = priority
        self._current_graphic_option['priority'] = priority
        return self

    def idle_image(self, idle_image):
        self._current_graphic_option['idle_image'] = idle_image
        return self

    def hover_image(self, hover_image):
        self._current_graphic_option['hover_image'] = hover_image
        return self

    def tooltip(self, tooltip):
        self._current_graphic_option['tooltip'] = tooltip
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
        for option in self._options:
            manager.add_option(self._location_id, option)
        for graphic_option in self._graphic_options:
            manager.add_graphic_option(self._location_id, graphic_option)

    def _complete(self):
        if self._current_option is None:
            return
        if not self._current_option['title'] or not self._current_option['label_id']:
            raise Exception("Incomplete menu option")
        self._options.append(MenuOption(
            title=self._current_option['title'],
            label_id=self._current_option['label_id'],
            condition=self._current_option['condition'],
            priority=self._current_option['priority']
        ))
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

class MenuManager:
    def __init__(self):
        self._registry = {}
        self._graphic_registry = {}

    def add_option(self, location_id, option):
        if location_id not in self._registry:
            self._registry[location_id] = []
        self._registry[location_id].append(option)
        self._registry[location_id].sort(key=lambda x: x.priority, reverse=True)  # set highest first

    def add_graphic_option(self, location_id, option):
        if location_id not in self._graphic_registry:
            self._graphic_registry[location_id] = []
        self._graphic_registry[location_id].append(option)

    def get_available_options(self, location_id):
        if location_id not in self._registry:
            return []

        menu_items = [opt for opt in self._registry[location_id] if opt.condition is not None and opt.condition()]
        if len(menu_items) != 0:
            return menu_items

        builder = 'register keys ['
        for a in self._registry.keys():
            builder += f'"{a}", '
        builder += ']?'

        if location_id in self._registry:
            builder = f'Why menu items for location "{location_id}" were not found in {builder}?'
        else:
            builder = f'Why location "{location_id}" was not found in {builder}?'
        raise Exception(builder)

    def get_available_graphic_options(self, location_id):
        if location_id not in self._graphic_registry:
            return []

        menu_items = [opt for opt in self._graphic_registry[location_id] if opt.condition is not None and opt.condition()]
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
