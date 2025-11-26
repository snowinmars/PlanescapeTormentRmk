// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~Der stämmige Schläger ist in rot- und schwarzgefärbte Lumpen gehüllt. Er sieht so aus, als ob er fast nur aus Muskeln besteht. Er starrt dich finster an, als du dich ihm näherst.~ */
  IF ~~ THEN REPLY #26004 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~Laß den Schläger in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"Un' wie kann ich dir helfen, Herrschner?" Der Mann lächelt höhnisch. "Sieht so aus, als ob du 'nen Heiler brauchst."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"Bist du einer von denen, die einen Mönch im Stock ausgeraubt haben? Habt ihr ihm seine Gebetsperlen-Halskette abgenommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"Ich hätte da ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"Hör auf, so höhnisch zu grinsen, oder du wirst einen Heiler brauchen, 'Herrschner'."~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"Schließ ab! Keine Zeit für Frage- und Antwort-Spielchen, Herrschner." Er spuckt dir vor die Füße. "Und jetzt PACK EIN, du planloser Schlucker!"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"Bist du einer von denen, die einen Mönch im Stock ausgeraubt haben? Habt ihr ihm seine Gebetsperlen-Halskette abgenommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"Scheint, als ob du derjenige bist, der hier einpacken sollte."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"Ich hab' schon gemerkt, für wen diese Drohung war, Herrschner. Noch so 'ne Drohung, und dir vergeht das Grinsen, klar?"~ */
  IF ~~ THEN REPLY #26888 /* ~"Wenn du glaubst, daß du's mit mir aufnehmen kannst, dann komm nur her."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"Mit so'n paar saudämlichen Linien, die über das ganze Gesicht gekritzelt waren? Er behauptete, daß er uns alle ins Totenbuch stecken kann, und hat sich dann doch von uns neppen lassen?" Der Mund des Mannes verzieht sich langsam zu einem zahnlosen Grinsen. "Hab' noch nie von so 'nem Schlucker gehört."~ */
  IF ~~ THEN REPLY #26891 /* ~"Ich glaube, es ist besser, wenn du mir seine Halskette zurückgibst, bevor *ich* euch alle ins Totenbuch stecke."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~Lüge: "Das *ist* interessant. Sämtliche Mitglieder seines Ordens suchen nach euch. Die Brüder von *Erit-Agge* scheinen euch gut zu kennen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"Vielleicht können wir uns irgendwie einigen. Die Halskette ist für Leute, die seinem Orden nicht angehören, von keinem Wert. Ich könnte sie dir abkaufen."~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~Der Mann runzelt die Stirn. "Nein, da häng ich sehr dran, ehrlich. Kann ich nicht hergeben... Außer vielleicht für'n ordentliches Sümmchen. Sagen wir, fünfzehn Kupfermünzen?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"Abgemacht."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"Wie wär's mit zehn?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~Täuschung: "Nein, das ist sie nicht wert. Ich laß die übrigen Mitglieder seines Ordens nach euch suchen - ich denke, die Brüder von *Erit-Agge* werden sich schon mit euch einigen, aber diese Lösung wird euch nicht gefallen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"Dein Preis ist mir zu hoch. Vielleicht ein anderes Mal."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"In Ordnung, ist geritzt. Hier..."~ */
  IF ~~ THEN REPLY #26902 /* ~"Danke."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"Äh, nun... in Ordnung. Ist sowieso ein häßliches Ding. Hier..."~ */
  IF ~~ THEN REPLY #26904 /* ~"Danke."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"Hä?" Dem Mann weicht das höhnische Grinsen aus dem Gesicht. "Worauf willst du hinaus? Was für Brüder? Der Schlucker war allein, da kannste einen drauf lassen."~ */
  IF ~~ THEN REPLY #26906 /* ~Lüge: "Er gehört einem religiösen Orden an, du Idiot. Die 'Halskette', die ihr gestohlen habt, ist ihr heiligstes Relikt. Wenn sie nicht zurückgegeben wird, werden sich ALLE übrigen Mitglieder des Ordens auf die Suche nach euch machen... und sie haben überhaupt keine Probleme damit, Diebe zu töten."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~Die Augen des Mannes weiten sich. "Äh... also... wir haben das olle Ding nur für ihn aufbewahrt." Er greift in die Tasche seiner Robe und zieht die Kette hervor, die er dir vorsichtig übergibt. "Da hast du sie, völlig unversehrt, was?"~ */
  IF ~~ THEN REPLY #26909 /* ~Lüge: "Ich hoffe, daß das reichen wird, um den Rest seines Ordens zurückzupfeifen. Vielleicht wäre noch eine kleine Spende für den Orden drin. Sie könnte dazu beitragen, die Sache vergessen zu machen und Flüchen entgegenzuwirken, denen ihr sonst ausgesetzt sein könntet."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~Ich habe mit einem der Schläger über Porphirons Halskette gesprochen und ihn durch eine Reihe ... harmloser ... Lügen überzeugt, daß die "militanteren" Brüder aus Porphirons Orden ihn aufsuchen würden, wenn er die Kette nicht zurückgäbe.~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"Mit deiner Weisheit könntest du Berge versetzen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"Flüche?!" Der Mann beschreibt einen Halbkreis über seinem Herz. "Äh, nun ja, also, willst du nicht ein bißchen davon..." Er faßt in den Geldbeutel an seinem Gürtel und reicht dir mehrere Kupfermünzen. "Nimm, kommt von Herzen, Herrschner. Sag ihm, wir hatten keine böse Absichten."~ */
  IF ~~ THEN REPLY #26914 /* ~"Deine Spende wird dankend entgegengenommen. Leb wohl."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~Der stämmige Schläger ist in rot- und schwarzgefärbte Lumpen gehüllt. Er scheint fast nur aus Muskeln zu bestehen. Er starrt dich an, als du dich ihm näherst und beißt auf seinen Daumen. "Pack ein, Herrschner. Ich hab' dir nichts mehr zu sagen!"~ */
  IF ~~ THEN REPLY #26916 /* ~"Scheint, als ob du derjenige bist, der hier einpacken sollte."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"Nun denn. Leb wohl."~ */ EXIT
END
