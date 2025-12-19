def get_available_translations():
    priority = {'russian': 0, 'english': 1}
    tl_path = os.path.join(renpy.config.gamedir, "tl")
    available_translations = []
    if os.path.isdir(tl_path):
        for folder_name in os.listdir(tl_path):
            if folder_name != "None" and not folder_name.startswith('.'): # Exclude "None" folder and any hidden files
                available_translations.append(folder_name)
    return sorted(available_translations, key=lambda x: priority.get(x, 2))


def lang_to_native(lang):
    if lang == 'czech':
        return 'Čeština'
    if lang == 'deutsch':
        return 'Deutsch'
    if lang == 'english':
        return 'English'
    if lang == 'french':
        return 'Français'
    if lang == 'korean':
        return '한국어'
    if lang == 'polski':
        return 'Polski'
    if lang == 'russian':
        return 'Русский'
    return lang.capitalize()