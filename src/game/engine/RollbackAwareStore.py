class RollbackAwareStore():
    def __init__(self):
        self._rollback_version = 0


    def __setattr__(self, name, value):
        if name != '_rollback_version':
            self.bump_version()
        super(RollbackAware, self).__setattr__(name, value)


    def __eq__(self, other):
        return type(self) is type(other) and \
               self._rollback_version == other._rollback_version


    def bump_version(self): # Try not to use this method: use it only if a deep mutation happend
        self._rollback_version += 1
