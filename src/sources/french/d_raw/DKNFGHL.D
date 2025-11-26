// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~Le visage de cette goule est balafré de long en large et l'un de ses yeux a été complètement détruit. La blessure est relativement récente, mais elle ne semble ni faire souffrir, ni gêner la créature puante. Tu remarques un couteau graisseux attaché à sa ceinture… les lettres 'UHIR' sont gravées sur la poignée.~ */
  IF ~~ THEN REPLY #23791 /* ~"Bonjour…"~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"Euh… est-ce que tu peux me donner ce couteau dans ta ceinture ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~La goule ferme à moitié les yeux et gronde. Sa langue, qui est longue comme deux mains mises bout à bout, se déroule pour lécher ses lèvres répugnantes.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"Euh… est-ce que tu peux me donner ce couteau dans ta ceinture ?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"Es-tu… Uhir ?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"Je dois m'en aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~La goule continue à te lorgner avec appétit. Il serre et desserre ses poings armés de griffes, comme s'il combattait le besoin impérieux de te sauter dessus pour te dévorer.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"Euh… est-ce que tu peux me donner ce couteau dans ta ceinture ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"Calme-toi et réponds à mes questions."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~La goule te siffle : "Silence, viande ! Pas parler ! J'écoute pas la viande ! J'écoute seulement ton cœur, le sang dans les veines de ta chair, sang doux, délicieux… goûteux, riche, viande du cœur…" De la bave dégouline de sa bouche, éclaboussant les tuiles poussiéreuses… "PAS PARLER !"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"Euh… est-ce que tu peux me donner ce couteau dans ta ceinture ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~Le visage de cette goule est balafré de long en large et l'un de ses yeux a été entièrement détruit. Tu remarques un couteau encrassé à sa ceinture. Elle chuinte à ton approche : "Va-t'en ! Va-t'en ! Moi *parle* pas à viande. Moi *écoute* pas viande ! Va-t'en !"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"Euh… est-ce que tu peux me donner ce couteau dans ta ceinture ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~La goule baisse le regard vers le couteau, se grattant la tête comme pour se demander comment il est arrivé là. Finalement elle lève le regard et fait une grimace rusée de toutes ses dents… "Viande veut couteau ? Viande veut marchander, oui…"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"Et ces queues de rats ?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"Et ces queues de rats ?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"Je pourrais te donner des pièces de cuivre…"~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"Mais je n'ai pas de pièces de cuivre à te donner."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"Donne-le, goule… avant que je te le prenne."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~La goule secoue la tête puis indique sa bouche. "Non, non… nourriture, viande, oui…" Sa longue et grise langue pendouille et elle bave abondamment.~ */
  IF ~~ THEN REPLY #23835 /* ~"Je reviendrai si je te trouve quelque chose à manger."~ */ JOURNAL #23836 /* ~J'ai retrouvé la goule qui détient le couteau d'Uhir. Elle veut de la nourriture en échange du couteau… Je pourrais peut-être trouver ou tuer quelque chose ici, des rats par exemple, pour lui donner.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~La goule les regarde d'un œil critique. "Bonnes, oui, mais petites. Plus, viande… plus ! Encore faim !"~ */
  IF ~~ THEN REPLY #23838 /* ~"Je reviendrai avec plus de choses, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"Oui, oui !" La goule les attrape rapidement et les dévore. Après avoir léché ses doigts crochus, elle te tend le couteau d'Uhir.~ */
  IF ~~ THEN REPLY #23840 /* ~"Euh… merci. Au revoir."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"Hssst ! Toi viande, délicieuse, rouge, mouillée - pas danger ! Viande veut couteau ? Viande marchander !"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"Et ces queues de rats ?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"Et ces queues de rats ?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"Je pourrais te donner des pièces de cuivre…"~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"Mais je n'ai pas de pièces de cuivre à te donner."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~Le visage de cette goule est balafré de long en large et l'un de ses yeux a été complètement détruit. La récente blessure ne semble toutefois ni faire souffrir, ni gêner la créature puante.~ */
  IF ~~ THEN REPLY #23849 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~Le visage de cette goule est balafré de long en large et l'un de ses yeux a été complètement détruit. La récente blessure ne semble toutefois ni faire souffrir, ni gêner la créature puante.~ */
  IF ~~ THEN REPLY #23852 /* ~Pars.~ */ EXIT
END
