import json


class InventoryItem:
    def __init__(self,
        settings_id,
        orig_id,
        name,
        description, # Lore description
        grid_image,
        used_by=None, # 'Used by Morte only'
        properties=None, # '1-4 damage\n+3 str'
        detail_image=None,
        jump_on_use_to=None,
        owned_count=0):
        self.settings_id = settings_id
        self.orig_id = orig_id
        self.name = name
        self.description = description
        self.used_by = used_by
        self.properties = properties
        self.grid_image = grid_image
        self.detail_image = detail_image or grid_image
        self.jump_on_use_to = jump_on_use_to
        self.owned_count = owned_count


    def __getstate__(self):
        return {
            'settings_id': self.settings_id,
            'orig_id': self.orig_id,
            'name': self.name,
            'description': self.description,
            'used_by': self.used_by,
            'properties': self.properties,
            'grid_image': self.grid_image,
            'detail_image': self.detail_image,
            'jump_on_use_to': self.jump_on_use_to,
            'owned_count': self.owned_count
        }


    def __setstate__(self, state):
        self.settings_id = state['settings_id']
        self.orig_id = state['orig_id']
        self.name = state['name']
        self.description = state['description']
        self.used_by = state['used_by']
        self.properties = state['properties']
        self.grid_image = state['grid_image']
        self.detail_image = state['detail_image']
        self.jump_on_use_to = state['jump_on_use_to']
        self.owned_count = state['owned_count']


    def toJson(self, indent=None):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        obj.__setstate__(data)
        return obj
