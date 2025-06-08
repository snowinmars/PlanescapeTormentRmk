const none = '00000000-CA6E-4C2E-B4E3-000000000000';
export type KnownSettings = Readonly<{
    name: string;
    type: 'boolean' | 'integer';
}>
const knownSettingsName: Record<string, KnownSettings> = {};

const setting = (from: string, to: string, env = 'GLOBAL', meetAndDead = false): string[][] => {
    return [
        ...(
            (!meetAndDead) ? [to] :
                (meetAndDead) ? [`meet_${to}`, `dead_${to}`] : []
        ).flatMap(x => {
            knownSettingsName[x] = {
                name: x,
                type: "boolean",
            };
            return [
                // May I be wrong? I mart.
                [`SetGlobal("${from}","${env}",0)`, `gsm.set_${x}(False)`],
                [`SetGlobal("${from}","${env}",1)`, `gsm.set_${x}(True)`],
                [`Global("${from}","${env}",0)`,    `return not gsm.get_${x}()`],
                [`Global("${from}","${env}",1)`,    `return gsm.get_${x}()`],
                [`GlobalGT("${from}","${env}",1)`,  `return false  # GlobalGT("${from}","${env}",1)`],
                [`GlobalLT("${from}","${env}",0)`,  `return false  # GlobalLT("${from}","${env}",0)`],
                [`GlobalGT("${from}","${env}",0)`,  `return gsm.get_${x}()`],
                [`GlobalLT("${from}","${env}",1)`,  `return not gsm.get_${x}()`],
                [`!Global("${from}","${env}",0)`,   `return gsm.get_${x}()`],
                [`!Global("${from}","${env}",1)`,   `return not gsm.get_${x}()`],
                [`!GlobalGT("${from}","${env}",0)`, `return not gsm.get_${x}()`],
                [`!GlobalGT("${from}","${env}",1)`, `return true  # !GlobalGT("${from}","${env}",1)`],
                [`!GlobalLT("${from}","${env}",0)`, `return true  # !GlobalLT("${from}","${env}",0)`],
                [`!GlobalLT("${from}","${env}",1)`, `return gsm.get_${x}()`]
            ]
        }),
        [`Dead("${from}")`, `return gsm.get_dead_${to}()`],
        [`!Dead("${from}")`, `return not gsm.get_dead_${to}()`],
    ];
}

const firstToLower = (x: string): string => x[0].toLowerCase() + x.slice(1);

