// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"Dank dir habe ich alles verloren. Sie werden immer wieder kommen... Oh, die Foltern, denen ich dich unterwerfen werden... Acckk.. Vergib mir. Meine Worte waren voreilig."~ */
  IF ~~ THEN REPLY #2914 /* ~"Gut. Ich brauche einige deiner Vorräte. Was hast du denn so?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"Das hoffe ich. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"Ich kann den Pestgestank deines Verrats an dir riechen, spüren und hören, wie sich meine Brüder nähern, die kommen, um mich zurück nach Baator zu bringen... Fort mit dir, Schwurbrecher! Ich habe dir alles gegeben, was ich konnte! Ich kann dir nicht mehr geben!"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"Kannst du mir wirklich nichts mehr geben?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"Ich hab' nur noch ein paar Fragen an dich..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~Das Scheusal erstarrt. "Äh... nichts Wertvolles. Vielleicht ein kleines Schmuckstück, vielleicht hast du einen Anhänger oder Talisman. Wenn du sie wirklich brauchst, dann kannst du sie haben. Ansonsten..."~ */
  IF ~~ THEN REPLY #54890 /* ~"Was hast du?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"Vergiß es. Beantworte mir einfach ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"Pah! Dreimal verflucht seist du, Sterblicher! Du solltest besser beten, daß dieser Deva Unsterblichkeit im Blut hat, denn wenn nicht, dann werde ich dafür sorgen, daß du es mir mit gleicher Münze zurückzahlst. Aber nicht mit irgendwelchen Zaubertricks... Urkhhhh... ugnnnhhh... Nein, nein, ich hab' es nicht so gemeint... Ich nehme meine schlecht gewählten Worte zurück... Ich hab's nicht so gemeint..."~ */
  IF ~~ THEN REPLY #54896 /* ~"Gut Her damit. Sofort."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"Wenn du sie nicht brauchst, Schlangenzunge, ich hätte Verwendung dafür."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"Vergiß es, Schlangenzunge. Beantworte mir lieber ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"Verfluchter, berechnender... Natürlich darfst du dir meine Waren ansehen. Suchst du etwas Bestimmtes?" ~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"Argh! Ich habe immer Verwendung für diese Dinge. Ganz besonders gut kann ich sie gegen diese Horde von Scheusalen einsetzen, die du so gedankenlos zu mir geführt hast!"~ */
  IF ~~ THEN REPLY #54915 /* ~"Das ist aber schade. Dann gib sie her."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"Dann sollst du sie behalten."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"Pah! Deine Großzügigkeit ist die der dreimal verfluchten Devas von Elysium. Was willst du denn noch von dem armen Fhjull?"~ */
  IF ~~ THEN REPLY #54918 /* ~"Wo wir gerade dabei sind, laß mich mal deine Waren sehen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"Vorerst nichts. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"Vorerst nichts. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~Er knirscht mit den Zähnen. "Womit kann ich dir noch dienen?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"Wie komm ich aus diesem Krater raus?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Schlangenzunge hat mir erzählt, daß das Portal aus dem Krater heraus, durch das ich zurück nach Verdammnis gelangen kann, sich unter dem Schwanzknochen eines massiven Skeletts befindet. Er zeigte sich entzückt darüber, daß ich durch dessen Hinterteil reisen würde.~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"Wie komm ich da wieder raus?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"Erzähl mir von Trias."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"Und warum sind die Baatezu hinter dir her?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"Hast du irgend etwas, das du gerne mit mir... teilen möchtest?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"Warum versteckst du dich in diesem Krater?"~ */ JOURNAL #66807 /* ~Schlangenzunge hat mir erzählt, daß er sich im Krater versteckt, weil die Magie der Knochen von Ul-Goris verhindern, daß er entdeckt wird, und weil er sich deshalb dort vor denen verstecken könne, die ihm schaden wollen.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"Das kannst du im Moment nicht. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"Das kannst du im Moment nicht. Leb wohl."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"Das kannst du im Moment nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"Ha! Nächstes Mal machst du bestimmt wieder Ärger! So jemand wie du kommt immer wieder... pah!"~ */
  IF ~~ THEN REPLY #54934 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"Pah... Heißt das, daß du mich nun endlich wieder verläßt? Dann erkläre ich hiermit mit ganz besonderer Freude, daß das Portal sich unter dem Hinterende des Knochengerüsts dieser Kreatur befindet. Durch es gelangst du in die kriecherische Bruchbudenstadt Verdammnis, wo du hergekommen bist. Ich kann mir für dich keine passendere Art zu reisen vorstellen."~ */
  IF ~~ THEN REPLY #54936 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"Dieses kriecherische Pseudo-Kind des Lichts! Dieser verachtenswerte... aggh... Ich wünsche ihm mit seiner verräterischen, verlogenen und gesetzesbrecherischen Art ja gar nichts Böses! Pah! Er ist ein Betrüger, Sterblicher, und du solltest ihm nicht über den Weg trauen. Ich sag das selbstverständlich mit angemessener Nächstenliebe und..." Schlangenzunge spuckt auf den Boden, "... Freundlichkeit. Sein Verrat hat mich eine Ewigkeit gekostet... Es sei denn, er stirbt." Sein breites Grinsen wirkt erstaunlich zuversichtlich.~ */
  IF ~~ THEN REPLY #54941 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"Pah... Sie versuchen, ihre Bilanzen zu regeln, wieder gutzumachen, was sie falsch gemacht haben, alles in Ordnung zu bringen. Mein Dasein, vor ihnen verborgen, trübt die Perfektion, die sie dem Antlitz des Bösen verleihen wollen."~ */
  IF ~~ THEN REPLY #54946 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"Das ist das Skelett von Ul-Goris, dem Vater der Goristro. Sie sind lebende, bärenartige Belagerungstürme, Moloche des Chaos, riesig, praktisch unaufhaltsam, und besonders resistent gegen Magie... Und Ul-Goris' Knochen, in dem Krater, wo er seinen Tod fand, strahlen so viel Energie aus, daß sämtliche Aufspürungszauber versagen. Pah!"~ */
  IF ~~ THEN REPLY #54951 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"Pah... Das ist das Geschenk des Hasses, eine gute Waffe für einen wie dich!" Er kichert vor sich hin. "Ich glaube nicht, daß du sie willst... Es liegt ein Fluch darauf. Vielleicht überlegst du dir's noch mal..."~ */
  IF ~~ THEN REPLY #54956 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"Das alte Ding? Pah! Das ist der Gordische Knoten. Schneide ihn durch, und du wirst doppelt so mächtig, wie du schon bist, häh häh. Und natürlich hat er seinen eigenen Preis, einer, den ich glücklicherweise nicht aufhalten kann."~ */
  IF ~~ THEN REPLY #54968 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~Er seufzt. "Das ist eine Natternträne. Wenn man sie in den Mund nimmt, kann man küssen wie eine Natter, voller Gift und Haß."~ */
  IF ~~ THEN REPLY #54980 /* ~"Das nehm ich."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"Ein Erinnerungsstück an meine Zeit in Baator - ein Messer aus Baatorianischem Grünstahl, eines der stärksten Materialien, die ich kenne. Pah! Nimm meine Geschichte und verschwinde!"~ */
  IF ~~ THEN REPLY #54992 /* ~"Ich nehme es. Ich weiß aber nicht, ob das schon alles war."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"Das alte Ding? Pah! Das ist nur ein Dolch aus Baatorianischem Grünstahl. Hat eine Klinge. Damit kannst du bestimmt nichts anfangen."~ */
  IF ~~ THEN REPLY #55004 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"Das? Das sind *Kassegs*, Parasiten, die sich im Gehirn einnisten und deine geistige Energie verschlingen, ohne etwas zu nützen! Verfluchte Abmachung! Sie steigern deine geistige Energie, das würde dir bestimmt guttun! nimm sie! Nimm sie!"~ */
  IF ~~ THEN REPLY #55019 /* ~"Das werde ich."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"Pah! Natürlich! Brauchst du sonst noch etwas von deinem *untertänigen* Diener?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"Über keine. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"Über keine. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"Pah! Du wirst mir noch meinen ganzen Besitz wegnehmen! Du willst Zaubersprüche? Pah! Das kannst du haben, du Blutsauger!" Er rattert eine Liste mit Zaubersprüchen herunter.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"Wie wär's mit einem netten Zauber "Fluch brechen"?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"Wie wär's mit einem netten Zauber "Fluch brechen"?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"Kugel der Unverwundbarkeit - klingt nützlich. Die nehm' ich."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"Kugel der Unverwundbarkeit - klingt nützlich. Die nehm' ich."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"Was ist mit diesem Kugelblitzsturm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"Was ist mit diesem Kugelblitzsturm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"Säuresturm klingt gefährlich. Gib ihn mir."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"Säuresturm. Gib ihn mir."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"Klingensturm? Beeindruckender Name. Den hätte ich gern."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"Gib mir noch einen Klingensturm."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"Stygischer Eissturm? Das klingt zu gefährlich, als daß es hier herumliegen sollte... Ich nehme ihn besser in Verwahrung."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"Stygischer Eissturm? Den hätte ich gerne."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"Das war eine leere Liste, die du gerade heruntergerasselt hast."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~Seine Hand verschwindet, als er in einen seltsamen Raum/Nicht-Raum greift. Er zieht eine Schriftrolle hervor, die sich wie menschliche Haut anfühlt, und wirft sie dir zu. "Pah! Nimm das und sei verfl... Nimm das!"~ */
  IF ~~ THEN REPLY #55064 /* ~"Danke... Was hast du sonst noch für Zaubersprüche?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~Er zieht eine zähnefletschende Grimasse. "Ich verspüre die tiefste Freude dir mitzuteilen, daß du meine gesamten Vorräte dieses Zauberspruches geplündert hast. Pah!"~ */
  IF ~~ THEN REPLY #55073 /* ~"Was für Zaubersprüche hast du sonst noch?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Schlangenzunge knurrt dich an: "Du hast eine der einzigartigsten Zauberspruch-Bibliotheken des Multiversums ruiniert, zerstört, ausradiert - hoffentlich nützt es dir. Jetzt kann ich dir keine Zaubersprüche mehr geben."~ */
  IF ~~ THEN REPLY #55082 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"Dann vergiß es. Beantworte mir lieber in paar Fragen..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"Dann leb wohl."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"Pah! Du bist also zurückgekommen! Und was hat dir die Säule erzählt? Hat sie deine blöden Fragen beantwortet?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"Ich hatte nur ein paar Fragen..."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"Argh! Was? WAS??"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"Pfui! Der üble Gestank von Tanar-Ri! Ich kann ihn Meilen gegen den Wind riechen! Ein bißchen Respekt vor meinem Haus! Könnt ihr nicht versuchen, irgendwelchen Rauch oder Säuredämpfe zu finden, die euren Duft überdecken? Pfui! Ich werde diesen Tanar-Ri-Gestank hier nie wieder rauskriegen. Er wird Baatezu von allen Ebenen anlocken."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"Oh, und es ist nicht irgendein Tanar-Ri, sondern eine Tanar-Ri-Hure, die hier soeben über meine Schwelle getreten ist... Das ist ja wohl der Gipfel. Hereinspaziert! Hereinspaziert! Bitte, fühlt euch bei mir wie zu Hause!" Er wedelt verzweifelt mit den Armen durch die Luft. "Warum ladet ihr nicht gleich alle Harpyien des Abgrunds zu mir ein, um mich zu quälen?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"Pfui! Der üble Gestank von Tanar-Ri! Ich kann ihn Meilen gegen den Wind riechen! Ein bißchen Respekt vor meinem Haus! Könnt ihr nicht versuchen, irgendwelchen Rauch oder Säuredämpfe zu finden, die euren Duft überdecken? Pfui! Ich werde diesen Tanar-Ri-Gestank hier nie wieder rauskriegen. Er wird Baatezu von allen Ebenen anlocken."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"Seid ihr gekommen, um mich zu töten?! Mich zu quälen? Wenn dem so ist, dann wißt, daß ich noch sehr viele Kräfte zur Verfügung habe!"~ */
  IF ~~ THEN REPLY #55100 /* ~"Ich bin nicht hier, um dich zu töten."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"Ich bin nicht hier, um dich zu quälen."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"Ich will nur ein paar Antworten auf meine Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"Mußt du andauernd den Geruch meines Heims mit dem Verwesungsgestank eines Tanar-Ri verseuchen? Stell deine Fragen und verschwinde!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"Erzähl mir was über dich."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"Ich freue mich sehr, dich wiederzusehen. Ich würde mich ebenso freuen, wenn du dich hinlegen und sterben würdest."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"Erzähl mir was über dich."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"Was willst du von mir, was für Zumutungen sind es diesmal?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"Erzähl mir was über dich."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"Pah! Wen haben wir denn da?! Willst du mich umbringen?! Mich foltern? Wenn dem so ist, so wisse, daß mir noch viel Kraft zur Verfügung steht!"~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"Bist du Fhjull Schlangenzunge?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"Pah! Natürlich bin ich das! Das mußt du gewußt haben, wenn du ausgerechnet in *diesen* Monsterschädel hereinplatzt, bei all den Monsterschädeln, die hier in den endlosen Außenländern herumliegen... Oder ist das vielleicht Zufall, wenn so ein Idiot hier die Tür einrennt?" Ihm scheint ein Gedanke zu kommen. "Du mußt mir schwören, daß du NIEMANDEM sagst, wo ich bin!"~ */
  IF ~~ THEN REPLY #55554 /* ~Wahrheit: "Ich schwöre."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"Das werde ich nicht tun."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Lüge: "Ich schwöre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~Er entspannt sich zusehends. "Und wie hast du hierher gefunden, häh?"~ */
  IF ~~ THEN REPLY #55558 /* ~"Der Deva Trias hat gesagt, du könntest mir ein paar Fragen beantworten."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"Dann sei verflucht! Mir doch egal! Pah! Wie hast du hierhergefunden?!"~ */
  IF ~~ THEN REPLY #55562 /* ~"Der Deva Trias hat gesagt, du könntest mir ein paar Fragen beantworten."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~Er erstarrt. "Trias? Trias der *Verräter* hat dich geschickt?" Seine Klauen ballen sich zu Fäusten. "Das ist der Gipfel der Demütigung! Dieser arrogante Bastard! Wenn du ihn kaltmachst, gebe ich dir alles, was ich besitze! Zieh ihm die Haut ab und bring sie mir, damit ich sie als Mantel tragen kann... hurkkk!" ~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"Ich meine... nein, nein... Tu dem Deva nichts. Das wäre falsch. Ich hatte Unrecht. Unrecht hatte ich."~ */
  IF ~~ THEN REPLY #55567 /* ~"Was hat Trias dir denn getan?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"Das war zwar sehr unterhaltsam, aber ich hätte gerne ein paar Fragen beantwortet."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"Pah! Jahrelang habe ich als Advokat der Hölle gedient! Äußerste Genauigkeit und Organisation. Ich habe niemals das Vorgehen meiner Vorgesetzten angezweifelt. Ich habe ALLES getan, was von mir verlangt wurde. Die mir Untergebenen hingegen habe ich bei Versagen mit den grausamsten und einfallsreichsten Strafen bestraft."~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"DANN... ein Ausrutscher, und es bricht alles zusammen! Alles beruht auf GLÜCK. CHAOS. ZUFÄLLEN. Und die niederen Rassen werden sich fragen, warum die Baatezu wollen, daß das Multiversum ein geordnetes Konstrukt ist." Er hält inne und zischt vor Wut. "Der Deva hat gelogen. Er hat *gelogen*. Trias der Verräter hat mich dazu überredet, diesen Vertrag abzuschließen, und ich, blind von der Möglichkeit, ihn zu fangen, bin ihm geradewegs in die Falle gegangen."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"Wenn er stirbt, wird der Vertrag aufgelöst - aber ich habe ihn bisher nicht gefunden, und selbst wenn ich ihn fände, was könnte ich ihm anhaben?! Was soll ich bloß tun? Selbst diese verräterischen Gedanken fügen meinem Geist unerträgliche Schmerzen zu. Ich war mir *so* sicher, ich hätte dieses Ebenbild der Selbstgerechtigkeit überlistet. Diese kurzsichtige Gier kostet mich den Rest meiner Jahrhunderte glorreicher Verschwörungen und hat mich in diesem Erdloch des guten Willens begraben. Bah."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Ich hab Fhjull Schlangenzunge, das hilfsbereite Scheusal, gefunden. Es scheint so, als binde ihn eine frühere vertragliche Abmachung an Trias - den er Trias, den Verräter, nennt. Er ist nun dazu verflucht, Gutes zu tun, Hilfsbedürftigen und Bedrängten zu helfen. Und er ist nicht sehr glücklich darüber.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Ich hab Fhjull Schlangenzunge, das hilfsbereite Scheusal, gefunden. Es scheint so, als binde ihn eine frühere vertragliche Abmachung an Trias - den er Trias, den Verräter, nennt. Er ist nun dazu verflucht, Gutes zu tun, Hilfsbedürftigen und Bedrängten zu helfen. Und er ist nicht sehr glücklich darüber.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"Und jetzt bin ich dazu verflucht, gute Taten zu tun, all jenen zu helfen, die Hilfe brauchen. Pah! In alle Ewigkeit verfluche ich Trias! Die Pocken wünsche ich seiner gesegneten Hilfe an den Hals ! Mögen alle Dunghaufen von Maladomini ihm auf den Kopf regnen!" Er flucht noch eine Weile weiter und wendet dann seine Aufmerksamkeit wieder dir zu. Mit zusammengepreßten Zähnen sagt er: "Mein Vertrag mit dem Deva verpflichtet mich dazu, dich zu fragen, was ich für dich tun kann. Bist du gekommen, um mich zu foltern? Mich zu töten?"~ */
  IF ~~ THEN REPLY #55590 /* ~"Ich suche nur nach Wissen."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"Ich bin nicht hier, um dich zu quälen."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"Ich bin nicht hier, um dich zu töten."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"Nein. Eigentlich wollte ich gerade gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"Oh, WUNDERBAR."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"Erzähl mir was über dich."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"Pah! Wir werden sehen, wir werden sehen! Wenn du nicht vorhast, mich umzubringen oder mich zu foltern, dann fürchte ich, daß die Folter einer subtileren Natur sein wird... bei weitem die schlimmste vieler Qualen."~ */
  IF ~~ THEN REPLY #55615 /* ~"Ich möchte lediglich Antworten auf ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"In Ordnung. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"Pah! Wenn du das nur tätest! Dann würdest du dieser Hülle einer Existenz ein Ende setzen!"~ */
  IF ~~ THEN REPLY #55622 /* ~"Ich möchte lediglich Antworten auf ein paar Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"Was macht dieses Dasein so schlecht?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"Wie können SCHWACHKÖPFE so viel sprechen?" Er winkt mit der Hand. "Sprich. Sprich. Pah!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"Erzähl mir was über dich."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"Pah. Sprich. Sag schön, was du willst."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"Erzähl mir was über dich."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"Was ist mit deinen Flügeln passiert?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"Wo ist dieser Ort?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"Man hat mir gesagt, du wüßtest etwas über meine Sterblichkeit. Sie wurde mir gestohlen."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"Was machst du da?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"Ich brauche Hilfe."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"Erzähl mir noch mal von der Säule, und wie man hinkommt."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~Er rollt die Augen. "Hättest du die Wunder Baators gesehen, wärst du durch seine verdunkelten Paläste gewandelt und hättest du die schreienden Stahlstädte gesehen, die hinter den widerlichen Rauchschwaden lagen, würdest du nicht fragen. Pah!"~ */
  IF ~~ THEN REPLY #55672 /* ~"In Ordnung. Beantworte mir ein paar Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"Oh, ja. Sind sie nicht schön... ? Pah! Das war das erste, was mir vor meinem Exil weggenommen wurden. Bevor ich gezwungen war, die brennenden Hallen meines Volkes zu verlassen. wurden mir die Flügel von den niederen *Abishai* als Trophäe abgenommen, für Banner im Blutkrieg. Meine Hörner wurden mir vom Kopf gebrochen, und eines davon wurde ausgehöhlt als Trinkhorn für meinen Herren Bel, verflucht sei sein Name auf den Ebenen."~ */
  IF ~~ THEN REPLY #55677 /* ~"Warum ist das passiert?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"Was kannst du mir über den Blutkrieg sagen?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"Danke... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"Pah. Ein aufgesprengter Krater in den Außenländern, der die Leere und Sinnlosigkeit meines Lebens reflektiert. Pah. Ich brauche wenig. Das Mark der Kreatur versorgt mich mit Nahrung und die besonderen Energien des Ortes sorgen dafür, daß mich irgendwelche Idioten nicht finden... Obwohl einige Trottel offensichtlich immer noch den Weg finden."~ */
  IF ~~ THEN REPLY #55684 /* ~"Was ist das für ein Wesen?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"Was macht dein Leben so leer?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~Er betrachtet dich zum ersten Mal genau. "Erinnerungen ziehen sich wie dunkle Schluchten durch meinen Geist - fast menschlich. Viele Kreaturen habe ich in der Zeit eines Unsterblichen getroffen... Aber ich glaube nicht, daß du dabei warst."~ */
  IF ~~ THEN REPLY #55695 /* ~"Erzähl weiter."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"Ich habe einfach vor mich hingelebt, in schmerzlicher und tragischer Einsamkeit, bis du ohne Einladung in diesem Krater meines Lebens aufgetaucht bist. Der Krater, eine Metapher für mein Leben, für mein Dasein, ein blasser Schatten der Anwesen, die ich einst besaß."~ */
  IF ~~ THEN REPLY #55701 /* ~"Was ist denn passiert?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"Oh, gut. Selbstvergessene Tiraden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~Er gibt ein ersticktes Krächzen von sich. "Ich habe einige wenige... sehr wenige... Dinge, die ich über die Jahre angesammelt habe. Sie sind mir... teuer... aber wenn du sie brauchst..."~ */
  IF ~~ THEN REPLY #55705 /* ~"Na klar. Sehen wir mal, was wir da haben."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"Nichts. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"Was möchtest du wissen? Wie du dort hingelangst? Was es ist? Was? Was?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"Sag mir, was es ist."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"Sag mir, wie ich hinkomme."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"Und wie komme ich zurück, wenn ich erst mal weg bin?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"Wie komme ich von der Säule zurück?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"Pah! Ich habe alles gesagt, was ich in der Angelegenheit des Verräters zu sagen habe. Er war es, der mich zu diesem Leben verdammt hat, und es sind seine Gedärme, die die Tore der Morgenröte bespannen werden wie eine himmlische Harfe... nein... nein... nichts gegen den Deva. Verflucht!"~ */
  IF ~~ THEN REPLY #55724 /* ~"Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"Verstehe... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"Einst war ich einer der besten Advokaten Infernus in Baator... Doch dann erlitt ich einen Rückschlag. Eine Umkehrung meines Schicksals. Das ließ mich das Schicksal und das Chaos des Multiversums um so mehr hassen."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"Was ist denn passiert?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"Was ist denn passiert?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"Warum mußtest du gehen?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Schlangenzunge zuckt die Schultern. "Für mich seht ihr alle gleich aus - aber ich glaube, an deinen vernarbten Körper hätte ich mich erinnert. Er sieht fast so aus wie die atmenden Gemälde, die Bels Galerie der Häute in Baator zieren, nur mit weniger Anmut und mehr Ausdruck in den Narben."~ */
  IF ~~ THEN REPLY #55747 /* ~"Ignorieren wir doch einfach die Narben und reden wir über meine Sterblichkeit, okay?"~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"Erzähl weiter..."~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"Die Gewalt ist groß, beinahe auf einem akzeptablen Maß, aber die Narben sind mit fast tanar-rischer Roheit geschlagen worden, ohne die Bemühung, die Schmerzen des Opfers so groß wie möglich zu gestalten. Ein Baatezu-Künstler hätte viel mehr Hingabe dabei bewiesen, dem Pfad der Schmerzen über den Körper zu folgen. Manche dieser Narben sehen aus, als hätte die Wunde sofort zum Tod geführt, andere sehen aus, als hätte ein blinder Metzger menschliche Steaks geschnitten.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"Was...?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"Pah. Menschliche Kunst macht mich manchmal krank. So eine Verschwendung des Potentials."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"Pah. Menschliche Kunst macht mich manchmal krank. So eine Verschwendung des Potentials."~ */
  IF ~~ THEN REPLY #55755 /* ~"Ignorieren wir doch einfach die Narben und reden wir über meine Sterblichkeit, okay?"~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"Pah! Zu sagen, die Tanar-Ri wären roh, beleidigt die Roheit. Jede niedrigere Rasse, die dem Chaos huldigt, sich in seinen Gezeiten hin- und herspülen und herunterziehenn läßt, und es dann 'böse' nennt, ist überhaupt keine Rasse. Es sind Tiere."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"Pah und zweimal pah! Die Tanar-Ri-Bestien wollen Gesetz und Ordnung vom Antlitz des Bösen verbannen! Unverzeihlich! Nicht zu dulden! Ich kann nicht -"~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"Pah! Das sagst du nur, weil du bist... was du bist." Er läßt seine Augenbrauen tanzen und macht eine abwertende Geste. "Zumindest darf ich noch zynisch sein."~ */
  IF ~~ THEN REPLY #55761 /* ~"Klasse. Reden wir endlich wieder über meine Sterblichkeit statt über meine Narben."~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"Ich hätte gerne noch ein paar andere Fragen beantwortet..."~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"Nun gut, nun gut." Er kratzt sich am Kopf. "Wenn ich mich recht entsinne - und oft tue ich das nicht, dank diesem verfluchten Deva! - habe ich schon einmal von einem Fall wie deinem gehört. Es macht dich unsterblich, nicht wahr?" ~ */
  IF ~~ THEN REPLY #55765 /* ~"Ja."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"Wenn dem so ist, dann ist der Tod an sich nicht mehr heilig. Pah. Zu meiner Zeit blieben die Sterblichen sterblich und wußten, wo sie hingehörten. Heutzutage hat jeder einschließlich seiner Mutter die Krankheit der ewigen Langeweile. Wir sollten eine Tagung abhalten, alle auf den Ebenen einladen und ihnen Unsterblichkeitsverträge anbieten. Dann bliebe uns hart arbeitenden Baatezu sehr viel Mühe erspart. Pah."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"Dir ist klar, daß, wenn jeder unsterblich wäre, dieses ganze Sucher-System den berühmten Bach runterginge. Pah. Unsterblichkeit ist kein Spielzeug, das man wilden Kindern wie dir geben sollte."~ */
  IF ~~ THEN REPLY #55768 /* ~"Das mag wohl sein, aber sag mir lieber, was du über meine Sterblichkeit weißt."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"Pah... Wie ich schon sagte, erinnere ich mich, von einem Ort gehört zu haben, der Festung der Reue genannt wird. Er überlegt einen Moment. "Ja... ja, so hieß er."~ */
  IF ~~ THEN REPLY #55770 /* ~"Wie komme ich da hin?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"Was weißt du über den Ort?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~Er grinst breit. "Ich freue mich dir mitteilen zu können, daß ich es NICHT weiß. Überhaupt nicht! Ich kann dir nicht dabei behilflich sein, dort hinzugelangen, und das kühlt mein Herz auf so wohltuende Weise. Nein. Ich. Kann. Dir. Nicht. Helfen. Oh, wie sehr ich mich danach gesehnt habe, diese süßen Worte zu sagen. Wie süß sie schme-"~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"Weißt du jemand, der mir weiterhelfen kann?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"Weißt du jemand, der mir weiterhelfen kann?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"Häh? Schluß mit diesem Kreuzverhör! Ja, ja, ich kenne *jemanden*, der es wissen könnte... In Baator befindet sich eine Säule von Verrätern, Lügnern... und Weisen. Trotz ihres Wesens verfügen sie über ein beachtliches Wissen. Sie könnten wissen, wo du diese Festung der Reue findest." ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"Wie komme ich nach Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Schlangenzunge hat mir erzählt, daß ein Pfeiler aus Weisen, Lügnern und Verrätern vielleicht die Antworten auf meine Fragen über meine fehlende Sterblichkeit hat. Unter dem linken Arm eines riesigen Skeletts hier gibt es ein Portal, durch das ich nach Baator reisen kann.
