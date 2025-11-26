// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM732~

IF ~  !HasItem("TomeBA","ZM732")
~ THEN BEGIN 0 // from: 4.0
  SAY #6529 /* ~Les yeux et les lèvres de ce cadavre branlant ont été cousus, et le numéro '732' a été gravé sur son front. Le travail de couture qui ferme ses cavités oculaires a l'air très ancien… tu te demandes si les yeux du cadavre ont été cousus avant ou après sa mort.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"Désolé de t'avoir pris ce livre… il m'a semblé trop intéressant pour le laisser."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"Désolé de t'avoir pris ce livre… il m'a semblé trop intéressant pour le laisser."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #6538 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~Le cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #6539 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~  HasItem("TomeBA","ZM732")
~ THEN BEGIN 3 // from:
  SAY #64270 /* ~On a cousu les yeux et la bouche de ce cadavre chancelant et on lui a gravé sur le front le numéro '732'. Les coutures des yeux semblent très vieilles… tu te demandes si elles ont été faites avant ou après sa mort. Tu remarques qu'il tient dans ses mains un énorme livre, comme s'il l'emmenait quelque part.~ */
  IF ~~ THEN REPLY #64271 /* ~Prends le livre de ses mains… avec précaution.~ */ DO ~GiveItem("TomeBA",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #64272 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64273 /* ~Avec précaution, tu prends le livre des mains du zombi - il semble ne rien remarquer. L'ouvrage a l'air d'être un livre de sorcellerie - il contient des diagrammes et des symboles détaillant divers aspects de l'art de la nécromancie. Le livre est très lourd ; aussi maladroit que peut être ce zombi, il est très fort. 

^NREMARQUE : <READSTUFF>^-~ */
  IF ~~ THEN REPLY #64274 /* ~Réexamine le cadavre.~ */ GOTO 0
  IF ~~ THEN REPLY #64275 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
