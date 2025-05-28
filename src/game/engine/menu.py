class MenuOption:
    def __init__(self, title, label_id, condition, priority=0):
        self.title = title
        self.label_id = label_id
        self.condition = condition
        self.priority = priority

class MenuBuilder:
    def __init__(self, menu_name):
        self._menu_name = menu_name
        self._options = []
        self._current_option = None

    def option(self, title):
        self._complete()
        """Begin defining a new menu option"""
        self._current_option = {
            'title': title,
            'label_id': None,
            'location_id': None,
            'condition': None,
            'priority': 0
        }
        return self

    def in_location(self, location_id):
        self._current_option['location_id'] = location_id
        return self

    def jump(self, label_id):
        """Set the jump target for the current option"""
        self._current_option['label_id'] = label_id
        return self

    def when(self, condition):
        """Set the condition for the current option"""
        self._current_option['condition'] = condition
        return self

    def priority(self, value):
        """Set the priority for the current option"""
        self._current_option['priority'] = value
        return self

    def done(self, manager):
        """Register all built options with a MenuManager"""
        if not self._menu_name:
            raise Exception("Menu name not specified")

        self._complete()
        for option in self._options:
            manager.add_option(self._menu_name, option)

    def _complete(self):
        if self._current_option is None:
            return
        """Complete and add the current option to the menu"""
        if not self._current_option['title'] or not self._current_option['label_id']:
            raise Exception("Incomplete menu option")
        self._options.append(MenuOption(
            title=self._current_option['title'],
            label_id=self._current_option['label_id'],
            condition=self._current_option['condition'],
            priority=self._current_option['priority']
        ))

class MenuManager:
    def __init__(self):
        self.menu_options = {}

    def add_option(self, menu_name, option):
        if menu_name not in self.menu_options:
            self.menu_options[menu_name] = []
        self.menu_options[menu_name].append(option)
        self.menu_options[menu_name].sort(key=lambda x: x.priority, reverse=True) # set highest first

    def get_available_options(self, menu_name):
        if menu_name not in self.menu_options:
            return []
        return [opt for opt in self.menu_options[menu_name] if opt.condition is not None and opt.condition()]
