import { wellKnownReplacements } from "./wellKnownReplacements.ts";

export const trimTrash = (input: string) =>
    replaceNestedQuotes(input.replaceAll(/[~«»]/g, '').replaceAll('...', '…').trim());

const replaceNestedQuotes = (text: string): string => {
    return text.replace(/(^|\W)'([^']+)'(\W|$)/g, (match, p1, p2, p3) => {
        return `${p1}«${p2}»${p3}`;
    });
}

const padLocationIdLeft = (input: string): string => {
    const padded = input.padStart(4, '0');
    return `AR${padded}`;
};

type StringTransformer = (body: string) => string;

// Alignment transformation utilities
const createAlignmentHandler = (prop: string, once: boolean) => (id: string, amount: number) => {
    // gsm.gcm.modify_property_once('protagonist', 'law', 1, 'GLOBALLawful_Vaxis_2')
    if (once) {
        return `gsm.gcm.modify_property_once('protagonist', '${prop}', ${amount}, '${id}')`;
    } else {
        return `gsm.gcm.modify_property('protagonist', '${prop}', ${amount})`;
    }
};

// Individual transformation functions
const transformOnceAlignment: StringTransformer = (body) => {
    // IncrementGlobalOnceEx("GLOBALSkeleton_Chaotic","GLOBALLaw",-1)
    const regex = /IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)/g;

    return body.replace(regex, (_, globalId, property, amountStr) => {
        const id = globalId.toLowerCase();
        const prop = property.replace('GLOBAL', '').toLowerCase();
        const amount = parseInt(amountStr);

        switch (prop) {
            case 'good':
            case 'evil':
                return createAlignmentHandler('good', true)(id, amount);
            case 'law':
            case 'chaotic':
                return createAlignmentHandler('law', true)(id, amount);
            default:
                return _; // Return original match
        }
    });
};

const transformAlignment: StringTransformer = (body) => {
    const regex = /IncrementGlobal\("(.*?)",".*?",(.*?)\)/g;

    return body.replace(regex, (_, property, amountStr) => {
        const prop = property.toLowerCase();
        const amount = parseInt(amountStr);

        switch (prop) {
            case 'good':
            case 'evil':
                return createAlignmentHandler('good', false)(prop, amount);
            case 'law':
            case 'chaotic':
                return createAlignmentHandler('law', false)(prop, amount);
            default:
                return _; // Return original match
        }
    });
};

const transformCheckStat: StringTransformer = (body) =>
    body.replace(/CheckStat(GT|LT)\((.*?),(\d+),(.*?)\)/g,
        (_, operator, character, amount, property) =>
            `return gsm.check_char_prop_${operator.toLowerCase()}('${character.toLowerCase()}',${amount},'${property.toLowerCase()}')`
    );

const transformJournals: StringTransformer = (body) =>
    body.replace(/JOURNAL #(\d+) \/\*(.*)\*\//g,
        (_, journalId, journalBody) =>
            `gsm.update_journal('${journalId}')    # '${journalId}': '${journalBody}'`
    );

const transformSounds: StringTransformer = (body) =>
    body.replace(/PlaySoundNotRanged\("(.*)"\)/g,
        (_, soundId) => `# ?.play_sound('${soundId}')`
    );

const transformForceAttack: StringTransformer = (body) =>
    body.replace(/ForceAttack\((.*),"(.*)"\)/g,
        (_, attacker, target) => `# ?.attack('${attacker}').by('${target}')`
    );

const transformByRegex = (regex: RegExp, handler: (amount: number) => string): StringTransformer =>
    (body) => body.replace(regex, (_, amountStr) =>
        handler(parseInt(amountStr))
    );

const transformTakeGold = transformByRegex(
    /TakePartyGold\((.*)\)/g,
    amount => amount > 0 ? `gsm.dec_gold(${amount})` : `gsm.inc_gold(${-amount})`
);

