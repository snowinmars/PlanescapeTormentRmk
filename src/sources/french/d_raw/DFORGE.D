// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFORGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFORGE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #5086 /* ~Tu te prépares de nouveau à soulever le marteau…~ */
  IF ~~ THEN REPLY #5087 /* ~"… Et maintenant ?"~ */ EXTERN ~FSMITH~ 17
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY #5088 /* ~Tu avances vers la forge. La chaleur est insupportable. Que vas-tu faire ?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5089 /* ~Utilise la forge.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5090 /* ~Utilise la forge.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5091 /* ~Utilise la forge.~ */ GOTO 3
  IF ~~ THEN REPLY #5092 /* ~Recule.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 46.0
  SAY #5093 /* ~La chaleur de la flamme est trop forte, même pour ta peau résistante aux flammes. Le feu commence à t'infliger des dégâts.~ */
  IF ~~ THEN REPLY #5094 /* ~Utilise la forge.~ */ GOTO 4
  IF ~~ THEN REPLY #5095 /* ~Recule.~ */ DO ~Damage(Protagonist,LOWER,5)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2 46.1 46.2
  SAY #5096 /* ~Le feu dégage une chaleur insupportable mais, grâce à ta protection, tu le supportes sans dommage. Aimerais-tu travailler la forge ?~ */
  IF ~~ THEN REPLY #5097 /* ~Oui.~ */ GOTO 25
  IF ~~ THEN REPLY #5098 /* ~Non.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5099 /* ~La flamme te brûle de nouveau. Par quoi veux-tu commencer ?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5100 /* ~Prépare les pinces.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5101 /* ~Martèle l'enclume.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5102 /* ~Prends le minerai de fer.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5103 /* ~Prends le minerai de fer avec les pinces et maintiens-le sur la flamme de la forge.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 8
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5104 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5105 /* ~Écarte-toi de la forge.~ */ DO ~Damage(Protagonist,LOWER,10)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5106 /* ~Oh là là. Il fait trop chaud.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #5107 /* ~Tu maintiens fermement les pinces tandis que la chaleur de la forge te brûle la peau. Que veux-tu faire maintenant ?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5108 /* ~Martèle l'enclume.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5109 /* ~Prends le minerai de fer avec les pinces et maintiens-le dans les flammes.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5110 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5111 /* ~Écarte-toi de la forge.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5112 /* ~Oh là là. Il fait trop chaud.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 6.1 7.0
  SAY #5113 /* ~Tu soupèses l'enclume vide pendant quelques instants, les métaux s'entrechoquent, et la chaleur de la forge continue à te brûler. Et maintenant ?~ */
  IF ~  PartyHasItem("Tongs")