const booleanSetting = (from: string, to: string, env = 'GLOBAL'): string[][] => setting(from, to, env, false);
const npcSetting = (from: string, to: string, env = 'GLOBAL'): string[][] => setting(from, to, env, true);
const fractionSetting = (to: string, env = 'GLOBAL'): string[][] => {
    [
        `meet_${to}`,
    ].map(x => knownSettingsName[x] = {
        name: x,
        type: "boolean",
    });
    return [];
}
const partyNpc = (from: string, to: string): string[][] => {
    knownSettingsName[`in_party_${to}`] = {
        name: `in_party_${to}`,
        type: "boolean",
    };
    knownSettingsName[`morale_${to}`] = {
        name: `morale_${to}`,
        type: "integer",
    };
    return [
        ...npcSetting(from, to),
        // with Xxx
        [`SetGlobal("${from}","GLOBAL",1)`, `gsm.set_in_party_${to}(True)`],
        [`SetGlobal("${from}","GLOBAL",0)`, `gsm.set_in_party_${to}(False)`],
        [`Global("${from}","GLOBAL",1)`, `return gsm.get_in_party_${to}()`],
        [`Global("${from}","GLOBAL",0)`, `return not gsm.get_in_party_${to}()`],
        [`NearbyDialog("${from}")`, `return gsm.get_in_party_${to}()`],
        [`!NearbyDialog("${from}")`, `return not gsm.get_in_party_${to}()`],
        [`InParty("${from}")`, `return gsm.get_in_party_${to}()`],
        [`!InParty("${from}")`, `return not gsm.get_in_party_${to}()`],
        [`MoraleDec("${from}",1)`, `gsm.dec_morale_${to}()`],
        [`MoraleInc("${from}",1)`, `gsm.inc_morale_${to}()`],
        [`MoraleDec("${from}",2)`, `gsm.dec_morale_${to}(2)`],
        [`MoraleInc("${from}",2)`, `gsm.inc_morale_${to}(2)`],
        [`MoraleDec("${from}",3)`, `gsm.dec_morale_${to}(3)`],
        [`MoraleInc("${from}",3)`, `gsm.inc_morale_${to}(3)`],
        // with DXxx
        [`SetGlobal("D${from}","GLOBAL",1)`, `gsm.set_in_party_${to}(True)`],
        [`SetGlobal("D${from}","GLOBAL",0)`, `gsm.set_in_party_${to}(False)`],
        [`Global("D${from}","GLOBAL",1)`, `return gsm.get_in_party_${to}()`],
        [`Global("D${from}","GLOBAL",0)`, `return not gsm.get_in_party_${to}()`],
        [`NearbyDialog("D${from}")`, `return gsm.get_in_party_${to}()`],
        [`!NearbyDialog("D${from}")`, `return not gsm.get_in_party_${to}()`],
        [`InParty("D${from}")`, `return gsm.get_in_party_${to}()`],
        [`!InParty("D${from}")`, `return not gsm.get_in_party_${to}()`],
        [`MoraleDec("D${from}",1)`, `gsm.dec_morale_${to}()`],
        [`MoraleInc("D${from}",1)`, `gsm.inc_morale_${to}()`],
        [`MoraleDec("D${from}",2)`, `gsm.dec_morale_${to}(2)`],
        [`MoraleInc("D${from}",2)`, `gsm.inc_morale_${to}(2)`],
        [`MoraleDec("D${from}",3)`, `gsm.dec_morale_${to}(3)`],
        [`MoraleInc("D${from}",3)`, `gsm.inc_morale_${to}(3)`],
        // with Dxxx
        [`SetGlobal("D${firstToLower(from)}","GLOBAL",1)`, `gsm.set_in_party_${to}(True)`],
        [`SetGlobal("D${firstToLower(from)}","GLOBAL",0)`, `gsm.set_in_party_${to}(False)`],
        [`Global("D${firstToLower(from)}","GLOBAL",1)`, `return gsm.get_in_party_${to}()`],
        [`Global("D${firstToLower(from)}","GLOBAL",0)`, `return not gsm.get_in_party_${to}()`],
        [`NearbyDialog("D${firstToLower(from)}")`, `return gsm.get_in_party_${to}()`],
        [`!NearbyDialog("D${firstToLower(from)}")`, `return not gsm.get_in_party_${to}()`],
        [`InParty("D${firstToLower(from)}")`, `return gsm.get_in_party_${to}()`],
        [`!InParty("D${firstToLower(from)}")`, `return not gsm.get_in_party_${to}()`],
        [`MoraleDec("D${firstToLower(from)}",1)`, `gsm.dec_morale_${to}()`],
        [`MoraleInc("D${firstToLower(from)}",1)`, `gsm.inc_morale_${to}()`],
        [`MoraleDec("D${firstToLower(from)}",2)`, `gsm.dec_morale_${to}(2)`],
        [`MoraleInc("D${firstToLower(from)}",2)`, `gsm.inc_morale_${to}(2)`],
        [`MoraleDec("D${firstToLower(from)}",3)`, `gsm.dec_morale_${to}(3)`],
        [`MoraleInc("D${firstToLower(from)}",3)`, `gsm.inc_morale_${to}(3)`],
    ];
};
const integerSetting = (from: string, to: string, values: number[], env = 'GLOBAL'): string[][] => {
    knownSettingsName[to] = {
        name: to,
        type: "integer",
    };
    const result: string[][] = [];
    for (const i of [-1,1,2]) {
        result.push([`IncrementGlobal("${from}","${env}",${i})`, `gsm.inc_${to}()`]);
    }
    for (const value of values) result.push([`SetGlobal("${from}","${env}",${value})`, `gsm.set_${to}(${value})`]);
    for (const value of values) result.push([`Global("${from}","${env}",${value})`,    `return gsm.get_${to}() == ${value}`]);
    for (const value of values) result.push([`!Global("${from}","${env}",${value})`,   `return gsm.get_${to}() != ${value}`]);
    for (const value of values) result.push([`GlobalLT("${from}","${env}",${value})`,  `return gsm.get_${to}() < ${value}`]);
    for (const value of values) result.push([`GlobalGT("${from}","${env}",${value})`,  `return gsm.get_${to}() > ${value}`]);
    return result;
}

