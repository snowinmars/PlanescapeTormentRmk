// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~Vidíš starší ženu. Když tě uviděla, zamračila se a zavrtěla hlavou.~ */
  IF ~~ THEN REPLY #58664 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~Odfrkl si. "Vykašli se na to, vole. Strč si to svoje *zdravím* někam a řekni mi, co chceš?"~ */
  IF ~~ THEN REPLY #58667 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"Tak se ptej." Zírá na tebe.~ */
  IF ~~ THEN REPLY #58670 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"Nevíš něco o devovi, který by měl být tady dole?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~"Ale... ty jsi ale společenský týpek. Jmenuju se Rae, ne snad, že by ti to nějak pomohlo. když to budeš vědět."~ */
  IF ~~ THEN REPLY #58675 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~Rozhlédla se a pak pokrčila rameny. "Je to vězení, rozdělené na tři části. Vnější, kde jsou lehké váhy. Centrální část je pro horší týpky. Tady, ve vnitřní části, jsou praví kriminálníci." Usmála se na tebe.~ */
  IF ~~ THEN REPLY #58678 /* ~"O jaké zločiny tady jde?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"Ve vnější části většinou zlodějna a tak. V centrální jsou hlavně za přepadení. Je to plné grázlů, rváčů a podobných magorů. Tady ve vnitřní části jsou vrahové, hrdlořezi, konspirátoři a takové nebezpečnější typy." Usmála se.~ */
  IF ~~ THEN REPLY #58682 /* ~"Proč jsi tady?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~Zasmála se. "Protože jsem udělala chybu! Proč bych tady jinak byla." Mávla rukou. "Stejně ti potom nic není."~ */
  IF ~~ THEN REPLY #58686 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~Zavrtěla hlavou. "Není tady, má svou vlastní celu... nebo alespoň měl."~ */
  IF ~~ THEN REPLY #58689 /* ~"Co tím myslíš?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"Vězni ve vnější části se používají pro zvětšování vězení. Ti vykopali většinu nových místností." Odmlčela se. "Jednou se prokopali do nějaké komnaty a on tam byl ten tvůj deva. Řekla bych, že tam ještě smrdí."~ */
  IF ~~ THEN REPLY #58693 /* ~"Kde ho můžu najít?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~Zamračila se. "Právě jsem ti to řekla, ty pako. Ve vnější oblasti!"~ */
  IF ~~ THEN REPLY #58697 /* ~"Co je to pako?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~Píchla tě do hrudi kostnatým prstem. "Ty jsi, vole. Nejdokonalejší případ paka, kreténa a blbečka, jaký jsem kdy viděla."~ */
  IF ~~ THEN REPLY #58701 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~Vidíš Rae. Zasmála se. "Co chceš tentokrát, vole?"~ */
  IF ~~ THEN REPLY #58704 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"Nic, sbohem."~ */ EXIT
END
