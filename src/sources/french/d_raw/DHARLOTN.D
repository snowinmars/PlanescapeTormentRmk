// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~Tu aperçois une femme visiblement fatiguée, vêtue d'un corsage et de jambières en cuir serrés. Elle sent vaguement le parfum bon marché et son visage est recouvert d'un maquillage criard. Elle t'aperçoit et te sourit. "Tu veux pas rester et faire un brin de causette avec moi, mon trésor ?"~ */
  IF ~~ THEN REPLY #7190 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Continue ta route.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~La femme te regarde d'un air de fausse timidité. "Tu as l'air d'un affranchi qui a *perdu* quelque chose. Peut-être que j'peux t'aider à trouver, matois ?" Elle sourit légèrement.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"Oh ?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"Je recherche un journal."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~"Tu peux peut-être m'aider à retrouver quelque chose."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"En fait, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"Pas aujourd'hui, merci."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"Eh ?" Elle semble troublée. "Qu'est-ce que tu racontes ?"~ */
  IF ~~ THEN REPLY #7197 /* ~"Oublie le journal. Tu peux peut-être m'aider à trouver ce qui me manque *vraiment*."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"Je n'ai rien perdu, mais j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"Peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~Elle prend un ton professionnel. "Bon, chéri, parlons d'indemnisation maintenant."~ */
  IF ~~ THEN REPLY #7200 /* ~"Je vois. Combien ?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"Alors, laisse tomber. J'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"Peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"Quelques pièces de cuivre pour un *coup d'œil* sur ce que tu cherches et dix pièces pour le trouver."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"C'est fait."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"Laisse tomber. Mais j'ai quelques questions…"~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"Peu importe. Je trouverai ce que je cherche moi-même, merci."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"Peu importe. Je trouverai ce que je cherche moi-même, merci."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"Peu importe. Je trouverai ce que je cherche moi-même, merci."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"J'crois bien qu't'as trouvé c'que tu cherchais. Viens donc par ici, trésor."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Suis-la…~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Suis-la…~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Suis-la…~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Suis-la…~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Suis-la…~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~La femme sourit. "T'as pas assez, hein ? T'inquiète pas, mon trésor… tu r'viendras quand t'auras plus de jonc."~ */
  IF ~~ THEN REPLY #7213 /* ~"Euh… alors au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~La femme intervient. "C'est le double du prix pour le mimir… ou pour tout autre dégénéré."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"Euh… 'mimir' ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"T'en fais pas, Morte. Vu son apparence, je vais sans doute t'éviter de mourir une deuxième fois."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"Alors, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"Qu'la variole te bouffe de l'intérieur ! T'as l'odeur et l'intelligence d'un troupeau d'chèvres et t'es deux fois plus moche !"~ */
  IF ~~ THEN REPLY #7218 /* ~"Euh…"~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~La femme fronce les sourcils. "J'suis pas une rabatteuse…" Ensuite, elle frotte deux doigts l'un contre l'autre. "*À moins que* t'aies d'quoi payer."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"Je peux te payer. Combien ?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"Je peux te payer. Combien ?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"Je peux te payer. Combien ?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"Alors, peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"Dix pièces de cuivre. Les questions plus pointues coûtent plus cher."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"Ça m'a l'air équitable. Voilà dix pièces."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"Peu importe."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"Tant pis pour toi. Quand t'en auras marre de perdre tes affaires et que tu voudras les retrouver, chéri, t'as qu'à venir me voir."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"Je m'en souviendrai. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"Je m'en souviendrai. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"Je m'en souviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"Parfait." Elle fait glisser le jonc dans sa main, où il disparaît aussitôt. "Et maintenant…"~ */
  IF ~~ THEN REPLY #7231 /* ~"Il y a plusieurs choses que je voudrais savoir…"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"Demande ce que tu veux, mon trésor."~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"Qu'est-ce que tu peux me dire sur cette cité ?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"Tu peux me parler de Sigil ?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"Peux-tu me dire ce qu'il y a d'intéressant par ici ?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"Que peux-tu me dire sur les factions ?"~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"Que peux-tu me dire sur la Dame des Douleurs ?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"Je cherche un certain Pharod."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"Je cherche un journal."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"En fait, peu importe. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Ses yeux se rétrécissent, ce qui lui donne un air suspicieux. "La cité ? Et ben quoi ?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"Quoi ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"Quoi ?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"Ce qu'est Sigil, tu veux dire ?" Elle hausse les épaules et regarde autour d'elle. "C'est la cité qui se trouve sous tes pieds et qui se développe autour de toi." Elle sourit. "Elle fait battre le cœur des visiteurs à cent à l'heure."~ */
  IF ~~ THEN REPLY #7248 /* ~"Où se situe Sigil exactement ?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"Au centre des plans, à ce qu'on m'a dit." Elle grogne. "Si tu crois à ces salades."~ */
  IF ~~ THEN REPLY #7253 /* ~"Pourquoi ce seraient des 'salades' ?"~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~Elle sourit légèrement. "Chéri, d'après les barbes grises, les greffiers et toutes ces têtes pensantes, les plans sont infinis." Elle se frappe la tête. "Comment est-ce qu'on peut savoir où est le 'centre' ?"~ */
  IF ~~ THEN REPLY #7258 /* ~"Hmmmm. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"Merci du renseignement. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~Elle met ses mains sur ses hanches et fait la moue. "Ça dépend de c'que tu r'cherches, matois."~ */
  IF ~~ THEN REPLY #7379 /* ~"J'voudrais me payer du bon temps."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"Je cherche du travail."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"J't'ai déjà fait une offre, chéri, et pour un prix intéressant. J'connais pas d'autre endroit où tu prendrais autant ton pied qu'avec moi."~ */
  IF ~~ THEN REPLY #7263 /* ~"Qu'est-ce qu'il y a d'autre d'intéressant par ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~Elle rit. "C'est à *moi* qu'tu d'mandes ça ? Ma parole, t'as l'intention d'rejoindre la Communauté de sœurs ?" Elle éclate d'un rire perçant qui ressemble à celui d'une harpie ivre. Le rire finit par s'atténuer et elle reprend son souffle. "T'es… t'es un type riche, on dirait."~ */
  IF ~~ THEN REPLY #7269 /* ~"Qu'est-ce qu'il y a d'autre d'intéressant par ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~Elle sourit d'un air assuré. "Je fais que… 'servir'… les factions, mon trésor. J'trafique pas avec elles."~ */
  IF ~~ THEN REPLY #7275 /* ~"Pas même les Hommes-Poussière ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"Les Hommes-Poussière ne se comportent pas en Poussiéreux avec moi, trésor." Elle prend un air moqueur. "Ces lascars parlent beaucoup de la mort, mais ils ne disent pas grand-chose quand ils sont avec moi, tu vois ?"~ */
  IF ~~ THEN REPLY #7280 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"Instructif… Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"Instructif… Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"Instructif… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"J'ai aucune idée d'l'endroit où tu pourrais trouver ça, chéri. Faut qu'tu cherches… ailleurs." Elle sourit d'un air suggestif. "J'crois savoir par où tu pourrais commencer."~ */
  IF ~~ THEN REPLY #7284 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"Pharod ? *C'est* l'un des plus grands ténébreux, chéri. Si tu veux en savoir plus sur cet affranchi, ça te coûtera trois fois plus cher qu'une requête ordinaire."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"Je comprends. Voilà trente pièces."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"D'accord. Voilà vingt et une pièces."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"Je comprends. Voilà neuf pièces."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"Hum. Je n'ai pas assez. Mais j'ai d'autres questions…"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"Hum. Je n'ai pas assez. Mais j'ai d'autres questions…"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"Hum. Je n'ai pas assez. Mais j'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"Alors, laisse tomber… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~Elle observe un moment tes pièces, puis elle hausse les épaules et les met dans sa poche. "Qu'est-ce que tu veux savoir sur le vieux Pharod ?"~ */
  IF ~~ THEN REPLY #7328 /* ~"À *ce* prix-là, tu peux tout me dire sur lui."~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"Que peux-tu me dire sur lui ?"~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"Alors, laisse tomber… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~Elle hausse les épaules. "La chanson dit que c'est l'un des chefs des Récupérateurs. Il a toute une bande d'affranchis sous ses ordres."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"Où est-ce que je peux le trouver ?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"Peu importe Pharod… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"Ça, personne n'en est vraiment sûr, mais si *je* devais choisir un endroit, ce serait le Square du Chiffonnier."~ */
  IF ~~ THEN REPLY #7340 /* ~"Le Square du Chiffonnier ?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"Merci du renseignement. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"Ouais, un gros tas de guenilles et d'ordures à trois cents mètres à l'ouest de la Morgue… C'est là que tous les Récupérateurs ont leur guitoune. Avec un peu d'chance, tu y trouveras aussi Pharod."~ */
  IF ~~ THEN REPLY #7345 /* ~"C'est quoi, un Récupérateur ?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"Merci du renseignement. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"Tu sais… ces bougres qui ramassent les cadavres pour du jonc. C'est pas une bande joyeuse."~ */
  IF ~~ THEN REPLY #7262 /* ~"Ils récupèrent des corps ? Pourquoi faire ?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"Merci du renseignement. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"Parce qu'ils n'ont pas le look qu'y faut pour faire c'que j'fais."~ */
  IF ~~ THEN REPLY #7399 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"Merci du renseignement. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~Elle crache et trace un demi-cercle autour de son cœur. "Cette vieille sorcière ! Toute-puissante, maîtresse de toute la cité, flottante et silencieuse, elle tue tout ce qu'elle trouve sur son passage. Elle garde la cité…" Elle siffle. "Et elle laisse les vivants *pourrir*."~ */
  IF ~~ THEN REPLY #7457 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"C'est tout, alors, matois."~ */
  IF ~~ THEN REPLY #7461 /* ~"J'ai quelques questions à te poser. Enfin… maintenant que je peux me concentrer."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"Merci. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"Pour toi…" Elle t'observe d'un œil critique. "Sept pièces de cuivre, pas une de plus, pas une de moins. Les questions plus pointues coûtent plus cher."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"Ça m'a l'air équitable. Voilà sept pièces."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"Peu importe."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"Pour un joli lascar comme toi…" Elle arbore un large sourire, montrant une rangée de dents sales. "Trois pièces suffiront à me délier la langue." Elle se lèche les lèvres, puis fronce les sourcils. "Mais les questions plus pointues coûtent plus cher."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"Ça m'a l'air équitable. Voilà trois pièces."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"Peu importe."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~La catin en profite pour fuir.~ */
  IF ~~ THEN REPLY #30537 /* ~"Bon sang, Annah…"~ */ DO ~EscapeArea()
~ EXIT
END
