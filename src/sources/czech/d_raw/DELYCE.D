// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~Tato vyděšená dívka běží k tobě, bez dechu, slzy proudí dolů po její tváři. "Prosím, pane! Musíte mi pomoci je zastavit! Oni se chtějí navzájem *zabít*!"~ */
  IF ~~ THEN REPLY #33509 /* ~"Co se děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"Promiň, to není můj problém. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"To je můj bratr a můj milenec... a bojují spolu. Zatím jsou to jenom drsná slova, ale já vím, že za chvíli se začnou navzájem podřezávat! Zastav je, prosím tě!"~ */
  IF ~~ THEN REPLY #33511 /* ~"Hned si s nimi promluvím."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"Můžu je zastavit, ale zadarmo to dělat nebudu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"Promiň, to není můj problém. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"Tisíceré díky, tvrďáku! Jsou právě támhle!"~ */
  IF ~~ THEN REPLY #33514 /* ~"Vrátím se, až si s nimi promluvím."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"Můžu ti dát prachy, kámo... minimálně sto měďáků... jenom je zastav!"~ */
  IF ~~ THEN REPLY #33515 /* ~"Vrátím se, až si s nimi promluvím."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"Když nad tím přemýšlím, nic mi do toho není. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"Děkuju ti, kámo, že jsi zastavil ten boj. Měla jsem takový strach, že se zabijí navzájem. A já bych strašně nerada přišla o bratra nebo o svého drahého Maetha."~ */
  IF ~~ THEN REPLY #33517 /* ~"To nebyl problém. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"Ukázka vděčnosti by byla oceněna..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~Ženin výraz okamžitě potemněl. "Kde si myslíš, že jsi, kámo? Ve čtvrti Paní Bolesti? Kdybych měla nějaké peníze, utratila bych je za jídlo pro rodinu. Je mi líto, že tě nemůžu odměnit... budeš se muset spokojit s mou vděčností." Žena se zamračila a dívá se raději jinam.~ */
  IF ~~ THEN REPLY #33519 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"Prosím, kámo! Zastav je!"~ */
  IF ~~ THEN REPLY #33520 /* ~"Pokusím se..."~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"Vlastně, rozhodl jsem se, že mi po tom nic není. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"Děkuju ti, kámo, že jsi zastavil ten boj. Měla jsem takový strach, že se zabijí navzájem. A já bych strašně nerada přišla o bratra nebo o svého drahého Maetha."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"Rád jsem ti pomohl. Sbohem."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"Ukázka vděčnosti by byla oceněna..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"Jistě. A teď si vezmu svou odměnu..."~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~Přikývla a vytáhla ze svých šatů odřený náramek. "Tady máš, kámo... můj jediný poklad. Ale jejich životy mají pro mě větší cenu..." Žena si smutně povzdechla.~ */
  IF ~~ THEN REPLY #33525 /* ~"Počkej... tady, vem si to zpět. Nech si ten náramek."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~Ženiny oči se rozzářily. "Děkuju, ti kámo! Ať tě mine stín Paní!"~ */
  IF ~~ THEN REPLY #33527 /* ~"Jistě... sbohem."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"Znovu ti děkuju, kámo, že jsi zastavil tu rvačku."~ */
  IF ~~ THEN REPLY #33528 /* ~"Nebyl to problém. Sbohem."~ */ EXIT
END
