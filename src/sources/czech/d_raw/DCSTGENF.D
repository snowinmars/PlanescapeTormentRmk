// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~Vidíš znuděně vypadající ženu. Jak jsi se přiblížil, letmo na tebe pohlédla a zamračila se.~ */
  IF ~~ THEN REPLY #63250 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~Povzdechla si a rychle se rozhlédla, pak obrátila svoji pozornost k tobě. "Rovněž buď pozdraven... Co bys chtěl?"~ */
  IF ~~ THEN REPLY #63253 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"Nic, zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~Její zamračený pohled se prohloubil. "Otázky... S tím nepočítej, troubo. Nejsem mluvka, a ani nechci být. Odpal." ~ */
  IF ~~ THEN REPLY #63256 /* ~"Zabere to jen chvíli tvého času..."~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"Nemám čas, který bych ti mohla věnovat." Odmlčela se, sáhla si za záda, a pak měla v ruce nůž. "Co kdybych ti místo toho věnovala pár palců pěkné baatorianské oceli?"~ */
  IF ~~ THEN REPLY #63259 /* ~Napadni ji.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~Vidíš znuděně vypadající ženu. Jak jsi se přiblížil, letmo na tebe pohlédla a zamračila se.~ */
  IF ~~ THEN REPLY #63262 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~Usmála se na tebe, ale vypadá poněkud nervózně. "Ano. Zdravím a tak vůbec... Chceš něco?"~ */
  IF ~~ THEN REPLY #63265 /* ~"Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"Ne, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~Zamračila se a povzdechla si. "Pokud musíš. Prosím buď rychlý."~ */
  IF ~~ THEN REPLY #63268 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"Co děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"Co bys mi mohla říci o Curstu?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"Víš něco o déva?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"Kdo jsem není důležité. Jen mi polož své otázky a já ti na ně zkusím odpovědět..." Věnovala ti netrpělivý pohled.~ */
  IF ~~ THEN REPLY #63274 /* ~"Výborně. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"Co dělám tě nemusí zajímat. Jen mi polož své otázky, prosím."~ */
  IF ~~ THEN REPLY #63277 /* ~"Výborně. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"Curst je město lhářů, podvodníků a útočníků ze zálohy. Jediná osoba, které můžeš věřit jsi ty sám... a i to si ještě dvakrát rozmysli, než to uděláš." Pokrčila rameny. "Pamatuj si to a budeš se zde mít dobře."~ */
  IF ~~ THEN REPLY #63280 /* ~"Lháři, podvodníci... To se vztahuje i na tebe?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"Chápu. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~Usmála se. "Absolutně..."~ */
  IF ~~ THEN REPLY #63284 /* ~"Chápu. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~Zamračila se zamyšlením. "Ne, nevím nic o déva." Pokrčila rameny. "Zeptej se v administrativní kanceláři v centru města."~ */
  IF ~~ THEN REPLY #63287 /* ~"To udělám. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"Děkuji ti, sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~Vidíš znuděně vypadající ženu. Jak jsi se přiblížil, letmo na tebe pohlédla a zamračila se.~ */
  IF ~~ THEN REPLY #63290 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~S obavami se na tebe podívala. "Uh... Ahoj. Ať už chceš cokoliv, nemám to. Nech mne být." Rozhlédla se.~ */
  IF ~~ THEN REPLY #63293 /* ~"Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"Dobrá, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"Hmm... Dobrá, může to tak být, nicméně nechci abys mne obtěžoval. Jdi pryč." Zamračila se.~ */
  IF ~~ THEN REPLY #63296 /* ~"Zabere to jen chvíli tvého času."~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"Dobrá, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~Její zamračený pohled se prohloubil, jak si dala ruce v bok. "V pořádku, pokud nerozumíš *ne* jako přátelské odpovědi... Musím to udělat méně příjemným způsobem?"~ */
  IF ~~ THEN REPLY #63299 /* ~"Ano, to udělej."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~Usmála se. "Tak teda dobrá... Jdi si sednout na zatracenou tyč, dokud se nebude tvůj zadek dotýkat země, pak se na ní zatoč!" Udělala na tebe vulgární gresto. "Odpal ty natvrdlý bastarde!"~ */
  IF ~~ THEN REPLY #63302 /* ~"Dobrá, sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~Vidíš znuděně vypadající ženu. Jak jsi se přiblížil, letmo na tebe pohlédla a zamračila se. "Už tě mám dost, zmiz..." Odvrátila se a ignoruje tě.~ */
  IF ~~ THEN REPLY #63304 /* ~Odejít.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~Tato osoba vypadá obzvláště rozrušena tím, že je ve vězení. Nemůžeš z něj dostat odpověď, bez ohledu na to, jak tvrdě to zkoušíš.~ */
  IF ~~ THEN REPLY #63306 /* ~Odejít.~ */ EXIT
END
