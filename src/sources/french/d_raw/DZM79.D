// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~La grosse tête de ce cadavre a été tranchée, puis recousue à la hâte. Divers types de sutures semblent indiquer que sa tête ne cesse de tomber et d'être rattachée ensuite. Un numéro - '79' - est gravé sur sa tempe, entouré d'un cercle denté pyrogravé dans sa chair.~ */
  IF ~~ THEN REPLY #34943 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~Examine le cercle denté.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #34945 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~Le cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #34950 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~Il semble que le cercle ait été tatoué sur le front du cadavre il y a bien longtemps, certainement avant sa mort. Cela peut être une sorte de symbole religieux ou un rite d'initiation. Tu remarques qu'il y a un petit triangle dans un des espaces entre les 'canines' intérieures, comme s'il avait une signification particulière~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"Hmmm. Intéressant… comment cette marque est-elle arrivée là, cadavre ?"~ */ JOURNAL #64536 /* ~J'ai découvert un étrange symbole en forme de crocs sur le front du zombi n°79. Cette marque m'a semblé importante, mais j'ignore pourquoi.~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"Hmmm… Je me demande si l'espace entre ces canines correspond à la cannelure sur la boucle d'oreille de cuivre que j'ai sur moi…"~ */ JOURNAL #64537 /* ~J'ai découvert un étrange symbole en forme de crocs sur le front du zombi n°79. Le seul fait de le regarder m'a rappelé la vieille boucle en cuivre que j'ai trouvée dans la Salle de Préparation du sud-est ; peut-être sont-ils liés, tous les deux.~ */ GOTO 2
END
