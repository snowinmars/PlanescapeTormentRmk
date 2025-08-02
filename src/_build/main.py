import os
from pathlib import Path

from entities import entitiesIds
from file.readFile import readFile
from file.writeFile import writeFile
from cleanRaw import cleanRaw
from parseClean import parseClean
from renpy.dialogueProcessor import DialogueProcessor
from renpy.generateSettings import generateSettings
from c.matchFunctions import matchFunctions
from c.matchLabels import matchLabels
from c.searchSpeaker import searchSpeaker


cwd = os.getcwd()

folderWithInfinityEngineDialogues = os.path.normpath(os.path.join(cwd, '../d_raw'))
folderWithCleanedInfinityEngineDialogues = os.path.normpath(os.path.join(cwd, '../d_clean'))
folderWithRenpyDialogues = os.path.normpath(os.path.join(cwd, '../d_renpy'))
folderWithGame = os.path.normpath(os.path.join(cwd, '../game'))
folderWithPythonSettings = os.path.join(folderWithGame, 'setting')


def main():
    for entityId in entitiesIds:
        area = entityId.lower()

        raw = readFile(os.path.join(folderWithInfinityEngineDialogues, f'{entityId}.D'))
        clean = cleanRaw(raw)
        writeFile(os.path.join(folderWithCleanedInfinityEngineDialogues, f'{entityId}.Dclean'), clean)
        states = parseClean(clean)

        processor = DialogueProcessor()
        rpy, logic = processor.serialize_states_plain(
            states=states,
            area=area,
            state_prefix="_s"
        )
        writeFile(os.path.join(folderWithRenpyDialogues, f'{entityId}.rpy'), rpy)
        writeFile(os.path.join(folderWithRenpyDialogues, f'{entityId}_logic.py'), logic)

        pythonSettings = generateSettings(processor.known_settings)
        writeFile(os.path.join(folderWithPythonSettings, 'generated.py'), pythonSettings)

    rpy_files, logic_files = find_files(folderWithGame)
    print(f'Found\n -  {len(rpy_files)} rpys\n -  {len(logic_files)} logics')

    searchSpeaker(rpy_files)
    matchLabels(rpy_files)
    matchFunctions(rpy_files, logic_files)


def find_files(root_dir):
    root_path = Path(root_dir)
    rpy_files = list(root_path.rglob('*.rpy'))
    logic_files = list(root_path.rglob('*_logic.py'))
    return rpy_files, logic_files


if __name__ == '__main__':
    main()
