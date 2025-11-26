// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DABLE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #2873 /* ~Dieser ältere Mann sieht wie ein Gelehrter aus. Seine Kleidung und seine Accessoires sind extrem sauber und gepflegt, und er hält oft inne, um irgendwelche Staubkörnchen oder Fusseln von sich zu wischen. Ein gesticktes Symbol, das einem stilisierten Dolch gleicht, der aus einer Flamme emporragt, ziert seinen Umhang.~ */
  IF ~~ THEN REPLY #2874 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30849 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 23.0
  SAY #30708 /* ~Der Mann mustert dich. Seine Augen funkeln, als er Morte sieht. "Waoh! Ein schwebender Totenschädel!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 292
END

IF ~~ THEN BEGIN 2 // from:
  SAY #30709 /* ~Der Mann schnappt nach Luft. "Bei den ungerechten Gesetzen von Tueny dem Gnadenlosen!"~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30850 /* ~"Wer?"~ */ GOTO 3
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30851 /* ~"Wenn ich wen finde?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30852 /* ~"Wenn ich wen finde?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #30710 /* ~Er hält sich plötzlich die Hand vor den Mund und blickt entschuldigend um sich. "Bitte verzeih mir... der Mann war ein schrecklicher Tyrann, ist aber schon lange tot. Seinen Namen sollte man nicht laut sagen. Er ist nämlich ziemlich vulgär."~ */
  IF ~~ THEN REPLY #30853 /* ~"Dann paß lieber auf, was du sagst."~ */ GOTO 7
  IF ~~ THEN REPLY #30854 /* ~"Sprich ruhig. Mich haut so leicht nichts um."~ */ GOTO 7
  IF ~~ THEN REPLY #30855 /* ~Tu es mit einem Achselzucken ab.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #30711 /* ~Er hält sich plötzlich die Hand vor den Mund und blickt Grace, die Gefallene, entschuldigend an. " Bitte verzeih mir... der Mann war ein schrecklicher Tyrann, ist aber schon lange tot. Seinen Namen sollte man nicht laut sagen. Er ist nämlich ziemlich vulgär. Bitte verzeih mir, liebe Grace. Ich wollte dich bestimmt nicht beleidigen."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 128
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30712 /* ~"Da bin ich ja froh, daß du meine Entschuldigung annimmst."~ */
  IF ~~ THEN REPLY #30856 /* ~Versuche, seine Aufmerksamkeit auf dich zu lenken.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #30713 /* ~Er hält sich plötzlich die Hand vor den Mund und blickt Annah entschuldigend an. " Bitte verzeih mir... der Mann war ein schrecklicher Tyrann, ist aber schon lange tot. Seinen Namen sollte man nicht laut sagen. Er ist nämlich ziemlich vulgär. Bitte verzeih mir. Ich wollte dich bestimmt nicht beleidigen."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 167
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 5.0
  SAY #30714 /* ~Er wendet sich Morte zu. "Das gibt's ja nicht! Ein Totenschädel, der über dem Boden schwebt, seine Umgebung wahrnimmt und hören, sprechen und sehen kann."~ */
  IF ~~ THEN REPLY #30857 /* ~"Dieser..."~ */ GOTO 8
  IF ~~ THEN REPLY #30858 /* ~"Ich hätte..."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30715 /* ~Er wendet sich dir zu, als ob du plötzlich sein Vertrauter bist. "Das ist wahrhaft einer der Gründe, warum die Ebenen mir nie langweilig werden. Immer, wenn man denkt, man hat alles gesehen, lenken die Ebenen den Blick auf eine andere unbekannte Ecke, und..." Er  hebt triumphierend seine Hände hoch. "...plötzlich bieten sich einem ganz neue, wunderbare Perspektiven."~ */
  IF ~~ THEN REPLY #30859 /* ~"Dieser sprechende, schwebende Schädel ist eigentlich nichts Besonderes. Genauso wenig wie die sich selbst zum Leben wiedererweckenden Gestalten, die unter Gedächtnisschwund leiden und in Sigil nach ihrer verlorenen Identität suchen."~ */ GOTO 9
  IF ~~ THEN REPLY #30860 /* ~"Ich bin mir nicht sicher, ob man Morte als 'wunderbare Perspektive' bezeichnen kann."~ */ GOTO 9
  IF ~~ THEN REPLY #30861 /* ~"Ja, ja... ich hätte da ein paar Fragen..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #30716 /* ~Der Mann ignoriert dich und blickt zu Morte. "Waoh, ein Schädel..." beginnt er.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 293
END

IF ~~ THEN BEGIN 10 // from:
  SAY #30717 /* ~Der Mann scheint dich vollkommen vergessen zu haben und dreht sich erschrocken zu dem 'anderen' schwebenden Schädel um. "Nein! Wo? Wo!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 294
END

IF ~~ THEN BEGIN 11 // from:
  SAY #30718 /* ~"Wo? Ich kann ihn nicht sehen!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 295
END

IF ~~ THEN BEGIN 12 // from:
  SAY #30719 /* ~Er dreht sich um und schmollt. "Du hast auch einen komischen Humor."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 296
END

IF ~~ THEN BEGIN 13 // from: 18.2 19.2 20.2 21.2 22.1
  SAY #30720 /* ~Es scheint so, als ob er dich zum ersten Mal sieht...~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #30721 /* ~Die Augen des Mannes werden größer. "Bei den ungerechten Gesetzen von Tueny dem...!" Er fängt sich wieder und setzt ein entschuldigendes Gesicht auf. "Geht's dir nicht gut? Du siehst..." Er sucht nach dem richtigen Wort. "...verletzt aus."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #30862 /* ~"Doch doch, mir geht's gut. Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #30863 /* ~"Doch, mir geht's gut."~ */ EXTERN ~DANNAH~ 168
END

IF WEIGHT #4 /* Triggers after states #: 24 17 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #30722 /* ~Dieser ältere Mann sieht wie ein Gelehrter aus. Seine Kleidung und seine Accessoires sind extrem sauber und gepflegt, und er hält oft inne, um irgendwelche Staubkörnchen oder Fusseln von sich zu wischen. Ein gesticktes Symbol, das einem stilisierten Dolch gleicht, der aus einer Flamme emporragt, ziert seinen Umhang.~ */
  IF ~~ THEN REPLY #30864 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.0 18.1 19.1 20.1 21.1 22.0 25.3 26.1 27.1 28.2 29.3 30.3 31.2 32.3 33.1 34.6 35.1 36.3 37.1 38.1 40.1 41.1 42.1 43.4 45.2 47.2 49.10 50.9 52.3 54.3 55.2 57.2 61.3 63.2 64.4 65.2 66.2 67.2 70.2 71.2 75.3 76.2 77.2 79.2 81.1 82.0 83.3 84.1 86.0 87.1 102.0 103.0 104.0 105.0 106.0 107.0 108.0
  SAY #30723 /* ~Der Mann nickt... eifrig. "Selbstverständlich, selbstverständlich! Es freut mich immer, wenn ich jemandem behilflich sein kann, junger Mann."~ */
  IF ~  Global("CW_Research_Language","AR0600",2)
~ THEN REPLY #30865 /* ~"Konntest du irgendwas über die Schrift in dem 'Journal' herausfinden?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ JOURNAL #30878 /* ~Fähiger Nachdenker hat mir erzählt, daß die Sprache in dem seltsamen Tagebuch, das ich gefunden habe, tot ist. Er erwähnte einen Sprachgelehrten in der Städtischen Festhalle, Rhyseen Zhan, der mir bei der Übersetzung der Schrift behilflich sein könnte. ~ */ GOTO 86
  IF ~  Global("CW_Research_Ravel","AR0600",2)
~ THEN REPLY #30866 /* ~"Konntest du noch was über Ravel Rätselschön rausfinden?"~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",3)
~ JOURNAL #30880 /* ~Fähiger Nachdenker hat mir erzählt, daß Ravel in einen der Irrgänge der Dame der Schmerzen geworfen wurde, und daß der Schlüssel zum Portal ihres Irrgangs ein Teil ihrer selbst sein soll. Nicht gerade hilfreich.~ */ GOTO 87
  IF ~  Global("CW_Research_Incarnations","AR0600",2)
