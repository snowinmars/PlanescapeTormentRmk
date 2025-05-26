import { cwd } from 'process';
import type { Answer, Path, State } from './types';

const trimTrahs = (x: string) => x.replaceAll('~', '').replaceAll('«', '').replaceAll('»', '').replaceAll('...', '…').trim();

const wellKnownFunctions: string[][] = [
    ['Global("Speak_with_Dead","GLOBAL",1)', 'return current_global_settings()[\'can_speak_with_dead\']'],
    ['Global("Speak_with_Dead","GLOBAL",0)', 'return not current_global_settings()[\'can_speak_with_dead\']'],
    ['Global("Vaxis_Exposed","GLOBAL",1)', 'return current_morgue_settings()[\'vaxis_exposed\']'],
    ['Global("Vaxis_Exposed","GLOBAL",0)', 'return not current_morgue_settings()[\'vaxis_exposed\']'],
    ['Global("Mortuary_Walkthrough","GLOBAL",0)', 'return not current_morgue_settings()[\'mortuary_walkthrough\']'],
    ['GlobalGT("Mortuary_Walkthrough","GLOBAL",0)', 'return not current_morgue_settings()[\'mortuary_walkthrough\']'],
    ['Global("Mortuary_Walkthrough","GLOBAL",1)', 'return current_morgue_settings()[\'mortuary_walkthrough\']'],
    ['Global("Zombie_Chaotic","GLOBAL",0)',  'return not changed_law_once(\'zombie_chaotic\')'],
    ['Global("Zombie_Chaotic","GLOBAL",1)', 'return changed_law_once(\'zombie_chaotic\')'],
    ['DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~', 'change_law_once(-1, \'zombie_chaotic\')'],
    ['Global("Pharod","GLOBAL",0)', 'return not current_global_settings()[\'meet_pharod\']'],
    ['Global("Pharod","GLOBAL",1)', 'return current_global_settings()[\'meet_pharod\']'],
    ['GlobalGT("Pharod","GLOBAL",0)', 'return current_global_settings()[\'meet_pharod\']'],
    ['NearbyDialog("DMorte1")', 'return current_global_settings()[\'in_party_morte\']'],
    ['!NearbyDialog("DMorte1")', 'return not current_global_settings()[\'in_party_morte\']'],
    ['NearbyDialog("DMorte")', 'return current_global_settings()[\'in_party_morte\']'],
    ['!NearbyDialog("DMorte")', 'return not current_global_settings()[\'in_party_morte\']'],
    ['NearbyDialog("Dmorte")', 'return current_global_settings()[\'in_party_morte\']'],
    ['!NearbyDialog("Dmorte")', 'return not current_global_settings()[\'in_party_morte\']'],
    ['GlobalGT("Dhall","GLOBAL",0)', 'return current_global_settings()[\'meet_dhall\']'],
    ['!Dead("Dhall")', 'return not current_global_settings()[\'dead_dhall\']'],
    ['Dead("Dhall")', 'return current_global_settings()[\'dead_dhall\']'],
    ['Global("Deionarra","GLOBAL",0)', 'return not current_global_settings()[\'meet_deionarra\']'],
    ['Global("Deionarra","GLOBAL",1)', 'return current_global_settings()[\'meet_deionarra\']'],
    ['GlobalGT("Deionarra","GLOBAL",0)', 'return current_global_settings()[\'meet_deionarra\']'],
    ['Global("Death_of_Names_Dhall","GLOBAL",1)', 'return current_global_settings()[\'pass_death_of_names_dhall\']'],
    ['Global("Death_of_Names_Dhall","GLOBAL",0)', 'return not current_global_settings()[\'pass_death_of_names_dhall\']'],
    ['Global("Death_of_Names_Quentin","GLOBAL",1)', 'return current_global_settings()[\'pass_death_of_names_quentin\']'],
    ['DO ~SetGlobal("Death_of_Names","GLOBAL",1) ~', 'meet_death_of_names()'],
    ['GlobalGT("Xachariah_Name","GLOBAL",0)', 'return current_global_settings()[\'know_xachariah_name\']'],
    ['GlobalGT("Quentin","GLOBAL",0)', 'return current_global_settings()[\'quentin\']'],
    ['Dead("Quentin")', 'return current_global_settings()[\'dead_quentin\']'],
    ['Global("Death_of_Names_Quentin","GLOBAL",0)', 'return not current_global_settings()[\'death_of_names_quentin\']'],
    ['Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)', 'return current_morgue_settings()[\'morte_mortuary_walkthrough_1\']'],
    ['SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)', 'set_morte_mortuary_walkthrough_1()'],
    ['Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)', 'return not current_morgue_settings()[\'morte_mortuary_walkthrough_1\']'],
    ['Global("Morte_Mortuary_Walkthrough_2","GLOBAL",1)', 'return current_morgue_settings()[\'morte_mortuary_walkthrough_2\']'],
    ['SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)', 'set_morte_mortuary_walkthrough_2()'],
    ['Global("Morte_Mortuary_Walkthrough_2","GLOBAL",0)', 'return not current_morgue_settings()[\'morte_mortuary_walkthrough_2\']'],
    ['AddexperienceParty(250)', ''],
    ['Global("Lawful_Vaxis_1","GLOBAL",0)', 'return not current_morgue_settings()[\'vaxis_lawful\']'],
    ['Global("Lawful_Vaxis_1","GLOBAL",1)', 'return current_morgue_settings()[\'vaxis_lawful\']'],
    ['GlobalGT("Lawful_Vaxis_1","GLOBAL",0)', 'return current_morgue_settings()[\'vaxis_lawful\']'],
    ['SetGlobal("Betray_Vaxis","GLOBAL",2)', 'set_vaxis_betray(2)'],
    ['Global("Vaxis","GLOBAL",1)', 'return current_global_settings()[\'meet_vaxis\']'],
    ['Dead("Vaxis")', 'return current_global_settings()[\'dead_vaxis\']'],
    ['!Dead("Vaxis")', 'return not current_global_settings()[\'dead_vaxis\']'],
    ['Global("Vaxis_Leave","GLOBAL",0)', 'return not current_morgue_settings()[\'vaxis_left\']'],
    ['Global("Betray_Vaxis","GLOBAL",0)', 'return not current_morgue_settings()[\'vaxis_betrayed\']'],
    ['Global("Dhall","GLOBAL",0)', 'return not current_global_settings()[\'meet_dhall\']' ],
    ['Global("Dhall","GLOBAL",1)', 'return current_global_settings()[\'meet_dhall\']' ],
    ['GlobalGT("Dhall","GLOBAL",0)', 'return current_global_settings()[\'meet_dhall\']' ],
    ['Global("Mortuary_Alert","GLOBAL",0)', 'return not current_morgue_settings()[\'alarmed\']'],
    ['Global("Mortuary_Alert","GLOBAL",1)', 'return current_morgue_settings()[\'alarmed\']'],
    ['GlobalGT("Mortuary_Alert","GLOBAL",0)', 'return current_morgue_settings()[\'alarmed\']'],
    ['Global("Escape_Mortuary","GLOBAL",0)', 'return not current_global_settings()[\'escape_mortuary\']'],
    ['Global("AR0200_Visited","GLOBAL",0)', 'return not current_global_settings()[\'visited_ar0200\']'],
    ['SetGlobal("Morte","GLOBAL",1)', 'set_in_party_morte()'],
    ['Global("Know_Copper_Earring_Secret","GLOBAL",0)', 'return not current_morgue_settings()[\'know_copper_earring_secret\']'],
    ['SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)', 'know_copper_earring_secret()'],
    ['PartyHasItem("CopEarC")', 'return current_morgue_settings()[\'has_copper_earring\']'],
    ['!PartyHasItem("CopEarC")', 'return not current_morgue_settings()[\'has_copper_earring\']'],
    ['SetGlobal("Oinosian","GLOBAL",1)', 'meet_oinosian()'],
    ['Global("Oinosian","GLOBAL",0)', 'return not current_global_settings()[\'meet_oinosian\']' ],
    ['Global("Oinosian","GLOBAL",1)', 'return current_global_settings()[\'meet_oinosian\']' ],
    ['GlobalGT("Oinosian","GLOBAL",0)', 'return current_global_settings()[\'meet_oinosian\']' ],
    ['SetGlobal("Know_Xixi","GLOBAL",1)', 'meet_xixi()'],
    ['SetGlobal("Bei","GLOBAL",1)', 'meet_bei()'],
    ['SetGlobal("Asonje","GLOBAL",1)', 'set_asonje_state(1)'],
    ['SetGlobal("Asonje","GLOBAL",2)', 'set_asonje_state(2)'],
    ['SetGlobal("Asonje","GLOBAL",3)', 'set_asonje_state(3)'],
    ['Global("Asonje","GLOBAL",1)', 'return current_global_settings()[\'asonje_state\'] == 1'],
    ['Global("Asonje","GLOBAL",2)', 'return current_global_settings()[\'asonje_state\'] == 2'],
    ['Global("Asonje","GLOBAL",3)', 'return current_global_settings()[\'asonje_state\'] == 3'],
    ['!Global("Asonje","GLOBAL",1)', 'return current_global_settings()[\'asonje_state\'] != 1'],
    ['!Global("Asonje","GLOBAL",2)', 'return current_global_settings()[\'asonje_state\'] != 2'],
    ['!Global("Asonje","GLOBAL",3)', 'return current_global_settings()[\'asonje_state\'] != 3'],
    ['SetGlobal("Crispy","GLOBAL",1)', 'meet_crispy()'],
    ['Global("Bei","GLOBAL",0)', 'return not current_global_settings()[\'meet_bei\']'],
    ['Global("Bei","GLOBAL",1)', 'return current_global_settings()[\'meet_bei\']'],
    ['PartyHasItem("Scalpel")', 'return current_morgue_settings()[\'has_scalpel\']'],
    ['!PartyHasItem("Scalpel")', 'return not current_morgue_settings()[\'has_scalpel\']'],
].sort((lhs, rhs) => rhs[0].length - lhs[0].length) // from longest to shortest

