// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~Vidíš nevýrazného muže. Vypadá jako další obyčejný zákazník na trhu. Prochází mezi statními nakupujícími se znuděným výrazem.~ */
  IF ~~ THEN REPLY #37737 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~Když jsi ho pozdravil otočil se k tobě a znuděnost v jeho tváři vzrostla. "Ano..." ~ */
  IF ~~ THEN REPLY #37739 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~Věnoval ti mírně podrážděný pohled. "Tak jo..."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"Hledám někoho jménem Lothar, nebo Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, kdo to mohl udělat?~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"Kde bych tu mohl koupit nějaké zbraně?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"Kde bych mohl koupit magické věci?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"Co mi můžeš říct o téhle čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"Nikdy jsem o něm neslyšel. Titul *Pán kostí* bych si určitě pamatoval, něco takového se těžko zapomíná." Stále vypadá podrážděně.~ */
  IF ~~ THEN REPLY #37747 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~Chvíli na tebe zírá. "Chybí ti lebka... no tak to slyším prvně. Myslel jsem že sigilští zloději hledají trochu cennější věci na vypůjčení. Nevím co ti na to mám říct." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #37749 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~Znuděně se na tebe podíval a pak pohledem ukázal k tržišti. "Právě tady, kámo." Rozhodil rukama. "Jen se zkus zeptat obchodníků. Jsem si jistý, že najdeš co potřebuješ."~ */
  IF ~~ THEN REPLY #37751 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~Povzdechl si. "Není to nic moc... ale je to jediný domov co mám. Myslím že se naučím mít to tu rád, protože odsud neodejdu."~ */
  IF ~~ THEN REPLY #37753 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~Když ses přiblížil, otočil se a pak se zamračil. "Už jsem ti nějaký čas obětoval . A nehodlám v tom pokračovat, kámo." Otočil se na opačnou stranu.~ */
  IF ~~ THEN REPLY #37735 /* ~Odejdi.~ */ EXIT
END
