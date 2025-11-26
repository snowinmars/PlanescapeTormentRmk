// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~Vidíš ještěrovité stvoření s hadím tělem, nohama se čtyřmi drápy, kožnatými křídly a dračí hlavou. Šupiny pokrývající tělo jsou zbarveny odporným odstínem zelené. Stvoření stojí na zadních nohách, vyrovnává rovnováhu chápavým ocasem. Když ses přiblížil, oči nestvůry se zúžily a začíná syčet.~ */
  IF ~~ THEN REPLY #36055 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~Ignoruj stvoření.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~Vzduch kolem stvoření se začíná zahřívat a šupiny nabraly matný lesk. Hladově se na tebe dívá a je zřejmě připraveno k útoku. Náhle prudce zasyšelo a trochu zklidnilo svůj postoj. "Sssssssss! Jdi! Grossssssuk nemluví, řekl čččekej... Sssssss." Zlobně na tebe zírá a mává ocasem.~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"Sebastion mě poslal."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"Co jsi za stvoření?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~Stvoření se trochu uklidnilo a vzduch ochladnul. Natáhlo drápatou ruku k tobě. "Ssssss. Dej Grosssukovi informacccce." Vyčkávavě se na tebe dívá.~ */
  IF ~~ THEN REPLY #36062 /* ~"Jaké informace?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"Ne, Sebastion mě poslal, ať tě zabiju."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"Nemám je sebou, musím pro ně zajít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~Je těžké rozpoznat grimasy ještěra, ale jsi si jistý, že Grosuk se na tebe zlobí. Jeho ocas zběsile poletuje vzduchem, který se znovu začíná zahřívat. "Žádné otázzzzzky. Dej Grosssukovi informaccce nebo zemřiii. Grossssuk sssi pak vezme informaccce z tvého těla."~ */
  IF ~~ THEN REPLY #36066 /* ~"Potřebuju vědět, která informace je pro tebe. Starám se o pochůzky pro více lidí, víš."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"Vlastně, Sebastion mě poslal, ať tě zabiju."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"Nemám je sebou, musím pro ně zajít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~Zírá na tebe a chvíli přemýšlí. Nakonec ukázal na blízkou věž. "Dobývací věž. Ssss. Jak sssse dossstat dovnitř. Ssssebasssstion řekl, to zjissstí..." Grosuk přistoupil o krůček blíž a natáhl ruku. "A teď dej!"~ */
  IF ~~ THEN REPLY #36070 /* ~"Oh, tahle informace. Je mi líto, ale tuhle chtěl Sebastion dodat sám. Brzy dorazí."~ */ JOURNAL #66527 /* ~Abishai Grosuk se snaží dostat do dobývací věže u tržnice. Zajímalo by mně, co je na té věži tak důležitého.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~Vzduch kolem Grosuka se začíná zahřívat a šupiny nabraly matný lesk. Hladově se na tebe dívá a je zřejmě připraven k útoku. Otevřel ústa a odhalil několik řad ostrých zubů. "Ne... Grosssuk myssslí, ty lžešššš! Dej informacce teď a Grosssuk zabije rychle, ne pomalu. Nedej, a Grosssuk ssssi dá záležet. Vybere ti vnitřnossssti. Nechá tě dívat!"~ */
  IF ~~ THEN REPLY #36073 /* ~"Počkej, nemám tuhle informaci, ale vím něco jiného, o čem si myslím, že má cenu mého života."~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"Fajn, Sebastion mě stejně poslal, ať tě zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~Grosuk naklonil hlavu na stranu a zírá na tebe. Chvíli vypadá zamyšleně. "Grosssuk posssslouchá. Informace dobrá, ty žiješššš." Obzvláště zubatě se na tebe zašklebil. "Nedobrá, ty zemřešššš. Grosssuk sssslibuje."~ */
  IF ~~ THEN REPLY #36076 /* ~"Sebastion nemůže splnit smlouvu. Poslal mě sem, ať tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Řekl jsem abishaii Grosukovi, že mě Sebastion poslal, abych ho zabil. Nebylo to ode mně zrovna hezké, ale zachránil jsem si tak vlastní zadek...~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"Jak vím, že dodržíš své slovo?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"Zapomeň na to. Stejně mě sem Sebastion poslal, ať tě zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~Grosuk na tebe chvíli zírá, pak ze sebe vydal proud zasyčení. Začíná si protahovat drápy a švihat ocasem. Všiml sis, že na konci jeho ocasu je ostnaté žihadlo. "Ano. Informacce dobrá. Grosssuk dal sssslovo, ty žiješšš. Grossssuk děkuje. Grosssuk jde, musssí promluvit Sssssebassstion."~ */
  IF ~~ THEN REPLY #36080 /* ~"Sbohem."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~Stvoření na tebe zírá. "Tato ssssmlouva, ty a Grosssuk. Grosssuk žije sssslovem ssssmlouvy. A teď řekni."~ */
  IF ~~ THEN REPLY #36082 /* ~"Sebastion nemůže splnit smlouvu. Poslal mě sem, ať tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Řekl jsem abishaii Grosukovi, že mě Sebastion poslal, abych ho zabil. Nebylo to ode mně zrovna hezké, ale zachránil jsem si tak vlastní zadek...~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"Zapomeň na to. Stejně mě sem Sebastion poslal, ať tě zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~Bez zaváhání na tebe stvoření skočilo.~ */
  IF ~~ THEN REPLY #36085 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~Stvoření nesnesitelně syčí, zatímco každý sval v jeho těle ztuhl. Natahuje se po tobě, pak se ale zarazí. Z jeho očí odkapává nenávist, zatímco k tobě promlouvá. "Grosssuk nemluví. Sssssssssss. Ty šššťasssstný ččlověk. Jdi, dokud ješšště šššťassstný. Žůssstaň a Grosssuk roztrhá!"~ */
  IF ~~ THEN REPLY #36087 /* ~Rýpni si:: "Grossssssuk nemluví? Grosssssuk jissstě nakeccá sssspoustu na někoho, kdo nepromluví ani ssssslovo..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"Sebastion mě poslal."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~Stvoření naklonilo hlavu na stranu a překvapeně na tebe zírá. Po chvíli se jeho oči zúží do proužků nenávisti a jeho tělo se začíná otřásat, jak se jeho svaly začínají napínat jako ocelové struny. Slyšíš praskavý zvuk a když se podíváš dolů, všimneš si, že drápy se zabořily do kamene, na kterém stojí. Vzduch kolem stvoření je plný horka a téměř svítí. "Jdi... teď. Ssssssssssssss!"~ */
  IF ~~ THEN REPLY #36091 /* ~Zaútoč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~Vidíš Grosuka, abishaie. Vypadá tvou přítomností rozlobený. "Ssssssss... Ty přiššel. Znovu. Jdi. Grossssuk zabije."~ */
  IF ~~ THEN REPLY #36094 /* ~"Nejsi zrovna nejpřátelštější stvoření, viď?"~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"Sebastion mě poslal."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~Grosuk na tebe zírá a protahuje si drápy. Oči se mu zúžili, když se sklonil, aby se ti podíval do očí. "Ne, Grosssuk ne přítel. Teď jdi!"~ */
  IF ~~ THEN REPLY #36098 /* ~"Fajn, sbohem."~ */ EXIT
END
