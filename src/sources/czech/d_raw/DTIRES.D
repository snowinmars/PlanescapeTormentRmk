// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~Vidíš věkovitého muže v roztrhaných hadrech. Zblízka objevíš, že mu chybí obě oči. Zjizvená víčka mu visí do prázdných důlků, a dávají starci rysy podobné lebce v rozkladu. ~ */
  IF ~~ THEN REPLY #38141 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~Nech starocha na pokoji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~Starý muž se natočil přibližně tvým směrem, jeho paže se k tobě natáhly, jako by tě cítil. "V temnotě slyším zvuk čí? Přátelská slova já řeknu a přivolám chaos." ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"Slova mluví chaosem mojím. Neboj se , *jsem* přívržencem sekty Chaotiků." ~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"Hlas... mluvit-plížit-snížit."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"Říci slova chaosu a budu tvým přítelem? Je tohle zmatené kódování vážně nezbytné?~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"Hunh?"~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"Oh... no nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"Ach... chaos jsi ty, stejně jak já." Slepý muž se usmál a opatrně vykročil směrěm k tobě. Vypadá to, že kulhá na jednu nohu.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"Co to máš s nohou... jsi zraněný?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"Můžeš mi říct jak se dostanu do Uličky neustálých vzdechů?"~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"Řekls, že víš o cestě beze psů, která taky vede do Uličky?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"Ještě jednou, kde mají být ty tajné dveře?" ~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"Ano... takže, musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"Ne, v pořádku budu. Jen malé škrábnutí, to je vše." Aby dokázal svá slova, sáhl dolů a zvedl hadr kryjící jeho stehno a ukázal ti dlouhý odporný šrám vedoucí od kolena nahoru.~ */
  IF ~~ THEN REPLY #38153 /* ~"Co se stalo?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"Můžeš mi říct jak se dostanu do Uličky neustálých vzdechů?"~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"Ano... takže, musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"Okusil čepel jednoho Vyhladovělého Psa. Jsou támhle, v hlavní hale. Vyjící - bručící - číhající."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"Řekni mi něco o těch Vyzáblých psech."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"Vyzáblí psi štěkají? Kolik jich tam je?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"Aha. Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"Jsou zmatení, zvrácení. Bratři sobě, ale nikomu jinému."~ */
  IF ~~ THEN REPLY #38160 /* ~"Jestli jsou Chaotici, proč tě tedy napadli?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"Kolik jich tam je?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"Aha . Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~Starý muž kroutí hlavou. "Na tom nesejde. Zaútočí na všechny a na všechno. Tak k nim promlouvá chaos. Tebe taky rozsekají, když tam půjdeš."~ */
  IF ~~ THEN REPLY #38163 /* ~"Kolik jich tam je?" ~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"Aha. Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~Starý muž se na chvíli odmlčel, nevidoucí oči fixované v pohledu do prázdna. " Mnoho jich je... silní a zkažení. Ale je tu jiná cesta. Cesta kterou znám jen já ...  a já. Bezpečná cesta do uličky nad námi."~ */
  IF ~~ THEN REPLY #38166 /* ~"Jaká je ta tajná cesta."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"Tak nic. Najdu si vlastní cestu."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"Temnota není světlo a světlo není temnotou. Jasné, zářivé mince však i temnotu rozsvětlí." Starý muž k tobě natáhl ruku.~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~Dej slepému muži deset měďáků. ~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~Dej slepému muži dvacet měďáků.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"Nedám ti ani měďák. Ty mi teď řekneš to, co chci vědět, nebo ti ukážu, co to doopravdy je temnota."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"Což takhle menší čenž. Můžu ti říct něco o tom, kde v Doupěti se schovává jistý zloděj." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"Tak nic. Najdu si vlastní cestu."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~Vložil jsi do jeho ruky deset mincí. Chvíli ještě čekal a pak mince zkušeně potěžkal. Po chvíli váhání ti vrací mince. "To není dost. Nestojí život za více než deset mincí?" ~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~Dej mu dvacet měďáků. ~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"Ty chceš smlouvat? Tak tedy... co kdybys mi řekl co chci vědět a já tě za to nechám žít."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"Což takhle menší čenž. Můžu ti říct něco o tom, kde v Doupěti se schovává jistý zloděj." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"Nevadí. Najdu si vlastní cestu."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~Dal jsi muži mince a on si je rychle uložil do kapsy. "Najdi dveře skryté v jihozápadní místnosti. Otevírají se na vzdálené straně hlavní místnosti, blízko k východu do uličky." ~ */
  IF ~~ THEN REPLY #38177 /* ~"Díky za pomoc. Sbohem."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~V Doupěti hrdlořezů jsem potkal slepého, starého Chaotika. Řekl mi o tajných dveřích, díky kterým bych prošel Uličkou neustálých vzdechů bez střetu s Vyhladovělými psi, shromážděnými v hlavní místnosti Doupěte. Dveře jsou asi v jihovýchodním pokoji poblíž hlavní místnosti.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~Starý muž vypadá rozhořčen tvou hrozbou. "Přítelem ty nejsi a přátele tady nemáš! Přátele já mám a ty také zavolám!" Zhluboka se nadechl jakoby se chystal k výkřiku.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~Natáhni se a zakruť mu krkem dřív než začne křičet.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~Rychle zmiz.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~Rychle ses vrhl k slepci. Jednou rukou jsi mu zakryl ústa, aby nemohl zařvat, a druhou popadl muže za temeno hlavy a jediným trhnutím mu zlomil vaz.~ */
  IF ~~ THEN REPLY #38181 /* ~"Všechno příliš snadné."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"Zloděj? Tady? Někdo Tiresia *okradl*... možná to byl ten o němž mluvíš." Starý muž se poškrábal na bradě, jako by zvažoval tvou nabídku. "Dohodnuto. Ty mluv první." ~ */
  IF ~~ THEN REPLY #38182 /* ~"Tvůj zloděj není nic víc než mladá žába. Schovává se v předsálí na druhé straně cesty, poblíž dveří do hlavního sálu."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"Na druhou stranu, tady je dvacet mincí. Řekni mi co víš."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"Na druhou stranu, proč mi nepovíš co chci vědět... a já tě nechám žít."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~Tiresias uznale přikývl. "Mladá zlodějka říkáš? Asi ji navštívím."~ */
  IF ~~ THEN REPLY #38186 /* ~"Dobře. A teď mi pověz o té tajné cestě."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"O tom teda pochybuju. A teď mi pověz co víš starý muži."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"Ano, Tiresias zná tu cestu. Východ do uličky vede místností na jihu, ale tamtudy neprojdeš. Vyzáblí psi se tam shromáždili a zablokovali průchod."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"Pověz mi o těch Hladových Psech."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"Hladoví psi? Kolik jich je tam uvnitř?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"Aha. Takže sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~Starý muž naklonil hlavu na stranu, nevidoucí zrak civící do prázdnoty. "Chaotik ty nejsi. Ne! Ne! Ne!"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"Uh... nějak mi to nedává žádný smysl."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"Copak tady všichni ztratili zdravý rozum?"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~Ignoruj jeho blábolení a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"Jdi a už nemluv. Mluvení skončilo. Skončilo ke skončení!" Otočil se k tobě zády, očividně považuje pokec za skončený.~ */
  IF ~~ THEN REPLY #38195 /* ~"Hele, starouši, raději mi začni slušně odpovídat, nebo budeš brzy postrádat daleko víc než jen oči."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"Tohle evidentně nikam nevede. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"V jihozápadní místnosti jsou tajné dveře. Ne jako ty naproti, nevedou k psům."~ */
  IF ~~ THEN REPLY #38197 /* ~"Díky za pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"Ty najít dveře, které skryty v jihozápadním sálu. Otevírat se ony na vzdálenější straně hlavní haly, blízko východu do Aleje." ~ */
  IF ~~ THEN REPLY #38198 /* ~"Díky za pomoc. Sbohem."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~V Doupěti hrdlořezů jsem potkal slepého, starého Chaotika. Řekl mi o tajných dveřích, díky kterým bych prošel Uličkou neustálých vzdechů bez střetu s Vyhladovělými psi, shromážděnými v hlavní místnosti Doupěte. Dveře jsou asi v jihovýchodním pokoji poblíž hlavní místnosti.~ */ EXIT
END
