import { cwd } from 'process';
import type { Answer, Path, State } from './types';

const trimTrahs = (x: string) => x.replaceAll('~', '').replaceAll('«', '').replaceAll('»', '').replaceAll('...', '…').trim();

const wellKnownFunctions: string[][] = [
    ['Global("Speak_with_Dead","GLOBAL",1)', 'return gsm.get_can_speak_with_dead()'],
    ['Global("Speak_with_Dead","GLOBAL",0)', 'return not gsm.get_can_speak_with_dead()'],
    ['Global("Vaxis_Exposed","GLOBAL",1)', 'return gsm.get_vaxis_exposed()'],
    ['Global("Vaxis_Exposed","GLOBAL",0)', 'return not gsm.get_vaxis_exposed()'],
    ['Global("Mortuary_Walkthrough","GLOBAL",0)', 'return not gsm.get_mortuary_walkthrough()'],
    ['GlobalGT("Mortuary_Walkthrough","GLOBAL",0)', 'return not gsm.get_mortuary_walkthrough()'],
    ['Global("Mortuary_Walkthrough","GLOBAL",1)', 'return gsm.get_mortuary_walkthrough()'],
    ['Global("Zombie_Chaotic","GLOBAL",0)', 'return not gsm.once_tracked(\'zombie_chaotic\')'],
    ['Global("Zombie_Chaotic","GLOBAL",1)', 'return gsm.once_tracked(\'zombie_chaotic\')'],
    ['DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~', 'gsm.dec_once_law(\'zombie_chaotic\')'],
    ['Global("Pharod","GLOBAL",0)', 'return not gsm.get_meet_pharod()'],
    ['Global("Pharod","GLOBAL",1)', 'return gsm.get_meet_pharod()'],
    ['GlobalGT("Pharod","GLOBAL",0)', 'return gsm.get_meet_pharod()'],
    ['NearbyDialog("DMorte1")', 'return gsm.get_in_party_morte()'],
    ['!NearbyDialog("DMorte1")', 'return not gsm.get_in_party_morte()'],
    ['NearbyDialog("DMorte")', 'return gsm.get_in_party_morte()'],
    ['!NearbyDialog("DMorte")', 'return not gsm.get_in_party_morte()'],
    ['NearbyDialog("Dmorte")', 'return gsm.get_in_party_morte()'],
    ['!NearbyDialog("Dmorte")', 'return not gsm.get_in_party_morte()'],
    ['GlobalGT("Dhall","GLOBAL",0)', 'return gsm.get_meet_dhall()'],
    ['!Dead("Dhall")', 'return not gsm.get_dead_dhall()'],
    ['Dead("Dhall")', 'return gsm.get_dead_dhall()'],
    ['Global("Deionarra","GLOBAL",0)', 'return not gsm.get_meet_deionarra()'],
    ['Global("Deionarra","GLOBAL",1)', 'return gsm.get_meet_deionarra()'],
    ['GlobalGT("Deionarra","GLOBAL",0)', 'return gsm.get_meet_deionarra()'],
    ['Global("Death_of_Names_Dhall","GLOBAL",1)', 'return gsm.get_pass_death_of_names_dhall()'],
    ['Global("Death_of_Names_Dhall","GLOBAL",0)', 'return not gsm.get_pass_death_of_names_dhall()'],
    ['Global("Death_of_Names_Quentin","GLOBAL",1)', 'return gsm.get_pass_death_of_names_quentin()'],
    ['DO ~SetGlobal("Death_of_Names","GLOBAL",1) ~', 'gsm.set_meet_death_of_names(True)'],
    ['GlobalGT("Xachariah_Name","GLOBAL",0)', 'return gsm.get_know_xachariah_name()'],
    ['GlobalGT("Quentin","GLOBAL",0)', 'return gsm.get_quentin()'],
    ['Dead("Quentin")', 'return gsm.get_dead_quentin()'],
    ['Global("Death_of_Names_Quentin","GLOBAL",0)', 'return not gsm.get_death_of_names_quentin()'],
    ['Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)', 'return gsm.get_morte_mortuary_walkthrough_1()'],
    ['SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)', 'set_morte_mortuary_walkthrough_1()'],
    ['Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)', 'return not gsm.get_morte_mortuary_walkthrough_1()'],
    ['Global("Morte_Mortuary_Walkthrough_2","GLOBAL",1)', 'return gsm.get_morte_mortuary_walkthrough_2()'],
    ['SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)', 'set_morte_mortuary_walkthrough_2()'],
    ['Global("Morte_Mortuary_Walkthrough_2","GLOBAL",0)', 'return not gsm.get_morte_mortuary_walkthrough_2()'],
    ['AddexperienceParty(250)', ''],
    ['Global("Lawful_Vaxis_1","GLOBAL",0)', 'return not gsm.get_vaxis_lawful()'],
    ['Global("Lawful_Vaxis_1","GLOBAL",1)', 'return gsm.get_vaxis_lawful()'],
    ['GlobalGT("Lawful_Vaxis_1","GLOBAL",0)', 'return gsm.get_vaxis_lawful()'],
    ['SetGlobal("Betray_Vaxis","GLOBAL",2)', 'set_vaxis_betray(2)'],
    ['Global("Vaxis","GLOBAL",1)', 'return gsm.get_meet_vaxis()'],
    ['Dead("Vaxis")', 'return gsm.get_dead_vaxis()'],
    ['!Dead("Vaxis")', 'return not gsm.get_dead_vaxis()'],
    ['Global("Vaxis_Leave","GLOBAL",0)', 'return not gsm.get_vaxis_left()'],
    ['Global("Betray_Vaxis","GLOBAL",0)', 'return not gsm.get_vaxis_betrayed()'],
    ['Global("Dhall","GLOBAL",0)', 'return not gsm.get_meet_dhall()'],
    ['Global("Dhall","GLOBAL",1)', 'return gsm.get_meet_dhall()'],
    ['GlobalGT("Dhall","GLOBAL",0)', 'return gsm.get_meet_dhall()'],
    ['Global("Mortuary_Alert","GLOBAL",0)', 'return not gsm.get_alarmed()'],
    ['Global("Mortuary_Alert","GLOBAL",1)', 'return gsm.get_alarmed()'],
    ['GlobalGT("Mortuary_Alert","GLOBAL",0)', 'return gsm.get_alarmed()'],
    ['Global("Escape_Mortuary","GLOBAL",0)', 'return not gsm.get_escape_mortuary()'],
    ['Global("AR0200_Visited","GLOBAL",0)', 'return not gsm.get_visited_ar0200()'],
    ['SetGlobal("Morte","GLOBAL",1)', 'gsm.set_in_party_morte(True)'],
    ['SetGlobal("Morte","GLOBAL",0)', 'gsm.set_in_party_morte(False)'],
    ['Global("Know_Copper_Earring_Secret","GLOBAL",0)', 'return not gsm.get_know_copper_earring_secret()'],
    ['SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)', 'know_copper_earring_secret()'],
    ['PartyHasItem("CopEarC")', 'return gsm.get_has_copper_earring()'],
    ['!PartyHasItem("CopEarC")', 'return not gsm.get_has_copper_earring()'],
    ['SetGlobal("Oinosian","GLOBAL",1)', 'gsm.set_meet_oinosian(True)'],
    ['Global("Oinosian","GLOBAL",0)', 'return not gsm.get_meet_oinosian()'],
    ['Global("Oinosian","GLOBAL",1)', 'return gsm.get_meet_oinosian()'],
    ['GlobalGT("Oinosian","GLOBAL",0)', 'return gsm.get_meet_oinosian()'],
    ['SetGlobal("Know_Xixi","GLOBAL",1)', 'gsm.get_meet_xixi()'],
    ['SetGlobal("Bei","GLOBAL",1)', 'gsm.set_meet_bei(True)'],
    ['SetGlobal("Asonje","GLOBAL",1)', 'set_asonje_state(1)'],
    ['SetGlobal("Asonje","GLOBAL",2)', 'set_asonje_state(2)'],
    ['SetGlobal("Asonje","GLOBAL",3)', 'set_asonje_state(3)'],
    ['Global("Asonje","GLOBAL",1)', 'return gsm.get_asonje_state() == 1'],
    ['Global("Asonje","GLOBAL",2)', 'return gsm.get_asonje_state() == 2'],
    ['Global("Asonje","GLOBAL",3)', 'return gsm.get_asonje_state() == 3'],
    ['!Global("Asonje","GLOBAL",1)', 'return gsm.get_asonje_state() != 1'],
    ['!Global("Asonje","GLOBAL",2)', 'return gsm.get_asonje_state() != 2'],
    ['!Global("Asonje","GLOBAL",3)', 'return gsm.get_asonje_state() != 3'],
    ['SetGlobal("Crispy","GLOBAL",1)', 'gsm.set_meet_crispy(True)'],
    ['Global("Bei","GLOBAL",0)', 'return not gsm.get_meet_bei()'],
    ['Global("Bei","GLOBAL",1)', 'return gsm.get_meet_bei()'],
    ['PartyHasItem("Scalpel")', 'return gsm.get_has_scalpel()'],
    ['!PartyHasItem("Scalpel")', 'return not gsm.get_has_scalpel()'],
].sort((lhs, rhs) => rhs[0].length - lhs[0].length) // from longest to shortest