~ THEN REPLY #30868 /* ~"Hast du Tote gefunden, die auf meine Beschreibung passen?"~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",3)
~ JOURNAL #30881 /* ~Fähiger Nachdenker hat mir von etwas erzählt, von dem ich glaube, daß es zwei frühere "Inkarnationen" meiner selbst sind ... einem blutdürstigen Mörder und verdächtigen Einsiedler ... und - seltsamerweise - einem Sinnsaten, ... der alle Aufzeichnungen von sich selbst zerstörte, bevor er verschwand.~ */ GOTO 88
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30869 /* ~"Könntest du etwas für mich herausfinden?"~ */ GOTO 83
  IF ~~ THEN REPLY #30870 /* ~"Ich möchte dich was über dich fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #30871 /* ~"Ich hätte da ein paar Fragen über diesen Ort..."~ */ GOTO 32
  IF ~~ THEN REPLY #30873 /* ~"Ich hätte ein paar Fragen über diese Stadt..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #30874 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 78
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #30876 /* ~"Was weißt du über den Blutkrieg?"~ */ GOTO 82
  IF ~~ THEN REPLY #30877 /* ~"Ich habe im Moment eigentlich keine Fragen. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #30724 /* ~Dieser ältere Mann sieht wie ein Gelehrter aus. Seine Kleidung und seine Accessoires sind extrem sauber und gepflegt, und er hält oft inne, um irgendwelche Staubkörnchen oder Fusseln von sich zu wischen. Ein gesticktes Symbol, das einem stilisierten Dolch gleicht, der aus einer Flamme emporragt, ziert seinen Umhang.~ */
  IF ~~ THEN REPLY #30882 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30883 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #30725 /* ~Die Augen des Mannes mustern dich und funkeln, als er Nordom erblickt. "Ist er ein Quadron?" Er macht ein verdutztes Gesicht. "Aber... du meine Güte! Ein Einzelgänger-Modron! Mann oh mann!" Er wirkt ziemlich panisch.
~ */
  IF ~~ THEN REPLY #30887 /* ~"Was ist passiert?"~ */ GOTO 19
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30888 /* ~"Kein Grund zur Unruhe. Ich hätte da ein paar Fragen.."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30889 /* ~"Kein Grund zur Unruhe. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #30726 /* ~"Naja, er ist ein Abtrünniger. Ein infizierter Modron. Solche Modronen beziehen ihre Macht nur aus ihrer Heimatebene Mechanus. Alle Modronen haben etwas von der Quelle von Mechanus in sich... wenn einer nicht richtig funktioniert oder die anderen Modron verläßt, dann schwächt er ganz Mechanus."
~ */
  IF ~~ THEN REPLY #30890 /* ~"Erzähl weiter..."~ */ GOTO 20
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30891 /* ~"Für so was habe ich jetzt keine Zeit. Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30892 /* ~"Für so was habe ich jetzt keine Zeit. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #30727 /* ~"Wenn die anderen, also die anderen Modronen, ihn finden, bringen sie ihn nach Mechanus zurück, wo er bestraft wird. Er wird vernichtet. Der defekte Modron muß zur Quelle zurück."~ */
  IF ~~ THEN REPLY #30893 /* ~"Aber wieso denn?"~ */ GOTO 21
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30894 /* ~"Ich verstehe. Ich hätte ein paar Fragen..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30895 /* ~"Ich verstehe. Ich hätte ein paar Fragen..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #30728 /* ~"Weil er kein Modron ist und trotzdem die anderen durch seine Anwesenheit schwächt. Er schwächt Mechanus ohne Grund oder Recht. Er muß eins mit Mechanus werden, um wieder zu funktionieren."~ */
  IF ~~ THEN REPLY #30899 /* ~"Ich *will* nicht, daß er wieder funktioniert. Nordom fühlt sich so sehr wohl."~ */ GOTO 22
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30901 /* ~"Ich verstehe. Ich hätte ein paar Fragen..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30902 /* ~"Ich verstehe. Ich hätte ein paar Fragen..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #30729 /* ~"Dann ist er schrecklich dumm! Ich kenne da ein paar Leute, die ich ansprechen könnte..."~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30903 /* ~"Laß das sein. Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30904 /* ~"Laß das sein. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF WEIGHT #1 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 23 // from:
  SAY #30730 /* ~Du hast diesen alten gebildeten Mann schon einmal getroffen. Er scheint in Gedanken versunken zu sein und hat dich noch nicht bemerkt.~ */
  IF ~~ THEN REPLY #30905 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30906 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 24 // from:
  SAY #30731 /* ~Du hast diesen alten gebildeten Mann schon einmal getroffen. Er scheint in Gedanken versunken zu sein und hat dich noch nicht bemerkt.~ */
  IF ~~ THEN REPLY #30907 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30908 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.4 26.0 27.0 28.1 29.2 30.2 31.1
  SAY #30732 /* ~"Über mich? Gewiß..."~ */
  IF ~~ THEN REPLY #30909 /* ~"Wer bist du?"~ */ GOTO 26
  IF ~~ THEN REPLY #30910 /* ~"Was machst du da?"~ */ GOTO 27
  IF ~~ THEN REPLY #30911 /* ~"Was bedeutet das Symbol da auf deiner Tunika?"~ */ GOTO 28
  IF ~~ THEN REPLY #30912 /* ~"Eigentlich wollte ich dich was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30913 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #30733 /* ~"Man nennt mich Fähiger Nachdenker."~ */
  IF ~~ THEN REPLY #30914 /* ~"Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30915 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30916 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #30734 /* ~"Ich habe erst vor kurzem meine Administrator-Prüfung abgelegt und den Status eines 'A9', eines wissenschaftlichen Mitarbeiters in der Halle der Aufzeichnungen, erlangt. Ich bin eine der vielen Hilfskräfte, die sich auf die Naturgesetze und Geschichte von Sigil spezialisiert haben. Ich forsche in diesen Bereichen. Eine ziemlich faszinierende Arbeit..."~ */
  IF ~~ THEN REPLY #30918 /* ~"Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30919 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30920 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #30735 /* ~"Das ist das Symbol der Bruderschaft der Ordnung. Uns obliegt ein Großteil der Gesetzgebung und der Verwaltung der Gerichte hier in Sigil. Viele Richter, Advokaten und Kuratoren sind Mitglieder in unserem Orden, und wir sind froh, daß wir etwas zur Einhaltung von Recht und Ordnung in Sigil beitragen können. Wir bemühen uns sehr, alle Gesetze zu studieren, ganz gleich ob sie in Sigil, den Ebenen oder dem Multiversum selbst gelten."~ */
  IF ~~ THEN REPLY #30922 /* ~"Woran glaubt denn die Bruderschaft der Ordnung?"~ */ JOURNAL #31027 /* ~Fähiger Nachdenker hat mir erklärt, daß die Bruderschaft der Ordnung glaubt, daß das Multiversum von Gesetzen beherrscht wird. Wenn jemand all diese Gesetze kennt, versteht er das Multiversum. Außerdem lernen sie durch das Verständnis der Gesetze und ihrer Beschränkungen, bestimmte Gesetze zu umgehen.~ */ GOTO 29
  IF ~~ THEN REPLY #30923 /* ~"Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30924 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30925 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 45.0 49.0 50.0
  SAY #30736 /* ~"Die Bruderschaft der Ordnung glaubt, daß das Multiversum von Gesetzen regiert wird. Wenn man alle Gesetze kennt, versteht man das Multiversum. Das ist unser Ziel. Durch das Verständnis der Gesetze und ihrer Grenzen erfahren wir, welche Gesetze zu vermeiden sind."~ */
  IF ~~ THEN REPLY #30927 /* ~"Wenn dir die Frage nichts ausmacht, was für Vorteile hast du denn durch diesen Posten?"~ */ GOTO 30
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #30929 /* ~"Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30930 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30931 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #30737 /* ~"Nun, unsere Bruderschaft ermöglicht es uns, Fremdsprachen ziemlich problemlos zu lesen. Und gelegentlich können wir einige Regeln des Multiversums zu unserem Vorteil nutzen."~ */
  IF ~  PartyHasItem("P_JRNL")