const pasteAligment = (body: string): string => {
    // DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1) ~
    const regex = /IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)/g
    var matches = body.matchAll(regex);
    if (!matches) return body;

    for(const match of matches) {
        const id = match[1].replace('GLOBAL', '').toLowerCase();
        const prop = match[2].replace('GLOBAL', '').toLowerCase();
        const amount = parseInt(match[3]);
        let result = '';
        switch(prop) {
            case 'good':
            case 'evil':
                result = `change_good_once(${amount}, '${id}')`
                break;
            case 'law':
            case 'chaotic':
                result = `change_law_once(${amount}, '${id}')`
                break;
            case 'know_dustmen':
                result = 'meet_dustmen()'
                break;
            case 'adahn':
                result = 'pass_death_of_names_adahn()\n    change_adahn_once(\'Adahn_Death_of_Names_1\')'
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

    for(const match of matches) {
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

    for(const match of matches) {
        const journalId = match[1];
        const journalBody = match[2];
        const result = `update_journal('${journalId}')    # '${journalId}': '${journalBody}'`
        body = body.replaceAll(match[0], result);
    }

    return body;
}

const pasteWellKnownFunctions = (body: string): string => {
    for(const r of wellKnownFunctions) {
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
            builder += `${fromPath}\nDialogStateBuilder('${statePrefix}${state.stateId}') \\\n    .with_npc_lines() \\\n`;
            builder += `        .line(SPEAKER, "${trimTrahs(state.stateBody)}", 's${state.stateId}', 'say${state.sayId}') \\\n`;
            builder += '    .with_responses() \\\n'

            for (const answer of state.answers) {
                let hasAction = false;

                const targetId = answer.targetStateId === -1 ? 'EXIT' : `'${statePrefix}${answer.targetStateId}'`;
                builder += `        .response("${trimTrahs(answer.answerBody)}", ${targetId}, 'r', 'reply${answer.answerId}')`;
                if (answer.condition && answer.condition.length !== 0) {
                    const conditionFunctionName = `_r${answer.answerId}_condition`;
                    logicBuilder += `def ${conditionFunctionName}():\n    ${answer.condition.trim()}\n`;
                    builder += `.with_condition(lambda: ${conditionFunctionName}())`;
                }
                if (answer.action && answer.action.length !== 0) {
                    hasAction = true;
                    const actionFunctionName = `_r${answer.answerId}_action`;
                    logicBuilder += `def ${actionFunctionName}():\n    ${answer.action.trim()}\n`;
                    builder += `.with_action(lambda: ${actionFunctionName}())`
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