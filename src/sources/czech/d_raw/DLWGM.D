// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~Vidíš mladého muže s bledě-žlutou kůží. Když ses k němu přiblížil, zpozoroval jsi na jeho odkrytých částech kůže vyrážku. ~ */
  IF ~~ THEN REPLY #65030 /* ~"Nazdar."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~Pohlédl na tebe unavenými očima a zamračil se. "Co chceš, vole?"~ */
  IF ~~ THEN REPLY #65033 /* ~"Chci se tě jenom na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"Nic, zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~Jeho výraz se změnil na úplné vyčerpání. "Promiň, ale teď jsem pěkně utahanej. Nemám čas s tebou mluvit..." a pobral se pryč. ~ */
  IF ~~ THEN REPLY #65036 /* ~"Bude to jenom chvilka..."~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"Nemám pro tebe ani chvilku. Prosím tě zeptej se někoho jiného..." Odešel.~ */
  IF ~~ THEN REPLY #65039 /* ~Kašli na to.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~Vidíš muže s bledě-žlutou kůží a úporným kašlem. Když ses k němu přiblížil, usmál se na tebe.~ */
  IF ~~ THEN REPLY #65041 /* ~"Zdravíčko."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~Usmál se na tebe. "Ano..." Začal kašlat, ale za chvíli ho to přešlo. "Chceš ode mně něco? Rád ti pomohu."~ */
  IF ~~ THEN REPLY #65044 /* ~"Chci se tě jen na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"Ne, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"Ah... Samozřejmě, ptej se tedy."~ */
  IF ~~ THEN REPLY #65047 /* ~"Jsi v pořádku?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"Proč máš žlutou kůži a kašleš?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"Můžeš mi něco říct o téhle čtvrti?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"Ztratil jsem lebku a pokouším se najít toho kdo mi ji vzal."~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~Usmál se. "Vlastně ne, ale jsem zdravším než většina buzíků v téhle čtvrti... Díky za optání, ale jsem si jistý, že chceš něco jiného."~ */
  IF ~~ THEN REPLY #65053 /* ~"Vlastně ano. Mám jiné otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"Tahle čtvrť je planá výparů a smogu z továren. Kazí to tu vzduch a způsobuje kašel. Mnoho z místních buzíků si přefarbilo kůži a dostali z toho vyrážky." Odmlčel se a pak se otřásl. "Nikdo s tím nemůže nic dělat, je to prostě tak."~ */
  IF ~~ THEN REPLY #65056 /* ~"Vidím. Mám ještě nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~Zatřásl se a ukázal okolo sebe. "Jeden pohled ti řekne všechno příteli. Není to nebe a není to ani peklo. Jsou tu i lepší místa, po kterých by jeden mohl toužit, ale i daleko horší, kterým by se bylo lepší vyhnout."~ */
  IF ~~ THEN REPLY #65059 /* ~"Byl jsem v jeskyni. To musí být to místo, kterému je lepší se vyhnout."~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"Vidím. Mám ještě nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~Jeho smích přerušil další nával kašle. "Jo... Jeskyně není peklo, jsou to jenom poházené kameny. Je tu ještě něco co bys potřeboval?"~ */
  IF ~~ THEN REPLY #65063 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"Není to zrovna oporný bod světa. Když jsi byl tedy v jeskyni, budu štědrý... Tu máš, sice nevím, kdo by takovou věc mohl chtít." ~ */
  IF ~~ THEN REPLY #65066 /* ~"Vidím. Mám ještě nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"Děkuji, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~Vidíš muže středního věku se žlutou pokožkou. Když ses k němu přiblížil, letmo a znuděně na tebe pohlédl.~ */
  IF ~~ THEN REPLY #65069 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~Ignoruj ho~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"Nevím co chceš, ale nechci ti to dát. Běž sakra pryč." ~ */
  IF ~~ THEN REPLY #65072 /* ~"Chci se tě jen na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"Výborně, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"Vážně? Když je to tedy všechno co chceš..."~ */
  IF ~~ THEN REPLY #65075 /* ~"Můžeš mi něco říct o téhle čtvrti?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"Někdo mi ukrad lebku. Pokouším se najít."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"Zapomeň na to, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"Jo, tohle jsou Nižší pláně. Žije tu obyčejný lid. Nic víc se o tomhle místě nedá říct."~ */
  IF ~~ THEN REPLY #65079 /* ~"Dobře. Mám ještě nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~Zafuněl a pak se na tebe zamračil. "Lebka? Proč by sakra někdo z baatoru, včetně tebe, chtěl najít lebku." Upřeně se na tebe chvíli zahleděl a potom dodal. "Tohle není nic pro mě."~ */
  IF ~~ THEN REPLY #65082 /* ~"Tak tedy víš, kdo ji mohl vzít?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~Trochu potřásl hlavou. "Ne, to nevím. A víc, než si myslím, že vím, bych i tak nechtěl vědět..."~ */
  IF ~~ THEN REPLY #65084 /* ~"Dík, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~Když si se k tomuto muži přiblížil, uvědomil sis, že si ho už před tím viděl. "Znovu tě zdravím kámo. Chceš něco?"~ */
  IF ~~ THEN REPLY #65086 /* ~"Ne, sbohem."~ */ EXIT
END
