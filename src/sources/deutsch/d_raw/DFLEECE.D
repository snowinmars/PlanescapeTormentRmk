// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~Du siehst einen Mann, der verwirrt die Gebäude ansieht. Er wirkt verloren und murmelt vor sich hin.~ */
  IF ~~ THEN REPLY #1755 /* ~"Sei gegrüßt."
~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~Der Mann sieht aus, als sei ihm ein Stein vom Herzen gefallen. " *Endlich!* Ich bitte um Nachsicht, mein Herr. Wie es scheint, habe ich mich in diesem Straßengewirr verlaufen..." Er kichert unsicher. "Ich fürchte, dieser Teil der Stadt ist mir irgendwie..." Er schaut sich nervös um. "...unbekannt. Die Einwohner scheinen der Idee, einem Besucher Hilfe zu gewähren, in höchstem Maße abgeneigt zu sein..." Er schaut dich vertrauensvoll an. "Darf ich mich mit der Bitte um Hilfe vielleicht an Euch wenden?"~ */
  IF ~~ THEN REPLY #1758 /* ~"Kommt drauf an, was für Hilfe du brauchst."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"Sicher. Was suchst du denn?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"Du bist hier ganz auf dich gestellt. An deiner Stelle würde ich zusehen, aus diesem Viertel so schnell wie möglich rauszukommen."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"Ich hab' grad keine Zeit, dir zu helfen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~"Ich suche das Haus meiner Tante Marguerite. Sie soll irgendwo in der Nähe der Leichenhalle wohnen, aber seit meinem letzten Besuch scheint sich der Verlauf der Straßen verändert zu haben. Weißt du zufällig, von welchem Haus ich spreche?"~ */
  IF ~~ THEN REPLY #1763 /* ~Lüge: "Na klar. Ich kann dir den Weg dahin zeigen... das hat aber seinen Preis."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Wahrheit: "Ich fürchte, daß ich von diesem Ort noch nie etwas gehört habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"Ah, das ist wirklich nett. Den letzten Nachrichten zufolge soll sie in der Nähe der Leichenhalle gewohnt haben." Seine Augen verengen sich zu Schlitzen, so als ob er dich mustert. "Wißt Ihr genau, wo sie zuhause ist?"~ */
  IF ~~ THEN REPLY #2246 /* ~Lüge: "Du findest sie südlich und östlich der Leichenhalle, bei einem der Mausoleen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"Wie bitte, sagtest du 'Tante Marguerite'? Ich hatte dich falsch verstanden und an wen anders gedacht."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"Halt mal. Ich dachte, du hättest nach einem der Bordelle hier gefragt. Na, macht ja nichts."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~Der Mann schüttelt den Kopf. "Oh, nein, nein... *so* nah war es bestimmt nicht. Vielleicht meint Ihr jemand anderen." Der Mann schaut sich um und wendet sich wieder dir zu "Ich werde mich umhören, ob sonst jemand Bescheid weiß. Ich danke Euch, daß Ihr Eure Zeit geopfert habt, mein Herr."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"Leb wohl."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~Der Mann legt enttäuscht seine Stirn in Falten. "Ach, ich glaube es wäre zuviel des Guten gewesen, wenn Ihr die Adresse gekannt hättet." Er nickt als Zeichen der Dankbarkeit. "Nun, ich danke Euch, daß Ihr Eure Zeit geopfert habt, in diesen Straßen ist eine solche Hilfe sehr wertvoll."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"Leb wohl."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"So einem Irrtum kann man leicht aufsitzen, mein Herr. Nun, dann danke ich Euch, daß Ihr Eure Zeit geopfert habt."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"Leb wohl."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~Der Mann blinzelt perplex. "Äh... nein, nein." Er lächelt unsicher. "Meine Tante geht solcherlei Beschäftigungen nicht nach."
~ */
  IF ~~ THEN REPLY #2268 /* ~"Da ist MIR aber was anderes zu Ohren gekommen."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"Auf bald."
~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"Auf bald."
~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~Der Mann scheint verwirrt zu sein. "Ich... darf mich jetzt von Euch verabschieden, mein Herr."~ */
  IF ~~ THEN REPLY #2275 /* ~"Grüß deine Tante von mir. Und sag ihr, daß ich bald wiederkomme."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Laß ihn gehen... für dieses Mal.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~Der Mann legt enttäuscht die Stirn in Falten. "Äh... nun gut, ich danke Euch, daß Ihr Eure Zeit geopfert habt, mein Herr; guten Tag."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"Auf bald."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~Du bist schon im Begriff zu gehen, als du plötzlich innehälst. Du hast auf einmal das Gefühl, daß etwas nicht stimmt. Du schaust wieder den Mann an und siehst gerade noch, wie er seine Hand aus deiner Tasche zieht... Du kannst es nicht mit Sicherheit sagen, aber du glaubst, daß er dir etwas entwendet haben könnte.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"Hey! Was soll'n das hier werden?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Ignoriere den Vorfall und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~Deine Hand schnellt nach vorn und greift mit aller Kraft sein Handgelenk. Der Mann schreit auf und versucht verzweifelt, sich loszuwinden.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Ruhig: "Hör auf zu zappeln, oder ich behalte deine Hand."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"Hör auf zu zappeln, verdammt nochmal!"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Greif ihn an.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Laß ihn laufen.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~Du bist nicht schnell genug; er zieht seine Hand zurück, bevor du sie packen kannst. Er schreit auf, macht einen Satz und rennt die Straße hinunter.~ */
  IF ~~ THEN REPLY #7634 /* ~"Nun gut..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~Der Mann zuckt überrascht zusammen und beginnt zu rennen.~ */
  IF ~~ THEN REPLY #7636 /* ~"Nun gut..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~Er versucht noch immer, sich deinem Griff zu entwinden. Es wird schwierig, ihn festzuhalten.~ */
  IF ~~ THEN REPLY #7638 /* ~Greif ihn an.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Verpaß ihm mit deiner freien Hand einen Schlag, damit er auf dich aufmerksam wird.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Laß ihn laufen.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Vielleicht ist es dein eigenes Talent zum Taschendieb, das dich wachsam sein läßt, denn als du gehen willst, prüfst du instinktiv deine Geldbörse... und bemerkst, wie der Mann seine Hand von ihr zurückzieht. Er scheint allerdings nicht bemerkt zu haben, daß du ihn beobachtet hast.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"Hey! Was soll'n das hier werden?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.
