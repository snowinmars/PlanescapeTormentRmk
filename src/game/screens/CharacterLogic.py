class CharacterLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def get_character(self):
        return self.state_manager.characters_manager.get_character('protagonist_character_name')