init python:
    # in rpy file like in engine menu files
    #   `action Jump(logic.foo())`
    # exetutes `logic.foo()` on each render
    # This wrapper prevents it
    class ExecuteNavigationDirective(Action):
        def __init__(self, directive):
            # directive is expected to have an .execute() method that returns a label string.
            self.directive = directive

        def __call__(self):
            # This is called when the button is clicked.
            target_label = self.directive.execute()
            renpy.show_screen('screen_narrat')
            renpy.jump(target_label)