const playerItemSetting = (from: string, to: string): string[][] => {
    knownSettingsName[`has_${to}`] = {
        name: `has_${to}`,
        type: "boolean",
    };
    return [
        [`GiveItem("${from}",Protagonist)`, `gsm.set_has_${to}(True)`],
        [`GiveItemCreate("${from}",Protagonist,1,0,0)`, `gsm.set_has_${to}(True)`],
        [`TakeItem("${from}",Protagonist)`, `gsm.set_has_${to}(False)`],
        [`DestroyPartyItem("${from}",TRUE)`, `gsm.set_has_${to}(False)`],
        [`TakePartyItemNum("${from}",1)`, `gsm.set_has_${to}(False)`], // always -1 is false?
        [`PartyHasItem("${from}")`, `return gsm.get_has_${to}()`],
        [`!PartyHasItem("${from}")`, `return not gsm.get_has_${to}()`],
    ]
}

const tree = (): string[][] => {
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
    const result: string[][] = [];
    for (const letter of letters) {
        knownSettingsName[`tree_${letter.toLowerCase()}`] = {
            name: `tree_${letter.toLowerCase()}`,
            type: "boolean",
        };
        result.push(...booleanSetting(`Tree_${letter}`, `tree_${letter.toLowerCase()}`, 'AR0400'));
    }
    return result;
}

// Register zombies in runtime settings
const zombies = (): string[][] => {
    return [
        ...npcSetting(none, 'dzm79'),
        ...npcSetting(none, 'dzm199'),
        ...npcSetting(none, 'dzm257'),
        ...npcSetting(none, 'dzm310'),
        ...npcSetting(none, 'dzm396'),
        ...npcSetting(none, 'dzm463'),
        ...npcSetting(none, 'dzm475'),
        ...npcSetting(none, 'dzm506'),
        ...npcSetting(none, 'dzm569'),
        ...npcSetting(none, 'dzm613'),
        ...npcSetting(none, 'dzm732'),
        ...npcSetting(none, 'dzm782'),
        ...npcSetting(none, 'dzm825'),
        ...npcSetting(none, 'dzm965'),
        ...npcSetting(none, 'dzm985'),
        ...npcSetting(none, 'dzm1041'),
        ...npcSetting(none, 'dzm1094'),
        ...npcSetting(none, 'dzm1146'),
        ...npcSetting(none, 'dzm1201'),
        ...npcSetting(none, 'dzm1445'),
        ...npcSetting(none, 'dzm1508'),
        ...npcSetting(none, 'dzm1664'),
        ...npcSetting(none, 'dzf114'),
        ...npcSetting(none, 'dzf444'),
        ...npcSetting(none, 'dzf594'),
        ...npcSetting(none, 'dzf626'),
        ...npcSetting(none, 'dzf679'),
        ...npcSetting(none, 'dzf832'),
        ...npcSetting(none, 'dzf891'),
        ...npcSetting(none, 'dzf916'),
        ...npcSetting(none, 'dzf1072'),
        ...npcSetting(none, 'dzf1096'),
        ...npcSetting(none, 'dzf1148'),
        ...npcSetting(none, 'dzm79'),
        ...npcSetting(none, 'dzm199'),
        ...npcSetting(none, 'dzm257'),
        ...npcSetting(none, 'dzm310'),
        ...npcSetting(none, 'dzm396'),
        ...npcSetting(none, 'dzm463'),
        ...npcSetting(none, 'dzm475'),
        ...npcSetting(none, 'dzm506'),
        ...npcSetting(none, 'dzm569'),
        ...npcSetting(none, 'dzm613'),
        ...npcSetting(none, 'dzm732'),
        ...npcSetting(none, 'dzm782'),
        ...npcSetting(none, 'dzm825'),
        ...npcSetting(none, 'dzm965'),
        ...npcSetting(none, 'dzm985'),
        ...npcSetting(none, 'dzm1041'),
        ...npcSetting(none, 'dzm1094'),
        ...npcSetting(none, 'dzm1146'),
        ...npcSetting(none, 'dzm1201'),
        ...npcSetting(none, 'dzm1445'),
        ...npcSetting(none, 'dzm1508'),
        ...npcSetting(none, 'dzm1664'),
        ...npcSetting(none, 'dzf114'),
        ...npcSetting(none, 'dzf444'),
        ...npcSetting(none, 'dzf594'),
        ...npcSetting(none, 'dzf626'),
        ...npcSetting(none, 'dzf679'),
        ...npcSetting(none, 'dzf832'),
        ...npcSetting(none, 'dzf891'),
        ...npcSetting(none, 'dzf916'),
        ...npcSetting(none, 'dzf1072'),
        ...npcSetting(none, 'dzf1096'),
        ...npcSetting(none, 'dzf1148'),
    ]
}

