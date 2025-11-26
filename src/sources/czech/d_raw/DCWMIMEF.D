// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~Tato mladá žena - pozorující něco jako herce - vypadá poněkud zmatená. Otočila se směrem k tobě a ty jsi přistoupil blíž.~ */
  IF ~~ THEN REPLY #49740 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"Nikdy jsem neviděla nic podobného. Jeho vystoupení mi připadá otravné a zároveň zvláštně zajímavé."~ */
  IF ~~ THEN REPLY #49743 /* ~"Co se děje?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"Toho si nevšímej. Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~Dívá se dál na toho muže, který se chová jako uvězněný v nějaké neviditelné krabici nebo kleci. "Někdy jindy, pane. Prosím, nechej mě teď být."~ */
  IF ~~ THEN REPLY #49747 /* ~"Počkej... řekni mi aspoň, co se ti děje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"Jenom pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~Žena na tebe vypálila mrzutým pohledem. "I když si to *ty* možná nemyslíš, pane, nemám zájem být na ulici otravována otázkami cizinců. Teď mě nech být!"~ */
  IF ~~ THEN REPLY #49751 /* ~"Počkej... aspoň mi řekni, co se tu děje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"Sama si nejsem jistá, zda tomu rozumím. Představení tohoto muže zahrnuje všechny druhy ztvárnění a tělesné komiky, ale nikdy neřekne ani slovo. Předtím kolem prošel nějaký mág a ten herec imitoval jeho zvláštní chůzi. Mág jej ve zlosti proklel... Myslím, že ten muž už teď nemůže mluvit a je asi chycen v té samé neviditelné krabici, ve které předtím předstíral uvěznění. Nejdřív pořádně zpanikařil, ale teď se asi uklidnil a pokračuje ve svém představení dál."~ */
  IF ~~ THEN REPLY #49754 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
