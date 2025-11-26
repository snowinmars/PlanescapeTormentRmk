// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~Muž má světle žlutou pleť a špičaté uši. Jeho oči jsou jako malé černé kameny. Má na sobě kroužkovou zbroj, která je zdobená složitými ornamenty. Podezřívavě se na tebe dívá, ruku drží na jílci meče. Nic neříká.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"Zdravím tě, šermíři."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"Zdravím, ctěný githyanki."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"Rád bych ti položil nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"Omlouvám se, zdá se, že jsem narazil na špatnou osobu. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"Nemluvím s nikým, kdo nepochází z Národa. Promluv tamhle s Yi'minnem, pokud si s námi přeješ jednat." Sleduje tě očima.~ */
  IF ~~ THEN REPLY #44582 /* ~"Jen jsem se chtěl na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~V blesku se v jeho ruce objevil meč. "Oslovil jsi mě po způsobu githzeraiských psů. Pros za odpuštění, nebo tě k tomu doženu."~ */
  IF ~~ THEN REPLY #44587 /* ~"Omluvit se? Tobě? Ani mě nenapadne."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"Omlouvám se. Myslel jsem, že jsi githzerai."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"Máš mé omluvy."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~Sklonil hlavu, ale ruku z jílce meče nesundal.~ */
  IF ~~ THEN REPLY #44593 /* ~"Mám na tebe pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~Se syčivým nádechem zaútočil!~ */
  IF ~~ THEN REPLY #44599 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"Neodpovídám na otázky. Jsem rytíř githyanki. Mé činy jsou mými slovy. Buď si promluv s Yi'minnem, nebo se s githyanki vůbec nebav."~ */
  IF ~~ THEN REPLY #44604 /* ~"Yi'minn? Dobrá, udělám to. Kde ho najdu?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"Oh, ty jsi githyanki? Měl jsem pocit, že cítím zápach illithidů. Anebo je to možná tvoje slabá krev."~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"Nepokoušej dále mou trpělivost. Jdi. Hned."~ */
  IF ~~ THEN REPLY #44681 /* ~"Mám jenom nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~Klidně si tě prohlíží. "Najdi si ho sám. Jdi hned. Přestaň zkoušet mou trpělivost."~ */
  IF ~~ THEN REPLY #44684 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~Muž má bledě žlutou kůži a jeho uši jsou nahoře zašpičatělé. Oči má jako malé černé kamínky, navlečený je do kroužkové zbroje, pokryté složitým vzorem. Když jeho pohled padl na Dak'kona, do ruky mu skočila zbraň. "Githzeraiský pse. Pojď sem a ochutnej mé stříbro!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"Budeš stát mezi námi, člověče? Tak také zemřeš!" Vrhl se na tebe.~ */
  IF ~~ THEN REPLY #44687 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~Oba githové se na sebe vrhli.~ */
  IF ~~ THEN REPLY #44690 /* ~Zaútoč na githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Nechej je bojovat.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
