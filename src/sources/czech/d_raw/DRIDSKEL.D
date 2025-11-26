// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~Kostlivec vrtí hlavou a něco si pro sebe mumlá. Často se také něčemu chichotá, až si musí zakrývat lebku kostnatou rukou, aby se zastavil. Je dost starý, už nemá na kostech ani kousek masa, jenom pár barevných hadrů.~ */
  IF ~~ THEN REPLY #20356 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Ignoruj ho a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~ "Zdravím, ano!" Každým slovem ze své lebky vypuzuje obláčky prachu.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"Prý máš nějakou složitou hádanku."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"Rád bych odpověděl na jednu z tvých hádanek."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"Měl bys sobě hledati dopovědi od osob jiných, jelikož já zájem žádný nevlastním ve věci tvých otázek." Zakryl si ústa rukou a zachichotal se. "Já vím, že toť hrozivě sprosté, ale nezbývá tobě jiného, než odpustiti mně chování toto."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"Prý máš nějakou složitou hádanku."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"Rád bych odpověděl na jednu z tvých hádanek."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"Dobrá tedy, najdu někoho jiného. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~Zahihňal se. "Pravděpodobné málo!" Když uviděl tvůj výraz, jenom se rozesmál ještě více.~ */
  IF ~~ THEN REPLY #20365 /* ~"Jaká je ta hádanka?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Pravda: "Řekni mi to, nebo tě rozmlátím na malé chřestivé kousky, které nasypu do tvý lebky a tu pak prodám jako chrastítko!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Blufuj: "Řekni mi to, nebo tě rozmlátím na malé chřestivé kousky, které nasypu do tvý lebky a tu pak prodám jako chrastítko!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~Smích okamžitě přestal. "Hmff!" Kostlivec se od tebe odvrátil.~ */
  IF ~~ THEN REPLY #20370 /* ~Odejdi.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~Přikývl, potlačujíc smích. "Chceš sobě slyšeti ji?"~ */
  IF ~~ THEN REPLY #20371 /* ~"Ano."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"No, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"Ehm. Přemýšlím nad slovy, jež koncovkou -ZICE končí sobě. Kompozice, propozice, pozice a akvizice, toť čtyři takovážto slova jsou. Ale v obecně užívaném jazyce pět slov nachází se... jaké páté slovo jest? Navíce slovo toť jest takové, jež každý den používá se. A pokud tvé uši napjaté byly a pozorně má slova odposlechly, už slyšel jsi z úst mých, co za slovo to je~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"Jasný. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"Je to... uh... hmm."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"Promyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"Gaaaah! Jak zvěděl jsi to?"~ */
  IF ~~ THEN REPLY #20376 /* ~"Ten začátek je tam jenom na zmatení. Pět slov v 'obecně - užívaném - jazyce'. Páté slovo je 'jazyk.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Odejdi se smíchem pryč.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[žádný text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"Och, trolí lejna! Oh, dobrá tedy. Jenom nikomu jinému odpověď nedávej. Učiníš pro mě slib ve věci této?"~ */
  IF ~~ THEN REPLY #20378 /* ~"Proč bych neměl?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"Jasně, slibuju, že nic neřeknu. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"Nic slibovat nebudu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"Protože v představě jak ani postávajíce kolem ve stavu zmateném, pokoušejíce nalézti odpověď až do nekonečna, já veliké potěšení nacházím sobě." Zle se zasmál, tlumíc smích rukou. "Nuže? Učiníš slib?"~ */
  IF ~~ THEN REPLY #20381 /* ~"Jasně, slibuju, že nic neřeknu. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"Nic slibovat nebudu. Sbohem."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"Zapamatuj sobě... Nikdo odpověď od tebe zvědět nesmí!"~ */
  IF ~~ THEN REPLY #20383 /* ~"Správně, správně. Sbohem."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"Zlosynu! Mou zábavu ty ničíš, do Baatoru má kletba zasílá tě! Slinu bych plivl po tobě já, bych měl nějakou sobě! Hmfff!" Kostlivec se od tebe odvrátil.~ */
  IF ~~ THEN REPLY #20384 /* ~Odejdi.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"Posečkej! Jenom nikomu jinému odpověď nedávej. Učiníš pro mě slib ve věci této?"~ */
  IF ~~ THEN REPLY #20385 /* ~"Proč bych neměl?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"Jasně, slibuju, že nic neřeknu. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"Nic slibovat nebudu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~Kostlivec vybuchl smíchy. Ukazuje na tebe kostlivým prstem, doslova chrochtá blahem.~ */
  IF ~~ THEN REPLY #20388 /* ~"Dobrá, jaká je odpověď?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"Heh. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"Bez šance! Bez *šance*!" Tvůj výraz mu jenom dodal, rozesmál se ještě více.~ */
  IF ~~ THEN REPLY #20390 /* ~"Co když tě *porazím*? Řekneš mi to pak?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Pravda: "Řekni mi to, nebo tě rozmlátím na malé chřestivé kousky, které nasypu do tvý lebky a tu pak prodám jako chrastítko!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Blufuj: "Řekni mi to, nebo tě rozmlátím na malé chřestivé kousky, které nasypu do tvý lebky a tu pak prodám jako chrastítko!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~Smích okamžitě zanikl. "Cože toto?" Přiložil si dlaň ke straně lebky. "Slyším snad... výzvu? Ano... ano... pokračuj sobě! Ale prohraješ-li, nebo soutěž v polovici vzdáš a ustaneš, již ni slova jediného s tebou nevyměním!"~ */
  IF ~~ THEN REPLY #20394 /* ~"Dobrá tedy. Začněme."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~Horlivě přisvědčil.~ */
  IF ~~ THEN REPLY #20396 /* ~"Hmm. Co je cennější? Libra zlaťáků, každý v ceně sta měďáků, nebo půl libry zlatých mincí, každá v ceně dvě stě měďáků?"~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"Snadná, snadné až příliš! Jedna libra zlata, ta *vždy* cennější než libry polovina! Hloupé, hloupé!" Zahihňal se.~ */
  IF ~~ THEN REPLY #20398 /* ~"Dobrá tedy. Jsi na řadě."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~Kostlivec si kleknul a nakreslil v prachu kružnici. Ukázal na ni a promluvil: "Strýce ni bratry já nemám žádné, ale tohoto muže otec jest synem otce mého. Kdože on je?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"Je to tvůj syn."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"Já... já nevím."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"Pche! Řada na osobě tvé nyní."~ */
  IF ~~ THEN REPLY #20403 /* ~"Výrobce to nechce, kupec to nepoužívá a uživatel to nevidí. Co je to?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~Kostlivec se zasmál jako malé dítě. "Pravdivé ne! Nepravdivé! Pravou odpovědí jest 'rakev' a já rozhodně mou popatřil!"~ */
  IF ~~ THEN REPLY #20405 /* ~"Dobrá tedy. Zase jsi na řadě."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"Jakéže slovo písmen šesti dokonce i největší z mudrců smrtelných špatně vyslovují?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"Hmm. 'Špatně.'"~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"Já... já nevím."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~Ukázal ti sevřenou pěst. "Oooo, klatě! Pokračuj."~ */
  IF ~~ THEN REPLY #20410 /* ~"Za noci přichází a nikdo je nepřivádí, za dne mizí a nikdo je neukradnul."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"Eh... hmm. Ah... hvězdy! Hvězdy, hee-hee!"~ */
  IF ~~ THEN REPLY #20412 /* ~"Ano, jistě. Ptej se."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~Kostlivec zakřupal klouby. "Nikdy nebyl jsem, vždy však budu, žádný nespatřil mne, ni nikdy nespatří. Ale i tak já jistotou pro vše jsem, což žije a dýchá."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"Odpověď je... je... ah! 'Zítřek.'"~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"Já... já nevím."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"Tak nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"Waaah! Ano, zítřek. Ano. Mluv."~ */
  IF ~~ THEN REPLY #20417 /* ~"Co je začátkem Armageddonu a zároveň koncem Věčné Temnoty,  čím začíná anarchie, co zároveň ukončuje každou touhu?"~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"Tak to nic. Sbohem."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~Kostlivec se začal hihňat, pak se náhle zastavil. "Ah... ééé... No, zmar."~ */
  IF ~~ THEN REPLY #20419 /* ~"No? Tvoje odpověď... sem s ní."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Je na tobě řada s ďábelským zlomyslným smíchem. Zasměj se.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Trpělivě čekej.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~Kostlivec svěsil hlavu. "Já... já nevím."~ */
  IF ~~ THEN REPLY #20422 /* ~"Dej mi odpověď na svou první hádanku a já ti řeknu řešení."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~Přikývl. "Je to 'jazyk.' Začátek jest nedůležitý, toliko pro zmatení. Zapamatuj sobě: pět slov v 'obecně - užívaném - jazyce'. Pátým slovem slovo 'jazyk' jest." Hlasitě si povzdychl. "A odpověď tvá?"~ */
  IF ~~ THEN REPLY #20423 /* ~"Je to písmeno 'A.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"Ani náhodou, ani náhodou. Sbohem."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"Heh... zábavne. Nuže, jaká je odpověď? Ah... počkej! Kamže to kráčíš?"~ */
  IF ~~ THEN REPLY #20425 /* ~"Dobrá tedy. Je to písmeno 'A.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Směj se a odejdi.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~Kostlivce popadl záchvat smíchu. Jeho řehot se odráží od stěn katakomb a rozléhá se po celém podzemí.~ */
  IF ~~ THEN REPLY #20428 /* ~Odejdi.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~Kostlivec ignoruje jakékoli pokusy o navázání konverzace.~ */
  IF ~~ THEN REPLY #48940 /* ~Odejdi.~ */ EXIT
END
