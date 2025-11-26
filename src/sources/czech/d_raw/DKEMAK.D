// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~Vidíš mladého muže v laciných šatech. Když ses přiblížil, ukázal ti sprosté gesto.~ */
  IF ~~ THEN REPLY #57594 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"Vem si tyčku a vraž si ji někam, vole." Dívá se na tebe naštvaně.~ */
  IF ~~ THEN REPLY #57597 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"Ty ani tvoje pitomý otázky mi nestojí ani za krysí prdel. Řekl jsem odpal, takže zmizni!"~ */
  IF ~~ THEN REPLY #57600 /* ~"Myslím, že to tebe natluču slušné vychování."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"Tak tedy sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~Vychytrale se usmál. "Zkus si to, vole. Jsem tady, protože jsem zabíjel takový blbečky, jako jsi ty..."~ */
  IF ~~ THEN REPLY #57604 /* ~"Jsem tady proto, že tu chci být a až budu chtít odejít, tak zkrátka odejdu."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~Zaútoč na něj: "Mám rád výzvu..."  ~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~Chvíli na tebe zíral. Sledoval jsi, jak si prohlížel tvé jizvy a pak se ti zadíval přímo do očí. Po chvíli nervózně polknul. "Myslíš to vážně, že?" Chvíli čekal na odpověď, pak pokrčil rameny. "Tak co chceš?"~ */
  IF ~~ THEN REPLY #57615 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"Prosím..."~ */
  IF ~~ THEN REPLY #57620 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"Hledám devu. Měl by být někde tady dole."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~Než odpověděl, zaváhal. "Kemak. Všichni mi ale říkaj Kem. Ne snad že by se mi to líbilo."~ */
  IF ~~ THEN REPLY #57626 /* ~"Proč jsi tady?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"Mám nějaké otázky...~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"Jednou jsem se ožral a dostal do rvačky. Prý jsem zabil nějakého kreténa... nevím, nepamatuju si to." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #57632 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"Nevím, jsem tady od začátku..." Odmlčel se a přemýšlí. "Je to rozdělený na několik prstenců: vnější, centrální a vnitřní. Čím horší zločin, tím dál jdeš. Tady ve vnitřním prstenci jsou ti nebezpeční."~ */
  IF ~~ THEN REPLY #57638 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"Vážně?" Překvapeně se na tebe podíval. "Proč by tady dole byl deva... pokud by neudělal něco opravdu hrozného." Dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #57644 /* ~"Nevím. Slyšel jsi o něm něco?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~Zavrtěl hlavou. "Ne, ani ťuk." Usmál se na tebe. "Víš, nějak se nedostanu moc mezi lidi..."~ */
  IF ~~ THEN REPLY #57651 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~Vidíš Kemaka. Zamračil se na tebe. "Zase ty. Co chceš?"~ */
  IF ~~ THEN REPLY #57655 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"Nic, sbohem."~ */ EXIT
END
