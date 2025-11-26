// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~Malý mužík pozdvihl obočí, když ses k němu přiblížil. Promluvil tónem uraženého, arogantního šlechtice. "Uvědom si, že narušuješ oficiální proces, takže si dej pozor na svá slova: jsem mocný zástupce města, a byl bych docela nerad, kdyby byl tvůj osud stejný, jako osud toho muže..." Ukázal na odsouzence, který čeká na popravu. "... docela *ubohý* osud."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"Pokud ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"Pokud ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"Pokud ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"Nemůžete toho muže popravit. Kvůli takovým věcem Curst sklouznul do Carceri... a to je to, co musíme zastavit, abychom dostali město zpátky do Pustin."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"Nemůžete toho muže popravit. Kvůli takovým věcem Curst sklouznul do Carceri... a to je to, co musíme zastavit, abychom dostali město zpátky do Pustin."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"'Oficiální proces?' Pochybuju. Vy toho muže nepopravíte."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"No tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"Oh?" Jedno obočí pokleslo, druhé se zvedlo. "Takže dáš sebe na místo pravé justice a spravedlnosti? A *jak* míníš zabránit popravě?"~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"Tak, že zabiju popravčího... a tebe, jestli to bude třeba."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~Ze soudcovy tváře vyprchala barva. "M-m-možná j-jsme se t-trochu unáhlili, Nemilosrdný. Stráže! Uvolněte toho muže!" Pokusil se na Vhailora usmát. "Děkuju ti za tvou skvěle načasovanou pomoc, sire."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Soudce pozdvihl obočí. "Co? Ty se *opovažuješ*? Stráže! Zatkněte toho muže - nebo ho zabijte, pokud to jinak nepůjde!"~ */
  IF ~~ THEN REPLY #57348 /* ~Zaútoč na soudce.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Zaútoč na stráže.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Zaútoč na popravčího.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*Špatné?* Zapomněl jsi, že jsem magistrát města. Já určuju, co je správné a špatné v tomto městě!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"Ale jestli ho popravíte, jenom zvýšíte chaos, který uvrhl Curst do Carceri... Musíme zastavit to šílenství, abychom dostali Curst zpátky tam, kam patří... nebo tady zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"Ale jestli ho popravíte, jenom zvýšíte chaos, který uvrhl Curst do Carceri... Musíme zastavit to šílenství, abychom dostali Curst zpátky tam, kam patří... nebo tady zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"Ale jestli ho popravíte, jenom zvýšíte chaos, který uvrhl Curst do Carceri... Musíme zastavit to šílenství, abychom dostali Curst zpátky tam, kam patří... nebo tady zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"Ať je to jak chce, toho muže neporavíte."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"No tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~Soudce pokrčil mocné obočí. Podíval se na tebe, pak na představitele města, pak zase na tebe. "Chytrá a moudrá jsou tvá slova, sire... děkuji ti za tvou výtečně načasovanou pomoc. Je oceněna městem i obviněným. Už nebudou žádné další uspěchané rozsudky. Stráže! Pusťte toho muže!"~ */
  IF ~~ THEN REPLY #57365 /* ~"Díky. Sbohem."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"Znovu? A co chceš tentokrát?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"Ten muž je jenom obětní beránek. Jestli ho popravíte, jenom zvýšíte chaos, který vrhl tohle město do Carceri. Nechte toho šílenství, ať můžeme vrátit Curst zpátky, kam patří... Než zemřeme *všichni*."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"Nemůžu vás nechat popravit toho muže - je to jenom obětní beránek. To je *špatné*. Kvůli takovým věcem Curst sklouznul do Carceri... a to musíme zastavit, aby se město vrátilo do Pustin."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"Nemůžu to dovolit... nepopravíte toho muže."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~Malý mužík pozdvihl obočí. "Tady ničeho nezmůžeš, maximálně mě naštveš. Doporučuju ti zmizet."~ */
  IF ~~ THEN REPLY #57387 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"Znovu?" Soudce si povzdychl. "Tady ničeho nezmůžeš, maximálně mě naštveš. Doporučuju ti zmizet."~ */
  IF ~~ THEN REPLY #57390 /* ~Odejdi.~ */ EXIT
END
