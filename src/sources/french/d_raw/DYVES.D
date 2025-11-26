// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVES~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 67 71 even though they appear after this state */
~  Global("Yves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3005 /* ~Cette charmante jeune femme au regard lointain a des yeux doux de couleur bleu-vert.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3006 /* ~"Bonjour…"~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39201 /* ~"Bonjour…"~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #39202 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39203 /* ~"Bonjour. Je m'appelle Yvonne, la Collectionneuse d'histoires."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 407
END

IF ~~ THEN BEGIN 2 // from:
  SAY #39204 /* ~Yvonne continue, imperturbable. "Tu es venu échanger des histoires ?"~ */
  IF ~~ THEN REPLY #39205 /* ~"Je voudrais échanger des histoires."~ */ GOTO 19
  IF ~~ THEN REPLY #39206 /* ~"J'avais quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #39207 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #39208 /* ~"Bonjour. Je m'appelle Yvonne, la Collectionneuse d'histoires. Tu es venu échanger des histoires ?"~ */
  IF ~~ THEN REPLY #39209 /* ~"Je voudrais échanger des histoires."~ */ GOTO 19
  IF ~~ THEN REPLY #39210 /* ~"J'avais quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #39211 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.0 7.1 8.0 9.1 10.0 11.0 12.1 14.1 15.1 16.1 17.1 19.11 20.5 21.1 22.1 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 62.1 63.5 64.1 65.1 66.12 67.1 68.0 69.0 70.0 71.1 72.1 73.1 74.1 75.0 76.1 77.1 78.1 79.1 80.0 81.1
  SAY #39212 /* ~Yvonne acquiesce en silence.~ */
  IF ~~ THEN REPLY #39213 /* ~"Pourquoi est-ce qu'on t'appelle la 'Collectionneuse d'histoires' ?"~ */ DO ~SetGlobal("Yves","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #39214 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #39215 /* ~"Tu peux me parler de cet endroit ?"~ */ DO ~SetGlobal("Know_Yves_Grace","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Yvana","GLOBAL",1)
~ THEN REPLY #39216 /* ~"Yvonne… ton visage me dit quelque chose. Ta mère ne s'appellerait pas Yvana ?"~ */ GOTO 68
  IF ~  GlobalGT("Yvana","GLOBAL",1)
~ THEN REPLY #39217 /* ~"Tu as parlé à ta mère dernièrement, Yvonne ?"~ */ DO ~SetGlobal("Yvana","GLOBAL",3)
~ GOTO 69
  IF ~~ THEN REPLY #39218 /* ~"On échange des histoires ?"~ */ GOTO 19
  IF ~  GlobalGT("Yves_Shared","AR0605",0)
~ THEN REPLY #39219 /* ~"Tu peux me raconter l'une des histoires que tu as déjà échangées ?"~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39220 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 70
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67851 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 70
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39221 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ JOURNAL #66754 /* ~J'ai demandé à Yvonne si Kesai-Serris était la fille de Ravel, mais elle m'a juste répondu qu'il fallait creuser profondément pour découvrir la vérité. Il va donc falloir que je continue de me renseigner…~ */ GOTO 8
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39222 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ JOURNAL #66727 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du parfum personnel de Viviane. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 6
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39223 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 5
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39224 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 7
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39225 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 6
  IF ~~ THEN REPLY #39226 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.11
  SAY #39227 /* ~Yvonne secoue la tête. "Mais l'histoire de Marissa est intéressante. Est-ce que tu veux l'entendre ?"~ */
  IF ~~ THEN REPLY #39228 /* ~"Oui, vas-y."~ */ GOTO 11
  IF ~~ THEN REPLY #39229 /* ~"Pas tout de suite. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39230 /* ~"Pas maintenant. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.10 4.13
  SAY #39231 /* ~Yvonne secoue la tête. "Va voir Nenny… Elle passe son temps à se balader en observant tout avec attention."~ */
  IF ~~ THEN REPLY #39232 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39233 /* ~"Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.12
  SAY #39234 /* ~"L'histoire de Ravel Puits-de-Rébus, phobie des enfants, commence et finit par une question : 'qu'est-ce qui peut changer la nature d'un homme ?'"~ */
  IF ~~ THEN REPLY #39235 /* ~"Continue…"~ */ GOTO 15
  IF ~~ THEN REPLY #39236 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39241 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.9
  SAY #39242 /* ~"Il était une fois un vieil homme du Quartier des Gratte-Papier qui avait disparu et dont le corps restait introuvable. Pour le cacher, le meurtrier l'avait enterré sous un autre corps dans le cimetière. Un devin montra où se trouvait sa dépouille. Les autorités creusèrent et exhumèrent un corps, mais ce n'était pas celui du vieil homme. Déconcertées, elles furent obligées de libérer l'assassin, et ce n'est qu'après avoir creusé plus profondément pour ré-enterrer le plus vieil homme qu'elles trouvèrent le second corps."

"Il est parfois nécessaire de creuser plus profondément pour trouver la vérité."~ */
  IF ~~ THEN REPLY #39243 /* ~"Je… vois. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39244 /* ~"Je comprends… je vais continuer à chercher. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 14.0
  SAY #39245 /* ~"Il était une fois une jeune fille qui se présenta devant un oracle qui avait la réputation de savoir bien des choses pour lui demander une faveur. Elle ressentait le besoin de donner un sens à sa vie, et elle demanda à l'oracle de la conseiller sur ce qui pourrait motiver son existence…"~ */
  IF ~~ THEN REPLY #39246 /* ~"Continue…"~ */ GOTO 10
  IF ~~ THEN REPLY #39247 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39248 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39249 /* ~"L'oracle n'avait pas un mauvais fond, mais il était vague et avait un penchant pour la boisson, ce qui rendait sa concentration aléatoire et ses jugements peu clairs. Tout ce qu'il réussit à répondre à la jeune fille, c'est qu'elle trouverait la vérité qu'elle recherchait dans une histoire qu'elle entendrait au cours de sa vie. Elle partit donc recueillir les histoires, qu'elle recherche toujours aujourd'hui, sans savoir laquelle de ces milliers de récits renferme la vérité."

"Tel est le danger d'une question idiote et la sagesse d'une question non formulée."~ */
  IF ~~ THEN REPLY #39250 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39251 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #39252 /* ~"Il était une fois trois sœurs qui vivaient dans un univers de héros et de dieux puérils et méchants. Très laides, elles étaient considérées comme des démons par les peuples terrestres qui les fuyaient. Malgré la peine que lui infligeait le fait d'être séparée de ses sœurs, l'une d'elles quitta ce monde et la honte qu'elle éprouvait… ce faisant, elle échangea la méchanceté d'un panthéon contre celle de soi."~ */
  IF ~~ THEN REPLY #39253 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39254 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #39255 /* ~"Je recueille les histoires et je les échange contre d'autres."~ */
  IF ~~ THEN REPLY #39256 /* ~"On échange des histoires ?"~ */ GOTO 19
  IF ~~ THEN REPLY #39257 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39258 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #39259 /* ~"Ça fait partie de l'histoire de Maîtresse Grâce, et ce n'est pas à moi de la raconter. Elle a dit qu'elle me la raconterait vers la fin de sa vie… et uniquement si je promettais de ne pas la divulguer."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39260 /* ~"Elle espère ne jamais avoir à me raconter son histoire, parce qu'elle espère que je trouverai ma propre histoire avant et que je partirai. Je crois qu'elle a peur que je gaspille ma vie à chercher cette histoire et que je ne tienne pas compte de ce que je sais déjà." Yvonne soupire doucement. "Mais je ne peux pas m'en empêcher."~ */
  IF ~~ THEN REPLY #39261 /* ~"Ta propre histoire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #39262 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39263 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #39264 /* ~"Elle a souvent posé cette devinette à ceux qui l'ont approchée et qui ont essayé de glaner l'étrange magie qu'elle seule semble posséder. Tous ont tenté de répondre à sa question, mais en vain… et leur mauvaise réponse leur a valu une abominable malédiction, toujours plus terrible que celle de la victime précédente. Rapporter ici tous ces tourments, ce serait comme parler de l'essence même des cauchemars."~ */
  IF ~~ THEN REPLY #39265 /* ~"Continue…"~ */ GOTO 16
  IF ~~ THEN REPLY #39266 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39267 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39268 /* ~"L'histoire m'a frappée pour cette raison : Ravel elle-même ne connaissait pas la réponse à cette question, mais elle la convoitait. Seul le *pourquoi* du problème restait en suspens. Pourquoi la nature d'un homme avait-elle de l'importance pour l'une des Sœurs Grises, surtout pour Ravel, qui était si puissante ?"~ */
  IF ~~ THEN REPLY #39269 /* ~"Continue…"~ */ GOTO 17
  IF ~~ THEN REPLY #39270 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39271 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39272 /* ~"On dit qu'elle a posé la question à la Dame des Douleurs, pas directement, mais elle l'a criée à Sigil, défiant la Dame de lui répondre. Comme aucune réponse ne venait, elle a lancé de terribles sorts magiques qui ont menacé d'ouvrir la Cage et de permettre à la fureur des plans de déferler comme une vague."~ */
  IF ~~ THEN REPLY #39273 /* ~"Continue…"~ */ GOTO 18
  IF ~~ THEN REPLY #39274 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39275 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39276 /* ~"Elle n'a reçu pour seule réponse que le bannissement. À ce jour, personne ne connaît la réponse à la question de Ravel… et il n'y a personne pour la poser, puisque Ravel elle-même est partie, perdue pour les plans."~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39277 /* ~"J'avais une autre question…"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet. Mais il faut d'abord que je rende la parole à Ecco…~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39278 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet. Mais il faut d'abord que je rende la parole à Ecco…~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66786 /* ~"J'ai une autre question…"~ */ JOURNAL #66790 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet. Mais il faut d'abord que je rende la parole à Ecco…~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66787 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ JOURNAL #66790 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet. Mais il faut d'abord que je rende la parole à Ecco…~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66788 /* ~"J'ai une autre question…"~ */ JOURNAL #66791 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet.~ */ GOTO 80
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66789 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ JOURNAL #66791 /* ~Après m'avoir raconté l'histoire de Ravel, Yvonne m'a dit qu'Ecco -la prostituée silencieuse - en savait peut-être davantage à ce sujet.~ */ GOTO 80
END

IF ~~ THEN BEGIN 19 // from: 2.0 3.0 4.5 12.0 22.0 29.0 39.0 42.0 44.0 47.0 50.0 58.0 60.0 62.0 63.4 65.0 67.0 78.0
  SAY #39279 /* ~Yvonne acquiesce. "Ça me plairait beaucoup, oui."~ */
  IF ~  Global("Yves_Story_01","GLOBAL",0)
~ THEN REPLY #39280 /* ~Raconte-lui l'histoire de ton réveil dans la Morgue.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 21
  IF ~  Global("Yves_Story_02","GLOBAL",0)
!NearbyDialog("Dnordom")
~ THEN REPLY #39281 /* ~Raconte-lui l'histoire de l'Allée des Longs Soupirs.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 23
  IF ~  Global("Yves_Story_02","GLOBAL",0)
NearbyDialog("Dnordom")
~ THEN REPLY #67899 /* ~Raconte-lui l'histoire de l'Allée des Longs Soupirs.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 81
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39282 /* ~Raconte-lui l'histoire du Roi Silencieux.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39283 /* ~Raconte-lui l'histoire du Roi Silencieux.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  GlobalGT("Dream","GLOBAL",0)
Global("Yves_Story_13","GLOBAL",0)
~ THEN REPLY #39284 /* ~Raconte-lui l'histoire du Faiseur de rêves.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 40
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Yves_Story_04","GLOBAL",0)
~ THEN REPLY #39285 /* ~Raconte-lui l'histoire du sort de Pestilent.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 43
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
Global("Yves_Story_05","GLOBAL",0)
~ THEN REPLY #39286 /* ~Raconte-lui l'histoire de l'allée des Angles dangereux.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 45
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
Global("Yves_Story_06","GLOBAL",0)
~ THEN REPLY #39287 /* ~Raconte-lui l'histoire de Pharod.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 48
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
Global("Yves_Story_07","GLOBAL",0)
~ THEN REPLY #39288 /* ~Raconte-lui l'histoire d'Ignus.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 51
  IF ~  NumInPartyGT(0)
~ THEN REPLY #39289 /* ~Demande à l'un de tes compagnons s'il a une histoire à raconter.~ */ GOTO 20
  IF ~~ THEN REPLY #39290 /* ~"En fait, laisse-moi te poser une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39291 /* ~"Une prochaine fois. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.10
  SAY #39292 /* ~Yvonne attend patiemment ton histoire.~ */
  IF ~  NearbyDialog("DMorte")
Global("Yves_Story_08","GLOBAL",0)
~ THEN REPLY #39293 /* ~"Morte… tu as une histoire à échanger ?"~ */ EXTERN ~DMORTE~ 408
  IF ~  NearbyDialog("DAnnah")
Global("Yves_Story_09","GLOBAL",0)
~ THEN REPLY #39294 /* ~"Annah… tu as une histoire à échanger ?"~ */ EXTERN ~DANNAH~ 195
  IF ~  NearbyDialog("DDakkon")
Global("Yves_Story_10","GLOBAL",0)
~ THEN REPLY #39295 /* ~"Dak'kon… tu as une histoire à échanger ?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DDAKKON~ 122
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
Global("Yves_Story_11","GLOBAL",0)
~ THEN REPLY #39296 /* ~"Tombée-en-Disgrâce… vous avez une histoire à échanger ?"~ */ DO ~SetGlobal("Yves_Story_11","GLOBAL",1)
~ EXTERN ~DGRACE~ 140
  IF ~  NearbyDialog("DNordom")
Global("Yves_Story_12","GLOBAL",0)
~ THEN REPLY #39297 /* ~"Nordom : si tu as une histoire à échanger, partage-la avec Yvonne."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DNORDOM~ 10
  IF ~~ THEN REPLY #39298 /* ~"En fait Yvonne, laisse-moi te poser une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39299 /* ~"Une prochaine fois. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #39300 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de ton réveil dans la Morgue des Hommes-Poussière… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Je vais moi aussi te raconter une histoire d'Hommes-Poussière - 'Chapitres de Poussière'."~ */
  IF ~~ THEN REPLY #39301 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_01","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #39302 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39303 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 66.0
  SAY #39304 /* ~"Il y a des chapitres dans le livre des morts, l'énorme registre dans lequel les Hommes-Poussière consignent le passage de tous les êtres vivants par la Frontière Éternelle. Dans ce livre, il y a des chapitres qui ne sont que poussière, et on pense que les noms qui s'y trouvent sont des âmes perdues qui ne peuvent mourir et doivent endurer la vie pour l'éternité jusqu'à ce que l'histoire elle-même meure et leur accorde la délivrance."~ */
  IF ~~ THEN REPLY #39305 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39306 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39307 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY #39308 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de l'allée donnant naissance… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une à te raconter. Avant de commencer, il faut que je te demande : est-ce que tu sais ce qu'est un modrone ?"~ */
  IF ~~ THEN REPLY #39309 /* ~"Oui."~ */ GOTO 24
  IF ~~ THEN REPLY #39310 /* ~"Non…"~ */ GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.0 30.0
  SAY #39311 /* ~"Alors je vais te raconter l'histoire de 'L'Horloge et du tétradrone'."~ */
  IF ~~ THEN REPLY #39312 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #39313 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39314 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 66.1 81.0
  SAY #39315 /* ~"Il était une fois un modrone. Il était tout neuf et sa logique, fraîche et non testée. Il était venu à Sigil, selon les ordres de ses supérieurs modrones."~ */
  IF ~~ THEN REPLY #39316 /* ~"Continue…"~ */ GOTO 26
  IF ~~ THEN REPLY #39317 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39318 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #39319 /* ~"Il ne connaissait que les ordres et les commandements, l'obéissance et l'application des instructions données par ses supérieurs. Car, vois-tu, les modrones n'enregistrent que les ordres de leurs supérieurs directs - ils n'ont aucune notion d'une autorité encore supérieure. Du moins, jusqu'à celui-ci."~ */
  IF ~~ THEN REPLY #39320 /* ~"Continue…"~ */ GOTO 27
  IF ~~ THEN REPLY #39321 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39322 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #39328 /* ~"Un jour, il entra dans un petit magasin dans lequel il y avait une petite horloge en panne. Elle était fêlée sur les bords, et les engrenages de ses aiguilles étaient cassés. Le modrone se mit immédiatement au travail et trouva les pièces nécessaires pour réparer l'horloge cassée."~ */
  IF ~~ THEN REPLY #39329 /* ~"Continue…"~ */ GOTO 28
  IF ~~ THEN REPLY #39330 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39331 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #39332 /* ~"Il construisit une nouvelle boîte pour les pièces de l'horloge, remplaça les ressorts tordus, remonta et huila soigneusement le mécanisme d'horlogerie et cisela de nouvelles aiguilles dans le peu de métal disponible. Le tic-tac précis de l'horloge réparée lui rappelait les grands engrenages de Méchanus, et le rassurait autant qu'un modrone puisse l'être."~ */
  IF ~~ THEN REPLY #39333 /* ~"Continue…"~ */ GOTO 29
  IF ~~ THEN REPLY #39334 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39335 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #39336 /* ~"Ce que le modrone ne réussit jamais à comprendre, c'est qu'il *aimait* véritablement cette horloge sur laquelle il avait travaillé et, pour une raison qu'il aurait été incapable d'expliquer, il choisit de rester à Sigil avec l'horloge pour le restant de ses jours."~ */
  IF ~~ THEN REPLY #39337 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39338 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39339 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY #39340 /* ~"Les modrones sont des créatures entièrement loyales ; ce sont presque plus des machines que des êtres vivants. Il en existe différents types, mais tous ont une place bien déterminée dans une hiérarchie très rigide et soigneusement organisée. Ils sont si loyaux envers ce système qu'ils sont bien incapables de communiquer avec des modrones autres que leurs supérieurs ou subalternes directs - voire d'imaginer leur existence."~ */
  IF ~~ THEN REPLY #39341 /* ~"Maintenant, je comprends."~ */ GOTO 24
  IF ~~ THEN REPLY #39342 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39343 /* ~"J'écouterai l'histoire une autre fois. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 19.3 19.4
  SAY #39344 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire d'une nation enfouie de morts-vivants, dirigée par un cadavre qui n'a pas prononcé une parole depuis un millier d'années… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une à te raconter - 'Le Suppliant de la Porte'."~ */
  IF ~~ THEN REPLY #39345 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_03","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 32
  IF ~~ THEN REPLY #39346 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39347 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 66.2
  SAY #39348 /* ~"Il était bien après pic lorsqu'on entendit un lointain tambourinage aux portes de la prison."~ */
  IF ~~ THEN REPLY #39349 /* ~"Continue…"~ */ GOTO 33
  IF ~~ THEN REPLY #39350 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39351 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #39352 /* ~"Carus - le plus vieux Rectifieur que la faction ait jamais connu - quitta difficilement son poste pour se traîner jusqu'au hall et aux grandes portes qui séparaient les condamnés du monde extérieur. Le tambourinage ne s'arrêta pas quand il arriva et commença à parler."~ */
  IF ~~ THEN REPLY #39353 /* ~"Continue…"~ */ GOTO 34
  IF ~~ THEN REPLY #39354 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39355 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #39356 /* ~"Il appela en vain. Il ouvrit la porte, non sans crainte, poussé par une étrange force."~ */
  IF ~~ THEN REPLY #39357 /* ~"Continue…"~ */ GOTO 35
  IF ~~ THEN REPLY #39358 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39359 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #39360 /* ~"Une femme hagarde était agenouillée juste derrière la porte. Ses mains étaient ensanglantées à l'endroit où elles avaient tambouriné contre la porte, et elle avait le souffle coupé. Alors que la lumière vacillante issue de l'intérieur de la prison éclairait les pavés, elle leva les yeux vers le Rectifieur resté debout dans l'encadrement de la porte et se mit à sangloter de soulagement."~ */
  IF ~~ THEN REPLY #39361 /* ~"Continue…"~ */ GOTO 36
  IF ~~ THEN REPLY #39362 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39363 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39364 /* ~"En dévisageant cette femme, Carus sentit que la seule chose qui les différenciait, c'était leur sexe, et il se sentit ému par sa présence. Ne sachant pas quoi dire, il attendit tout simplement que la femme lui explique les raisons de sa venue."~ */
  IF ~~ THEN REPLY #39365 /* ~"Continue…"~ */ GOTO 37
  IF ~~ THEN REPLY #39366 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39367 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #39368 /* ~"Ce qu'elle fit. C'était une explication on ne peut plus simple, mais d'une extrême importance, et Carus, que ses genoux faisaient souffrir à chaque mouvement, s'agenouilla et aida la visiteuse à se relever. Il l'accompagna à l'intérieur, en la guidant doucement en chemin."~ */
  IF ~~ THEN REPLY #39369 /* ~"Continue…"~ */ GOTO 38
  IF ~~ THEN REPLY #39370 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39371 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #39372 /* ~"Elle expliqua qu'une injustice avait été commise. Et c'est tout ce que Carus avait besoin d'entendre."~ */
  IF ~~ THEN REPLY #39373 /* ~"Continue…"~ */ GOTO 39
  IF ~~ THEN REPLY #39374 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39375 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #39376 /* ~"Au bout du compte, il advint qu'elle ne pouvait pas remplir son devoir de Furie, car un homme coupable d'un crime de sang était mort impuni. Elle supplia Carus et les Rectifieurs de l'aider… et ils l'exécutèrent donc. Elle avait échoué dans sa tâche."~ */
  IF ~~ THEN REPLY #39377 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39378 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39379 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 19.5
  SAY #39380 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de l'homme qui a perdu la faculté de rêver et qui a commandé la construction d'un appareil qui lui permettrait de le faire à nouveau… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une pour toi - 'L'Histoire de l'Apiculteur'."~ */
  IF ~~ THEN REPLY #39597 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_13","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 41
  IF ~~ THEN REPLY #39598 /* ~"Attends… j'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39599 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0 66.3
  SAY #39529 /* ~"Il était une fois un homme qui arriva sur un champ de ruches. Sur ce champ, il entendit des milliers d'abeilles, mais n'en vit aucune. Au milieu des ruches marchait un apiculteur qui récoltait les rayons de miel dans les ruches apparemment vides. Mais malgré l'absence d'insectes, le bourdonnement persistait ; la curiosité de l'homme fut piquée."~ */
  IF ~~ THEN REPLY #39600 /* ~"Continue…"~ */ GOTO 42
  IF ~~ THEN REPLY #39601 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39602 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #39530 /* ~"Il s'avança pour parler à l'apiculteur, qui souleva son voile pour révéler qu'il était entièrement constitué d'abeilles. Une dépression en forme de bouche dans la masse d'insectes constituait le visage de la créature ; la dépression bougeait quand la créature parlait, mais le bourdonnement était tel qu'il était impossible de comprendre ses paroles. L'homme mourut à ce moment, en essayant de comprendre ce que disait l'apiculteur."~ */
  IF ~~ THEN REPLY #39603 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39604 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39605 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.6
  SAY #39531 /* ~Yvonne se penche pour entendre ton récit de la malédiction odoriférante de Pestilent… elle boit tes paroles. Quand tu en termines, elle te sourit. "Je me souviendrai de cette histoire. Moi aussi, j'en ai une à te dire - 'Le Conte Doré'."~ */
  IF ~~ THEN REPLY #39606 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_04","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 44
  IF ~~ THEN REPLY #39607 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39608 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 66.4
  SAY #39532 /* ~"Sur le Plan d'Ysgard se trouve l'Antichambre Mordorée, où l'on peut trouver ces Sensats si friands d'œsophage et de longe. Ils s'adonnent avec ferveur à ces passions, et ne se rendent jamais compte que les portes de l'antichambre ne s'ouvrent jamais et qu'il n'y a pas de chemin évident pour retourner à la Salle des Fêtes. Ce sont les indésirables parmi les Sensats, ceux qui ne croient pas vraiment à la faction, mais qui recherchent le plaisir dans le seul but de se faire plaisir. Ceux qui ne se rendent pas compte qu'ils sont prisonniers le sont-ils vraiment ?"~ */
  IF ~~ THEN REPLY #39609 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39610 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39611 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.7
  SAY #39533 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de l'allée des Angles dangereux et de ses origines… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une pour toi - 'Le Soupirant de la Dame'."~ */
  IF ~~ THEN REPLY #39612 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_05","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #39613 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39614 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 66.5
  SAY #39534 /* ~"C'est l'histoire d'un soupirant de la Dame des Douleurs, l'un des nombreux qu'elle ait eus au fil des années. C'était un jeune homme qui était obsédé par la Maîtresse de Sigil. Il la voyait partout, à chaque coin de sa cité. Il entendait le bruissement de sa robe, le frottement de ses lames, et devint enamouré plus que de raison. Il espérait qu'en la vénérant, il réussirait enfin à la voir… il la vénéra donc."~ */
  IF ~~ THEN REPLY #39615 /* ~"Continue…"~ */ GOTO 47
  IF ~~ THEN REPLY #39616 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39617 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #39535 /* ~"Il fut retrouvé mort sur les marches ensanglantées de sa propre maison, des blessures terribles recouvrant tout son corps… mais ses yeux étaient grand ouverts, et sur ses lèvres, trônait un sourire triomphant."~ */
  IF ~~ THEN REPLY #39618 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39619 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39620 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 19.8
  SAY #39536 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de la chute de Pharod… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une à te raconter…"~ */
  IF ~~ THEN REPLY #39621 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_06","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 49
  IF ~~ THEN REPLY #39622 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39623 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 66.6
  SAY #39537 /* ~"Il était une fois un homme qui avait vécu l'expérience la plus merveilleuse du multivers. Il avait l'intention de placer cette expérience dans l'une des pierres sensorielles de la Salle des Fêtes - des instruments magiques qui conservent les sentiments et les souvenirs pour une éternité, ce qui permet aux autres de les partager."~ */
  IF ~~ THEN REPLY #39624 /* ~"Continue…"~ */ GOTO 50
  IF ~~ THEN REPLY #39625 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39626 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #39538 /* ~"Mais il réfléchit : est-ce que le fait de partager l'expérience ne risquait pas de la diluer ? Il la garda donc jalousement pour lui, cette chose si précieuse, et vieillit avec son souvenir. Mais en vieillissant, le souvenir se ternit et s'estompa, et il fut bientôt incapable de se la remémorer dans toute sa magnificence."~ */
  IF ~~ THEN REPLY #39627 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39628 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39629 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 19.9
  SAY #39539 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire d'Ignus et de l'Art qui le consumait de l'intérieur… elle semble boire chacune de tes paroles. Tu finis ton récit et elle te sourit. "Je me souviendrai de cette histoire. Et maintenant, j'en ai une pour toi - 'L'Exécution'."~ */
  IF ~~ THEN REPLY #39630 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_07","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 52
  IF ~~ THEN REPLY #39631 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39632 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 66.7
  SAY #39540 /* ~"Il était une fois un meurtrier qui rôdait dans les rues de Sigil, un homme au cœur noir du nom de Kossacs. Il avait été béni par sa mère démoniaque de façon à ce que personne ne puisse lui faire du mal à moins d'en mourir. Il se délectait de cette grâce qui lui avait été faite et s'en servait pour provoquer des combats et tuer tous ceux qui croisaient son chemin."~ */
  IF ~~ THEN REPLY #39633 /* ~"Continue…"~ */ GOTO 53
  IF ~~ THEN REPLY #39634 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39635 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #39541 /* ~"Lors de l'une de ses rages meurtrières, il fut capturé par l'Harmonium à l'aide de filets et comparut devant les Greffiers. Le procès fut court et sans appel, mais Kossacs se mit à rire au moment des débats, car il savait que personne ne pourrait lui faire de mal sans mourir dans d'atroces souffrances. Le dernier jour du procès, il fut déclaré coupable et condamné à mort."~ */
  IF ~~ THEN REPLY #39636 /* ~"Continue…"~ */ GOTO 76
  IF ~~ THEN REPLY #39637 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39638 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 77.0
  SAY #39542 /* ~"Eh bien, je crache sur votre lâcheté !", dit Kossacs en riant. Prenant le calice dans l'obscurité, il le jeta contre le mur, où il se brisa. Le poison qu'il contenait goutta le long du mur et sécha, jusqu'à ce qu'il disparaisse. "Allons, venez ; vous allez devoir essayer de me tuer maintenant."~ */
  IF ~~ THEN REPLY #39639 /* ~"Continue…"~ */ GOTO 78
  IF ~~ THEN REPLY #39640 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39641 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #39543 /* ~Yvonne sourit. "C'est une histoire intéressante, Morte. Et maintenant, j'en ai une pour toi et ton compagnon… 'Le Jeu du fiélon'."~ */
  IF ~~ THEN REPLY #39642 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_08","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 56
  IF ~~ THEN REPLY #39643 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39644 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #39544 /* ~"Il était une fois un fiélon qui errait dans la région sauvage d'un monde du Plan primaire sous les traits d'un vieil homme sympathique. Un jour, il rencontra des chasseurs dans les bois."

"'Que faites-vous ?' demanda le fiélon. Les chasseurs le lui expliquèrent et le fiélon acquiesça d'un signe de tête. 'Je n'ai jamais chassé.'"~ */
  IF ~~ THEN REPLY #39645 /* ~"Continue…"~ */ GOTO 57
  IF ~~ THEN REPLY #39646 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39647 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #39545 /* ~"Les chasseurs invitèrent le vieil homme à les accompagner, et le groupe atteignit bientôt une clairière où plusieurs biches broutaient. Les chasseurs portaient des arbalètes, mais ils ne tirèrent pas, et le fiélon leur demanda pourquoi."~ */
  IF ~~ THEN REPLY #39648 /* ~"Continue…"~ */ GOTO 58
  IF ~~ THEN REPLY #39649 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39650 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #39546 /* ~"'Elles ne sont pas armées' répondirent les chasseurs en riant et en caressant leurs arbalètes. 'Nous ne chassons pas ce qui est sans défense. Après tout, ça gâcherait le plaisir de la chasse, tu ne trouves pas ?'"

"Le fiélon acquiesça et ouvrit un portail qui lui permit d'appeler trois de ses congénères. Les chasseurs coururent longtemps, mais ils furent finalement attrapés et dévorés."~ */
  IF ~~ THEN REPLY #39651 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39652 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39653 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #39547 /* ~Yvonne sourit. "C'est une belle histoire, Nordom. Et maintenant, j'en ai une pour toi et ton compagnon… 'Des Fleurs et des Sensats'."~ */
  IF ~~ THEN REPLY #39654 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_12","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 60
  IF ~~ THEN REPLY #39655 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39656 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 66.10
  SAY #39548 /* ~"Il était une fois un homme qui lisait beaucoup sur les fleurs - essais, traités, textes biologiques, poésie - et qui se considérait donc comme érudit dans ce domaine. Un jour, il rencontra un jardinier à moitié aveugle qui entretenait les jardins des Sensats. Qui était l'aveugle dans le domaine des fleurs ?"~ */
  IF ~~ THEN REPLY #39657 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39658 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39659 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39549 /* ~Yvonne sourit. "Fascinant, Dak'kon. Et maintenant, je vais vous raconter, à toi et à ton compagnon, une autre version de ton histoire que j'ai entendue…"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 123
END

IF ~~ THEN BEGIN 62 // from: 66.9
  SAY #39550 /* ~Yvonne commence à raconter une version différente de l'histoire de Dak'kon. Dans cette version, Ach'ali est expulsée de la cité githzeraï de Shra'kt'lor à cause de ses constants babillages…

"Un jour, elle rencontra un slaad en route pour la pierre de frai. Elle érigea en hâte un mur de chaos, que même le slaad aurait du mal à briser. Affamé, il attendit et lui parla à travers le mur. Elle lui posa des questions, et alors qu'elle devenait de plus en plus absorbée dans ses futiles questions et dans les réponses du slaad, son mur se délabra et s'effondra sur elle… et elle se noya dans la matière des Limbes."~ */
  IF ~~ THEN REPLY #39660 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39661 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39662 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #39551 /* ~Yvonne sourit à Annah. "Mais j'aimerais beaucoup entendre ton histoire…"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39663 /* ~"Raconte une histoire et c'est tout, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39664 /* ~"Allez Annah, raconte-nous ton histoire…"~ */ EXTERN ~DANNAH~ 196
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39665 /* ~"Raconte une histoire et c'est tout, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DMORTE~ 420
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39666 /* ~"Allez Annah, raconte-nous ton histoire…"~ */ EXTERN ~DMORTE~ 420
  IF ~~ THEN REPLY #39667 /* ~"J'ai une autre histoire à partager avec toi, Yvonne."~ */ GOTO 19
  IF ~~ THEN REPLY #39668 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39669 /* ~"Une autre fois peut-être. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #39552 /* ~Yvonne sourit. "C'était une histoire fantastique, Annah ; n'hésite jamais à la raconter. Et maintenant, j'en ai une pour toi et ton compagnon - 'La Terre brûlée'."~ */
  IF ~~ THEN REPLY #39670 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_09","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 65
  IF ~~ THEN REPLY #39671 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39672 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0 66.8
  SAY #39553 /* ~"Un jour, un gros village a été frappé par une terrible sécheresse. Un fermier s'est rendu auprès du Rocher des Prières, et une fois de plus il lui a demandé la cause de la sécheresse. Il a voulu savoir pourquoi le Rocher restait inactif, alors que les champs mouraient, que les animaux et les gens souffraient. 'N'avons-nous pas fait assez d'offrandes?' a-t-il demandé, prosterné face au Rocher. Le Rocher n'a pas répondu ; il est resté là, à projeter son ombre sur le fermier."~ */
  IF ~~ THEN REPLY #39673 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #39674 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39675 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 4.6
  SAY #39554 /* ~Yvonne acquiesce. "Laquelle ?"~ */
  IF ~  Global("Yves_Story_01","GLOBAL",1)
~ THEN REPLY #39676 /* ~"Les Chapitres de Poussière."~ */ GOTO 22
  IF ~  Global("Yves_Story_02","GLOBAL",1)
~ THEN REPLY #39677 /* ~"L'Horloge et le Tétradrone."~ */ GOTO 25
  IF ~  Global("Yves_Story_03","GLOBAL",1)
~ THEN REPLY #39678 /* ~"Le Suppliant de la Porte."~ */ GOTO 32
  IF ~  Global("Yves_Story_13","GLOBAL",1)
~ THEN REPLY #39679 /* ~"L'Histoire de l'Apiculteur."~ */ GOTO 41
  IF ~  Global("Yves_Story_04","GLOBAL",1)
~ THEN REPLY #39680 /* ~"L'Histoire dorée."~ */ GOTO 44
  IF ~  Global("Yves_Story_05","GLOBAL",1)
~ THEN REPLY #39681 /* ~"Le Soupirant de la Dame."~ */ GOTO 46
  IF ~  Global("Yves_Story_06","GLOBAL",1)
~ THEN REPLY #39682 /* ~"L'histoire de l'homme qui refusait de partager son expérience."~ */ GOTO 49
  IF ~  Global("Yves_Story_07","GLOBAL",1)
~ THEN REPLY #39683 /* ~"L'Exécution."~ */ GOTO 52
  IF ~  Global("Yves_Story_09","GLOBAL",1)
~ THEN REPLY #39684 /* ~"La Terre brûlée."~ */ GOTO 65
  IF ~  Global("Yves_Story_10","GLOBAL",1)
~ THEN REPLY #39685 /* ~"Ta version d''Ach'ali-la-Noyée'."~ */ GOTO 62
  IF ~  Global("Yves_Story_12","GLOBAL",1)
~ THEN REPLY #39686 /* ~"Des Fleurs et des Sensats."~ */ GOTO 60
  IF ~  Global("Iannis_Confessed","GLOBAL",2)
~ THEN REPLY #39687 /* ~"L'histoire du père, de la fille et de l'amant."~ */ GOTO 72
  IF ~~ THEN REPLY #39688 /* ~"En fait, j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39689 /* ~"Peu importe, Yvonne. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 71 even though they appear after this state */
~  GlobalGT("Yves","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY #39555 /* ~Yvonne te sourit gentiment. "Rebonjour. Tu es venu échanger des histoires ?"~ */
  IF ~~ THEN REPLY #39690 /* ~"Oui."~ */ GOTO 19
  IF ~~ THEN REPLY #39691 /* ~"Non, mais j'avais des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #39692 /* ~"En fait, je ne faisais que passer. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 4.3
  SAY #39556 /* ~Yvonne acquiesce. "Oui, mais on ne se parle plus, et je ne veux plus parler d'elle."~ */
  IF ~~ THEN REPLY #39693 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39694 /* ~"Alors au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.4
  SAY #39557 /* ~Yvonne acquiesce en souriant. "Oui, merci."~ */
  IF ~~ THEN REPLY #39695 /* ~"De rien. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39696 /* ~"Bien. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 4.7 4.8 79.0
  SAY #39558 /* ~"Ecco ?" Yvonne fronce les sourcils. "J'ai entendu parler d'une fille connaissant le mot qui déferait le multivers si on le prononçait. Il s'agit peut-être bien d'Ecco. Demande plutôt à Dolora - je crois qu'il lui arrive de voir quelqu'un qui connaissait Ecco avant qu'elle cesse de parler."~ */
  IF ~~ THEN REPLY #39697 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39698 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Yves","GLOBAL",0)
GlobalGT("Yvana","GLOBAL",1)
Global("Yves_Shared","AR0605",1)
Global("Iannis_Confessed","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #39559 /* ~Yvonne te sourit gentiment. "Rebonjour. J'ai entendu une histoire qui devrait t'intéresser. Tu veux que je te la raconte ?"~ */
  IF ~~ THEN REPLY #39699 /* ~"Oui, s'il te plaît."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",2)
AddexperienceParty(3000)
~ GOTO 72
  IF ~~ THEN REPLY #39700 /* ~"Pas tout de suite. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #39701 /* ~"Je ne faisais que passer, Yvonne ; je l'écouterai plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 66.11 71.0
  SAY #39560 /* ~"Il était une fois un homme éminent qui, malgré sa richesse et son statut, était horriblement malheureux. Sa fille avait péri, et ce qui restait de sa vie était assombri par le drame de cette disparition."~ */
  IF ~~ THEN REPLY #39702 /* ~"Continue…"~ */ GOTO 73
  IF ~~ THEN REPLY #39703 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39704 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #39561 /* ~"Un jour, un ancien amant de sa fille vint le voir et lui parla d'elle avec tact et délicatesse, ce qui lui mit du baume au cœur. Tous deux trouvèrent ainsi deux choses totalement différentes qui allaient leur être précieuses chacune à sa manière."~ */
  IF ~~ THEN REPLY #39705 /* ~"Continue…"~ */ GOTO 74
  IF ~~ THEN REPLY #39706 /* ~"Attends… j'ai une question…."~ */ GOTO 4
  IF ~~ THEN REPLY #39707 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #39562 /* ~"L'un d'eux retrouva goût à la vie, la tristesse fut chassée de son regard et de son esprit."

"Et l'autre, l'amant, le suppliant, trouva autre chose qui allait s'avérer très utile au cours de son voyage : le regret."~ */
  IF ~~ THEN REPLY #39708 /* ~"Continue…"~ */ GOTO 75
  IF ~~ THEN REPLY #39709 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #39710 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50722 /* ~"Car il est dit que le regret peut changer la nature d'un homme, bien que seules peut-être les Sœurs Grises en aient la certitude."

Yvonne te fait un signe de tête en souriant. "Je ne connais pas la signification de cette histoire, mais elle te sera peut-être utile un jour."~ */
  IF ~~ THEN REPLY #39711 /* ~"Merci. J'avais une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39712 /* ~"Merci, Yvonne. J'y vais, maintenant ; au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 53.0
  SAY #50723 /* ~"Les Greffiers prononcèrent la sentence suivante à l'encontre de Kossacs : 'Trois mois de prison, période au cours de laquelle tu devras renoncer à la vie et être déclaré mort ; lorsque ton corps aura cessé de vivre, il sera emporté.' Kossacs éclata de rire et les défia de tenter de lui faire du mal, mais la cour resta silencieuse."~ */
  IF ~~ THEN REPLY #50724 /* ~"Continue…"~ */ GOTO 77
  IF ~~ THEN REPLY #50725 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #50726 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #50727 /* ~"Les Rectifieurs conduisirent Kossacs à la prison et l'enfermèrent dans une cellule sombre et vide. Il n'y avait ni paillasse, ni lumière ; la seule ouverture était une grille en acier fixée au plafond."

"En descendant Kossacs dans sa cellule, le Rectifieur lui dit : 'Dans un coin de ta cellule, tu trouveras un calice. Il contient du poison. Ta mort sera rapide'."

"'Vous n'allez pas m'exécuter ?' demanda Kossacs au garde."

"'Personne à Sigil ne lèvera la main sur toi dans l'intention de te faire du mal', répondit le Rectifieur."~ */
  IF ~~ THEN REPLY #50729 /* ~"Continue…"~ */ GOTO 54
  IF ~~ THEN REPLY #50728 /* ~"Attends… j'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #50730 /* ~"J'écouterai la suite une autre fois, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 54.0
  SAY #50731 /* ~"Mais aucune réponse ne sortit de la grille fixée au plafond. C'est alors que Kossacs remarqua que la cellule ne contenait pas de paillasse et qu'il n'y avait ni lumière, ni eau, ni nourriture. Il ne restait que le calice brisé dont le poison s'était évaporé. Pour la première fois, Kossacs comprit qu'il allait mourir.

"Trois mois plus tard, la grille s'ouvrit, et le corps de Kossacs, à présent froid, fut emmené. Il avait renoncé à vivre et son exécution avait eu lieu."~ */
  IF ~~ THEN REPLY #50732 /* ~"J'ai une autre histoire à échanger avec toi."~ */ GOTO 19
  IF ~~ THEN REPLY #50733 /* ~"J'ai une question à te poser, Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #50734 /* ~"Je m'en vais. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 18.0 18.1 18.2 18.3
  SAY #66763 /* ~"Attends, ce n'est pas tout… mon histoire s'achève par la mort de Ravel, mais d'aucuns prétendent qu'elle est toujours vivante. Il y a ici une prostituée silencieuse qui savait autrefois ces choses, mais elle ne parle plus, aujourd'hui. Si elle retrouvait l'usage de la parole, elle pourrait peut-être t'en dire davantage au sujet de Ravel."~ */
  IF ~~ THEN REPLY #66764 /* ~"Que peux-tu me dire d'autre sur cette prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 70
  IF ~~ THEN REPLY #66765 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #66766 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 18.4 18.5
  SAY #66767 /* ~"Attends, ce n'est pas tout… mon histoire s'achève par la mort de Ravel, mais d'aucuns prétendent qu'elle est toujours vivante. Ecco est de ceux-là. Va la voir ; elle pourra peut-être t'en dire davantage au sujet de Ravel."~ */
  IF ~~ THEN REPLY #66768 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #66770 /* ~"C'est tout ce que je voulais savoir, Yvonne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 19.2
  SAY #67895 /* ~Yvonne se penche en avant alors que tu lui racontes l'histoire de l'allée donnant naissance à sa progéniture… elle semble boire chacune de tes paroles. Tu finis ton histoire et elle te sourit, puis fait de même à l'attention de Nordom. "Je me souviendrai de cette histoire. Je vais moi aussi t'en conter une : 'L'horloge et le tétradrone'."~ */
  IF ~~ THEN REPLY #67897 /* ~"Continue…"~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #67896 /* ~"Attends… j'ai une question à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #67898 /* ~"J'écouterai tes autres histoires une autre fois, Yvonne. Au revoir."~ */ EXIT
END
