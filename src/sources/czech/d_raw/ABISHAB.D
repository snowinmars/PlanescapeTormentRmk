// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~Ještěr s černými šupinami ční do výšky osmi stop - jeho výška je vyrovnána útlou, hadí postavou. Táhne za sebou dlouhý chápavý ocas, na zádech má složená kožnatá křídla. Ze stvoření vychází silný octový pach... a také spousta horka. Ignoruje tě. Alespoň to tak vypadá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"Zdravím."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"Zdravím."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"Zdravím."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Odejdi od té bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~Stvoření pomalu pohnulo hlavou dolů, aby na tebe pohlédlo. Jeho šupinaté čelo se hrozivě zvrásnilo, následně otevřelo ústa, aby ze sebe vydalo hluboké, skřípavé zasípání. Pozoruješ, že žár sálající z této bytosti začíná sílit.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"Chtěl bych si na chvilku promluvit."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"Chtěl bych si na chvilku promluvit."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"Chtěl bych si na chvilku promluvit."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Odejdi od stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~Bytost otevřela svá ústa, ukazujíc tak řadu začernalých tesáků. Jak vydala dlouhé, hluboké zasípání, kolem ramen a paží se jí roztancoval oheň.~ */
  IF ~~ THEN REPLY #7725 /* ~"Uklidni se! Chci si s tebou jen promluvit."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Oplať jí zasyčení.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Odejdi od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~Stvoření zaryčelo a vrhlo se na tebe!~ */
  IF ~~ THEN REPLY #7730 /* ~Braň se...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~Bytost mluví skřípavým sípotem; její hlas zní, jako když se o sebe třou dva kameny. Nějakou chvíli jenom syčela, její hlas sílil a slábnul.~ */
  IF ~~ THEN REPLY #7732 /* ~"Uh... cože?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Odejdi od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~Stvoření zavrčelo. "NEMÁM ti ccco říct." Fiendovy oči se zúžily do štěrbin. "Jessstli tu zůstaneššš, tvá krev ssskropí kamení."~ */
  IF ~~ THEN REPLY #7735 /* ~"Chci ti jenom položit pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"Jen to zkus a uvidíme či krev pokryje ulici až skončíme."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Obezřetně se stáhni se a odejdi od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~Stvoření náhle nasálo vzduch a s podivným zasípáním se od tebe odvrátilo. Vypadá to, že ucítilo nějaký nepříjemný pach. ~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"Řekl jsem, že s tebou chci mluvit."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"Řekl jsem, že s tebou chci mluvit."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Odejdi od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~Oči stvoření se nejprve zaměřily na Annah, pak se zúžily do štěrbin. Otevřelo svá ústa, odhalilo řadu začernalých tesáků a kolem ramen a paží se jí roztancoval oheň. Žár, který vyzařovalo, začal sílit.~ */
  IF ~~ THEN REPLY #7743 /* ~"Hej! Mluvím s tebou!"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Odejdi spolu s Annah od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~Oči zrůdy se zaměřily na Fall-from-Grace, pak se zúžily do štěrbin. Otevřela svá ústa, odhalila řadu začernalých tesáků a kolem ramen a paží se jí roztancoval oheň. Žár, který vyzařovala, začal sílit.~ */
  IF ~~ THEN REPLY #7746 /* ~"Hej! Mluvím s tebou!"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Odejdi spolu s Fall-from-Grace od bytosti.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~Stvoření zaryčelo a vrhlo se na Annah!~ */
  IF ~~ THEN REPLY #7749 /* ~"Hrome...!"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~Bytost zaryčela a vrhla se na Fall-from-Grace!~ */
  IF ~~ THEN REPLY #7751 /* ~"Hrome...!"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~Tento fiend pokrytý černými šupinami se tyčil do výše osmi stop -- jeho obří výška, kompenzována jeho vyzáblostí, jaksi připomínala hada. Vláčel za sebou dlouhý chápavý ocas a na zádech se mu houpala kožená křídla. Fiend kolem sebe šířil těžký kyselý pach... tedy kromě tepla. Zdá se, že tě ignoruje.~ */
  IF ~~ THEN REPLY #7753 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Odejdi od abishaie.~ */ EXIT
END