~ THEN REPLY #30933 /* ~"Fremdsprachen? Kannst du das hier lesen? Ich glaube, das ist ein Journal."~ */ GOTO 31
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #30934 /* ~"Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30935 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30936 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #30738 /* ~Er wirft einen Blick auf das Journal und zieht dabei seine Augenbrauen hoch. "Seltsam! Nein, kann ich nicht. Ist das eine Sprache?"~ */
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30937 /* ~"Ich glaube schon. Kannst du mal Nachforschungen anstellen?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ JOURNAL #30941 /* ~Ich habe im Bezirk der Kuratoren einen Mann namens Fähiger Nachdenker getroffen, der als Forschungsberater arbeitet und ein paar Dinge für mich nachzuschlagen bereit ist. ~ */ GOTO 84
  IF ~~ THEN REPLY #30938 /* ~"Ich bin mir nicht sicher. Ich hätte da noch ein paar Fragen über dich..."~ */ GOTO 25
  IF ~~ THEN REPLY #30939 /* ~"Ich weiß es nicht. Aber ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30940 /* ~"Diese Frage stelle ich mir auch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.5 33.0 34.5 35.0 36.2 37.0 38.0 40.0 41.0 42.0
  SAY #30739 /* ~"Ich muß zugeben, daß ich ziemlich wenig über diesen Teil des Bezirks der Kuratoren weiß, aber bitte... frag."~ */
  IF ~~ THEN REPLY #30942 /* ~"Warum wird er Bezirk der Kuratoren genannt?"~ */ GOTO 33
  IF ~~ THEN REPLY #30943 /* ~"Gibt's hier irgendwas Interessantes?"~ */ GOTO 34
  IF ~~ THEN REPLY #30944 /* ~"Weißt du, ob's hier am Ort irgendwo Arbeit gibt?"~ */ GOTO 42
  IF ~~ THEN REPLY #30945 /* ~"Ach, eigentlich will ich dich lieber was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #30946 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #30740 /* ~"Hier sind viele Hallen der Aufzeichnungen und Verwaltungsgebäude von Sigil. Das Personal in diesen Einrichtungen hat dem Bezirk seinen Namen gegeben. Hier leben viele Kuratoren, Schreiber, Priester, Bürokraten und Verwaltungsbeamte."~ */
  IF ~~ THEN REPLY #30947 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30948 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30949 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #30741 /* ~"Hier ist einer der besten Advokaten von ganz Sigil ansässig. Die Städtische Festhalle, in der die Gesellschaft der Empfindung untergebracht ist, ist auch ganz in der Nähe." Er senkt seine Stimme. "Und auch das Bordell zum Befriedigen Intellektueller Lüste..."~ */
  IF ~~ THEN REPLY #30950 /* ~"Erzähl mir was über den Advokaten."~ */ GOTO 35
  IF ~~ THEN REPLY #30951 /* ~"Erzähl mir was über die Festhalle."~ */ GOTO 36
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30952 /* ~"Erzähl mir was über das Bordell."~ */ GOTO 38
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30953 /* ~"Erzähl mir was über das Bordell."~ */ GOTO 39
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30954 /* ~"Erzähl mir was über das Bordell."~ */ GOTO 41
  IF ~~ THEN REPLY #30955 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30956 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30957 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #30742 /* ~"Er gehört auch zur Bruderschaft der Ordnung, auch wenn er dort seit dem Unglück, das ihm widerfahren ist,  nicht mehr so häufig anzutreffen ist... Mir steht es nicht zu, darüber zu sprechen. Er wohnt gleich da drüben, südöstlich von hier."~ */
  IF ~~ THEN REPLY #30958 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30959 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30960 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #30743 /* ~"Das ist ein schönes Gebäude, das zum einen als Zentrale der Gesellschaft der Empfindung und zum anderen als Halle für die Künste hier in Sigil und aus den Ebenen dient. Es ist außerdem Oper, Museum, Kunstgalerie, Weingeschäft, Schenke, Trainingsraum, Theater, Sinnsorium... da ist so ziemlich alles zu finden."~ */
  IF ~~ THEN REPLY #30961 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gesellschaft der Empfindung einer der prominentesten der fünfzehn Bünde in Sigil ist. Sie glauben, daß die wahren Geheimnisse nur durch die direkte Erfahrung so vieler Dinge im Universum wie möglich erkannt werden können: durch das Schmecken jeder Substanz, das Fühlen jeder Emotion in allen Nuancen und durch das Aufsuchen jedes Orts im Multiversum.~ */ GOTO 62
  IF ~~ THEN REPLY #30962 /* ~"Sinnsorien?"~ */ GOTO 37
  IF ~~ THEN REPLY #30963 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30964 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30965 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #30744 /* ~"Ja, die Sinnsaten besitzen Sinnessteine. Das sind Mineralien, in denen die Erfahrungen einer Person gespeichert werden können. Wenn sie erst einmal aufgezeichnet sind, kann jeder andere den Stein berühren und die im Sinnesstein gespeicherte Erfahrung zu neuem Leben erwecken. Eine wirklich faszinierende Sache!"
~ */
  IF ~~ THEN REPLY #30967 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30968 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30969 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.2
  SAY #30745 /* ~Er nickt und wirkt etwas verlegen. "Ja, nun ja, ich gehe da oft hin... wegen der Konversation. Es ist ein großes rundes Gebäude im Zentrum dieses Bezirks."~ */
  IF ~~ THEN REPLY #30970 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30971 /* ~"Ich hätte da noch ein paar Fragen über was Anderes...."~ */ GOTO 16
  IF ~~ THEN REPLY #30972 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.3
  SAY #30746 /* ~Er nickt und wirkt etwas verlegen. "Ja, nun ja, ich gehe da oft hin... wegen der Konversation." Er wendet sich Grace, der Gefallenen, zu. "Du gehst da einer noblen Beschäftigung nach, Grace. Ich wünschte, du würdest deine Lehrlinge in etwas formelleren Dingen unterrichten und ihnen vielleicht einen besseren Überblick über die Gesetze und Politik der Stadt geben, dann würden sie..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 129
END

IF ~~ THEN BEGIN 40 // from:
  SAY #30747 /* ~Er grübelt eine Weile darüber nach und nickt dann strahlend. "Vielen Dank, Grace." Er wendet sich wieder dir zu.
