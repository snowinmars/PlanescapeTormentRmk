import { wellKnownFunctions } from "./wellKnownFunctions.ts";

export const trimTrahs = (x: string) => x.replaceAll('~', '').replaceAll('«', '').replaceAll('»', '').replaceAll('...', '…').trim();

const pasteOnceAligment = (body: string): string => {
    // DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1) ~
    const regex = /IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)/g
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const id = match[1].replace('GLOBAL', '').toLowerCase();
        const prop = match[2].replace('GLOBAL', '').toLowerCase();
        const amount = parseInt(match[3]);
        let result = '';
        switch (prop) {
            case 'good':
            case 'evil':
                if (amount === 1) result = `gsm.inc_once_good('${id}')`
                else if (amount === -1) result = `gsm.dec_once_good('${id}')`
                else if (amount > 0) result = `gsm.inc_once_good('${id}', ${amount})`
                else if (amount < 0) result = `gsm.dec_once_good('${id}', ${-amount})`
                else `raise Exception("Why do you trying to change setting by zero delta?")`
                break;
            case 'law':
            case 'chaotic':
                if (amount === 1) result = `gsm.inc_once_law('${id}')`
                else if (amount === -1) result = `gsm.dec_once_law('${id}')`
                else if (amount > 0) result = `gsm.inc_once_law('${id}', ${amount})`
                else if (amount < 0) result = `gsm.dec_once_law('${id}', ${-amount})`
                else `raise Exception("Why do you trying to change setting by zero delta?")`
                break;
            case 'know_dustmen':
                result = 'gsm.set_meet_dustmen(True)'
                break;
            case 'adahn':
                result = 'gsm.set_death_of_names_adahn(True)\n    gsm.inc_once_adahn(\'Adahn_Death_of_Names_1\')'
                break;
            default:
                result = match[0];
                continue;
        }
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteAligment = (body: string): string => {
    // DO ~IncrementGlobal("Law","GLOBAL",-1) ~
    // IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
    const regex = /IncrementGlobal\("(.*?)",".*?",(.*?)\)/g
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const prop = match[1].toLowerCase();
        const amount = parseInt(match[2]);
        let result = '';
        switch (prop) {
            case 'good':
            case 'evil':
                if (amount === 1) result = `gsm.inc_good()`
                else if (amount === -1) result = `gsm.dec_good()`
                else if (amount > 0) result = `gsm.inc_good(${amount})`
                else if (amount < 0) result = `gsm.dec_good(${-amount})`
                else `raise Exception("Why do you trying to change setting by zero delta?")`
                break;
            case 'law':
            case 'chaotic':
                if (amount === 1) result = `gsm.inc_law()`
                else if (amount === -1) result = `gsm.dec_law()`
                else if (amount > 0) result = `gsm.inc_law(${amount})`
                else if (amount < 0) result = `gsm.dec_law(${-amount})`
                else `raise Exception("Why do you trying to change setting by zero delta?")`
                break;
            case 'know_dustmen':
                result = 'gsm.set_meet_dustmen(True)'
                break;
            case 'adahn':
                result = 'gsm.set_death_of_names_adahn(True)\n    gsm.inc_once_adahn(\'Adahn_Death_of_Names_1\')'
                break;
            default:
                result = match[0];
                continue;
        }
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteCheckStat = (body: string): string => {
    const regex = /CheckStat(GT|LT)\((.*?),(\d+),(.*?)\)/g
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const type = match[1].toLowerCase();
        const char = match[2].toLowerCase();
        const amount = parseInt(match[3]);
        const prop = match[4].toLowerCase();
        const result = `return gsm.check_char_prop_${type}('${char}',${amount},'${prop}')`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteJournals = (body: string): string => {
    const regex = /JOURNAL #(\d+) \/\*(.*)\*\//g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const journalId = match[1];
        const journalBody = match[2];
        const result = `gsm.update_journal('${journalId}')    # '${journalId}': '${journalBody}'`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteSounds = (body: string): string => {
    const regex = /PlaySoundNotRanged\("(.*)"\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const soundId = match[1];
        const result = `# ?.play_sound('${soundId}')`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteForceAttack = (body: string): string => {
    const regex = /ForceAttack\((.*),"(.*)"\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const who = match[1];
        const whom = match[2];
        const result = `# ?.attack('${who}').by('${whom}')`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteTakeGold = (body: string): string => {
    const regex = /TakePartyGold\((.*)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const amount = parseInt(match[1]);
        const result = amount > 0 ? `gsm.inc_gold(${amount})` : `gsm.dec_gold(${-amount})`;
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteDestroyGold = (body: string): string => {
    const regex = /DestroyPartyGold\((.*)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const amount = parseInt(match[1]);
        const result = `gsm.dec_gold(${amount})`;
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pastePartyExp = (body: string): string => {
    const regex = /AddexperienceParty\((.*)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const amount = parseInt(match[1]);
        const result = amount > 0 ? `gsm.inc_exp(${amount})` : `gsm.dec_exp(${-amount})`;
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteNpcExp = (body: string): string => {
    // GiveExperience(Protagonist,12000)
    const regex = /GiveExperience\((.*),(.*)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const who = match[1];
        const amount = parseInt(match[2]);
        const result = amount > 0 ? `gsm.inc_exp('${who}', ${amount})` : `gsm.dec_exp(${who}, ${-amount})`;
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteCutScene = (body: string): string => {
    // StartCutSceneEx("1001Cut1",FALSE)
    const regex = /StartCutSceneEx\("(.*)".*/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const id = match[1];
        const result = `# ?.startCutScene('${id}')`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pastePermanentStatChange = (body: string): string => {
    // PermanentStatChange("Morte",STR,RAISE,4)
    const regex = /PermanentStatChange\("(.*)"(.*),(.*),(\d+)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const who = match[1];
        const prop = match[2];
        const action = match[3];
        const amount = parseInt(match[4]);
        const result = `# ?.PermanentStatChange(${who}, ${prop}, ${action}, ${amount})`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteVisitedLocation = (body: string): string => {
    // Global("AR0500_Visited","GLOBAL",1)
    const regex = /(!)?Global\("(.*?)_Visited",.*?,(\d)\)/g;
    const matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const not = match[1] === '!';
        const location_internal_id = match[2];
        const isVisited = not !== (match[3] === '1');
        const result = `return${isVisited ? ' ' : ' not '}gsm.is_internal_location_visited('${location_internal_id}')`;
        body = body.replaceAll(match[0], result);
    }

    return body;
}

export const pasteWellKnownFunctions = (body: string): string => {
    for (const r of wellKnownFunctions) {
        body = body.replaceAll(r[0], r[1]);
    }

    [
        pasteJournals,
        pasteCheckStat,
        pasteOnceAligment,
        pasteAligment,
        pasteSounds,
        pasteForceAttack,
        pasteTakeGold,
        pasteDestroyGold,
        pastePartyExp,
        pasteNpcExp,
        pastePermanentStatChange,
        pasteCutScene,
        pasteVisitedLocation,
    ].map(f => body = f(body))

    return body;
}
