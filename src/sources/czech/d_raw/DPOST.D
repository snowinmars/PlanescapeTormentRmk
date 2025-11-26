// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~Tato špinavá mrtvola je v hrozném stavu; záda ohnutá a jedna noha je zlomená, díky čemuž je mrtvola nahnutá na jednu stranu. Od hlavy k patě je pokrytá skvrnami... soudě dle zápachu a vzhledu, skvrny pocházejí od shnilého ovoce, bláta a výkalů ptáků. Navíc byly do těla vyřezány kresby a na její hrudník, záda a hlavu byly přibity letáky.~ */
  IF ~~ THEN REPLY #6230 /* ~"Myslel jsem si, že *já* jsem ve špatném stavu. Nebolí všechny ty hřebíky?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~Prozkoumej kresby a letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~Mrtvola nereaguje.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~Prozkoumej kresby a letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~Tato mrtvola nereaguje. Zdá se, že je již příliš stará na to, aby ti mohla odpovědět na otázky.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~Prozkoumej kresby a letáky.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~Navzdory tolika stehům, je zahnívající kůže na mrtvole na několika místech oloupaná, odkrývajíc dlouhé napnuté svaly a kosti. Hádal bys, že tato zombie je často používána jako cvičný cíl... kromě skvrn od ovoce a bláta jsou v některých ranách kameny a kousky skla. V hlavě, v jedné zle vypadající ráně, je dosud zaražena dlažební kostka. ~ */
  IF ~~ THEN REPLY #6250 /* ~Prozkoumej kresby a letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~Vydloubnout dlažební kostku.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~Navzdory tolika stehům, je zahnívající kůže na mrtvole na několika místech oloupaná, odkrývajíc dlouhé napnuté svaly a kosti. Hádal bys, že tato zombie je často používána jako cvičný cíl... kromě skvrn od ovoce a bláta jsou v některých ranách kameny a kousky skla. V hlavě, v jedné zle vypadající ráně, je dosud zaražena dlažební kostka. ~ */
  IF ~~ THEN REPLY #6255 /* ~Prozkoumej kresby a letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~Hodně letáků bylo poničeno deštěm, ale některé z nich jsou ještě čitelné. Jeden připíchnutý na záda zombie je odněkud, co se nazývá 'Úřad pro sledování škůdců a nemocí,' jeden z jejího čela vypadá jako účet z restaurace, jeden na jejím hrudníku vypadá jako úřední upozornění a další se zdá být nějakým druhem inzerátu.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~Ignoruj poznámky, prozkoumej kresby.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~Podívej se, co píše 'Úřad pro sledování škůdců a nemocí.'~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~Prozkoumej účet z restaurace.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~Prozkoumej úřední upozornění.~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~Prozkoumej HLEDÁ SE.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~Použij na mrtvolu svou schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~"K těm občanúm Úlu, keří by ráti pořátné zamněstnání u POTIVÉ a UŠLECHŤYLÉ Vládi Sigilu: ptejte se hned na Úřadu pro sledování škúdcú a nemocí, jak múžete pomoct odsranit pochromu přemnožení kraniáckejch krys. VYPLÁCENÍ ODMNĚN! Dostanete měďák za každý krysí osas, kerý přinesete. (Osasy musí být celé a jen od krys. Osasy koček, psů nebo fiendů nebudou aceptovány.) Úřad je několik ulic na JIHOZÁPAD ot Márniční brány v dolní Úlu. Ptejte se na Ofycyjálního Inšpektéra ZVÁŽENÉHO PHINEASE T. LORTA, XXXIX."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"'Úřad pro sledování škůdců a nemocí?'"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~Prozkoumej jiné poznámky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~Kdosi vystavil účet za stravu v baru "U Doutnajícího nebožtíka," ale účet nelze přečíst, krom slov 'BAR U DOUTNAJÍCÍHO NEBOŽTÍKA', které jsou načmárány uhlem na účtu.  ~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"'Bar U Doutnajícího nebožtíka?'"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"'Bar U Doutnajícího nebožtíka?'"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"'Bar U Doutnajícího nebožtíka?'"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~Prozkoumej jiné letáky...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~"VEŘEJNÁ VYHLÁŠKA: Z nařízení Soudního shromáždění a se souhlasem občanstva Sigilu na vědomost se dává, že ten, kdo znehodnotí registrovaného služebníka Spalovačů, ať již kresbami, zlomyslným útokem, nebo vyvěšováním letáků, se dopouští ZLOTŘILÉHO ČINU a bude se zodpovídat z vandalismu na řečeném služebníkovi." - Z nařízení Síně mluvčích -~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~Prozkoumej jiné poznámky...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~Kresby obsahují různé věci od oplzlostí o Spalovačích až po slogany oslavující činy lokálních gangů. Jedna kresba upoutala tvůj zrak... někdo vyřezal na levou ruku těla jméno "Pharod", pak přes něj vysekal "X".  ~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"Pharod?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~Když jsem nahlas vyslovil jméno Pharod, "Nástěnka" mi ukázal, kde ho najdu... několik bloků na západ od Márnice a dolů, což mě docela udivilo. Že by se Pharod někam zahrabal?~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"Pharod?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~Prozkoumej jiné letáky...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~Zombie okamžitě trhla svou levou rukou nahoru a ukázala přímo na jih. O chvíli později spadla ruka zpět na místo, s hlasitým ŽUCHNUTÍM.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"Hmmm. Jestlipak to funguje i s jinými letáky..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"Hmmm. Jestlipak to funguje i s jinými letáky..."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~Prozkoumej jiné letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"Uh... Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~Zombie okamžitě trhla levou rukou nahoru a ukázala přímo na jihozápad. O chvíli později spadla ruka zpět na místo s hlasitým ŽUCHNUTÍM.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~Prozkoumej jiné letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"Ah... Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~Zombie okamžitě trhla levou rukou nahoru a ukázala přímo na západ... a dolů. O chvíli později spadla ruka zpět na místo s hlasitým ŽUCHNUTÍM.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~Prozkoumej jiné letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"Ah... díky."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~Pevně jsi uchopil dlažební kostku a vytáhl ji z hlavy zombie. Pomalu z ní kapou zbytky mozkové hmoty a hnijící maso... vypadá to, že ať už bylo v hlavě cokoliv, dávno se to změnilo ve sliz. ~ */
  IF ~~ THEN REPLY #6318 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~Prozkoumej jiné letáky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~Použij schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~Zombie okamžitě trhla levou rukou nahoru a ukázala přímo na jihovýchod. O chvíli později spadla ruka zpět na místo, s hlasitým ŽUCHNUTÍM.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~Zombie stojí bez pohybu. Všiml sis na rameni čistého místa, kde bys mohl vyrýt její jméno.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~Zombie okamžitě švihla rukou (ukázat na kterýkoli zatracený místo, kde je Xixi).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~Zombie stojí dál bez pohybu. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"HLEDÁ SE: schopná osoba ochotná vyšetřit případ velké důležitosti pro záležitost Spalovačů. Po úspěšném splnění úkolu nabízíme finanční kompenzaci. Zájemci kontaktujte Zasvěceného Norochje, Bar Zapomnění."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"Bar Zapomnění?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~Prozkoumej mrtvolu.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~Prozkoumej mrtvolu.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~Podívej se na další poznámky...~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~Použij na mrtvolu svou schopnost Kosti-vyprávějte.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~Nechej mrtvolu být.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~Zombie okamžitě škubla levou rukou a ukázala na budovu na západě. O chvíli později její ruka spadla dolu s hlasitým PLESK.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~Prozkoumej mrtvolu.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~Prozkoumej mrtvolu.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~Prozkoumej další poznámky.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~Použij na mrtvolu svou schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"Uh... Díky."~ */ EXIT
END