~ */
  IF ~~ THEN REPLY #30975 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30976 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30978 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.4
  SAY #30748 /* ~Er nickt und wirkt etwas verlegen. "Ja, nun ja, ich gehe da oft hin... wegen der Konversation." Er sieht Annah an und bekommt einen noch roteren Kopf. "Es ist ein großes rundes Gebäude im Zentrum dieses Bezirks."~ */
  IF ~~ THEN REPLY #30979 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30981 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30983 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 32.2
  SAY #30749 /* ~"Also, Jobs gibt's hier nicht."~ */
  IF ~~ THEN REPLY #30984 /* ~"Ich hätte da noch ein paar Fragen über den Bezirk..."~ */ GOTO 32
  IF ~~ THEN REPLY #30985 /* ~"Ich hätte da noch ein paar Fragen über was Anderes..."~ */ GOTO 16
  IF ~~ THEN REPLY #30986 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 16.6 45.1 47.1 49.9 52.2 54.2 55.1 57.1 61.2 63.1 64.3 65.1 66.1 67.1 70.1 71.1 75.2 76.1 77.1
  SAY #30750 /* ~"Fragen über Sigil? Bitte... frag, was du willst!"~ */
  IF ~~ THEN REPLY #30987 /* ~"Bitte erzähl mir was über die Bünde."~ */ DO ~SetGlobal("Know_Factions","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #30988 /* ~"Erzähl mir was über die Dame der Schmerzen."~ */ GOTO 71
  IF ~~ THEN REPLY #30989 /* ~"Was ist außerhalb von Sigil?"~ */ GOTO 44
  IF ~~ THEN REPLY #30991 /* ~"Woher kommt denn hier das Licht? Ich kann gar keine Sonne sehen."~ */ GOTO 46
  IF ~~ THEN REPLY #30992 /* ~"Du, da fällt mir noch 'ne andere Frage ein..."~ */ GOTO 16
  IF ~~ THEN REPLY #30993 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY #30751 /* ~"Das weiß keiner, und es liegt nicht daran, daß keiner versucht hätte, es herauszufinden. An den Stellen, an denen es keine echte Mauer gibt, stehen massive Hauswände ohne Fenster. Manche behaupten, daß sie auf die Dächer gestiegen seien und aus Sigil herausgeblickt haben, aber sie können diese Umgebung nur als *Nichts* beschreiben..."~ */
  IF ~~ THEN REPLY #30994 /* ~Hör weiter zu.~ */ GOTO 45
  IF ~~ THEN REPLY #30995 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 45
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #30996 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 89
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1 89.0
  SAY #30752 /* ~Er fährt fort: "Das ist keine akzeptable Erklärung, aber das Ganze bleibt ein Rätsel. Es gibt Gerüchte, daß es den Reisenden, der sich hinter die Mauern von Sigil wagt, in eine willkürliche Ebene verschlägt, aber das konnte bis jetzt nicht bestätigt werden. Die Bruderschaft der Ordnung hat viele Expeditionen durchgeführt, aber es fehlt uns trotzdem noch an konkreten Hinweisen."~ */
  IF ~~ THEN REPLY #30997 /* ~"Die Bruderschaft der Ordnung?"~ */ JOURNAL #31027 /* ~Fähiger Nachdenker hat mir erklärt, daß die Bruderschaft der Ordnung glaubt, daß das Multiversum von Gesetzen beherrscht wird. Wenn jemand all diese Gesetze kennt, versteht er das Multiversum. Außerdem lernen sie durch das Verständnis der Gesetze und ihrer Beschränkungen, bestimmte Gesetze zu umgehen.~ */ GOTO 29
  IF ~~ THEN REPLY #30998 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #30999 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31000 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY #30753 /* ~"Deine Frage ist berechtigt, denn durch den Nebel kann man das schlecht sehen. Das Licht kommt nicht von einer Sonne, sondern von einem stärker und wieder schwächer werdendem Leuchten, das den Himmel erfüllt..."
~ */
  IF ~~ THEN REPLY #31002 /* ~Hör weiter zu.~ */ GOTO 47
  IF ~~ THEN REPLY #31004 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 47
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31006 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 90
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 90.0
  SAY #30754 /* ~Er fährt fort: "Es erreicht einen Stand, der *Hochstand* genannt wird, und sinkt dann immer tiefer, bis in Sigil völlige Dunkelheit, der sogenannte *Tiefstand*, erreicht ist. Die Lichtquelle ist unbekannt, aber sie ist höchstwahrscheinlich ein Werk der Dame."~ */
  IF ~~ THEN REPLY #31007 /* ~"Der Dame?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #31009 /* ~"Ich habe noch ein paar Fragen über Sigil...."~ */ GOTO 43
  IF ~~ THEN REPLY #31010 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31011 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0
  SAY #30755 /* ~"In Sigil gibt es fünfzehn Bünde. Es waren einmal neunundvierzig. Aber vor etwa sechshundert Jahren hat die Dame der Schmerzen entschieden, daß es nur noch fünfzehn geben sollte. Das ging dann als der Große Aufruhr in die Geschichte ein..."~ */
  IF ~~ THEN REPLY #31012 /* ~Hör weiter zu.~ */ GOTO 49
  IF ~~ THEN REPLY #31013 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 49
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31014 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 91
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 91.0
  SAY #30756 /* ~Er fährt fort: "Und sie stellte sicher, daß innerhalb von vierzehn Tagen vierundreißig von ihnen untergingen oder ausgelöscht wurden. Viele Tausende starben durch das Schwert oder auf anderem Wege..., andere wurden einfach tot aufgefunden. Ich persönlich bin beispielsweise Mitglied der Bruderschaft der Ordnung. Dann gibt es da noch die Gläubigen der Quelle, die Staubmenschen, das Harmonium, die Gnadentöter, die Revolutionsliga, die Gesellschaft der Empfindung und die Xaositekten."~ */
  IF ~~ THEN REPLY #31015 /* ~"Erzähl mir was über die Bruderschaft der Ordnung."~ */ JOURNAL #31027 /* ~Fähiger Nachdenker hat mir erklärt, daß die Bruderschaft der Ordnung glaubt, daß das Multiversum von Gesetzen beherrscht wird. Wenn jemand all diese Gesetze kennt, versteht er das Multiversum. Außerdem lernen sie durch das Verständnis der Gesetze und ihrer Beschränkungen, bestimmte Gesetze zu umgehen.~ */ GOTO 29
  IF ~~ THEN REPLY #31016 /* ~"Erzähl mir was über die Gläubigen der Quelle."~ */ JOURNAL #31028 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gläubigen der Quelle oder Göttermenschen daran glauben, daß jedes lebendige Wesen im Multiversum das Potential besitzt, zu einer Gottheit zu werden.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31017 /* ~"Erzähl mir was über die Staubmenschen."~ */ JOURNAL #31029 /* ~Fähiger Nachdenker hat mir erklärt, daß die Staubmenschen glauben, daß wir bereits tot seien und daß wir alle in Sigil und den Ebenen enden, wenn wir sterben. Ihrem Glauben zufolge ist alles tot, und diese Existenz ist nur eine Farce. Bindungen an diese Existenz oder Gefühle für sie halte die Seele nur davon ab, wahrhaftig zu sterben.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31018 /* ~"Erzähl mir was über die Staubmenschen."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Fähiger Nachdenker hat mir erklärt, daß die Staubmenschen glauben, daß wir bereits tot seien und daß wir alle in Sigil und den Ebenen enden, wenn wir sterben. Ihrem Glauben zufolge ist alles tot, und diese Existenz ist nur eine Farce. Bindungen an diese Existenz oder Gefühle für sie halte die Seele nur davon ab, wahrhaftig zu sterben.~ */ GOTO 53
  IF ~~ THEN REPLY #31019 /* ~"Erzähl mir was über das Harmonium."~ */ JOURNAL #31031 /* ~Fähiger Nachdenker hat mir erklärt, daß das Harmonium dem Frieden und der Harmonie auf allen Ebenen ergeben ist... Daher kommt auch ihr Name. Sie glauben aber, daß das Ziel die Mittel heiligt, und sind deshalb bereit, beinahe alles zu tun, um andere davon zu überzeugen, die Dinge "genau wie sie" zu sehen. ~ */ GOTO 55
  IF ~~ THEN REPLY #31020 /* ~"Erzähl mir was über die Gnadentöter."~ */ JOURNAL #31032 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gnadentöter glauben, daß die Gerechtigkeit über allem steht. Mallin, ihr letzter Bundmeister, sagte einmal, daß eine richtig angewendete Strafe zur Perfektion führe.~ */ GOTO 56
  IF ~~ THEN REPLY #31021 /* ~"Erzähl mir was über die Revolutionsliga."~ */ JOURNAL #31033 /* ~Fähiger Nachdenker hat mir erklärt, daß die Revolutionsliga in Sigil weit verbreitet ist. Sie glauben, daß alle Institutionen errichtet wurden, um ihnen den Zugang zur Wahrheit des Multiversums zu verwehren. Der einzige Weg, den sie zur Entdeckung der Wahrheit sehen, besteht im Niederreißen jeglicher Organisation. Sie behaupten, daß die Wahrheit nur entdeckt werden könne, wenn die Leute völlig "frei" seien. ~ */ GOTO 58
  IF ~~ THEN REPLY #31022 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gesellschaft der Empfindung einer der prominentesten der fünfzehn Bünde in Sigil ist. Sie glauben, daß die wahren Geheimnisse nur durch die direkte Erfahrung so vieler Dinge im Universum wie möglich erkannt werden können: durch das Schmecken jeder Substanz, das Fühlen jeder Emotion in allen Nuancen und durch das Aufsuchen jedes Orts im Multiversum.~ */ GOTO 62
  IF ~~ THEN REPLY #31023 /* ~"Erzähl mir was über die Xaositekten."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Fähiger Nachdenker hat mir erklärt, daß die Xaositekten glauben, daß man die Geheimnisse des Multiversums nur dann erlernen kann, wenn man sein zufälliges Chaos akzeptiert. ~ */ GOTO 64
  IF ~~ THEN REPLY #31024 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31025 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31026 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 29.1 30.1 52.1 54.1 55.0 57.0 61.1 63.0 64.2 65.0 66.0 67.0 70.0
  SAY #30757 /* ~"Oh? Und über welche, mein Herr?"~ */
  IF ~~ THEN REPLY #31037 /* ~"Erzähl mir was über die Bruderschaft der Ordnung."~ */ JOURNAL #31027 /* ~Fähiger Nachdenker hat mir erklärt, daß die Bruderschaft der Ordnung glaubt, daß das Multiversum von Gesetzen beherrscht wird. Wenn jemand all diese Gesetze kennt, versteht er das Multiversum. Außerdem lernen sie durch das Verständnis der Gesetze und ihrer Beschränkungen, bestimmte Gesetze zu umgehen.~ */ GOTO 29
  IF ~~ THEN REPLY #31038 /* ~"Erzähl mir was über die Gläubigen der Quelle."~ */ JOURNAL #31028 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gläubigen der Quelle oder Göttermenschen daran glauben, daß jedes lebendige Wesen im Multiversum das Potential besitzt, zu einer Gottheit zu werden.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31039 /* ~"Erzähl mir was über die Staubmenschen."~ */ JOURNAL #31029 /* ~Fähiger Nachdenker hat mir erklärt, daß die Staubmenschen glauben, daß wir bereits tot seien und daß wir alle in Sigil und den Ebenen enden, wenn wir sterben. Ihrem Glauben zufolge ist alles tot, und diese Existenz ist nur eine Farce. Bindungen an diese Existenz oder Gefühle für sie halte die Seele nur davon ab, wahrhaftig zu sterben.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31040 /* ~"Erzähl mir was über die Staubmenschen."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Fähiger Nachdenker hat mir erklärt, daß die Staubmenschen glauben, daß wir bereits tot seien und daß wir alle in Sigil und den Ebenen enden, wenn wir sterben. Ihrem Glauben zufolge ist alles tot, und diese Existenz ist nur eine Farce. Bindungen an diese Existenz oder Gefühle für sie halte die Seele nur davon ab, wahrhaftig zu sterben.~ */ GOTO 53
  IF ~~ THEN REPLY #31041 /* ~"Erzähl mir was über das Harmonium."~ */ JOURNAL #31031 /* ~Fähiger Nachdenker hat mir erklärt, daß das Harmonium dem Frieden und der Harmonie auf allen Ebenen ergeben ist... Daher kommt auch ihr Name. Sie glauben aber, daß das Ziel die Mittel heiligt, und sind deshalb bereit, beinahe alles zu tun, um andere davon zu überzeugen, die Dinge "genau wie sie" zu sehen. ~ */ GOTO 55
  IF ~~ THEN REPLY #31042 /* ~"Erzähl mir was über die Gnadentöter."~ */ JOURNAL #31032 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gnadentöter glauben, daß die Gerechtigkeit über allem steht. Mallin, ihr letzter Bundmeister, sagte einmal, daß eine richtig angewendete Strafe zur Perfektion führe.~ */ GOTO 56
  IF ~~ THEN REPLY #31043 /* ~"Erzähl mir was über die Revolutionsliga."~ */ JOURNAL #31033 /* ~Fähiger Nachdenker hat mir erklärt, daß die Revolutionsliga in Sigil weit verbreitet ist. Sie glauben, daß alle Institutionen errichtet wurden, um ihnen den Zugang zur Wahrheit des Multiversums zu verwehren. Der einzige Weg, den sie zur Entdeckung der Wahrheit sehen, besteht im Niederreißen jeglicher Organisation. Sie behaupten, daß die Wahrheit nur entdeckt werden könne, wenn die Leute völlig "frei" seien. ~ */ GOTO 58
  IF ~~ THEN REPLY #31044 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Fähiger Nachdenker hat mir erklärt, daß die Gesellschaft der Empfindung einer der prominentesten der fünfzehn Bünde in Sigil ist. Sie glauben, daß die wahren Geheimnisse nur durch die direkte Erfahrung so vieler Dinge im Universum wie möglich erkannt werden können: durch das Schmecken jeder Substanz, das Fühlen jeder Emotion in allen Nuancen und durch das Aufsuchen jedes Orts im Multiversum.~ */ GOTO 62
  IF ~~ THEN REPLY #31045 /* ~"Erzähl mir was über die Xaositekten."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Fähiger Nachdenker hat mir erklärt, daß die Xaositekten glauben, daß man die Geheimnisse des Multiversums nur dann erlernen kann, wenn man sein zufälliges Chaos akzeptiert. ~ */ GOTO 64
  IF ~~ THEN REPLY #31046 /* ~"Du, da fällt mir noch 'ne andere Frage ein..."~ */ GOTO 16
  IF ~~ THEN REPLY #31047 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY #30758 /* ~"Die Gläubigen der Quelle, die Göttermenschen, glauben, daß jedes Lebewesen im Multiversum das Potential besitzt, um selbst zu einer Macht zu werden..."