!HPLT(Protagonist,1)
~ THEN REPLY #5114 /* ~Prépare les pinces.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5115 /* ~Martèle l'enclume.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5116 /* ~Prends le minerai de fer.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5117 /* ~Prends le minerai de fer avec les pinces et maintiens-le sur la flamme de la forge.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5118 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5119 /* ~Écarte-toi de la forge.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5120 /* ~Oh là là. Il fait trop chaud.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2
  SAY #5121 /* ~Tu tiens le morceau de minerai dans tes mains. À l'endroit où tu te trouves, la chaleur de la forge est presque suffisante pour faire fondre le fer. Elle doit certainement endommager ta peau. Et maintenant ?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5122 /* ~Martèle l'enclume.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5123 /* ~Maintiens le fer dans les flammes de la forge avec les pinces.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5124 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5125 /* ~Maintiens le minerai de fer dans le feu à mains nues.~ */ GOTO 10
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5126 /* ~Écarte-toi de la forge.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5146 /* ~Oh là là. Il fait trop chaud.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.1 6.3 7.1
  SAY #5147 /* ~Le minerai fond rapidement et devient bientôt malléable. Ta peau est pleine d'ampoules.~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5148 /* ~Place le minerai de fer ramolli sur la forge et façonne-le.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ GOTO 11
  IF ~  !PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5149 /* ~Mon marteau ! J'ai oublié de prendre un marteau pour façonner ça ! Je reviendrai !~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5150 /* ~Écarte-toi de la forge.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5151 /* ~Oh là là. Il fait trop chaud.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 5.2 6.4 7.2
  SAY #5152 /* ~Tu places le minerai froid sur l'enclume et tu le brises avec le marteau. Tu le réduis en petits morceaux inutilisables. Les flammes qui émanent de la forge brûlent la peau de tout ton corps.~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5153 /* ~Écarte-toi de la forge.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5154 /* ~Oh là là. La chaleur est écrasante.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY #5155 /* ~La douleur provoquée par la flamme est insupportable. Le minerai fond comme de l'argile, et une odeur de chair brûlée emplit l'atmosphère. Le fer fond dans ta main et tu t'évanouis de douleur.~ */
  IF ~~ THEN REPLY #5156 /* ~Terminé.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.3 13.3 14.3
  SAY #5157 /* ~Que veux-tu forger ?~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5158 /* ~Quelque chose de petit et dangereux : un stylet !~ */ GOTO 12
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5159 /* ~Un marteau à deux mains.~ */ GOTO 13
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5160 /* ~Une hache d'armes.~ */ GOTO 14
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5162 /* ~Rien. La chaleur est écrasante.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5163 /* ~Un stylet… une arme facile à manier et rapide qui te délivrera de cet enfer de douleur très rapidement. Es-tu sûr de vouloir un stylet ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5164 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5165 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5166 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 18
  IF ~~ THEN REPLY #5167 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 11
  IF ~~ THEN REPLY #5168 /* ~Non. J'en ai assez de la forge pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #5169 /* ~Un marteau - un bel outil qui te permettra d'échapper rapidement aux flammes de la fonderie. Es-tu sûr de vouloir un marteau ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5170 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5171 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5172 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 21
  IF ~~ THEN REPLY #5173 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 11
  IF ~~ THEN REPLY #5174 /* ~Non. J'en ai assez de la forge pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #5175 /* ~La hache est plus lente à fabriquer et, plus le temps passe, plus les flammes brûlent ta chair. Es-tu sûr de vouloir la fabriquer ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5176 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5177 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 23
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5178 /* ~Oui.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 24
  IF ~~ THEN REPLY #5179 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 11
  IF ~~ THEN REPLY #5180 /* ~Non. J'en ai assez de la forge pour le moment.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #5188 /* ~Ignorant la chaleur des flammes, tu martèles rapidement le minerai pour lui faire prendre diverses formes, que tu sépares et que tu harmonises, avant de te préparer à refroidir les pics dans un seau d'eau.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY #5189 /* ~Tu regardes ton ouvrage d'un œil critique : cette arme n'est pas très bien conçue. En tout cas, tu as au moins fabriqué quelque chose.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5194 /* ~Ça suffira pour mon test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5195 /* ~C'est pratique, je suppose…~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5196 /* ~Maigre consolation. La chaleur est écrasante. Au moins, ce test d'Homme-Dieu est fait.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5197 /* ~Maigre consolation. La chaleur est écrasante.~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
Kill(Protagonist)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #5198 /* ~Tu as fabriqué un stylet. Tu t'écartes des flammes pour admirer ton travail.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5199 /* ~C'est un stylet. Ça ira pour le test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5200 /* ~C'est un stylet. Il est plutôt réussi… et il a l'air très pratique aussi.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5201 /* ~La chaleur est trop écrasante. Le test est terminé, mais il y a un prix à payer.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5202 /* ~La chaleur est trop écrasante. Il y a un prix à payer.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #5203 /* ~Voilà qui est réussi ! Non seulement ton stylet est fonctionnel, mais en plus sa forme est tout à fait harmonieuse.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5204 /* ~Cet objet me sera très utile. Keldor sera certainement impressionné ! Il est temps de sortir de ces flammes.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5205 /* ~Ça me sera très utile pour les prochains essais. Maintenant, il faut sortir de ces flammes.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5206 /* ~La chaleur est étouffante.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5207 /* ~La chaleur est trop accablante. Je ne peux pas bouger… Je ne peux pas respirer…~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0
  SAY #5208 /* ~Le marteau que tu as fabriqué ressemble à un vulgaire bloc de fer. Il devrait tout de même servir.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5209 /* ~Ça m'ira très bien. Retournons montrer ça à Keldor.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PSledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5210 /* ~Toute cette peine pour un bout de métal ? Puissances célestes ! Il faut que je sorte d'ici.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5211 /* ~La chaleur est écrasante. Au moins, le test est fini.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5212 /* ~La chaleur est écrasante.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #5213 /* ~Regarde ! Un marteau de forgeron… Il ressemble à n'importe quel autre marteau.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5214 /* ~Génial. Ça suffira pour Keldor. J'ai fini avec la forge pour l'instant.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5215 /* ~Ça m'ira très bien. Il est temps d'aller fendre quelques crânes. J'en ai maintenant fini avec la forge.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5216 /* ~La chaleur et la puissance de la fonderie sont écrasantes. Mais avec ce marteau, au moins, le test est terminé.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5217 /* ~La chaleur et la puissance de la fonderie sont écrasantes.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #5218 /* ~Quel beau marteau de forgeron… forme élégante, harmonieuse, et parfaitement adapté à tes mains.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5219 /* ~Bien. Je vais montrer ça à Keldor… Et peut-être que je garderai ce marteau pour fendre quelques crânes.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5220 /* ~Bien. Ça pourrait s'avérer utile.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5221 /* ~La seule puissance de la fonderie est écrasante. Au moins, le test de l'Homme-Dieu est terminé et je l'ai réussi haut la main.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5222 /* ~La seule puissance de la fonderie est écrasante.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0
  SAY #5223 /* ~C'est une hache, ça ? On dirait plutôt un marteau avec des extrémités pointues. Faisons comme si c'était une hache, et n'en parlons plus.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5224 /* ~Hum. Eh bien, cela répond aux attentes de Keldor.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5225 /* ~Hum. Je pourrais peut-être vendre ça à la casse.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5226 /* ~La chaleur et la force de l'enfer de la fonderie sont imparables. Au moins, le test est terminé.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5227 /* ~La chaleur et la force de l'enfer de la fonderie sont imparables.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #5228 /* ~Voilà du travail bien fait. Ce n'est pas une œuvre d'art, mais c'est fonctionnel et meurtrier.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5229 /* ~Ça suffira bien. Keldor sera épaté, c'est sûr.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5230 /* ~C'est bien suffisant. Ça devrait convenir pour découper la peau et briser les os.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5231 /* ~La fumée suffocante et la chaleur ardente de la fonderie sont insupportables. Au moins, le test est terminé.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5232 /* ~La fumée suffocante et la chaleur intense de la fonderie sont insupportables.~ */ DO ~IncrementGlobal("Forge","GLOBAL",1)
