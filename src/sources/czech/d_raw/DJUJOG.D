// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~Velký hlídač ječí rozkazy na civilisty kolem něj. Když jsi ho přerušil, vrhl na tebe skrze průzor své helmy vražedný pohled. "Co chceš, pako? A pohni sebou, máme tu práci!"~ */
  IF ~~ THEN REPLY #53213 /* ~"Co se to tady děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"Jak ti to připadá, kreténe?! Vyrabujem tendle sklad! Chceš se přidat, nebo ne? Protože todle nebude žádná zmatená akce každej sám za sebe... uděláme to *správně*, přesně podle mejch rozkazů."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"To, co děláte, to jenom zhoršuje. Vezmi ty lidi a pomáhej bránit zdi - místo rabování - ať může město sklouznout zpátky do pustin."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"To, co děláte, to jenom zhoršuje. Vezmi ty lidi a pomáhej bránit zdi - místo rabování - ať může město sklouznout zpátky do pustin."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"Zadrž: nebude žádné rabování, dokud jsem tady já."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"Mám jiný věci na práci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~Hlídač si zvedl hledí přilby, aby ti mohl plivnout na nohu. "Hah! Zmizni, kreténe, nás čeká rabování!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"Zadrž: nebude žádné rabování, dokud jsem tady já."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~Za helmou hlídače jsi vycítil úšklebek. "Ó, tak? No..." Zvedl svou masivní zbraň. "No, tak to budeme muset vyřešit."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"Pokud uklidníme věci tady kolem, město sklouzne zpátky do Pustin. Jakmile bude Curst celý zavalený monstry, jak dlouho asi bude žít, abyste si užili výsledky vašeho rabování?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"To, co děláte, to jenom zhoršuje. Vezmi ty lidi a pomáhej bránit zdi - místo rabování - ať může město sklouznout zpátky do pustin."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"To, co děláte, to jenom zhoršuje. Vezmi ty lidi a pomáhej bránit zdi - místo rabování - ať může město sklouznout zpátky do pustin."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"Ale... ah, ksakru, máš recht." Začal řvát na lidi kolem. "Správně! Slyšeli jste toho chlápka, takže jdeme! A pokud někdo z vás o tomhle incy-dentu promluví, až město sklouzne zpátky... tak zdechne! A teď jdeme! Jdeme!" Otočil se k tobě. "Ty: máš v kebuli víc, než by se dalo čekat. Seš docela dobrej chlap."~ */
  IF ~~ THEN REPLY #53235 /* ~"Díky. Sbohem."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~Podařilo se mi přesvědčit skupinu lidí - vedenou hlídačem - aby přestali rabovat a pomohli s obranou města.~ */ EXIT
END