~ */
  IF ~~ THEN REPLY #31053 /* ~Hör weiter zu.~ */ GOTO 52
  IF ~~ THEN REPLY #31054 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 52
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31055 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 92
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 92.0
  SAY #30759 /* ~Er fährt fort: "Das Hauptquartier der Göttermenschen befindet sich in der Großen Gießerei. Dieser Bund hat schon in zahlreichen Angelegenheiten dazu beigetragen, den Frieden in Sigil zu bewahren... Nichts liegt ihnen ferner, als ein Wesen ins Totenbuch zu stecken, das noch nicht die Gelegenheit hatte, sein volles Potential zu erreichen."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #31056 /* ~"Ich unterstütze diese Philosophie voll und ganz. Wieso findest du denn daran vieles fraglich?"~ */ GOTO 66
  IF ~~ THEN REPLY #31057 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31058 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31059 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31060 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.2 49.3 50.2 50.3
  SAY #30760 /* ~"Die Staubmenschen glauben, daß wir bereits tot sind und daß wir alle in Sigil und auf den Ebenen landen, wenn wir sterben. Sie glauben, daß alles tot und dieses Dasein falsch ist. Nur durch Bindungen an bzw. Gefühlen für dieses Dasein wird verhindert, daß eine Seele wirklich stirbt."~ */
  IF ~~ THEN REPLY #31061 /* ~Hör weiter zu.~ */ GOTO 54
  IF ~~ THEN REPLY #31062 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 54
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31063 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 93
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 93.0
  SAY #30761 /* ~Er fährt fort: "Die Staubmenschen glauben, daß der Tod in diesem 'Dasein' nur eine Frage der Abstufung ist. Nur diejenigen, die 'wirklich tot' sind und sich von allen Bindungen an dieses Dasein befreit haben, können hoffen, Frieden zu finden. Eine Philosophie, die sicher in gewissem Maß fundiert ist, aber vieles daran ist sehr fraglich."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #31064 /* ~"Ich unterstütze diese Philosophie voll und ganz. Wieso findest du denn daran vieles fraglich?"~ */ GOTO 67
  IF ~~ THEN REPLY #31065 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31066 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31067 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31068 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.4 50.4
  SAY #30762 /* ~"Das Harmonium hat sich dem Frieden und der Harmonie auf allen Ebenen verschrieben... daher auch der Name. Allerdings glaubt das Harmonium, daß der Zweck die Mittel heiligt und ist deshalb auch gewillt, nahezu alles zu tun, um jemanden dazu zu bringen, die Dinge 'genau wie sie' zu sehen. Unabhängig davon, welche persönliche Meinung man über das Harmonium hat, es leistet auf jeden Fall gute Arbeit als Polizei auf Sigils Straßen."~ */
  IF ~~ THEN REPLY #31069 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31070 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31071 /* ~"Ich will dich noch mal was anderes fragen..."
