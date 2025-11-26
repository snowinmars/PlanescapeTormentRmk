// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~Vidíš mladou ženu ve špinavých pracovních šatech. Když ses přiblížil, kývla ti na pozdrav.~ */
  IF ~~ THEN REPLY #58098 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"Ahoj... potřebuješ něco?"~ */
  IF ~~ THEN REPLY #58101 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"Ne, vlastně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"Dobrá."~ */
  IF ~~ THEN REPLY #58104 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"Jmenuju se Aileena."~ */
  IF ~~ THEN REPLY #58110 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"Vyřizuju pracovní objednávky. Dostávám různé objednávky od obchodníků v celém městě. Pak vyberu předměty a zařídím dopravu."~ */
  IF ~~ THEN REPLY #58113 /* ~"Zní to jako zajímavá práce."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~Usmála se. "To vlastně je..." Povzdychla si a pokrčila rameny. "Kdyby nebyla, určitě bych to nedělala."~ */
  IF ~~ THEN REPLY #58117 /* ~"A to proč?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~Zamyšleně se zamračila. "No... není to zrovna jednoduchá práce, mělo by se o to starat víc lidí. Ale můj šéf je spořivej syn prostitutky a další osobu na výpomoc nenajme."~ */
  IF ~~ THEN REPLY #58121 /* ~"Tak proč tady zůstáváš?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~Znovu se usmála. "Devore, šéf, je možná šetřílek, ale není úplně špatnej. Jeden den v týdnu máme volnej a dokonce zaplacenej!"~ */
  IF ~~ THEN REPLY #58125 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~Pokrčila rameny. "Není co říct. Jestli jsi viděl jedno skladiště, viděl jsi všechna. Tohle není žádná výjimka."~ */
  IF ~~ THEN REPLY #58128 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~Na chvíli se na tebe zmateně dívá. "Chtěla jsem říct, že jsi asi bláznivej, když hledáš devu v Curstu... ale teď jsem si na něco vzpomněla." Odmlčela se. "Nepamatuju si ale přesně co, jenom že to mělo něco společného s devou. Měl bys zajít do administrativního úřadu a zeptat se tam. Je to na náměstí."~ */
  IF ~~ THEN REPLY #58131 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~Vidíš skladnici Aileenu. Usmála se a kývla ti na pozdrav. "Tak zase ahoj. Co je?"~ */
  IF ~~ THEN REPLY #58134 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"Nic, sbohem."~ */ EXIT
END
