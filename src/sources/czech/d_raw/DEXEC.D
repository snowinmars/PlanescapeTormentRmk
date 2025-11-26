// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~Velký muž si okolí vůbec nevšímá. Když si se přiblížil, zívnul a začal si zpod nehtů vytahovat špínu - nebo krev.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"Stop: Nenechám vás popravit toho muže."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"No tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~Stačil jsi sotva otevřít ústa, když tě přerušil. "Promluv si se soudcem. Promluv si se soudcem." A pokračuje v očistě svých nehtů.~ */
  IF ~~ THEN REPLY #57402 /* ~"Ne, mluvím s *tebou*. Nepopravíš toho muže."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~Nechal své nehty chvíli na pokoji. "Pokud mi soudce řekne: zabij toho muže, tak ho zabiju... A vůbec mě nezajímá, co si o tom myslíš ty. Promluv si se soudcem."~ */
  IF ~~ THEN REPLY #57405 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~Popravčí, ruce špinavé od čerstvé krve, se na tebe znuděně podíval. "Věci jsou dál svou cestou, ať mi povíš cokoli. Jdi dál."~ */
  IF ~~ THEN REPLY #57407 /* ~Odejdi.~ */ EXIT
END
