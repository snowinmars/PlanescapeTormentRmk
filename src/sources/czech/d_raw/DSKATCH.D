// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~Vidíš důstojníka Harmonia oblečeného v obřadní zbroji. Zdá se být hlavou zaměstnanců otrokářů Harmonia. Je od pohledu obzvláště hrubým a povýšeným členem svého rodu. "Co chceš?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"Jsem tady, abych vyzvedl dceru Zkaženého Vrdele."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~Zašklebil se na tebe. "Neříkej? Co uděláš, když ji zabiju?" Pokynul svým mužům. "Zabijte ji!" Tasí svou zbraň a napadá tě!~ */
  IF ~~ THEN REPLY #50902 /* ~Bojuj.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"No co, moji muži a já shromažďujeme rekruty, abychom je naučili o právu a zlu. Jak vidíš, nejsou vždycky ochotní... ale nakonec je naučíme vidět světlo." Dívá se na tebe. "Budeš dobrý rekrut, už to vidím."~ */
  IF ~~ THEN REPLY #50904 /* ~"Nemám zájem."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"Řekni mi víc."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"To máš špatné." Pokynul svým mužům. "Nechte tu holku. Chopte se ho."~ */
  IF ~~ THEN REPLY #50907 /* ~Bojuj.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"Rád. Vezmeme tě do Arcadia a ukážem ti pravdu." Pokynul svým mužům. "Chopte se ho."~ */
  IF ~~ THEN REPLY #50909 /* ~Bojuj.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"Jsem Measure Two Skatch z Harmonia." Uklonil se. "Moji muži a já tu verbujem. Máš zájem více se obeznámit s cestou Harmonia?"~ */
  IF ~~ THEN REPLY #50911 /* ~"Ne."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"Řekni mi víc."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"Mě to připadá jako otrokářství. Je nějaká možnost, že bys tady ty nechal protentokrát jít?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"Ty nejsi moc chytrý, že ne? Ne. To nemá cenu. Je naše cesta a špatná cesta. Ty špatné cesty musí být... potrestány." Ukazuje na tebe a volá na své muže. "Chopte se ho!"~ */
  IF ~~ THEN REPLY #50915 /* ~Bojuj.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
