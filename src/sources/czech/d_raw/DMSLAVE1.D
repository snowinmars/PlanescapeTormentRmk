// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~Vidíš muže se smutným výrazem. Dívá se na tebe s beznadějí v očích.~ */
  IF ~~ THEN REPLY #37770 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~Podíval se kolem sebe a pak na tebe. "Něco chceš, troubo?"~ */
  IF ~~ THEN REPLY #37772 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"Tak nic. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~Zavrtěl hlavou. "Hele, troubo, nemám zrovna dvakrát náladu na tvoje pitomé otázky. Odprejskni!"~ */
  IF ~~ THEN REPLY #37774 /* ~"Proč, co se to tu děje?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~Naštvaně se na tebe podíval. "Tohle je aukce, tupče. Prodávají mě do otroctví! Tak už začni laskavě přemýšlet."~ */
  IF ~~ THEN REPLY #37776 /* ~"Proč tě prodávají?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"Co to znamená ´přemýšlet´?~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~Znechuceně se na tebe podíval. "Zjistil jsem, že jsem tak úžasný a dokonalý, že si můžu vydělat nějaké prachy, když se prodám. Co kdybys už skončil s tím vyptáváním, pomatenče."~ */
  IF ~~ THEN REPLY #37779 /* ~"Chci znát pravý důvod, proč tě prodávají."~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"Tak dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~Nejdříve vypadá naštvaně, ale pak rezignuje. "Tak jo, zapích sem nějakýho chudáka. Ožral jsem se, pobili sme se, vrazil sem do něj kudlu." Povzdechl si. "Děkuju všem bohům, že to rozchodil. Jinak bych teď byl v chládku." ~ */
  IF ~~ THEN REPLY #37781 /* ~"Co je to kudla?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"Vězení?" ~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"Aha. Takže tě prodávají do otroctví kvůli souboji?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~Zamračil se na tebe. "Ty seš asi pěkně blbej, co? Kudla je dýka, idiote." Otočil se jinam. "Už se s tebou nebudu vybavovat, táhni." ~ */
  IF ~~ THEN REPLY #37784 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~Zamračil se na tebe. "Jo, vězení. Když tě tam pošlou, bejvá to většinou na pěknej kus života a není to zrovna ten nejhezčí kus. Jako otrok se zas tak špatně mít nebudu a nebude to ani na tak dlouhej čas." Pak se od tebe otočil. "Už nechci žádné otázky. Zmiz."~ */
  IF ~~ THEN REPLY #37785 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~Zamračil se na tebe. "Jo... Ten chudák byl můj kámoš, tak na soudce moc netlačil. Tak jako tak sem měl co dělat a nakonec mě odsoudili sem." Otočil se od tebe. "Už žádné otázky. Zmiz."~ */
  IF ~~ THEN REPLY #37786 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~Usmál se na tebe. "To znamená jdi na dlouhou procházku jednosměrným portálem a nevracej se!"~ */
  IF ~~ THEN REPLY #37787 /* ~"Chápu. Takže proč tě prodávají?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~Vidíš muže se smutným výrazem. S beznadějí v očích se dívá, jak se blížíš. "Zase ty? Proboha jak se tě mám zbavit?" ~ */
  IF ~~ THEN REPLY #37789 /* ~"Mám nějaké otázky..."~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"Tak nic. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~Věnoval ti zlostný pohled. "Ale já pro tebe žádné odpovědi nemám. Odprejskni, emaile!"~ */
  IF ~~ THEN REPLY #37791 /* ~"Fajn, sbohem."~ */ EXIT
END
