// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~Dieser unter einer Kapuze verborgene Mann steht gebeugt neben dem Tor der Leichenhalle. Auf sein Gesicht fällt der Schatten der Kapuze... du kannst nur sein stoppeliges Kinn sehen, das anscheinend von einem schimmelgrünen und roten Ausschlag bedeckt ist. Der Ausschlag scheint an seinem Hals am schlimmsten zu sein und zu seinem Kinn hin nachzulassen.~ */
  IF ~~ THEN REPLY #8005 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~Laß den Typen in Ruhe.
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~Die Gestalt rührt sich nicht... einen Moment lang herrscht Stille, dann antwortet er mit einer hohen Stimme, die eher zu einem zehnjährigen Mädchen paßt als zu einem Mann: "Hai?"~ */
  IF ~~ THEN REPLY #8038 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"Hai?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"Wie bist du denn zu deinem Namen gekommen, Pocke?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"Was machst du?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"Ich habe ein Journal verloren... du hast es nicht zufällig gesehen, oder?"~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"Kannst du mich in die Leichenhalle reinschmuggeln?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"Wenn ich mich als Totenbüchler verstellen würde, könntest du mich dann reinschmuggeln?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"Ich bin Pocke, hai."~ */
  IF ~~ THEN REPLY #8048 /* ~"Ähh... Pocke?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"Was machst du?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"Ich habe ein Journal verloren... du hast es nicht zufällig gesehen, oder?"~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"Warte auf die Toten, hai."~ */
  IF ~~ THEN REPLY #8053 /* ~"'Totenbüchler'? Leichen? Warum?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"Such mir 'nen Toten, bring ihn durch das Tor, krieg etwas Klimper und dann warte ich wieder, hai."~ */
  IF ~~ THEN REPLY #8056 /* ~"Durch das Tor? Warum?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"Ein Toter ist für Staubmensch das, was Kupfer für Sammler ist. Wer ihnen Tote bringt, dem Kupfer in den Taschen klingt, hai."~ */
  IF ~~ THEN REPLY #8060 /* ~"Und warum zahlen die Staubmenschen für Tote?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"Sammler? Was ist das denn?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"Straßen sauber, Tote an ihrem Platz, Straßen stinken nicht, Tote sind da, wo sie hingehören, hinter dem Tor, alle glücklich, hai."~ */
  IF ~~ THEN REPLY #8065 /* ~"Und was machen die Staubmenschen dann mit den gekauften Totenbüchlern?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"Schleppen Tote durch das Tor, legen sie auf Bänke, schneiden sie auf, begraben sie oder bringen sie zum Laufen, hai."~ */
  IF ~~ THEN REPLY #8069 /* ~"Bringen sie zum Laufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"Hai, sie bringen manche wieder auf die Beine, wenn die Toten es den Staubmenschen erlauben, und dann werden sie zu Skeletten oder Zombies."~ */
  IF ~~ THEN REPLY #8073 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"Mutter und Vater haben mir Namen gegeben, haben dem Erstgeborenen die Pocken gewünscht - ein Fluch, ging in Erfüllung, hai." Wieder starrst du wie gebannt auf den grün-roten Ausschlag, der Pockes Kinn und Hals bedeckt.~ */
  IF ~~ THEN REPLY #8076 /* ~"Oh... Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"Das ist schon alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~Du siehst, wie Pocke am Tor der Leichenhalle kauert. Er... sie.... scheint sich nicht mehr bewegt zu haben, seit du das letzte Mal geredet hast.~ */
  IF ~~ THEN REPLY #8078 /* ~"Pocke, ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~Laß Pocke in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"Laß Pocke mal sehen, wie du Toten spielst. Wenn du gut spielst, kriegt Pocke dich rein, hai."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~Stell dich tot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~Stell dich tot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~Stell dich tot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~Stell dich tot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~Stell dich tot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"Nicht jetzt. Erst hätte ich da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"Macht nichts, vielleicht ein andermal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~Pocke sieht sich deine Vorstellung schweigend an. Als du wieder aufstehst, sagt er: "Staubmenschen glauben nicht, daß du tot. Prüfen immer, ob Toter wirklich tot. Wenn Toter noch atmet, nehmen sie ihn nicht. Karten schlecht, hai."~ */
  IF ~~ THEN REPLY #8087 /* ~"Und wenn ich wirklich tot wäre? Könntest du mich dann ausnehmen und meine Leiche verkaufen?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"Das ist wirklich ein Problem. Hör mal, ich hätte noch ein paar  Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~Pocke sieht sich deine Vorstellung schweigend an. Als du wieder aufsteht, sagt er: "Hai, Pocke wird dich verkaufen. Willst du jetzt verkauft werden?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"Ja."
~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"Ja."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"Nein, noch nicht. Erst hätte ich da noch ein paar  Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"Vielleicht ein andermal, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~Die Frage scheint Pocke nicht aus der Fassung zu bringen. "Hai, mach ich, so wie letztes Mal, hai?"~ */
  IF ~~ THEN REPLY #8096 /* ~"Ja."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"Ähh... 'letzte Mal'?"