const pasteAligment = (body: string): string => {
    // DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1) ~
    const regex = /IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)/g
    var matches = body.matchAll(regex);
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

const pasteCheckStat = (body: string): string => {
    const regex = /CheckStat(GT|LT)\((.*?),(\d+),(.*?)\)/g
    var matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const type = match[1].toLowerCase();
        const char = match[2].toLowerCase();
        const amount = parseInt(match[3]);
        const prop = match[4].toLowerCase();
        const result = `return _check_char_prop_${type}('${char}',${amount},'${prop}')`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteJournals = (body: string): string => {
    const regex = /JOURNAL #(\d+) \/\*(.*)\*\//g;
    var matches = body.matchAll(regex);
    if (!matches) return body;

    for (const match of matches) {
        const journalId = match[1];
        const journalBody = match[2];
        const result = `gsm.update_journal('${journalId}')    # '${journalId}': '${journalBody}'`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteWellKnownFunctions = (body: string): string => {
    for (const r of wellKnownFunctions) {
        body = body.replaceAll(r[0], r[1]);
    }

    body = pasteJournals(body)
    body = pasteCheckStat(body)
    body = pasteAligment(body)

    return body;
}

export const serializeStates = (states: State[], statePrefix: string): string => {
    let result = 'EXIT = -1\n\n';

    let logicBuilder = '';

    for (const state of states) {
        try {
            let builder = '';

            if (state.free) {
                builder += `######\n# ${state.free}\n######\n`
            }

            const fromPath = `# from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;
            builder += `DialogStateBuilder('${statePrefix}${state.stateId}', 'fromPath') \\\n    .with_npc_lines() \\\n`;
            builder += `        .line(SPEAKER, "${trimTrahs(state.stateBody)}", 's${state.stateId}', 'say${state.sayId}') \\\n`;
            builder += '    .with_responses() \\\n'

            for (const answer of state.answers) {
                let hasAction = false;

                const targetId = answer.targetStateId === -1 ? 'EXIT' : `'${statePrefix}${answer.targetStateId}'`;
                builder += `        .response("${trimTrahs(answer.answerBody)}", ${targetId}, 'r', 'reply${answer.answerId}')`;
                if (answer.condition && answer.condition.length !== 0) {
                    const conditionFunctionName = `_r${answer.answerId}_condition`;
                    logicBuilder += `def ${conditionFunctionName}(gsm):\n    ${answer.condition.trim()}\n`;
                    builder += `.with_condition(lambda: ${conditionFunctionName}(gsm))`;
                }
                if (answer.action && answer.action.length !== 0) {
                    hasAction = true;
                    const actionFunctionName = `_r${answer.answerId}_action`;
                    logicBuilder += `def ${actionFunctionName}(gsm):\n    ${answer.action.trim()}\n`;
                    builder += `.with_action(lambda: ${actionFunctionName}(gsm))`
                }
                if (targetId === 'EXIT') {
                    builder += `.with_action(lambda: _dispose())`
                    if (hasAction) builder += '  ### replace two actions with one'
                }
                builder += ' \\\n'
            }

            builder += '    .done()';
            result += builder + '\n\n';
        } catch (e: unknown) {
            console.error(statePrefix, state);
            throw e;
        }
    }

    return pasteWellKnownFunctions(logicBuilder.trim()) + '\n\n' + result.trim();
}
