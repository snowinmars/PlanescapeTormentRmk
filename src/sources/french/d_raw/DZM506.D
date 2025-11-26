// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM506.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM506~

IF ~  Global("506_Thread","GLOBAL",0)
~ THEN BEGIN 0 // from: 3.2
  SAY #45419 /* ~Le mort-vivant couvert de cicatrices va et vient entre deux tables. Le numéro '506' a été cousu sur son front, sur le côté de son cou et en bien d'autres endroits encore. Tant de lambeaux de chair lui ont été rajoutés de part et d'autre qu'on dirait une carte de la ville en trois dimensions.~ */
  IF ~  Global("506_Thread","GLOBAL",0)
~ THEN REPLY #45420 /* ~Examine les points de suture.~ */ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45421 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45422 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #45423 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45424 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0 4.1 5.0 5.1 5.2
  SAY #45425 /* ~Le cadavre regarde droit devant, sans se rendre compte de rien.~ */
  IF ~~ THEN REPLY #45478 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 5.3
  SAY #45426 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #45479 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #45427 /* ~Les coutures font tout le tour du cadavre, depuis ses bras jusqu'à sa poitrine, en passant par son cou et ses cheveux blancs et humides. En suivant les nombreux tracés dessinés par les points, tu t'aperçois que quelqu'un a planté une aiguille dans son front. Le fil qui a servi à recoudre la tempe y est encore attaché. Tu pourrais sans doute l'ôter si tu avais de quoi couper le fil.~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #45480 /* ~Coupe les points de suture à l'aide du scalpel, puis ôte le fil et l'aiguille.~ */ DO ~SetGlobal("506_Thread","GLOBAL",1)
GiveItemCreate("Needle",Protagonist,1,0,0)
AddexperienceParty(100)
~ GOTO 4
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #45481 /* ~"Hmmm. Je pourrais peut-être trouver de quoi couper le fil, par ici. Je reviens de suite."~ */ EXIT
  IF ~~ THEN REPLY #45482 /* ~Réexamine le cadavre.~ */ GOTO 0
  IF ~~ THEN REPLY #45483 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45428 /* ~Tu coupes le fil à l'aide du scalpel, puis tu ôtes l'aiguille et tu défais les points. Ce faisant, tu remarques que le lambeau de chair qui recouvrait le front s'écarte de lui-même pour révéler la boîte crânienne du cadavre. À ta grande surprise, le numéro '78' a été gravé au burin dans la partie frontale du crâne.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45484 /* ~"On dirait que tu as deux numéros différents, cadavre."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45496 /* ~"On dirait que tu as deux numéros différents, cadavre."~ */ GOTO 1
  IF ~~ THEN REPLY #50097 /* ~Examine de nouveau le cadavre. ~ */ GOTO 5
  IF ~~ THEN REPLY #66889 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~  Global("506_Thread","GLOBAL",1)
~ THEN BEGIN 5 // from: 4.2
  SAY #45429 /* ~Ce cadavre recousu de toute part va incessamment d'une table à l'autre. Le numéro '506' a été cousu un peu partout sur son corps, mais le lambeau de chair qui recouvrait son front pend et révèle que le numéro '78' a été gravé au burin sur la partie frontale de sa boîte crânienne.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45502 /* ~"On dirait que tu as deux numéros différents, cadavre."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45508 /* ~"On dirait que tu as deux numéros différents, cadavre."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45510 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45512 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #45513 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45514 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
