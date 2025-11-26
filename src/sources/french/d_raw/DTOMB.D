// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~La statue semble sur le point de faire quelque annonce coléreuse. Le sculpteur a magnifiquement capturé l'essence de la fureur. Les lignes de tension du cou et du front doivent avoir nécessité à elles seules plusieurs mois de travail acharné. De fines craquelures parcourent la totalité de la statue et une plaque est fixée à sa base.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Applique le Baume de Gorgone sur la statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Lis la plaque.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Examine les fissures.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Laisse la statue.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~Sur la plaque est écrit : 'Cette statue serait le sorcier éthersérien Gangroighydon. Attaqué au plus fort de sa folie par un groupe de sorciers rivaux, il a été emprisonné par un sort qui a changé sa chair en pierre. On dit que Gangroighydon s'est pétrifié, un dernier sort horrible sur les lèvres, malédiction si terrible qu'elle n'aurait *jamais* dû être prononcée par un homme vivant.'~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Applique le Baume de Gorgone sur la statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Examine la statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Laisse la statue.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~Tu examines avec attention le réseau de craquelures qui court tel un réseau sanguin sur la surface de la statue. À un endroit, au creux de son bras, un éclat de pierre semble prêt à tomber.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Détache le morceau.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Détache le morceau.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Lis la plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Laisse la statue.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~Tu tends le bras vers la section de l'avant-bras où les craquelures se sont formées, l'agrippe fermement, et la frappe de ton marteau de forgeron. Dans le bruit sourd du métal frappant la pierre, un éclat de la taille d'un poignard se décroche de la statue.~ */
  IF ~~ THEN REPLY #31544 /* ~"Ça y est…"~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~Alors qu'il se décroche, tu sens de l'eau s'écouler sur le dos de ta main… et aperçois une larme dans les yeux de la statue, pendant qu'un éclat du bras tombe dans tes mains. Tu ranges rapidement - et calmement - l'éclat et t'éloignes de la statue en pleurs.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Applique le Baume de Gorgone sur la statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Examine la statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Lis la plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Laisse la statue.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~Tu tends le bras vers la section de l'avant-bras où les craquelures se sont formées, l'agrippe fermement et tire, sans résultat. Il te faudrait un marteau pour casser la pierre, et un petit : l'espace réduit entre le corps et le bras de la statue ferait qu'un gros marteau… de combat par exemple… ne serait d'aucune utilité.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Applique le Baume de Gorgone sur la statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Examine la statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Lis la plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Laisse la statue.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~Tu enduis la statue de la pommade puante. Elle se met à miroiter et tu vois la statue prendre son souffle, les yeux de Gangroighydon se remplissant de fureur et de folie vengeresse.~ */
  IF ~~ THEN REPLY #31559 /* ~"Bonjour…"~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Bouche-toi les oreilles.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Cours comme un fou.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Avant que tu puisses faire quoi que ce soit, un torrent brûlant de mots s'échappe des lèvres du sorcier. Tu sens alors une atroce souffrance déferler sur toi comme un incendie et s'incruster dans ta chair telle une plaie boursouflée. Tu es frappé de cécité alors que tes yeux éclatent et coulent de leurs orbites tels deux œufs brisés… tu entends quelqu'un crier et tu réalises que c'est toi…~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Attends la fin de l'horreur.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Tu sombres dans l'obscurité, victime du Terrible Maléfice de Gangroihydron.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~Le dernier son qui te parvient, malgré tes hurlements, c'est le cri de Morte…~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~La "statue" - ou plutôt Gangroihydron, le sorcier pétrifié - a disparu. Nul doute qu'il est parti sans laisser le moindre mot d'explication.~ */
  IF ~~ THEN REPLY #66516 /* ~Pars.~ */ EXIT
END
