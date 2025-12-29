class NavigationDirective:
    def __init__(self, target_label, before_jump=None):
        self.target_label = target_label
        self.before_jump = before_jump

    def execute(self):
        if self.before_jump:
            self.before_jump()
        return self.target_label