~ */ GOTO 16
  IF ~~ THEN REPLY #31072 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 49.5 50.5
  SAY #30763 /* ~"Die Gnadentöter glauben, daß Gerechtigkeit das A und O ist. Mallin, ihr letzter Bundmeister, sagte einmal, daß Strafe, wenn sie richtig gewählt wird, zur Perfektion führt..."~ */
  IF ~~ THEN REPLY #31073 /* ~Hör weiter zu.~ */ GOTO 57
  IF ~~ THEN REPLY #31074 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 57
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31075 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 94
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 94.0
  SAY #30764 /* ~Er fährt fort: "Neulinge in Sigil vermuten oft fälschlicherweise, daß Gnadentöter aus Gnade töten. Richtig ist vielmehr, daß sie versuchen, die Gnade selbst zu töten. Die Mitglieder des Bundes machen es sich zur Aufgabe, die Schuldigen Sigils zu bestrafen. Und das darf kosten, was es wolle."~ */
  IF ~~ THEN REPLY #31076 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31077 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31078 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31079 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.6 50.6
  SAY #30765 /* ~"Die Mitglieder der Revolutionsliga werden auch Anarchisten genannt. Nicht viele wissen, daß die Revolutionsliga in Sigil sehr verbreitet ist... was eine Schande ist. Ihre Mitglieder hängen dem falschen Glauben nach, daß alle Institutionen geschaffen wurden, um ihnen den Zugang zur Wahrheit des Multiversums zu versperren."~ */
  IF ~~ THEN REPLY #31080 /* ~Hör weiter zu.~ */ GOTO 59
  IF ~~ THEN REPLY #31081 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 59
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31082 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 95
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1 95.0
  SAY #30766 /* ~"Die ihrer Meinung nach einzige Möglichkeit, die Wahrheit zu finden, besteht darin, jede Art von Organisation niederzureißen. Sie behaupten, daß die Wahrheit nur gefunden werden kann, wenn die Menschen völlig 'frei' sind." Er schüttelt den Kopf. "Ich wünsche mir oft, daß sie ihre Augen aufsperren würden, um die Wahrheit *um sie herum* zu sehen. Sie blenden sich damit nur selbst und versperren allen den Zugang zur Wahrheit."~ */
  IF ~~ THEN REPLY #31083 /* ~Hör weiter zu.~ */ GOTO 60
  IF ~~ THEN REPLY #31084 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #30767 /* ~Er stößt einen langen Seufzer aus und schüttelt dann mißbilligend den Finger, als ob er mit einem unsichtbaren Kind schimpfen würde, das unartig gewesen war. "Interessant ist die Tatsache, daß sie keine konkreten Pläne für ihre Suche nach der Wahrheit haben. Abgesehen davon natürlich, daß sie alles niederreißen, was sie sehen können. Wirklich sehr interessant."~ */
  IF ~~ THEN REPLY #31085 /* ~Hör weiter zu.~ */ GOTO 61
  IF ~~ THEN REPLY #31086 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 60.1
  SAY #30768 /* ~Er runzelt die Stirn. "Außerdem ist interessant, daß die Revolutionsliga zwar viele Mitglieder hat, aber genau das Wesen dieses Bundes dazu führt, daß ihre Mitglieder gegeneinander arbeiten. Oft bekämpfen sich Zellen gegenseitig, wobei jede den Anspruch erhebt, zu wissen, 'wie' man es angehen muß, um alles niederzureißen."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31087 /* ~"Ist es nicht egal, wie man was angeht, solange all das, was falsch ist, niedergerissen wird?"~ */ GOTO 68
  IF ~~ THEN REPLY #31088 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31089 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31090 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31091 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 36.0 49.7 50.7
  SAY #30769 /* ~"Ah, die Gesellschaft der Empfindung! Sie ist einer der prominentesten Bünde unter Sigils fünfzehn Bünden. Seine Mitglieder glauben, daß das wahre Dunkel des Multiversums nur erkannt werden kann, wenn man selber soviel wie möglich über das Universum erfährt, jede Substanz schmeckt, jede Emotion fühlt und jeden Ort im Multiversum besucht."~ */
  IF ~~ THEN REPLY #31092 /* ~Hör weiter zu.~ */ GOTO 63
  IF ~~ THEN REPLY #31093 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 63
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31094 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 96
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1 96.0
  SAY #30770 /* ~Er fährt fort: "Das Hauptquartier ihres Bundes befindet sich in der Städtischen Festhalle, wo sie versuchen, Erfahrungen für ganz Sigil zusammenzutragen. Momentan sind sie der zahlenmäßig größte Bund in Sigil... und der mächtigste. Wenn ich mich nicht irre, hat die letzte Zählung seiner Mitglieder mehr als zwanzig mal tausend Mitglieder ergeben."~ */
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31095 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31097 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31098 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31100 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 49.8 50.8
  SAY #30771 /* ~Er räuspert sich. "Hetzer! Dieses Lumpenvolk ist gar kein richtiger Bund. Da ist ja sogar die Revolutionsliga besser organisiert! Die Xaositekten meinen, daß sie durch Chaos irgendwie hinter die Geheimnisse des Multiversums kommen könnten. Was für eine lächerliche Idee."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #31101 /* ~"Also ich werde die Geheimnisse des Multiversums entdecken, indem ich mir Hüttenkäse auf meinen Bauch schmiere und jede Menge Süßwasserfisch esse. Mmm... Käse."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ GOTO 65
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #31102 /* ~"Also ich werde die Geheimnisse des Multiversums entdecken, indem ich mir Hüttenkäse auf meinen Bauch schmiere und jede Menge Süßwasserfisch esse. Mmm... Käse."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 297
  IF ~~ THEN REPLY #31103 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31104 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31105 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31106 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #30772 /* ~Der Mann starrt dich eine Weile an. "Was... hast du... Käse gesagt? Ich...äh... muß jetzt gehen..."~ */
  IF ~~ THEN REPLY #31107 /* ~"Warte... ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31109 /* ~"Warte. Ich will dich noch was über Sigil fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #31110 /* ~"Warte... ich will dich noch was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31111 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 52.0
  SAY #30773 /* ~"Naja, ich finde ihre Philosophie zwar respektabel... und gut für Sigil und seine Bewohner... aber sie ist viel zu simpel. Wie soll das funktionieren, einfach dadurch hinter die Geheimnisse des Multiversums zu kommen, daß man 'gut lebt'? Wird eine solche Erkenntnis einfach eines schicksalhaften Tages spontan erscheinen und endlich eine deiner Myriaden von Inkarnationen erleuchten? Wenn es so etwas überhaupt gibt! Aber ich sehe, daß du nicht viel Zeit hast. Ich werde nichts mehr dazu sagen."~ */
  IF ~~ THEN REPLY #31112 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31113 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31114 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31115 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 54.0
  SAY #30774 /* ~"Ganz einfach deshalb, weil sich ihre Vorstellungen um den *Glauben* drehen. Ich würde harte Fakten verlangen, nichts weniger, guter Mann, bevor ich meine Liebe zum Leben so einfach aufgebe. Aber ich sehe, daß du nicht viel Zeit hast. Ich werde nichts mehr dazu sagen."~ */
  IF ~~ THEN REPLY #31116 /* ~"Ich würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31117 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31118 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31119 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.0
  SAY #30775 /* ~"Das 'Wie' ist es ja, das *an sich* schon falsch ist! Wie kann..." Er macht eine kurze Pause, wobei er mißtrauisch seine Augen zusammenkneift. "Einen Augenblick mal... bist du nicht... nicht..."~ */
  IF ~~ THEN REPLY #31120 /* ~"Ja, das bin ich. Na los, sag's schon: ein Anarchist."~ */ GOTO 69
  IF ~~ THEN REPLY #31121 /* ~Lüge: "Nicht... was? Ich habe keine Ahnung, wovon du redest."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_2","GLOBALLaw",-1)
~ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #30776 /* ~Er macht einen Satz nach hinten und ruft nach den Wachen. "Wachen! Ein Anarchist! WACHEN!"~ */
  IF ~~ THEN REPLY #31122 /* ~Greif ihn an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #31123 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #30777 /* ~"Hmmm..."~ */
  IF ~~ THEN REPLY #31124 /* ~"Ich, äh, würde gern noch mehr über die anderen Bünde erfahren..."~ */ GOTO 50
  IF ~~ THEN REPLY #31125 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31126 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31127 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #30778 /* ~"Die Dame der Schmerzen, ja, ja... sie ist die Kraft hinter Sigil. Eine sehr beeindruckende Person, aber man weiß nicht viel über sie."~ */
  IF ~~ THEN REPLY #31128 /* ~"Was *weiß* man denn über sie?"~ */ GOTO 72
  IF ~~ THEN REPLY #31129 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31130 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31131 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 47.0 71.0
  SAY #30779 /* ~Er beginnt, seine Antworten einzeln mit den Fingern abzuhaken: "Erstens: Sie ist nicht nur ein Symbol von Sigil, wie manche behaupten. Sie ist sehr real und sehr gefährlich. Zweitens: Man sagt, daß sie die Mächte... Götter... aus Sigil fernhält. Solange sie da ist, können die Mächte Sigil nicht betreten..."~ */
  IF ~~ THEN REPLY #31132 /* ~Hör weiter zu.~ */ GOTO 73
  IF ~~ THEN REPLY #31133 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 73
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31134 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 97
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 97.0
  SAY #30780 /* ~"Drittens: Sie verhindert auch das unbefugte Teleportieren und bewacht die Tore von Sigil. Dadurch wird verhindert, daß die Kreaturen aus den äußeren Ebenen noch mehr von ihrer Sorte unerlaubt nach Sigil einschleusen. Viertens: Sie hat noch nie gesprochen. Mit keinem. Fünftens: Sie hat Aoskar die Gewalt über Sigil abgerungen. Aoskar war eine Macht. Man sagt, daß er jetzt tot ist."~ */
  IF ~~ THEN REPLY #31135 /* ~Hör weiter zu.~ */ GOTO 74
  IF ~~ THEN REPLY #31136 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1
  SAY #30781 /* ~"Sechstens: Jeder, der Sigil... oder sie... bedroht, wird bestraft. Entweder man fällt unter ihren Schatten, was zu einer Reihe von unsichtbaren Stichwunden führt, die selbst größere Baatezu töten können. Oder man wird in die Irrgänge verbannt, aus denen nur die wenigsten entkommen. Siebtens: Sie scheint es nicht zu mögen, wenn man sie anbetet. Diejenigen, die das getan haben, werden oft gehäutet aufgefunden."~ */
  IF ~~ THEN REPLY #31137 /* ~Hör weiter zu.~ */ GOTO 75
  IF ~~ THEN REPLY #31138 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #30782 /* ~"Und schließlich: Ihr Anblick soll andere in den Wahnsinn treiben."~ */
  IF ~~ THEN REPLY #31139 /* ~"Sie hat einer Macht die Gewalt über Sigil abgerungen? Woher weißt du das?"~ */ GOTO 76
  IF ~~ THEN REPLY #31140 /* ~"Ihr Anblick treibt andere in den Wahnsinn?"~ */ GOTO 77
  IF ~~ THEN REPLY #31141 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31142 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31143 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #30783 /* ~"'Das wird von der Bruderschaft der Ordnung geglaubt."~ */
  IF ~~ THEN REPLY #31144 /* ~"Hast du gesagt, daß ihr Anblick andere in den Wahnsinn treibt?"~ */ GOTO 77
  IF ~~ THEN REPLY #31145 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31146 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31147 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1 76.0
  SAY #30784 /* ~"Ja." Er grübelt eine Weile darüber nach. "Aber ich muß auch dazu sagen, daß ich sie nie gesehen habe."~ */
  IF ~~ THEN REPLY #31148 /* ~"Woher weißt du dann, daß sie Sigil erschaffen hat?"~ */ GOTO 76
  IF ~~ THEN REPLY #31149 /* ~"Ich habe noch ein paar Fragen über Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31150 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31151 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 16.7 83.1
  SAY #30785 /* ~"Ravel... *falls* sie wirklich existiert hat und dafür gibt es nur wenig Beweise... war eine Nachthexe, eine der Bewohnerinnen der Grauen Einöde. Das ist eine der Unteren Ebenen und manche sagen sogar, daß es die schlimmste davon sei..."~ */
  IF ~~ THEN REPLY #31152 /* ~Hör weiter zu.~ */ GOTO 79
  IF ~~ THEN REPLY #31153 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 79
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31154 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 98
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.1 98.0
  SAY #30786 /* ~Er fährt fort: "Der Legende nach wurde Ravel vor einigen Jahrhunderten in die Irrgänge verbannt. Man hielt sie für die Meisterin vieler seltsamer Zauber und offenbar stellte ihre Anwesenheit in Sigil eine Gefahr für die Dame dar. Leider weiß ich nur sehr wenig über Ravel."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31155 /* ~"Kannst du was über sie herausfinden?"~ */ GOTO 84
  IF ~~ THEN REPLY #31156 /* ~"In die Irrgänge geschickt?"~ */ GOTO 80
  IF ~~ THEN REPLY #31157 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #31158 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.1 87.0
  SAY #30787 /* ~"Die Irrgänge! Das sind Schöpfungen der Dame... sie nimmt ein kleines Stück von Sigil, kopiert es und verwendet dann ein Portal, um das kopierte Stück in der Tiefen Ätherischen zu plazieren. Ist es einmal dort, wird das Stück Sigil eine Halbebene, ein endloser Irrgang, der sich um sich selbst wickelt und windet..."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31159 /* ~"Kannst du was über sie herausfinden?"~ */ GOTO 84
  IF ~~ THEN REPLY #31160 /* ~Hör weiter zu.~ */ GOTO 81
  IF ~~ THEN REPLY #31161 /* ~Versuche, ihn zu unterbrechen.~ */ GOTO 81
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31162 /* ~Leer seine Taschen, während er erzählt.~ */ GOTO 99
END

IF ~~ THEN BEGIN 81 // from: 80.1 80.2 99.0
  SAY #30788 /* ~Er fährt fort: "Die Dame verbannt alle die in die Irrgänge, die ihre Macht bedrohen. Wenn sie einmal entschieden hat, daß du da reinsollst, gibt es kein Entkommen mehr. Jeder Irrgang hat zwar angeblich auch einen Ausgang, aber den zu finden wird wahrscheinlich extrem schwierig sein."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31163 /* ~"Kannst du was über sie herausfinden?"~ */ GOTO 84
  IF ~~ THEN REPLY #31164 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31165 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 16.8
  SAY #30789 /* ~"Der Blutkrieg ist der ewige Krieg zwischen den chaotischen Tanar-Ri und den gesetzestreuen Baatezu. Es ist ein ideologischer Krieg, der tobt, seit sich die Wege der beiden Rassen auf den Unteren Ebenen zum ersten Mal gekreuzt haben. Seitdem liegt das Multiversum unter seinem Schatten. So sehr viel weiß ich nicht über diesen Krieg, denn im Laufe der Jahrtausende hat es zahlreiche neue Zusammenstöße gegeben."~ */
  IF ~~ THEN REPLY #31166 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31167 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 16.3 84.0
  SAY #30790 /* ~"Ich kann es auf jeden Fall versuchen... was willst du wissen?"~ */
  IF ~  PartyHasItem("P_JRNL")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #31168 /* ~Falte das Dodekaeder in eine Seite mit 'Schrift' auseinander und frag ihn, ob er es untersuchen kann.~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ GOTO 84
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("CW_Research_Ravel","AR0600",0)
~ THEN REPLY #31169 /* ~"Ich will was über eine Nachthexe namens Ravel Rästelschön herausfinden."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",1)
~ GOTO 78
  IF ~  Global("CW_Research_Incarnations","AR0600",0)
