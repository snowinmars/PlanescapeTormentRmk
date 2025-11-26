// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~Vidíš opilého strážce. Je oblečený ve zbroji Curstských nejlepších, ale vypadá to, že se spíš zajímá o záchranu vlastního zadku. Dívá se na tebe bez zájmu, má úplně mrtvý pohled.~ */
  IF ~~ THEN REPLY #48042 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"Co tady děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Chek'ka Plute si tě pozorně prohlíží, s veškerou koncentrací, jakou dokáže opilec zvládnout. Odfrkl si a vrátil se zpátky ke svému korbelu.~ */
  IF ~~ THEN REPLY #48046 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"Co tady děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"Chek'ka Plute. Curstská elita." Říhnul si.~ */
  IF ~~ THEN REPLY #48050 /* ~"Co tady děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~Ukázal na Zkaženého Vrdela."Sleduj ho. Říká se, že tady má někde tunel a já chci vědět, jestli je to pravda. Čekám. Sleduju. A teď jdi. Musím ho sledovat."~ */
  IF ~~ THEN REPLY #48085 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~Opilý strážce se na tebe s řevem vrhá. Asi tě chce vidět mrtvého, aby potom s tvou mrtvolou mohl provádět nechutné věci.~ */
  IF ~~ THEN REPLY #48088 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
