// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~Vidíš mladého muže v potrhaných šatech. Znuděně se dívá někam do dálky.~ */
  IF ~~ THEN REPLY #57501 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~Tvůj pozdrav ho vylekal. Chvíli si tě prohlíží. "Nestraš mě, kámo. Málem jsem umřel strachy."~ */
  IF ~~ THEN REPLY #57505 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~Zamračil se. "Jako co..."~ */
  IF ~~ THEN REPLY #57507 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"Slyšel jsem, že je prý tady dole někde deva."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"Nepotřebuješ znát mý jméno, takže mi dej tu svou otázku a pak mě nech být."~ */
  IF ~~ THEN REPLY #57512 /* ~"Nenávidím lidi bez vychování. Většinou do nich nějaké natluču."~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"Fajn, Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~Pokrčil rameny. "Fajn, jmenuju se Binian. Už jsi šťastný?"~ */
  IF ~~ THEN REPLY #57516 /* ~"Ano, mám  nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"Je to hnojiště a ty a já a každej jinej tady dole je akorát další kus hovna, který sem město hodilo." Výsměšně se zašklebil. "To vysvětluje všechno, ne?"~ */
  IF ~~ THEN REPLY #57519 /* ~"Proč jsi tady?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~Pokrčil rameny a nervózně se rozhlédl kolem. "Ukrad sem pár věcí... možná zmlátil pár chudáků... tak jsem tu."~ */
  IF ~~ THEN REPLY #57523 /* ~"Takže jsi zloděj..."~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~Zavrtěl hlavou. "No, jsem ex-zloděj. Po roce v tomhle hnojišti jsem ex-zloděj..." Povzdychl si a podíval se stranou. "Už tady nikdy nechci znovu skončit, to je jasný."~ */
  IF ~~ THEN REPLY #57527 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~Zamračil se a podíval se stranou. "Je tady jeden, na místě novejch vykopávek. Dívej se po nedávných výkopech a tam ho najdeš."~ */
  IF ~~ THEN REPLY #57530 /* ~"Kde najdu ty nové vykopávky?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"Co vykopávají?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~Pokrčil rameny. "Nikdy jsem tam nebyl, někde támhle." Mávl rukou. "Nemůžeš to minout, hledej stopy kopání. ~ */
  IF ~~ THEN REPLY #57535 /* ~"Co vykopávají?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~Zavrtěl hlavou. "Nic. Když chtějí zvětšit vězení, stráže nás donutí kopat." Odfrkl si. "Součást trestu..."~ */
  IF ~~ THEN REPLY #57539 /* ~"Kde najdu ty nové vykopávky?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~Vidíš zloděje Biniana. "Zase ty... co chceš teď?"~ */
  IF ~~ THEN REPLY #57543 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"To nic. Sbohem."~ */ EXIT
END
