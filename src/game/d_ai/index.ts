// node -v | 22.+
// node --experimental-strip-types index.ts

import { clean } from './clean.ts';
import { pythonIsC } from './c.ts';
import { parseDialogue } from './parseDialogue.ts';
import { serializeStatesPlain } from "./serializeStatesPlain.ts";
import { setupSettings } from "./setupSettings.ts";
import { promises as fs, existsSync, unlinkSync, closeSync, openSync } from 'fs';
import * as path from 'path'
import { getKnownSettingsName } from "./wellKnownReplacements.ts";

const goFilesDz = [
    'DS42',
    'DS748',
    'DS863',
    'DS996',
    'DS1221',
    'DDUST',
    'DDUSTFEM',
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

type ParseAndSerializeProps = Readonly<{
    fromFile: string;
    cleanFile: string;
    toFile: string;
    area: string;
    statePrefix: string;
}>

const parseAndSerialize = async ({ fromFile, cleanFile, toFile, area, statePrefix }: ParseAndSerializeProps): Promise<void> => {
    const raw: string = await fs.readFile(fromFile, 'utf8');
    let cleaned = clean(raw);
    await fs.writeFile(cleanFile, cleaned, 'utf8');
    cleaned = await fs.readFile(cleanFile, 'utf8');
    const dialogue = parseDialogue(cleaned);
    const plainBuilder = serializeStatesPlain(dialogue, area, statePrefix);
    await fs.writeFile(toFile, plainBuilder, 'utf8');
}

const settings = path.join(process.cwd(), '../setting/generated.py')
if (existsSync(settings)) unlinkSync(settings)
closeSync(openSync(settings, 'w'));
const readySettings = setupSettings(getKnownSettingsName());
fs.writeFile(settings, readySettings, 'utf8').catch(e => console.error(e));

Promise.all(goFiles.map(x => `${x}.D`).map(x => {
    const raw = path.join(process.cwd(), '../d_raw')
    const clean = path.join(process.cwd(), '../d_clean')
    const parsedPlain = path.join(process.cwd(), '../d_parsed_plain')
    return parseAndSerialize({
        fromFile: path.join(raw, x),
        cleanFile: path.join(clean, x),
        toFile: path.join(parsedPlain, x),
        area: x.replace('.D', '').toLowerCase(),
        statePrefix: '_s'
    });
})).catch(e => console.error(e));

pythonIsC({
    dlgsDir: path.join(process.cwd(), '../dlgs'),
}).then(x => {
    if (x && x.length) {
        x.map(y => console.error(y));
        throw new Error('The game will crash at runtime. Moron.')
    }
}).catch(e => console.error(e));
