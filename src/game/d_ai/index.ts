// node -v | 22.+
// node --experimental-strip-types index.ts

import { clean } from './clean.ts';
import { parseDialogue } from './parseDialogue.ts';
import { serializeStates } from './serializeStates.ts';
import { promises as fs } from 'fs';
import * as path from 'path'

const goFilesDz = [
    'DZM1041',
    'DZM1094',
    'DZM1146',
    'DZM1201',
    'DZM1445',
    'DZM1508',
    'DZM1664',
    'DZM199',
    'DZM257',
    'DZM310',
    'DZM396',
    'DZM463',
    'DZM475',
    'DZM506',
    'DZM569',
    'DZM613',
    'DZM732',
    'DZM782',
    'DZM782',
    'DZM79',
    'DZM825',
    'DZM965',
    'DZM985',
    'DZF114',
    'DZF444',
    'DZF594',
    'DZF626',
    'DZF679',
    'DZF832',
    'DZF891',
    'DZF916',
    'DZF1072',
    'DZF1096',
    'DZF1148',
]

const goFiles = [
    'DDEATHON',
    'DDHALL',
    'DMORTE',
    'DMORTE1',
    'DMORTE2',
    'DEIVENE',
    'DVAXIS',
    'COPEARC',
    'DN1201',
    ...goFilesDz,
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

console.log(process.cwd())
Promise.all(goFiles.map(x => `${x}.D`).map(x => {
    const raw = path.join(process.cwd(), '../d_raw')
    const clean = path.join(process.cwd(), '../d_clean')
    const parsed = path.join(process.cwd(), '../d_parsed')
    return go(path.join(raw, x), path.join(clean, x), path.join(parsed, x), `${x}_s`);
}));
