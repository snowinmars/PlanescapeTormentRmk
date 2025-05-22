// node -v | 22.+
// node --experimental-strip-types index.ts

import {parseDialogue} from './parseDialogue';
import {serializeStates} from './serializeStates';
import {promises as fs} from 'fs';

const goFile = 'DMORTE1.D';

const go = async (fromFile: string, toFile: string): Promise<void> => {
    const raw: string = await fs.readFile(fromFile, 'utf8');
    const dialogue = parseDialogue(raw);
    const builder = serializeStates(dialogue);
    await fs.writeFile(toFile, builder, 'utf8');
}

go(`..\\d_raw\\${goFile}`, `..\\d_parsed\\${goFile}`);