~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"Wie komme ich nach Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"Außerhalb meines Heims gibt es ein Portal. Es liegt in der Hand dieser riesigen Kreatur. Geh durch den Bogen, den der linke Arm der Kreatur formt und du wirst zur Schädelsäule gelangen. Das Portal ist jetzt für dich bereit."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"Und wie komme ich zurück?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Das Scheusal hat mir auch erzählt, wie man vom Pfeiler aus zurückkommt - Ich muß nur etwas finden, was etwas mit der Umgebung der Ebene gemein hat, und das sollte mich dann hierher zurückbringen.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"Wie komme ich von der Säule zurück?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Das Scheusal hat mir auch erzählt, wie man vom Pfeiler aus zurückkommt - Ich muß nur etwas finden, was etwas mit der Umgebung der Ebene gemein hat, und das sollte mich dann hierher zurückbringen.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"Wie komme ich von der Säule zurück?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"Danke. Ich hätte noch mehr Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"Häh? Zurückkommen? Tja, daran hatte ich nicht gedacht. Um von Baator aus zurückzukommen, können dich wahrscheinlich die Portale um die Säule in die Außenländer zurückbringen. Die Säule selbst kennt vielleicht ein Portal, mit dem du wieder hierher gelangst, aber du hast keinen Grund, hierher zurückzukommen. Und von meiner Seite aus besteht auch kein Bedarf dafür. Der Schlüssel zu dem Portal wird etwas sein, das in Avernus häufig vorkommt. Sieh dich um, und du wirst es finden, so wie Kakerlaken Krümel finden."~ */
  IF ~~ THEN REPLY #55783 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~Er knurrt. "Ich denke nicht daran, euch zu erwürgen und eure Leichen den Trelonen vorzuwerfen." ~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"Pah... Das ist das Geschenk des Hasses, eine gute Waffe für einen wie dich!" Er kichert vor sich hin. "Ich glaube nicht, daß du sie willst... Es liegt ein Fluch darauf. Vielleicht überlegst du dir's noch mal..."~ */
  IF ~~ THEN REPLY #55796 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"Das alte Ding? Pah! Das ist der Gordische Knoten. Schneide ihn durch, und du wirst doppelt so mächtig, wie du schon bist, häh häh. Und natürlich hat er seinen eigenen Preis, einer, den ich glücklicherweise nicht aufhalten kann."~ */
  IF ~~ THEN REPLY #55806 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~Er seufzt. "Das ist eine Natternträne. Wenn man sie in den Mund nimmt, kann man küssen wie eine Natter, voller Gift und Haß."~ */
  IF ~~ THEN REPLY #55816 /* ~"Das nehm ich."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"Ein Erinnerungsstück an meine Zeit in Baator - ein Messer aus Baatorianischem Grünstahl, eines der stärksten Materialien, die ich kenne. Pah! Nimm meine Geschichte und verschwinde!"~ */
  IF ~~ THEN REPLY #55826 /* ~"Ich nehme es. Ich weiß aber nicht, ob das schon alles war."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"Das alte Ding? Pah! Das ist nur ein Dolch aus Baatorianischem Grünstahl. Hat eine Klinge. Damit kannst du bestimmt nichts anfangen."~ */
  IF ~~ THEN REPLY #55852 /* ~"Ich nehme es trotzdem."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"Das? Das sind *Kassegs*, Parasiten, die sich im Gehirn einnisten und deine geistige Energie verschlingen, ohne etwas zu nützen! Verfluchte Abmachung! Sie steigern deine geistige Energie, das würde dir bestimmt guttun! nimm sie! Nimm sie!"~ */
  IF ~~ THEN REPLY #55874 /* ~"Das werde ich."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"Pah! Natürlich! Brauchst du sonst noch etwas von deinem *untertänigen* Diener?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Betrachte die grausam wirkende Axt: "Was ist das?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Betrachte das verknotete Seil: "Was ist das?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Betrachte die grüne Raute: "Was ist das?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Betrachte das Messer aus grünem Stahl: "Was ist das?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Betrachte den Dolch mit der grünen Färbung: "Was ist das?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Betrachte das wuselnde Ungeziefer: "Was ist das?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"Hast du vielleicht zufällig ein paar Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"Pah! Du wirst mir noch meinen ganzen Besitz wegnehmen! Du willst Zaubersprüche? Pah! Das kannst du haben, du Blutsauger!" Er rattert eine Liste mit Zaubersprüchen herunter.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"Wie wär's mit einem netten Zauber "Fluch brechen"?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"Wie wär's mit einem netten Zauber "Fluch brechen"?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"Kugel der Unverwundbarkeit - klingt nützlich. Die nehm' ich."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"Kugel der Unverwundbarkeit - klingt nützlich. Die nehm' ich."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"Was ist mit diesem Kugelblitzsturm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"Was ist mit diesem Kugelblitzsturm?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"Säuresturm klingt gefährlich. Gib ihn mir."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"Säuresturm. Gib ihn mir."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"Klingensturm? Beeindruckender Name. Den hätte ich gern."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"Gib mir noch einen Klingensturm."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"Stygischer Eissturm? Das klingt zu gefährlich, als daß es hier herumliegen sollte... Ich nehme ihn besser in Verwahrung."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"Stygischer Eissturm? Den hätte ich gerne."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"Das war eine leere Liste, die du gerade heruntergerasselt hast."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~Seine Hand verschwindet, als er in einen seltsamen Raum/Nicht-Raum greift. Er zieht eine Schriftrolle hervor, die sich wie menschliche Haut anfühlt, und wirft sie dir zu. "Pah! Nimm das und sei verfl... Nimm das!"~ */
  IF ~~ THEN REPLY #55955 /* ~"Danke... Was hast du sonst noch für Zaubersprüche?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~Er zieht eine zähnefletschende Grimasse. "Ich verspüre die tiefste Freude dir mitzuteilen, daß du meine gesamten Vorräte dieses Zauberspruches geplündert hast. Pah!"~ */
  IF ~~ THEN REPLY #55960 /* ~"Was für Zaubersprüche hast du sonst noch?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"Vergiß es. Ich habe ein paar Fragen."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Schlangenzunge knurrt dich an: "Du hast eine der einzigartigsten Zauberspruch-Bibliotheken des Multiversums ruiniert, zerstört, ausradiert - hoffentlich nützt es dir. Jetzt kann ich dir keine Zaubersprüche mehr geben."~ */
  IF ~~ THEN REPLY #55965 /* ~"Wollen wir uns diese Dinge noch mal ansehen."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"Dann vergiß es. Beantworte mir lieber in paar Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"Pah! Hast du deinen Schädel gegen jeden Stein geschlagen, der vom Berg der Ignoranz gefallen ist? In den Unteren Ebenen herrscht der Blutkrieg. Es gibt keine Ebene, die von diesem Konflikt unberührt bleibt. Stell dir den schrecklichsten Krieg vor, denn du dir vorstellen kannst, multipliziere sein Ausmaß und seine Dauer eine Milliarde Mal, und du hast einen Bruchteil des Schlachtfeldes, das in den Unteren Ebenen herrscht. Es ist ein ideologischer Krieg um die Definition eines der grundlegendsten Konzepte des Multiversums." ~ */
  IF ~~ THEN REPLY #55970 /* ~"Erzähl weiter."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"Vergiß es. Ich wollte noch ein paar Fragen stellen."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"Das ist das Skelett von Ul-Goris, dem Vater der Goristro. Sie sind lebende, bärenartige Belagerungstürme, Moloche des Chaos, riesig, praktisch unaufhaltsam, und besonders resistent gegen Magie... Und Ul-Goris' Knochen, in dem Krater, wo er seinen Tod fand, strahlen so viel Energie aus, die es der Magie unmöglich macht, mich auszuspionieren, und die dieses bemitleidenswerte Knochengestell noch für ein paar verzweifelte Jahre am Leben hält. Pah!"~ */
  IF ~~ THEN REPLY #55978 /* ~"Verstanden. Ich habe noch ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"Wärest du durch die brennenden Straßen von Dis gegangen und hättest den süßen Geruch von verbrennendem Fleisch gerochen, tief die giftigen Dämpfe des Stygischen Treibeises eingeatmet und Armeen durch die nacht-beleuchteten Paläste geführt... dann würdest du diese Frage nicht stellen, Fast-Mensch."~ */
  IF ~~ THEN REPLY #55983 /* ~"Was ist dir zugestoßen?"~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"Dieser verfluchte Deva ist, was mir zugestoßen ist! So sicher war ich, so zuversichtlich... Pah! Er hat mir meine Macht wie einem Grünschnabel weggenommen. Kein Wunder, daß die Horden der Heerführer Baators mich suchen."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"Erzähl mir von Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"Erzähl mir von Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"Pah! Habe ich dir nicht bereits ausführlich von diesem verfluchten Vertrag erzählt!? Ich kann dir diese Information NICHT verschweigen. Die Säule... ist deine einzige Hoffnung."~ */
  IF ~~ THEN REPLY #55997 /* ~"Morte, warum willst du da nicht hingehen?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"Gut. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"Pah... was sie ist... Sie ist eine massive Säule aus Schädeln, den Geistern der Toten, die dorthin gelangt sind, weil sie Lügen erzählt haben, die andere in den Tod geführt haben. Sie ist eine Ansammlung von Weisen und Betrügern, alle auf einem Haufen, und sie besitzt wohl das größte Wissen auf den gesamten Ebenen."~ */
  IF ~~ THEN REPLY #56003 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"Pah! Ich werde deine Unwissenheit bezüglich dieser Angelegenheit ausräumen. Wisse, daß es keinen Ort für einen Baatezu gibt, der in den Ketten der Wohltätigkeit gefangen ist, an dem ich zu sein WÜNSCHE. Hier habe ich zumindest meine Ruhe vor der Grausamkeit des Vertrags, der mir auferlegt ist. Dieser Deva hat die Seele eines Scheusal, das sag ich dir."~ */
  IF ~~ THEN REPLY #56007 /* ~"Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"Es gibt der Forschung einen Anstoß. Durch den Blutkrieg sind viele schreckliche Erfindungen entstanden. Warum? Weil er Schmerz bedeutet und Tod und Böses. Die Tanar-Ri kämpfen für Chaos und das Böse... das Böse durch brutale Gewalt und plötzliche Launen und Haß. Ihr 'Böses' ist das Böse einer Horde, eine Mob-Mentalität von tosendem Bösen. Sie töten und plündern."~ */
  IF ~~ THEN REPLY #56010 /* ~"Und die anderen?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"Die Baatezu wünschen nur streng reglementiertes Böses, sie treten für das Böse in einer präzisen, geordneten Weise ein. Die Tanar-Ri morden. Die Baatezu beuten aus. Die zwei sind dazu bestimmt, sich gegenseitig auszurotten."~ */
  IF ~~ THEN REPLY #56014 /* ~"Erzähl weiter."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"Das ist alles, was ich wissen muß. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"Teil meiner Aufgabe - und ich war der Beste - war es, neue Rekruten zu verpflichten, meistens Ebenenkrieger und Magiere aus anderen Welten. Sie wurden im Krieg meist als Kanonenfutter und Fronttruppen eingesetzt. Man sagt, daß Lord Bel selbst auf mich aufmerksam wurde. Sogar er hat meinen Wert erkannt! Pah! Jetzt ist meine Demütigung vollkommen."~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"Erkennst du mich?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"Erkennst du mich?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"In Ordnung. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"Ja, das ist es. Leb wohl."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"Ja, das ist es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"Haben wir das nicht schon einmal erörtert? Pah! Dumme Menschen!"~ */
  IF ~~ THEN REPLY #56024 /* ~"Dann beantworte mir noch ein paar Fragen."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"Danke. Leb wohl."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~Du siehst ein Scheusal mit gebrochenen Flügeln, mit einem zerrupften Flügel, von Narben bedeckt. Seine Stimme kommt gepreßt, zornig und verzweifelt hinter zusammengebissenen Zähnen hervor. "Ein Tanar-Ri in meinem Haus? Bei allen Demütigungen! Warum holst du nicht gleich deine ganze abstoßende Sippe herein?!"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~Du siehst ein Scheusal mit gebrochenen Flügeln, mit einem zerrupften Flügel, von Narben bedeckt. Seine Stimme kommt gepreßt, zornig und verzweifelt hinter zusammengebissenen Zähnen hervor. "Ein Tanar-Ri in meinem Haus? Bei allen Demütigungen! Warum holst du nicht gleich deine ganze abstoßende Sippe herein?!"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"Ich muß mich wohl BEGRABEN, um meine Ruhe zu haben."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"Großartig. Ein noch kräftigerer Gestank!"~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"Pfui! Verfluchter! Nach all meinen Warnungen und Schwüren bringst du immer noch Baators Legionen zu meinem Haus! Versprechensbrecher! Verräter! I.ch... hmmm... So fühlt sich das also an..."~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"Was machst du hier?" Das Scheusal dreht sich um und spuckt auf den Boden.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"WAS? Ich muß deine Anwesenheit noch länger ertragen? Wird diese Qual denn niemals enden? Pah! Gut, also gut! Mach dich hier breit! Plündere meine Speisekammer! Ruiniere meine Experimente! Ich bin gleich hier drüben und lasse Dampf ab! Pah!" Er eilt davon.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"Danke."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"Danke..."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"Danke..."~ */ EXIT
END