~ THEN REPLY #31170 /* ~"Ich will wissen, ob es einen Toten gibt, auf den meine Beschreibung paßt."~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",1)
~ GOTO 85
  IF ~~ THEN REPLY #31171 /* ~"Laß mich dich mal was ganz anderes fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #31172 /* ~"Nichts, wenn ich's mir so recht überlege. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 31.0 79.0 80.0 81.0 83.0 85.0
  SAY #30791 /* ~"Ja, ich werde mal ein paar Nachforschungen anstellen. Ich müßte die Informationen in weniger als einem Tag haben."
~ */
  IF ~~ THEN REPLY #31173 /* ~"Danke. Könntest du noch was anderes für mich herausfinden?"
~ */ GOTO 83
  IF ~~ THEN REPLY #31174 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31175 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.2
  SAY #30792 /* ~Er scheint überrascht zu sein. "Eine... merkwürdige Frage. Ich werde nur etwas herausfinden können, wenn diese Person recht bekannt gewesen ist. Betreibst du Ahnenforschung?"~ */
  IF ~~ THEN REPLY #31176 /* ~"So könnte man das auch bezeichnen. Kannst du mal versuchen, was rauszufinden?"~ */ GOTO 84
END

IF ~~ THEN BEGIN 86 // from: 16.0
  SAY #30793 /* ~"Nur, daß diese Sprache tot ist. Es gab einen Professor für Sprachen an der Städtischen Festhalle, Finam, den du vielleicht aufsuchen möchtest. Er kennt diese Sprache vielleicht, wenn er noch da ist."~ */
  IF ~~ THEN REPLY #31177 /* ~"Vielen Dank. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31178 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 16.1
  SAY #30794 /* ~"Ja. Angeblich verschwand sie eines Nachts aus der Festhalle. Man sagt, daß sie in die Irrgänge verbannt worden sei, worüber viele sehr froh waren. Angeblich braucht man etwas von ihr, um ein Portal zu ihrem Irrgang zu öffnen. Keiner weiß jedoch, was das sein könnte und herausfinden wollte es bisher auch keiner. Wenn du willst, kannst du ja mal die Leute in der Festhalle fragen."~ */
  IF ~~ THEN REPLY #31179 /* ~"Sie wurde 'in die Irrgänge verbannt'?"~ */ GOTO 80
  IF ~~ THEN REPLY #31180 /* ~"Interessant. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31181 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 16.2
  SAY #30795 /* ~"Das habe ich tatsächlich. Höchst merkwürdig! Ich habe zwei Männer gefunden, die auf deine Beschreibung passen... beide höchst widerwärtige Kerle. Der erste war ein völlig Verrückter... ein amoklaufender, blutrünstiger Söldner und Duellant, der alle tötete, die ihm über den Weg liefen."~ */
  IF ~~ THEN REPLY #31182 /* ~"Erzähl weiter..."~ */ GOTO 100
END

IF ~~ THEN BEGIN 89 // from: 44.2
  SAY #30796 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31183 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 45
END

IF ~~ THEN BEGIN 90 // from: 46.2
  SAY #30797 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31184 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 48.2
  SAY #30798 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31185 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 49
END

IF ~~ THEN BEGIN 92 // from: 51.2
  SAY #30799 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31186 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 52
END

IF ~~ THEN BEGIN 93 // from: 53.2
  SAY #30800 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31187 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 54
END

IF ~~ THEN BEGIN 94 // from: 56.2
  SAY #30801 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31188 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 57
END

IF ~~ THEN BEGIN 95 // from: 58.2
  SAY #30802 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31189 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 59
END

IF ~~ THEN BEGIN 96 // from: 62.2
  SAY #30803 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31190 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 63
END

IF ~~ THEN BEGIN 97 // from: 72.2
  SAY #30804 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31191 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 73
END

IF ~~ THEN BEGIN 98 // from: 78.2
  SAY #30805 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31192 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 79
END

IF ~~ THEN BEGIN 99 // from: 80.3
  SAY #30806 /* ~Du läßt deine Hand in den Geldbeutel des Mannes gleiten und klaust ein paar Münzen.~ */
  IF ~~ THEN REPLY #31193 /* ~Steck die Münzen ein und hör weiter zu.~ */ DO ~GiveGoldForce(4)
~ GOTO 81
END

IF ~~ THEN BEGIN 100 // from: 88.0
  SAY #30807 /* ~Er nickt. "Er wurde schließlich gefaßt und dann gestreckt und gevierteilt, und zwar von zwei Dutzend Gnadentötern, nach einer mörderischen Randale in einer Kneipe im Unteren Bezirk. Seine Überreste wurden über die Mauern von Sigil geworfen. Dies alles geschah vor ungefähr dreihundert Jahren."~ */
  IF ~~ THEN REPLY #31194 /* ~"Und der zweite Mann?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #30808 /* ~"Über ihn ist nur wenig bekannt. Er war ein Sinnsat, der kurz vor seinem Tod alle Sinnessteine zerstörte, in denen er seine Erfahrungen gespeichert hatte. Es wurde als großer Verlust für den Bund gewertet, denn obwohl der Mann wenige Freunde hatte und jeden angriff, der ihm zu nahe kam, hieß es, er habe sehr viele wunderbare Empfindungen gesammelt."~ */
  IF ~~ THEN REPLY #31195 /* ~"Wie ist er gestorben?"~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #30809 /* ~Er zuckt die Schultern. "Keine Ahnung. Darüber konnte ich nichts finden."~ */
  IF ~~ THEN REPLY #31196 /* ~"Vielen Dank. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31197 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,1)
~ THEN BEGIN 103 // from:
  SAY #30810 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich über die Verfahrensvorschriften der Gerichte in Sigil zu berichten, und darüber, wie Prozesse besser verhandelt werden könnten.~ */
  IF ~~ THEN REPLY #31198 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31199 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,2)
~ THEN BEGIN 104 // from:
  SAY #30811 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich über die Struktur des Verwaltungskomplexes, in dem er arbeitet, zu berichten, und darüber, wie durch den Einsatz von Rotationsplänen Verbesserungen im Arbeitsablauf erzielt werden könnten.~ */
  IF ~~ THEN REPLY #31200 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31201 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,3)
~ THEN BEGIN 105 // from:
  SAY #30812 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich darüber zu berichten, wie die Große Gießerei verschiedene Giftgase in die Luft über Sigil bläst und welche negativen Auswirkungen diese auf die verschiedenen Körpersäfte im menschlichen Körper haben.
~ */
  IF ~~ THEN REPLY #31202 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31203 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,4)
~ THEN BEGIN 106 // from:
  SAY #30813 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich darüber zu berichten, wie die Bruderschaft der Ordnung, das Harmonium und die Gnadentöter zusammenarbeiten, um den Frieden und die Stabilität in Sigil zu wahren.~ */
  IF ~~ THEN REPLY #31204 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31205 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,5)
~ THEN BEGIN 107 // from:
  SAY #30814 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich über die verschiedenen Kleider- und Frisurenmoden zu berichten, die im Laufe der Jahrzehnte, die er in Sigil lebt, 'in' und dann wieder 'out' waren.~ */
  IF ~~ THEN REPLY #31206 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31207 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #10 ~  GlobalGT("Able","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #30815 /* ~Fähiger Nachdenker lächelt, als du näherkommst. "Ah, guter Mann, da bist du ja wieder! Weißt du, ich habe nachgedacht..." Er beginnt, ausführlich von seiner Arbeit als Berater in der Halle der Aufzeichnungen zu berichten, und wiederholt dir Satz für Satz verschiedene 'interessante' Gespräche, die er diese Woche mit Kollegen geführt hat.
~ */
  IF ~~ THEN REPLY #31208 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #31209 /* ~"Ja... sehr interessant... aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END