GiveItemCreate("Ax",Protagonist,1,0,0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY #5233 /* ~Avec un brin de décoration, on pourrait confier cette hache aux meilleurs guerriers.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5234 /* ~J'ai toujours su que j'avais ça dans la peau. Maintenant, il faut que je montre ça à Keldor… et peut-être que j'essaie cette nouvelle arme.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5235 /* ~Cette hache et moi allons passer du bon temps ensemble. Je le sens.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5236 /* ~Du beau travail. Malheureusement, je ne peux pas supporter plus longtemps la chaleur étouffante de la fonderie.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5237 /* ~Malheureusement, je ne peux pas supporter plus longtemps la chaleur étouffante de la fonderie.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 3.0
  SAY #5238 /* ~Par quoi veux-tu commencer ?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5239 /* ~Prépare les pinces.~ */ GOTO 26
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5240 /* ~Martèle l'enclume.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5241 /* ~Prends le minerai de fer.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5242 /* ~Prends le minerai de fer avec les pinces et maintiens-le sur la flamme de la forge.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5243 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ GOTO 30
  IF ~~ THEN REPLY #5244 /* ~Écarte-toi de la forge.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #5249 /* ~Tu maintiens fermement les pinces tandis que tu ruisselles de sueur. Que veux-tu faire maintenant ?~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5250 /* ~Martèle l'enclume.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5251 /* ~Prends le minerai de fer avec les pinces et maintiens-le dans les flammes.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5252 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ GOTO 30
  IF ~~ THEN REPLY #5253 /* ~Écarte-toi de la forge.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 27.1 28.0
  SAY #5254 /* ~Tu soupèses l'enclume vide pendant quelques instants et les métaux s'entrechoquent. C'est un travail dur et pénible. Et maintenant ?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5255 /* ~Prépare les pinces.~ */ GOTO 26
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5256 /* ~Martèle l'enclume.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5257 /* ~Prends le minerai de fer.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5258 /* ~Prends le minerai de fer avec les pinces et maintiens-le sur la flamme de la forge.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5259 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ GOTO 30
  IF ~~ THEN REPLY #5260 /* ~Écarte-toi de la forge.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 27.2
  SAY #5261 /* ~Tu tiens le morceau de minerai dans tes mains. À l'endroit où tu te trouves, la chaleur de la forge est presque suffisante pour faire fondre le fer. La chaleur te brûle presque. Heureusement que tu portes une protection contre les flammes. Et maintenant ?~ */
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5262 /* ~Martèle l'enclume.~ */ GOTO 27
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5263 /* ~Maintiens le fer dans les flammes de la forge avec les pinces.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5264 /* ~Place le minerai de fer sur l'enclume et travaille-le au marteau.~ */ GOTO 30
  IF ~~ THEN REPLY #5265 /* ~Maintiens le minerai de fer dans le feu à mains nues.~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,64,RESISTFIRE)
~ THEN REPLY #5266 /* ~Maintiens le minerai de fer dans le feu à mains nues.~ */ GOTO 45
  IF ~~ THEN REPLY #5267 /* ~Écarte-toi de la forge.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.1 27.3 28.1
  SAY #5268 /* ~Le minerai fond rapidement et devient bientôt malléable. Tes mains brillent presque de sueur.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5269 /* ~Place le minerai de fer ramolli sur la forge et façonne-le.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ GOTO 32
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #5270 /* ~Mon marteau ! J'ai oublié de prendre un marteau pour façonner ça ! Je reviendrai !~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~~ THEN REPLY #5271 /* ~Écarte-toi de la forge.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4 26.2 27.4 28.2
  SAY #5272 /* ~Tu places le minerai froid sur l'enclume et tu le brises avec le marteau. Tu le réduis en petits morceaux inutilisables. Les flammes qui émanent de la forge s'intensifient, dégageant une odeur de métal brûlé.~ */
  IF ~~ THEN REPLY #5273 /* ~Écarte-toi de la forge.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY #5274 /* ~La douleur provoquée par la flamme est insupportable. Le minerai fond comme de l'argile, et une odeur de chair brûlée emplit l'atmosphère. Le fer fond dans ta main et tu t'évanouis de douleur.~ */
  IF ~~ THEN REPLY #5276 /* ~Evanouissement.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 33.3 34.3 35.3
  SAY #5275 /* ~Que veux-tu forger ?~ */
  IF ~~ THEN REPLY #5277 /* ~Quelque chose de petit et dangereux : un stylet !~ */ GOTO 33
  IF ~~ THEN REPLY #5278 /* ~Un marteau à deux mains.~ */ GOTO 34
  IF ~~ THEN REPLY #5279 /* ~Une hache d'armes.~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #5281 /* ~Un stylet… une arme facile à manier et rapide qui te délivrera de cet enfer de douleur très rapidement. Es-tu sûr de vouloir un stylet ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5282 /* ~Oui.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5283 /* ~Oui.~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5284 /* ~Oui.~ */ GOTO 38
  IF ~~ THEN REPLY #5285 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 32
  IF ~~ THEN REPLY #5286 /* ~Non. J'en ai assez de la forge pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #5287 /* ~Un marteau… une arme rapide qui te permettra de sortir rapidement de ce fourneau. Es-tu sûr de vouloir un marteau ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5288 /* ~Oui.~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5289 /* ~Oui.~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5290 /* ~Oui.~ */ GOTO 41
  IF ~~ THEN REPLY #5291 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 32
  IF ~~ THEN REPLY #5292 /* ~Non. J'en ai assez de la forge pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #5293 /* ~La hache est plus lente à fabriquer. Tu vas te sentir très mal pendant un moment, mais au moins tu ne mourras pas calciné. Es-tu sûr de vouloir une hache ?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5294 /* ~Oui.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5295 /* ~Oui.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5296 /* ~Oui.~ */ GOTO 44
  IF ~~ THEN REPLY #5297 /* ~Non. Je préfère fabriquer autre chose.~ */ GOTO 32
  IF ~~ THEN REPLY #5298 /* ~Non. J'en ai assez de la forge pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #5302 /* ~Tu regardes ton ouvrage d'un œil critique : cette arme n'est pas très bien conçue. En tout cas, tu as au moins fabriqué quelque chose.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5303 /* ~Ça suffira pour mon test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5304 /* ~C'est pratique, je suppose…~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY #5305 /* ~Tu as fabriqué un stylet. Tu t'écartes des flammes pour admirer ton travail.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5306 /* ~C'est un stylet. Ça ira pour le test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5307 /* ~C'est un stylet. Il est plutôt réussi… et il a l'air très pratique aussi.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2
  SAY #5308 /* ~Voilà qui est réussi ! Non seulement ton stylet est fonctionnel, mais en plus sa forme est tout à fait harmonieuse.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5309 /* ~Cet objet me sera très utile. Keldor sera certainement impressionné ! Il est temps de sortir de ces flammes.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5310 /* ~Ça me sera très utile pour les prochains essais. Maintenant, il faut sortir de ces flammes.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.0
  SAY #5311 /* ~Le marteau que tu as fabriqué ressemble à un vulgaire bloc de fer. Il devrait tout de même servir.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5313 /* ~Ça m'ira très bien. Retournons montrer ça à Keldor.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5312 /* ~Toute cette peine pour un bout de métal ? Puissances célestes ! Il faut que je sorte d'ici.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #5314 /* ~Regarde ! Un marteau de forgeron… Il ressemble à n'importe quel autre marteau.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5315 /* ~Génial. Ça suffira pour Keldor. J'ai fini avec la forge pour l'instant.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5316 /* ~Ça m'ira très bien. Il est temps d'aller fendre quelques crânes. J'en ai maintenant fini avec la forge.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #5317 /* ~Quel beau marteau de forgeron… forme élégante, harmonieuse, et parfaitement adapté à tes mains.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5318 /* ~Bien. Je vais montrer ça à Keldor… Et peut-être que je garderai ce marteau pour fendre quelques crânes.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5319 /* ~Bien. Ça pourrait s'avérer utile.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0
  SAY #5320 /* ~C'est une hache, ça ? On dirait plutôt un marteau avec des extrémités pointues. Faisons comme si c'était une hache, et n'en parlons plus.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5321 /* ~Hum. Eh bien, cela répond aux attentes de Keldor.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5322 /* ~Hum. Je pourrais peut-être vendre ça à la casse.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #5323 /* ~Voilà du travail bien fait. Ce n'est pas une œuvre d'art, mais c'est fonctionnel et meurtrier.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5324 /* ~Ça suffira bien. Keldor sera épaté, c'est sûr.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5325 /* ~C'est bien suffisant. Ça devrait convenir pour découper la peau et briser les os.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.2
  SAY #5326 /* ~Avec un brin de décoration, on pourrait confier cette hache aux meilleurs guerriers.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5327 /* ~J'ai toujours su que j'avais ça dans la peau. Maintenant, il faut que je montre ça à Keldor… et peut-être que j'essaie cette nouvelle arme.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5328 /* ~Cette hache et moi allons passer du bon temps ensemble. Je le sens.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.4
  SAY #5329 /* ~Ta résistance naturelle au feu te permet de maintenir le minerai dans les flammes jusqu'à ce qu'il soit fondu au point de couler de tes doigts. Les autres ouvriers de la fonderie te regardent avec envie tandis que le minerai fondu coule de tes doigts. Malheureusement, tu n'as plus de minerai maintenant.~ */
  IF ~~ THEN REPLY #5330 /* ~Pars.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("G_Test1","GLOBAL",0)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 46 // from:
  SAY #5331 /* ~Tu avances vers la forge. La chaleur est insupportable. Que vas-tu faire ?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5332 /* ~Utilise la forge.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5333 /* ~Utilise la forge.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5334 /* ~Utilise la forge.~ */ GOTO 3
  IF ~~ THEN REPLY #5335 /* ~Recule.~ */ EXIT
END