export const getKnownSettingsName = (): KnownSettings[] => {
    return Object.values(knownSettingsName);
}

export const wellKnownReplacements: string[][] = [
    ...tree(),
    ...zombies(),
    ...partyNpc('Morte', 'morte'),
    ...partyNpc('Annah', 'annah'),
    ...partyNpc('Ignus', 'ignus'),
    ...partyNpc('Grace', 'grace'),
    ...partyNpc('Dakkon', 'dakkon'),
    ...partyNpc('Nordom', 'nordom'),
    ...partyNpc('Vhail', 'vhail'),
    ...npcSetting('Pharod', 'pharod'),
    ...npcSetting('Dhall', 'dhall'),
    ...npcSetting('Deionarra', 'deionarra'),
    ...npcSetting('Death_of_Names', 'death_of_names'),
    ...npcSetting('Quentin', 'quentin'),
    ...npcSetting('Vaxis', 'vaxis'),
    ...npcSetting('Oinosian', 'oinosian'),
    ...npcSetting('Bei', 'bei'),
    ...npcSetting('Asonje', 'asonje'),
    ...npcSetting('Crispy', 'crispy'),
    ...npcSetting('EiVene', 'eivene'),
    ...npcSetting('Soego', 'soego'),
    ...npcSetting('Ravel', 'ravel'),
    ...npcSetting('Aelwyn', 'aelwyn'),
    ...fractionSetting('dustmen'),
    ...booleanSetting(none, 'know_dzm257_spirit'),
    ...booleanSetting(none, 'know_oinosian_name'),
    ...booleanSetting(none, 'know_bei_name'),
    ...booleanSetting(none, 'know_asonje_name'),
    ...booleanSetting(none, 'know_vaxis_name'),
    ...booleanSetting(none, 'has_bandages_zm396'),
    ...booleanSetting('Evil_Ingress_Teeth_1', 'evil_ingress_teeth_1'),
    ...booleanSetting('Good_Ingress_Teeth_1', 'good_ingress_teeth_1'),
    ...booleanSetting('1201_Note_Retrieved', '1201_note_retrieved'),
    ...booleanSetting('Scars', 'read_scars'),
    ...booleanSetting('Morte_Harlot_Quip_1', 'morte_harlot_quip_1'),
    ...booleanSetting('506_Thread', 'has_506_thread'),
    ...booleanSetting('Speak_with_Dead', 'can_speak_with_dead'),
    ...booleanSetting('Speak_With_Dead', 'can_speak_with_dead'),
    ...booleanSetting('Vaxis_Exposed', 'vaxis_exposed'),
    ...booleanSetting('Mortuary_Walkthrough', 'mortuary_walkthrough'),
    ...booleanSetting('Zombie_Chaotic', 'zombie_chaotic'),
    ...booleanSetting('Death_of_Names_Dhall', 'pass_death_of_names_dhall'),
    ...booleanSetting('Death_of_Names_Quentin', 'pass_death_of_names_quentin'),
    ...booleanSetting('Xachariah_Name', 'know_xachariah_name'),
    ...booleanSetting('Morte_Mortuary_Walkthrough_1', 'morte_mortuary_walkthrough_1'),
    ...booleanSetting('Morte_Mortuary_Walkthrough_2', 'morte_mortuary_walkthrough_2'),
    ...booleanSetting('Lawful_Vaxis_1', 'vaxis_lawful'),
    ...booleanSetting('Vaxis_Leave', 'vaxis_leave'),
    ...booleanSetting('Mortuary_Alert', 'mortualy_alarmed'),
    ...booleanSetting('Escape_Mortuary', 'escape_mortuary'),
    ...booleanSetting('Know_Copper_Earring_Secret', 'know_copper_earring_secret'),
    ...booleanSetting('Know_Xixi', 'know_xixi'),
    ...booleanSetting('Page_Taken', 'has_dzm1664_page'),
    ...booleanSetting('Morte_Quip', 'morte_quip'),
    ...booleanSetting('EiVene_Delivery', 'eivene_delivery'),
    ...booleanSetting('Ravel_EiVene', 'ravel_eivene'),
    ...booleanSetting('42_Secret', '42_secret'),
    ...booleanSetting('Vaxis_Orders', 'vaxis_orders'),
    ...booleanSetting('Vaxis_Help', 'vaxis_help'),
    ...booleanSetting('Strong_Arm_Vaxis', 'strong_arm_vaxis'),
    ...booleanSetting('Journal', 'journal'),
    ...booleanSetting('Vaxis_Zombie_XP', 'vaxis_global_xp'),
    ...booleanSetting('Morte_Vaxis_Quip_1', 'morte_vaxis_quip_1'),
    ...booleanSetting('Morte_Vaxis_Quip_2', 'morte_vaxis_quip_2'),
    ...booleanSetting('Vaxis_Exposes_Soego', 'vaxis_exposes_soego'),
    ...booleanSetting('UR_1201', 'ur_1201'),
    ...booleanSetting('LR_1201', 'lr_1201'),
    ...booleanSetting('LL_1201', 'll_1201'),
    ...booleanSetting('UL_1201', 'ul_1201'),
    ...booleanSetting('Know_Mimir', 'know_mimir'),
    ...booleanSetting('Morte_Mimir', 'morte_mimir'),
    ...booleanSetting('Know_Gith', 'know_gith'),
    ...booleanSetting('Know_Lady', 'know_lady'),
    ...booleanSetting('Morte_Skel_Mort_Quip', 'morte_skel_mort_quip'),
    ...booleanSetting('Morte_Deionarra_Quip_1', 'morte_deionarra_quip_1'),
    ...booleanSetting('Translate_Dabus', 'translate_dabus'),
    ...booleanSetting('Morte_Zombie_Female_Bar_Quip', 'morte_zombie_female_bar_quip'),
    ...booleanSetting('Ingress_Teeth_Installed', 'ingress_teeth_installed'),
    ...booleanSetting('Able', 'able'),
    ...booleanSetting('Morte_Story', 'morte_story'),
    ...booleanSetting('Met_Modrons', 'met_modrons'),
    ...booleanSetting('Jumble_Reekwind', 'jumble_reekwind'),
    ...booleanSetting('Know_Mechanus', 'know_mechanus'),
    ...booleanSetting('Morte_Tattoo_XP', 'morte_tattoo_xp'),
    ...booleanSetting('Morte_Talent', 'morte_talent'),
    ...booleanSetting('Memory_Morte_Pillar', 'memory_morte_pillar'),
    ...booleanSetting('BD_MorteStory', 'bd_morte_story'),
    ...booleanSetting('Know_Chaosmen', 'know_chaosmen'),
    ...booleanSetting('Join_Chaosmen', 'join_chaosmen'),
    ...booleanSetting('Mortai_Contract', 'mortai_contract'),
    ...booleanSetting('Coppereyes_Contract', 'coppereyes_contract'),
    ...booleanSetting('Pillar_Musk', 'pillar_musk', 'AR1001'),
    ...booleanSetting('Pillar_Question', 'pillar_question', 'AR1001'),
    ...booleanSetting('Yves_Shared', 'yves_shared', 'AR0605'),
    ...booleanSetting('Dakkon_Slave', 'dakkon_slave', 'Global'),
    ...booleanSetting('CW_Sal_Hint', 'cw_sal_hint'),
    ...booleanSetting('Know_Ravel', 'know_ravel'),
    ...booleanSetting('Know_Morte_Pillar', 'know_morte_pillar'),
    ...booleanSetting('Know_Blood_War', 'know_blood_war'),
    ...booleanSetting('Story_Reekwind_Curse', 'story_reekwind_curse'),
    ...booleanSetting('Seek_Word', 'seek_word'),
    ...booleanSetting('Where_Fhjull', 'where_fhjull', 'AR1001'),
    ...booleanSetting('Ravel_Morte', 'ravel_morte'),
    ...booleanSetting('Morte_Warning', 'morte_warning'),
    ...booleanSetting('Know_Ravel_Key', 'know_ravel_key'),
    ...booleanSetting('Grace_Silver_Mimir', 'grace_silver_mimir'),
    ...booleanSetting('Grace_Smell_Mimir', 'grace_smell_mimir'),
    ...booleanSetting('Chaotic_Morte_1', 'chaotic_morte_1'),
    ...booleanSetting('Lawful_Morte_1', 'lawful_morte_1'),
    ...booleanSetting('Trans_Vanish', 'trans_vanish'),
    ...booleanSetting('Fortress_Party_Roof', 'fortress_party_roof'),
    ...booleanSetting('Fortress_Ignus', 'fortress_ignus'),
    ...booleanSetting('Fortress_Ignus_Battle', 'fortress_ignus_battle'),
    ...booleanSetting('Fortress_Vhailor', 'fortress_vhailor'),
    ...booleanSetting('Fortress_Vhailor_Battle', 'fortress_vhailor_battle'),
    ...booleanSetting('Fortress_Dakkon', 'fortress_dakkon'),
    ...booleanSetting('Fortress_Annah', 'fortress_annah'),
    ...booleanSetting('Fortress_Grace', 'fortress_grace'),
    ...booleanSetting('Fortress_Nordom', 'fortress_nordom'),
    ...booleanSetting('Morte_Wilder_Quip_1', 'morte_wilder_quip_1'),
    ...booleanSetting('Morte_SDThug_Quip_1', 'morte_sdthug_quip_1'),
    ...booleanSetting('Topple_985', 'topple_985'),
    ...integerSetting('Tree_Helpers', 'tree_helpers', [0,1], 'AR0400'),
    ...integerSetting('Pharod_Quest', 'pharod_quest', [0,1]),
    ...integerSetting('Torment_Fell', 'torment_fell', [0,1,2]),
    ...integerSetting('Specialist', 'specialist', [0,1,2,3,4,5,6]),
    ...integerSetting('Chaotic_Malmaner_1', 'chaotic_malmaner_1', [0,1,2,3]),
    ...integerSetting('Malmaner', 'malmaner', [0,1,2,3,4,5]),
    ...integerSetting('Pillar ', 'pillar',[0,1,2]), // with space, yes
    ...integerSetting('Nemelle', 'nemelle',[0,1,2,3,4]),
    ...integerSetting('Aelwyn', 'aelwyn',[0,1,2,3,4]),
    ...integerSetting('Lecture_Death', 'lecture_death',[0,1,2]),
    ...integerSetting('Lecture_Ghysis', 'lecture_ghysis',[0,1,2]),
    ...integerSetting('Morte_Stolen', 'morte_stolen',[0,1,2,3]),
    ...integerSetting('Qui_Sai', 'qui_sai',[0,1,2]),
    ...integerSetting('Warning', 'warning', [0,1,2]),
    ...integerSetting('Betray_Vaxis', 'vaxis_betrayed', [0,1,2]),
    ...integerSetting('Asonje', 'asonje_quest_state', [0,1,2,3]),
    ...integerSetting('Crier_Quest', 'crier_quest', [0,1,2,3]),
    ...integerSetting('Xixi_Back', 'xixi_back', [0,1,2,3]),
    ...integerSetting('Embalm_Key_Quest', 'embalm_key_quest', [0,1,2,3]),
    ...integerSetting('1201_Note', '1201_note_quest', [0,1,2]),
    ...integerSetting('Vaxis_Zombie_Disguise', 'vaxis_zombie_disguise', [0,1,2]),
    ...integerSetting('BD_MORTE_MORALE', 'bd_morte_morale', [0,1,2,3,4,5,6,-1]),
    ...integerSetting('BD_DAKKON_MORALE', 'bd_dakkon_morale', [0,1,-1]),
    ...integerSetting('Morte_Taunt', 'morte_taunt', [0,1]),
    ...integerSetting('Ravel_Grace', 'ravel_grace', [0,1,2,3]),
    ...integerSetting('Ravel_Annah', 'ravel_annah', [0,1,2,3]),
    ...integerSetting('Know_Marta_Work', 'know_marta_work', [0,1,2,3]),
    ...integerSetting('Morte_Quip_Regret_Portal', 'morte_quip_regret_portal', [0,1,2]),
    ...integerSetting('Morte_Morale_Fortress_Portal', 'morte_morale_fortress_portal', [0,1], 'AR0202'),
    ...integerSetting('Fortress_Morte', 'fortress_morte', [0,1,2,3,4]),
    ...integerSetting('Nenny', 'nenny', [0,1,2]),
    ...integerSetting('Adyzoel', 'adyzoel', [0,1,2], 'AR0400'),
    ...integerSetting('BariA', 'baria', [0,1,2], 'AR0400'),
    ...playerItemSetting('KeyPR', 'intro_key'),
    ...playerItemSetting('KeyPr', 'intro_key'), // ?
    ...playerItemSetting('TomeBA', 'tome_ba'),
    ...playerItemSetting('Bandage', 'bandages'),
    ...playerItemSetting('CopEarC', 'copper_earring_closed'),
    ...playerItemSetting('CopEarO', 'copper_earring_opened'),
    ...playerItemSetting('Scalpel', 'scalpel'),
    ...playerItemSetting('Embalm', 'embalm'),
    ...playerItemSetting('Needle', 'needle'),
    ...playerItemSetting('BoneChrm', 'bone_chrm'),
    ...playerItemSetting('TEarring', 'tearring'),
    ...playerItemSetting('Logpage', 'logpage'),
    ...playerItemSetting('N1201', '1201_note'),
    ...playerItemSetting('Prybar', 'prybar'),
    ...playerItemSetting('Decant', 'decant'),
    ...playerItemSetting('Cube', 'cube'),
    ...playerItemSetting('KeyEm', 'keyem'),
    ...playerItemSetting('keymo2', 'mortuary_key'),
    ...playerItemSetting('ouill', 'dhall_feather'),
    ...playerItemSetting('fingbone', 'finger_bone'),
    ...playerItemSetting('dustrobe', 'dustrobe'),
    ...playerItemSetting('dremind', 'dremind'),
    ...playerItemSetting('doornote', 'mortuary_doornote'),
    ...playerItemSetting('drequest', 'dustman_request'),
    ...playerItemSetting('tasklist', 'mortuary_task_list'),
    ['ShowFirstTimeHelp()', ''],
    ['SetGlobal("0202_Dhall_Face_Player","AR0202",1)', 'gsm.set_meet_dhall(True)'],
    ['ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)', 'gsm.set_in_party_morte(True)'],
    ['HasItem("Bandage","ZM396")', 'return gsm.get_has_bandages_zm396()'],
    ['NearbyDialog("DMorte1")', 'return gsm.get_in_party_morte()'],
    ['!NearbyDialog("DMorte1")', 'return not gsm.get_in_party_morte()'],
    ['SetGlobal("Betray_Vaxis","GLOBAL",2)', 'set_vaxis_betray(2)'],
    ['SetGlobal("Crispy","GLOBAL",1)', 'gsm.set_meet_crispy(True)'],
    ['HasItem("KeyEm","EiVene")', 'return gsm.get_has_keyem()'],
    ['!HasItem("KeyEm","EiVene")', 'return not gsm.get_has_keyem()'],
    ['GiveItem("KeyEm","Vaxis")', 'gsm.set_has_keyem(False) gsm.set_vaxis_has_keyem(True)'],
    ['Global("Appearance","GLOBAL",1)', 'return gsm.get_appearance()'],
    ['!Global("Appearance","GLOBAL",1)', 'return not gsm.get_appearance()'],
    ['SetNamelessDisguise(ZOMBIE)', 'gsm.set_looks_like("zombie")'],
    ['HPPercent(Protagonist,100)', 'return gsm.get_hp() == 100'],
    ['HPPercentGT(Protagonist,49)', 'return gsm.get_hp() > 49'],
    ['HPPercentLT(Protagonist,50)', 'return gsm.get_hp() < 50'],
    ['HasItem("Cobble","Post")', 'HasItem("Cobble","Post")  # Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).']
].sort((lhs, rhs) => rhs[0].length - lhs[0].length) // from longest to shortest
