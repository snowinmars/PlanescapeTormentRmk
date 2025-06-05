import { wellKnownReplacements } from "./wellKnownReplacements.ts";

export const trimTrash = (input: string) =>
  replaceNestedQuotes(input.replaceAll(/[~«»]/g, '').replaceAll('...', '…').trim());

const replaceNestedQuotes = (text: string): string => {
    return text.replace(/(^|\W)'([^']+)'(\W|$)/g, (match, p1, p2, p3) => {
        return `${p1}«${p2}»${p3}`;
    });
}

type StringTransformer = (body: string) => string;

// Alignment transformation utilities
const createAlignmentHandler = (prefix: string) => (id: string, amount: number) => {
  if (amount === 1) return `gsm.inc_${prefix}()`;
  if (amount === -1) return `gsm.dec_${prefix}()`;
  if (amount > 0) return `gsm.inc_${prefix}(${amount})`;
  if (amount < 0) return `gsm.dec_${prefix}(${-amount})`;
  return `raise Exception("Cannot change setting by zero delta")`;
};

const handleSpecialCases = (prop: string) => {
  switch (prop) {
    case 'know_dustmen': return 'gsm.set_meet_dustmen(True)';
    case 'adahn':
      return 'gsm.set_death_of_names_adahn(True)\n    gsm.inc_once_adahn(\'Adahn_Death_of_Names_1\')';
    default: return null;
  }
};

// Individual transformation functions
const transformOnceAlignment: StringTransformer = (body) => {
  const regex = /IncrementGlobalOnceEx\("(.*?)","(.*?)",(.*?)\)/g;

  return body.replace(regex, (_, globalId, property, amountStr) => {
    const id = globalId.replace('GLOBAL', '').toLowerCase();
    const prop = property.replace('GLOBAL', '').toLowerCase();
    const amount = parseInt(amountStr);

    const specialCase = handleSpecialCases(prop);
    if (specialCase) return specialCase;

    switch (prop) {
      case 'good':
      case 'evil':
        return createAlignmentHandler('once_good')(id, amount);
      case 'law':
      case 'chaotic':
        return createAlignmentHandler('once_law')(id, amount);
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

    const specialCase = handleSpecialCases(prop);
    if (specialCase) return specialCase;

    switch (prop) {
      case 'good':
      case 'evil':
        return createAlignmentHandler('good')(prop, amount);
      case 'law':
      case 'chaotic':
        return createAlignmentHandler('law')(prop, amount);
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
  transformPartyExp,
  transformPartyGold,
  transformNpcExp,
  transformPermanentStat,
  transformFullHeal,
  transformCutScene,
  transformVisitedLocation,
];

export const transformScript = (body: string): string => {
  let transformedBody = body;

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