~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"Hai. Hast oft gefragt, Pocke macht immer."~ */
  IF ~~ THEN REPLY #8100 /* ~"Äh... wie oft denn genau?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"Oft, hai."~ */
  IF ~~ THEN REPLY #8103 /* ~"Also... wir sind uns schon begegnet?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"Hai."~ */
  IF ~~ THEN REPLY #8106 /* ~"Was weißt du über mich?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"Du ein Toter, der nicht lange tot bleibt, hai. Du immer gutes Geschäft mit Pocke."~ */
  IF ~~ THEN REPLY #8109 /* ~"Was weißt du sonst noch über mich?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"Du ein Toter, der nicht lange tot bleibt, hai. Du immer gutes Geschäft mit Pocke."~ */
  IF ~~ THEN REPLY #8112 /* ~"Äh... weißt du sonst noch was?"~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"Dann töte mich. Ich muß unbedingt in die Leichenhalle gelangen."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"Äh, also gut. Wie wär's, wenn ich mich einfach tot stellen würde und du mich dann reinschmuggelst?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"Hmmm. Hör mal, ich hätte noch ein paar  Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."

~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~Pocke streckt seine Arme aus der Robe, und man sieht in jeder seiner mit Ausschlag übersäten Hände einen verrosteten Dolch. Blitzschnell schneiden die Klingen zweimal deine Kehle durch und dir wird schwarz vor Augen...~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~Laß dich in die Dunkelheit fallen...~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"Hai, Sammler. Sammeln Tote, bringen sie zu Staubmenschen am Tor für Klimper."~ */
  IF ~~ THEN REPLY #8119 /* ~"Was wollen die Staubmenschen mit den toten Leuten... diesen Totenbüchlern?"~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"Ist das Haupttor der einzige Eingang zur Leichenhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"Hai, hab' kein Juur-nal gesehen. Im Stock geh'n viele Dinge verloren und werden nie wieder gefunden; vielleicht Juur-nal so ein Ding, hai."~ */
  IF ~~ THEN REPLY #8123 /* ~"Ich verstehe. Hör mal, ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"Hai, Pharod. Ein Sammler, groß im Geschäft, wichtiger Name, wirft langen Schatten, hai."
~ */
  IF ~~ THEN REPLY #8125 /* ~"Sammler?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"Weißt du, wo ich ihn vielleicht finden könnte?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"Hai, Sammler. Sammeln Tote, bringen Tote zu Staubmenschen für Klimper."~ */
  IF ~~ THEN REPLY #8129 /* ~"Weißt du, wo ich ihn vielleicht finden könnte?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"Hai, hier im Stock ist er. Irgendwo, hai."~ */
  IF ~~ THEN REPLY #8132 /* ~"Kannst du mir nichts Genaueres sagen?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"Dann werde ich einfach versuchen, ihn aufzuspüren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"Hai, ist irgendwo im Stock. Pharod versteckt. Sehr schwer zu finden. Er ist nicht wert finden."~ */
  IF ~~ THEN REPLY #8135 /* ~"Lohnt sich nicht, ihn zu suchen? Was soll das heißen?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"Ich werde ihn auch alleine finden, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"Hai, viele ihn hassen, auch andere Sammler. Grabteiler ihn hassen, Pharod gar nicht mögen hai."~ */
  IF ~~ THEN REPLY #8138 /* ~"Grabteiler?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"Hai, Grabteiler großer Name. Wichtig, wirft langen Schatten. Sagt Pocke was tun soll."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"Weiß dein Boss... dieser Grabteiler... vielleicht, wo Pharod ist?"~ */ JOURNAL #66542 /* ~Ich habe einen kranken Sammler namens "Pocke" vor dem Tor zur Leichenhalle getroffen. Pocke kannte Pharod, wußte aber nicht, wo er zu finden ist... Er hat mir gesagt, ich solle einen Mann namens "Grabteiler" auf dem Lumpensammler-Platz suchen, einem Stadtblock westlich von der Leichenhalle. Er sagt, daß Grabteiler Pharod haßt und weiß, wo Pharod gefunden werden kann.~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"Weiß dein Boss... dieser Grabteiler... vielleicht, wo Pharod ist?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~Ich habe einen kranken Sammler namens "Pocke" vor dem Tor zur Leichenhalle getroffen. Pocke kannte Pharod, wußte aber nicht, wo er zu finden ist... Er hat mir gesagt, ich solle einen Mann namens "Grabteiler" auf dem Lumpensammler-Platz suchen, einem Stadtblock westlich von der Leichenhalle. Er sagt, daß Grabteiler Pharod haßt und weiß, wo Pharod gefunden werden kann.~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"Hmmm. Ich hätte noch ein paar  Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"Das ist alles, was ich wissen wollte, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"Hai, Grabteiler kennt viele Dunkel. Weiß, wo Pharod versteckt. Grabteiler ist auf Lumpensammler-Platz, viele Blocks west-von-hier, hai. Sag Grabteiler, daß Pocke dich schickt, sag Grabteiler, er wird Kupferteiler-mit-Pocke, hai."~ */
  IF ~~ THEN REPLY #8145 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"Lumpensammler-Platz? Westlich von hier? Gut, dann werde ich mich dort mal nach diesem Grabteiler umsehen."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"Hai, nur Tote oder Staubmenschen durch Tor gehen. Willst du, daß Pocke dich wieder tot macht?"~ */
  IF ~~ THEN REPLY #8147 /* ~"Ähh... wieder?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"Ja, mach aus mir einen Totenbüchler. Ich muß unbedingt in die Leichenhalle gelangen."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"Und wenn ich mich statt dessen einfach tot stellen würde? Könntest du mich dann reinschmuggeln?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"Nein, nein... Ich hätte noch ein paar  Fragen..."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"Vielleicht ein andermal, danke. Leb wohl."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
