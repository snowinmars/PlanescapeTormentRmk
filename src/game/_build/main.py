import os
from entities import entitiesIds
from file.readFile import readFile
from file.writeFile import writeFile
from cleanRaw import cleanRaw
from parseClean import parseClean
from renpy.dialogueProcessor import DialogueProcessor


cwd = os.getcwd()

folderWithInfinityEngineDialogues = os.path.normpath(os.path.join(cwd, '../d_raw'))
folderWithCleanedInfinityEngineDialogues = os.path.normpath(os.path.join(cwd, '../d_clean'))
folderWithRenpyDialogues = os.path.normpath(os.path.join(cwd, '../d_renpy'))


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


if __name__ == '__main__':
    main()
