// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~Ce rat-garou à l'air las semble rechercher toute excuse pour le tirer de son ennui. "Qu'est-ce que tu veux, viande ?"~ */
  IF ~~ THEN REPLY #48222 /* ~"J'aimerais sortir."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"Je veux simplement te parler."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~"Rien. Laisse tomber."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"Vraiment ? Qu'est-ce qui pourrait valoir la peine de désobéir à Mantuok et de risquer le courroux des rats, hein ?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"Vos vies. Si tu me laisses sortir d'ici, je vous laisserai vivre."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"Vos vies. Si tu me laisses sortir d'ici, je vous laisserai vivre."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"Je promets que personne ne saura jamais ce que j'ai fait… et en plus quelques pièces plus tard, peut-être."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"Comment pourraient-ils le savoir ?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"Qu'est-ce que tu dirais d'un peu de jonc ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"En y réfléchissant, je ne pense à rien."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Raimon t'examine soigneusement. En voyant la violence qui anime tes yeux et la taille de tes muscles, il déverrouille très soigneusement la porte et l'ouvre pour toi. Il s'écarte et détourne son regard du tien.~ */
  IF ~~ THEN REPLY #48235 /* ~"Merci, mon pote."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"Salut."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~Il a toujours les yeux détournés. "Ne me fais pas mal, s'il te plaît, affranchi… J'faisais qu'mon boulot."~ */
  IF ~~ THEN REPLY #48238 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~Il te regarde et ricane. "Tu crois pouvoir me blesser, hein ? Faudra d'abord que tu trouves un moyen de sortir !"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"Et si je promets que personne ne saura jamais ce que j'ai fait … et en plus quelques pièces plus tard, peut-être."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"Pourquoi tu me laisses pas sortir ?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"Et si je te donnais quelques pièces ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"J'vais essayer d'en trouver une, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"Pourquoi pas. J'ai jamais trop aimé l'autoritarisme de Mantuok". Il déverrouille la porte, l'ouvre et s'écarte. "Maintenant, dégage avant que je ne puisse plus prétendre ne pas t'avoir vu."~ */
  IF ~~ THEN REPLY #48247 /* ~"T'as compris. Au revoir."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"Tu sais quoi… ta bourse tintait joyeusement quand t'es entré. Cent pièces - j'suis sûr que tu peux te le permettre - ensuite tu pourras partir."~ */
  IF ~~ THEN REPLY #48249 /* ~"C'est d'accord."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"Jette le jonc à travers les barres et j'te laisserai partir. Et avant que tu me poses la question, t'as pas d'autre choix que de me faire confiance, pas vrai, Shaddeus ?" Il sourit à son partenaire.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"Très bien. Voilà."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"Je n'en ai pas tant …"~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~Il compte les pièces soigneusement. Une fois convaincu que le compte y est, il déverrouille la porte devant toi. "Allez, dégage !"~ */
  IF ~~ THEN REPLY #48256 /* ~"D'accord, d'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"Alors, tu sors pas, hein ?" Il a un petit rire aigu. Il se détourne.~ */
  IF ~~ THEN REPLY #48258 /* ~"Merde…"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"Tu veux parler, hein ? Bon, c'est pas le vieux Raimon qui t'fera causette, ça c'est sûr !" Il te tourne le dos.~ */
  IF ~~ THEN REPLY #48264 /* ~"Si tu me laisses sortir, je te laisserai vivre."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"Eh bien d'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~Il ricane. "Tu crois que j'vais te faire confiance ?" Ses moustaches se tordent. "Essaie encore."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~"Si tu me laisses sortir, je te laisserai vivre."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"Si tu me laisses sortir, je te laisserai vivre."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"Qu'est-ce que tu dirais d'un peu de jonc ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"Laisse tomber."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"Qu'est-ce que tu veux encore, espèce d'enfumé ?"~ */
  IF ~~ THEN REPLY #48270 /* ~"Je veux te parler."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"Je veux parler des mes options de départ."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~Alors que tu t'approches des barres, tu distingues un éclair d'argent et l'un des gardes rats-garous attaque l'autre avec une férocité aveuglante !~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~"Alors, voyons." Il prend les clés sur le corps de Raimon, déverrouille la porte et l'ouvre pour toi. "Et maintenant file." Il fait une petite révérence et détale.~ */
  IF ~~ THEN REPLY #48276 /* ~"Oui. Merci."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"Tu t'demandes pourquoi j'ai fait ça, hein ? J'étais un Villageois Enseveli. Je m'appelais Shaddeus. Je ne veux pas être un rat-garou et j'crois pas que cette maladie me rende moins loyal pour autant envers l'humanité. Dégage, maintenant." Il déverrouille la porte, l'ouvre pour toi et détale.~ */
  IF ~~ THEN REPLY #48278 /* ~"Merci, Shaddeus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~Après avoir massacré son semblable, le rat-garou regarde Annah droit dans les yeux. "Annah, c'est Shaddeus. Je te laisse partir. Je ne peux pas supporter de te voir enfermée comme ça. Si tu retournes au Village, dis un mot en ma faveur et fais-leur savoir que quelque chose de terrible se trame. Je ne peux pas te dire quoi, mais… C'est pour que tu le saches."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~Alors que tu t'approches des barres, tu distingues un éclair d'argent et l'un des gardes rats-garous attaque l'autre avec une férocité aveuglante !~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
