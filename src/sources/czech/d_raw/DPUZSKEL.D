// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~Kostlivec si pro sebe něco mumlá, občas se zastaví a přemýšlivým gestem se poškrábe na lebce. Je tak starý, že na jeho kostech už nezbývá ani kousek masa, jenom pár barevných hadrů.~ */
  IF ~~ THEN REPLY #20296 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~Pokýval ti hlavou na pozdrav, ale neodpovídá.~ */
  IF ~~ THEN REPLY #20298 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~Kostlivec si tě prohlédl a podrážděně zabručel. "Teď ne! Odpusť mi, ale v mé hlavě  nachází se ta hádanka z nejhorších, jakouž kdy ucho mé zachytilo a já vyřešiti ji nemohu ."~ */
  IF ~~ THEN REPLY #20300 /* ~"Jaká je ta hádanka?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~Vypadá překvapeně. "Oh? Chceš se o vyřešení pokusiti?"~ */
  IF ~~ THEN REPLY #20302 /* ~"Ano, pokračuj."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"Ne, to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"Dobrá tedy. Tato hádanka od pitomě chrastícího kostí pytle, nedaleko postávajícího, pochází. On odmítá odpověď dáti mi a to *zabíjí* mysl mou!"~ */
  IF ~~ THEN REPLY #20304 /* ~"Tak pokračuj..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~Přikývl. "Přemýšlím nad slovy, jež koncovkou -ZICE končí sobě. Kompozice, propozice, pozice a akvizice, toť čtyři takovážto slova jsou. Ale v obecně užívaném jazyce pět slov nachází se... jaké páté slovo jest? Navíce slovo toť jest takové, jež každý den používá se. A pokud tvé uši napjaté byly a pozorně má slova odposlechly, už slyšel jsi z úst mých, co za slovo to je."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"Jasně. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"Je to... uh... hmm."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"Promyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~Tváří se nedůvěřivě. "*Cože to?* Ale..."~ */
  IF ~~ THEN REPLY #20308 /* ~"Ten začátek je tam jenom na zmatení. Vzpomeň si: pět slov v 'obecně - užívaném - jazyce'. Páté slovo je 'jazyk.'"~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Zasměj se a jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[žádný text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"Toť... toť... ooh! Trik veliké odpornosti! Já taktéž jazyk nemám!" Zarazil se a zasmál se, ze skřípajících čelistí se uvolnilo trochu prachu. "Ale dobré to jest, tak tak. Mnohých díků já tobě vzdávám."~ */
  IF ~~ THEN REPLY #20310 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"Taktéž narazil jsi, že? Dejž mi vědět, kdybys snad na odpověď natrefil... a štěstí mnoho, pokud budeš sobě pokoušeti z hlupce chřestícího, jenž hádanku mně dal, odpověď vyraziti."~ */
  IF ~~ THEN REPLY #20311 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~Kostlivec zvedl pohled. "Táži se, zda vyřešil ty jsi sobě i mně tu hádanku proklatou?"~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"Ano. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"Ano, ale neřeknu ti to."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Lži: "Eh... ne. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"Ne. Zopakuj mi tu hádanku."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"Ne, ještě ne. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"Opět tobě díky vzdávám za hádanky řešení! Můj 'přítel' bude vskutku nešťasten z tohoto!" Od plic (kdyby nějaké měl) se zasmál.~ */
  IF ~~ THEN REPLY #20317 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"Ale... proč takto! No tak! Ty *musíš* tajemství odpovědi této vyzraditi mně!"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"Dobrá tedy. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"Dobrá tedy. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"Slíbil jsem, že to neprozradím."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"Musím? Sbohem."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~Vztekle zaskřípal zuby. "Bah! Taktéž... to... ten umluvený kostěj z prachem jež místo mozku v hlavě zabírá! A *ty* taktéže! Já děkuji ti za *ničeho*!"~ */
  IF ~~ THEN REPLY #20322 /* ~"Dobrá, dobrá. Je to 'jazyk'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"Omlouvám se. Sbohem."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~Kostlivec zkřížil ruce a odmítá promluvit  byť jediné slovo.~ */
  IF ~~ THEN REPLY #68087 /* ~Odejdi.~ */ EXIT
END
