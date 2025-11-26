// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~Strážný se k tobě otočil, ale nevydal žádný zvuk. Skrze průzor na helmě můžeš sledovat jeho tupé, apatické oči.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"Nemůžu vás nechat popravit toho muže."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"No tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~Strážný jenom pokrčil rameny.~ */
  IF ~~ THEN REPLY #57429 /* ~"Nezajímá tě to? Copak nevidíš, co se tady děje?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~Strážný si jako odpověď zvolil odfrknutí.~ */
  IF ~~ THEN REPLY #57432 /* ~"Fajn... Najdu si někoho jiného."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~Apatický strážník tě dokonale ignoruje.~ */
  IF ~~ THEN REPLY #57435 /* ~Odejdi.~ */ EXIT
END
