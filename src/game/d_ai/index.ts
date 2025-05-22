// node -v | 22.+
// node --experimental-strip-types index.ts

import {parseDialogue} from './parseDialogue.ts';
import {serializeStates} from './serializeStates.ts';
import {promises as fs} from 'fs';

const goFiles = [
    'DMORTE1.D',
    'DMORTE2.D',
];

const go = async (fromFile: string, toFile: string): Promise<void> => {
    const raw: string = await fs.readFile(fromFile, 'utf8');
    const dialogue = parseDialogue(raw);
    const builder = serializeStates(dialogue);
    await fs.writeFile(toFile, builder, 'utf8');
}

// manually copy d_raw/x to d_clean/x
// remove stuff from d_clean/x by hands
// and run the parser

Promise.all(goFiles.map(x => go(`..\\d_clean\\${x}`, `..\\d_parsed\\${x}`)));