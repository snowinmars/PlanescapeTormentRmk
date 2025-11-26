// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~Muž vypadá docela zmateně. "Zdravím, pane. Mohu se zeptat, jak ses sem dostal?"~ */
  IF ~~ THEN REPLY #66522 /* ~"Přišel jsem dolů po schodech... skrze takové divné dveře, které jsem našel."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"Tak to bych to měl trochu líp zamaskovat." Pokrčil rameny, pak se na tebe usmál. "Jsem správce nevěstince. Vážně bys tady dole neměl být, ale jestli se chceš jenom kouknout, nic proti tomu nemám. Pokud se tu nezdržíš příliš dlouho."~ */
  IF ~~ THEN REPLY #66665 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"Znovu zdravím. Poslyš... opravdu bys tady dole neměl být. Prosím, nezdržuj se tu moc dlouho. Byl bych nerad, kdyby jeden z nás pak měl kvůli tomu nějaké problémy."~ */
  IF ~~ THEN REPLY #66667 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~Nervózně se usmál. "Opravdu bych ti ani neměl dovolit vstoupit sem, a už vůbec bych se s tebou neměl bavit. Prosím, žádné otázky:"~ */
  IF ~~ THEN REPLY #66669 /* ~"Tak mi alespoň řekni, co je tohle za místo."~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"Tady jsou senzorické kameny jednotlivých dám... používají je jako zápisníky. Ale ty je použít nemůžeš, jestli ti jde o tohle... každý z kamenů je nastavený na jednu studentku Nevěstince, takže pouze ona jediná má ke kameni přístup."~ */
  IF ~~ THEN REPLY #66671 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ JOURNAL #66672 /* ~Pod Nevěstincem jsem našel ve velké komnatě místního Správce. V komnatě jsou senzorické kameny, jeden pro každou prostitutku, které je používají jako zápisníky. Správce mi ale řekl, že je nebudu moci použít, protože jsou naladěny pouze na své majitelky.~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"Zdravím, pane." Otočil se k Fall-From-Grace. "A vás tak, Paní Grace... můžete se na mně spolehnout, že vám ty kameny pohlídám, zatímco budete pryč." Muž vrátil svou pozornost k tobě. "Pokud mě omluvíš, mám ještě několik věcí na práci. Sbohem, pane."~ */
  IF ~~ THEN REPLY #66673 /* ~Odejdi.~ */ EXIT
END
