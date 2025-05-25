// node -v | 22.+
// node --experimental-strip-types index.ts

import { clean } from './clean.ts';
import {parseDialogue} from './parseDialogue.ts';
import {serializeStates} from './serializeStates.ts';
import {promises as fs} from 'fs';

const goFiles = [
    'DMORTE1.D',
    'DZM782.D',
    'DMORTE2.D',
    'DDEATHON.D',
    'DDHALL.D',
    'DMORTE.D',
    'DZM79.D',
    'DZM199.D',
    'DZM257.D',
    'DZM310.D',
    'DZM396.D',
    'DZM463.D',
    'DZM475.D',
    'DZM506.D',
    'DZM569.D',
    'DZM613.D',
    'DZM732.D',
    'DZM782.D',
    'DZM825.D',
    'DZM965.D',
    'DZM985.D',
    'DZM1041.D',
    'DZM1094.D',
    'DZM1146.D',
    'DZM1201.D',
    'DZM1445.D',
    'DZM1508.D',
    'DZM1664.D',
];

const go = async (fromFile: string, cleanFile: string, toFile: string, statePrefix: string): Promise<void> => {
    const raw: string = await fs.readFile(fromFile, 'utf8');
    let cleaned = clean(raw);
    await fs.writeFile(cleanFile, cleaned, 'utf8');
    cleaned = await fs.readFile(cleanFile, 'utf8');
    const dialogue = parseDialogue(cleaned);
    const builder = serializeStates(dialogue, statePrefix);
    await fs.writeFile(toFile, builder, 'utf8');
}

Promise.all(goFiles.map(x => go(`..\\d_raw\\${x}`, `..\\d_clean\\${x}`, `..\\d_parsed\\${x}`, `${x}_s`)));