class LabelFlowBuilder:
    def __init__(self):
        self.current_label = None
        self.label_data = {}

    def start_with(self, label_name):
        self.current_label = label_name
        self.label_data[self.current_label] = {
            'dialog_id': None,
            'on_enter': None,
            'on_leave': None,
            'end_jump': None
        }
        return self

    def say(self, dialog_id):
        if self.current_label:
            self.label_data[self.current_label]['dialog_id'] = dialog_id
        return self

    def on_enter(self, enter_action):
        if self.current_label:
            self.label_data[self.current_label]['on_enter'] = enter_action
        return self

    def on_leave(self, leave_action):
        if self.current_label:
            self.label_data[self.current_label]['on_leave'] = leave_action
        return self

    def end_with(self, jump_target):
        if self.current_label:
            self.label_data[self.current_label]['end_jump'] = jump_target
        return self


class LabelFlowManager:
    def __init__(self):
        self.registry = {}

    def register(self, label_builder):
        for label_name, data in label_builder.label_data.items():
            self.registry[label_name] = data['dialog_id']
