import renpy
class MenuOption:
    def __init__(self, title, label_id, condition, priority=0):
        self.title = title
        self.label_id = label_id
        self.condition = condition
        self.priority = priority

class MenuBuilder:
    def __init__(self, location_id):
        self._location_id = location_id
        self._options = []
        self._current_option = None

    def option(self, title):
        self._complete()
        """Begin defining a new menu option"""
        self._current_option = {
            'title': title,
            'label_id': None,
            'condition': None,
            'priority': 0
        }
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
        if not self._location_id:
            raise Exception("Menu location_id not specified")

        self._complete()
        for option in self._options:
            manager.add_option(self._location_id, option)

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
        self._registry = {}

    def add_option(self, location_id, option):
        if location_id not in self._registry:
            self._registry[location_id] = []
        self._registry[location_id].append(option)
        self._registry[location_id].sort(key=lambda x: x.priority, reverse=True)  # set highest first

    def get_available_options(self, location_id):
        if location_id not in self._registry:
            return []

        menu_items = [opt for opt in self._registry[location_id] if opt.condition is not None and opt.condition()]
        if len(menu_items) == 0:
            builder = 'register keys ['
            for a in self._registry.keys():
                builder += f'"{a}", '
            builder += ']?'

            if location_id in self._registry:
                builder = f'Why menu items for location "{location_id}" were not found in {builder}'
            else:
                builder = f'Why location "{location_id}" was not found in {builder}'
            raise Exception(builder)

        return menu_items