~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Gib dem Mann noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Greif ihn an.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Ignoriere den Vorfall und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~Du verwickelst den Mann in ein oberflächliches Gespräch und studierst heimlich seine Bewegungen. Dieser Mann scheint auf zwei Dinge zu bauen: Erstens gibt er vor, ein vornehmer Bürger zu sein, der sich hierher verirrt hat, um so das Vertauen seiner Opfer zu erschleichen; zweitens lenkt er das Opfer ab, indem er es nach dem Weg fragt... wenn das Opfer auf eine Straße oder einen bestimmten Punkt zeigt, greift der Mann sich die Geldbörse und steckt sie in seine (entsprechend langen) Ärmelaufschläge. Du prägst dir seine Technik ein... als er ein weiteres Mal nach deiner Geldbörse greift.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Greif nach seiner Hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"Hey! Was soll'n das hier werden?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Greif ihn an.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~In deiner Stimme muß *irgend etwas* mitschwingen, denn er versucht plötzlich nicht mehr, sich loszureißen. Dein Blick scheint ihn in die Knie zu zwingen.~ */
  IF ~~ THEN REPLY #7658 /* ~"Gib zurück, was du mir gestohlen hast. Sofort."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~Er nickt und fängt an, seine Taschen zu leeren. Er gibt dir eine Handvoll Münzen, viel mehr, als er dir gestohlen hat... insgesamt müssen es einige Dutzend Kupfermünzen sein.~ */
  IF ~~ THEN REPLY #7661 /* ~"Nein, den Rest kannste behalten... Ich will nur wiederhaben, was du mir gestohlen hast."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"Wir sind quitt. Und jetzt will ich dich nie wiedersehen. Verstanden?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Täuschung: "Gib mir alles, was du sonst noch hast, und ich werde dich nicht umbringen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Wahrheit: "Gib mir alles, was du sonst noch hast, und ich werde dich nicht umbringen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Nicke ihm dankend zu, und greif ihn dann an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~Er schaut dich überrascht an, als wolltest du ihn auf den Arm nehmen. Dann zuckt er mit den Achseln und steckt das übrige Geld wieder in seine Taschen.~ */
  IF ~~ THEN REPLY #7668 /* ~"Wir sind quitt. Und jetzt will ich dich nie wiedersehen. Verstanden?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Greif ihn an.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"Äh..." Er schluckt. "Schleifer, das ist alles. Mehr hab' ich nicht."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"Ich meinte *alles*, also gib mir auch *alles*."~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"Gut. Komm mir nie wieder unter die Augen. Verstanden?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"Dann ist deine Lebensuhr jetzt abgelaufen. Bereite dich schon mal auf den Tod vor."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~Er nickt.~ */
  IF ~~ THEN REPLY #7677 /* ~Schlag ihn, vergewissere dich, daß er versteht.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Greif ihn an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~Dein Schlag trifft seinen Kiefer und er landet auf dem Pflaster. Er hält sich seinen Kiefer mit der Hand, stöhnt und rappelt sich mühsam wieder auf. Es sieht so aus, als hättest du ihm einige Zähne ausgeschlagen.~ */
  IF ~~ THEN REPLY #7681 /* ~"Und nun mach, daß du fortkommst."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~Der linke Haken läßt seinen Kopf zur Seite fliegen, und er schreit erneut auf. Mit unsicherem Schritt dreht er sich um, sieht dich an und hält sich die Gesichtshälfte mit der freien Hand.~ */
  IF ~~ THEN REPLY #7683 /* ~"Hörst du mir jetzt endlich zu?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~Er nickt benommen.~ */
  IF ~~ THEN REPLY #7685 /* ~"Gib mir das zurück, was du mir gestohlen hast."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"Ist mir egal, ob du mich bestohlen hast... so lange du mir nie wieder unter die Augen kommst. Nie wieder. Kapiert?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~Er nickt wieder.~ */
  IF ~~ THEN REPLY #7688 /* ~Schlag ihn, vergewissere dich, daß er versteht.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Greif ihn an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~Du siehst wieder den Mann von vorhin... er sieht noch immer so aus, als habe er sich verlaufen, murmelt vor sich hin und schaut sich die Gebäude an.~ */
  IF ~~ THEN REPLY #7692 /* ~"Sei gegrüßt."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Geh an ihm vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~Als du ihn ansprichst, zuckt er zusammen; er wirkt nervös. "Äh... so sieht man sich wieder, mein Herr." Er scheint Hoffnung zu schöpfen. "Dürfte ich Euch bitten, mir den Weg zu zeigen?"~ */
  IF ~~ THEN REPLY #7695 /* ~"Wo wolltest du doch gleich hin?"~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"Nein, heute nicht."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"Doch, ehrlich! Ich habe sonst nichts!"~ */
  IF ~~ THEN REPLY #7698 /* ~"Gut. Komm mir nie wieder unter die Augen. Verstanden?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"Dann ist deine Lebensuhr jetzt abgelaufen. Bereite dich schon mal auf den Tod vor."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Laß ihn los und geh dann.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
