// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~Vidíš staršího muže ve špinavých pracovních šatech. Zamračil se na tebe.~ */
  IF ~~ THEN REPLY #58804 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~Zamračil se ještě víc. "No... tobě taky dobrej den. Proč na mně klapeš hubou? Mám práci."~ */
  IF ~~ THEN REPLY #58807 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"To nic, sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Povzdychl si. "Ale rychle, jasný?"~ */
  IF ~~ THEN REPLY #58810 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"Ne snad že bys to potřeboval vědět, ale jmenuju se Leighis."~ */
  IF ~~ THEN REPLY #58816 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~Odfrkl si. "Mluvím s nějakým pitomcem, zatímco bych měl makat..."~ */
  IF ~~ THEN REPLY #58819 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~Rozhlédl se kolem. "Je to skladiště, ty pitomče. Co ještě chceš vědět?"~ */
  IF ~~ THEN REPLY #58822 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~Upřeně se na tebe podíval a pak zavrtěl hlavou. "Hledáš devu v Curstu..." Vysmál se ti. "Stejně tak můžeš hledat panny v bordelu, to máš větší šanci, vole."~ */
  IF ~~ THEN REPLY #58825 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~Vidíš Leighise, pracovníka skladiště. Zamračil se na tebe. "Zas ty. Co chceš?"~ */
  IF ~~ THEN REPLY #58828 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"Nic, sbohem."~ */ EXIT
END