const transformDestroyGold = transformByRegex(
    /DestroyPartyGold\((.*)\)/g,
    amount => `gsm.dec_gold(${amount})`
);

const transformPartyExp = transformByRegex(
    /AddexperienceParty\((.*)\)/g,
    amount => amount > 0 ? `gsm.inc_exp_custom('party', ${amount})` : `gsm.dec_exp_custom('party', ${-amount})`
);

const transformPartyGold = transformByRegex(
    /PartyGoldGT\((.*)\)/g,
    amount => `return gsm.get_gold() > ${amount}`
);

const transformGiveGoldForce = transformByRegex(
    /GiveGoldForce\((.*)\)/g,
    amount => `gsm.inc_gold(${amount})`
);

const transformNpcExp: StringTransformer = (body) =>
    body.replace(/GiveExperience\((.*),(.*)\)/g,
        (_, character, amountStr) => {
            const amount = parseInt(amountStr);
            return amount > 0
                ? `gsm.inc_exp_custom('${character}', ${amount})`
                : `gsm.dec_exp_custom('${character}', ${-amount})`;
        }
    );

const transformCutScene: StringTransformer = (body) =>
    body.replace(/StartCutSceneEx\("(.*)".*/g,
        (_, sceneId) => `# ?.startCutScene('${sceneId}')`
    );

const transformPermanentStat: StringTransformer = (body) =>
    body.replace(/PermanentStatChange\("?(.*)"?,(.*),(.*),(\d+)\)/g,
        (_, character, property, action, amount) =>
            `gsm.change_stat_permanent('${character}', '${property}', '${action}', ${amount})`
    );

const transformFullHeal: StringTransformer = (body) =>
    body.replace(/FullHeal\((.*?)\)/g,
        (_, who) =>
            `gsm.full_heal('${who}')`
    );

const transformVisitedLocation: StringTransformer = (body) =>
    body.replace(/(!)?Global\("(.*?)_Visited",.*?,(\d)\)/g,
        (_, notOperator, locationId, value) => {
            const isVisited = (notOperator === '!') !== (value === '1');
            return `return${isVisited ? ' ' : ' not '}gsm.is_internal_location_visited('${locationId}')`;
        }
    );

const transformVisitedInternalLocation: StringTransformer = (body) =>
    // Global("Current_Area","GLOBAL",202)
    body.replace(/SetGlobal\("Current_Area","(.*)",(\d*)\)/g,
        (_, env, value) => {
            return `\n        glm.set_location('${padLocationIdLeft(value)}')`
        }
    ).replace(/(!?)Global\("Current_Area","(.*)",(\d*)\)/g,
        (_, notOperator, env, value) => {
            const isVisited = !notOperator;
            return `return${isVisited ? ' ' : ' not '}glm.is_visited_internal_location('${padLocationIdLeft(value)}')`
        }
    );

// Transformation pipeline
const transformers: StringTransformer[] = [
    transformJournals,
    transformCheckStat,
    transformOnceAlignment,
    transformAlignment,
    transformSounds,
    transformForceAttack,
    transformTakeGold,
    transformDestroyGold,
    transformGiveGoldForce,
    transformPartyExp,
    transformPartyGold,
    transformNpcExp,
    transformPermanentStat,
    transformFullHeal,
    transformCutScene,
    transformVisitedLocation,
    transformVisitedInternalLocation,
];

export const transformScript = (body: string, targetNpc: string): string => {
    let transformedBody = body;
    transformedBody = transformedBody.replaceAll('Kill(Myself)', `gsm.set_dead_${targetNpc}(True)`);

    // Apply well-known replacements
    for (const [pattern, replacement] of wellKnownReplacements) {
        transformedBody = transformedBody.replaceAll(pattern, replacement);
    }

    // Apply transformations in sequence
    for (const transformer of transformers) {
        transformedBody = transformer(transformedBody);
    }

    return transformedBody;
};
