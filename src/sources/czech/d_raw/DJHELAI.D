// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~Vidíš hubeného muže v potřísněných šatech, s orlím nosem a dvěma silnými rohy vyčnívajícími z jeho čela. Klopýtá kolem a něco si pro sebe mumlá... je cítit mořem, zvratky a levným vínem.~ */
  IF ~~ THEN REPLY #21488 /* ~"Zdravím."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"Ty jsi Jhelai? Jestli jo, Craddock potřebuje, aby ses vrátil na tržiště."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~Přejdi to.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"Eh?" Muž po tobě opilecky pošilhává. "Nafštívit? Coo?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"Ty jsi Jhelai? Jestli jo, Craddock potřebuje, aby ses vrátil na tržiště."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"Nevadí. Omlouvám se za vyrušení."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"Crad-ok?" Mužovy oči se rozšíří. "Aha, Craddock, můj gen-erál... jasně, můž-eš mu klidně říc´: 'Di se VYSRAT... a taky, že je špin-avej čokl, tý nejšpi-navější rasy, a že Jhelai pro něj už nikdy makat nebude!" Zabodne do tebe svůj prst. "Pověz mu to!"~ */
  IF ~~ THEN REPLY #22659 /* ~"Řeknu mu to... s odstupem. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"Uff... Řeknu mu to... Sbohem, Jhelai."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~Vidíš Jhelaie. Pořád klopýtá kolem a mumlá si pro sebe... smrdí slzami, zvratky a levným vínem.~ */
  IF ~~ THEN REPLY #22662 /* ~Nechej ho v jeho apatii.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~Vidíš Jhelaie. Vypadá, že od doby, kdy si s ním mluvil naposledy, vystřízlivěl.~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"Jhelai... podívej. Myslím to s tebou dobře. Craddock je rozzlobený a vyhrožuje, že tě zabije, když se u něj znovu neobjevíš."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~Vrátil jsem se a varoval Jhelaie před Craddockem; bylo to to poslední, co jsem mohl dělat. Jhelai vypadal, že lituje, že vůbec něco říkal, ale poděkoval mi za varování, balík sprostej.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"Jhelai... podívej. Řekl jsem Craddockovi, že jsem tě měl zastupovat... pořád ještě máš svoji práci, tak se seber."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~Vrátil jsem se a řekl Jhelaiovi, že jsem jej zastoupil, a tak má stále svojí práci. Vypadá, že lituje, že vůbec něco říkal, ale poděkoval mi, že jsem mu zachránil práci.~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~Přejdi to.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~Jhelai remcá. "Já hlupák... Sem jen 'vilku pryč a v momen'tě tě..." Zaskřípe zuby. "Dík za varování..."~ */
  IF ~~ THEN REPLY #22666 /* ~"Tak buď opatrný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~Jhelai remcá. "Ten kretén... Sem jen 'vilku pryč a v momen'tě tě..." Zaskřípe zubama. "Dík ti za 'brý slova... cenim si toho, to si piš."~ */
  IF ~~ THEN REPLY #22670 /* ~"Tak příště buď opatrný. Sbohem."~ */ EXIT
END
