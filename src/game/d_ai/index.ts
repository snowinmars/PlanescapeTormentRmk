// node -v | 22.+
// node --experimental-strip-types index.ts

import { clean } from './clean.ts';
import { parseDialogue } from './parseDialogue.ts';
import { serializeStates } from './serializeStates.ts';
import { serializeStatesPlain } from "./serializeStatesPlain.ts";
import { setupSettings } from "./setupSettings.ts";
import { promises as fs, existsSync, unlinkSync, closeSync, openSync } from 'fs';
import * as path from 'path'
import {getKnownSettingsName} from "./wellKnownFunctions.ts";

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

type GoProps = Readonly<{
    fromFile: string;
    cleanFile: string;
    toFile: string;
    toPlainFile: string;
    settingsFile: string;
    statePrefix: string;
}>

const go = async ({fromFile, cleanFile, toFile, toPlainFile, settingsFile, statePrefix}: GoProps): Promise<void> => {
    const raw: string = await fs.readFile(fromFile, 'utf8');
    let cleaned = clean(raw);
    await fs.writeFile(cleanFile, cleaned, 'utf8');
    cleaned = await fs.readFile(cleanFile, 'utf8');
    const dialogue = parseDialogue(cleaned);
    const builder = serializeStates(dialogue, statePrefix);
    await fs.writeFile(toFile, builder, 'utf8');
    const plainBuilder = serializeStatesPlain(dialogue, statePrefix);
    await fs.writeFile(toPlainFile, plainBuilder, 'utf8');
}

const settings = path.join(process.cwd(), '../setting/generated.py')
if (existsSync(settings)) unlinkSync(settings)
closeSync(openSync(settings, 'w'));
const readySettings = setupSettings(getKnownSettingsName());
fs.writeFile(settings, readySettings, 'utf8').catch(e => console.error(e));

Promise.all(goFiles.map(x => `${x}.D`).map(x => {
    const raw = path.join(process.cwd(), '../d_raw')
    const clean = path.join(process.cwd(), '../d_clean')
    const parsed = path.join(process.cwd(), '../d_parsed')
    const parsedPlain = path.join(process.cwd(), '../d_parsed_plain')
    return go({
        fromFile: path.join(raw, x),
        cleanFile: path.join(clean, x),
        toFile: path.join(parsed, x),
        toPlainFile: path.join(parsedPlain, x),
        settingsFile: settings,
        statePrefix: `${x}_s`
    });
})).catch(e => console.error(e));
