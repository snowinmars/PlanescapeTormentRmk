// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~DU BIST ALSO GEKOMMEN.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~DU BIST HIER NICHT WILLKOMMEN, GEBROCHENER. ~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"Was hast du meinen Freunden angetan?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"Was hast du meinen Freunden angetan?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"Was hast du meinen Kameraden angetan?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"Was hast du meinen Kameraden angetan?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"Ich kenne dich als das, was du bist - du bist meine Sterblichkeit. Deine Rüstung - sie ist verdreht wie die Äste von Bäumen. Diese Dinge lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"Ich kenne dich als das, was du bist - du bist meine Sterblichkeit. Deine Rüstung - sie ist verdreht wie die Äste von Bäumen. Diese Dinge lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"Wer bist du?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~SIE STARBEN FÜR DICH, WIE SIE ES IMMER GETAN HABEN. DAS IST DIE ART ALLER STERBLICHER DINGE.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~ER STARB FÜR DICH, WIE ER ES IMMER GETAN HAT. DAS IST DIE ART ALLER STERBLICHER DINGE.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~SIE STARB FÜR DICH, WIE SIE ES IMMER GETAN HAT. DAS IST DIE ART ALLER STERBLICHER DINGE.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~ES IST DAS SCHICKSAL ALLER, DIE DIR FOLGEN, GEBROCHENER. DU HAST VIEL VERGESSEN.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"Warum hast du das getan?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"Warum hast du das getan?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"Warum hast du das getan?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"Warum hast du das getan?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~SIE HABEN VERSUCHT, MIR ZU SCHADEN. AUSGERECHNET *HIER*. ICH HABE MICH VERTEIDIGT. DADURCH HAT DIE STERBLICHKEIT SIE GEFORDERT. IHR TOD KAM DURCH IHRE EIGENE HAND. ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~ER HAT VERSUCHT, MIR ZU SCHADEN. AUSGERECHNET *HIER*. ICH HABE MICH VERTEIDIGT. DADURCH HAT DIE STERBLICHKEIT IHN GEFORDERT. SEIN TOD KAM DURCH SEINE EIGENE HAND. ~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~SIE HAT VERSUCHT, MIR ZU SCHADEN. AUSGERECHNET *HIER*. ICH HABE MICH VERTEIDIGT. DADURCH HAT DIE STERBLICHKEIT SIE GEFORDERT. IHR TOD KAM DURCH IHRE EIGENE HAND. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~SIE HAT VERSUCHT, MIR ZU SCHADEN. AUSGERECHNET *HIER*. ICH HABE MICH VERTEIDIGT. DADURCH HAT DIE STERBLICHKEIT SIE GEFORDERT. IHR TOD KAM DURCH IHRE EIGENE HAND. ~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~ICH HABE IHNEN DIE MÖGLICHKEIT GEGEBEN, DIESEN ORT ZU VERLASSEN, ABER SIE WOLLTEN DIR UNBEDINGT HELFEN, UNGEACHTET DER KOSTEN, DIE ES IHNEN VERURSACHEN WÜRDE.~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"Du hast sie also umgebracht."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"Du hast sie also umgebracht."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"Du hast sie also umgebracht."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"Du hast sie also umgebracht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~ICH HABE IHM DIE MÖGLICHKEIT GEGEBEN, DIESEN ORT ZU VERLASSEN, ABER ER WOLLTE DIR UNBEDINGT HELFEN, UNGEACHTET DER KOSTEN, DIE ES IHM VERURSACHEN WÜRDE.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~ICH HABE IHR DIE MÖGLICHKEIT GEGEBEN, DIESEN ORT ZU VERLASSEN, ABER SIE WOLLTE DIR UNBEDINGT HELFEN, UNGEACHTET DER KOSTEN, DIE ES IHR VERURSACHEN WÜRDE.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~ICH HABE IHR DIE MÖGLICHKEIT GEGEBEN, DIESEN ORT ZU VERLASSEN, ABER SIE WOLLTE DIR UNBEDINGT HELFEN, UNGEACHTET DER KOSTEN, DIE ES IHR VERURSACHEN WÜRDE.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~SIE HAT DICH BESONDERS HEFTIG VERTEIDIGT. IHRE GEFÜHLE FÜR DICH BRANNTEN HELLER ALS DIE FEUER DES ELYSIUM. ~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~SIE WAR ZIEMLICH STARK. IHRE WIDERSTANDSFÄHIGKEIT GEGEN SCHMERZEN HÄTTE DREI GRÖSSERE DÄMONEN UMGEBRACHT.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~ICH HATTE KEIN VERGNÜGEN AN IHREM TOD.~ */
  IF ~~ THEN REPLY #64051 /* ~"Warum hast du es dann getan?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~DAS SCHEUSALS-MÄDCHEN HAT DICH BESONDERS HEFTIG VERTEIDIGT. IHRE GEFÜHLE FÜR DICH BRANNTEN HELLER ALS DIE FEUER DES ELYSIUM. ~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~DAS SCHEUSALS-MÄDCHEN HAT DICH BESONDERS HEFTIG VERTEIDIGT. IHRE GEFÜHLE FÜR DICH BRANNTEN HELLER ALS DIE FEUER DES ELYSIUM. ~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~UND DIE TANAR-RI... SIE WAR ZIEMLICH STARK. IHRE SCHMERZUNEMPFINDLICHKEIT HÄTTE SELBST DIE BAATEZU BESCHÄMT.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~DIE TANAR-RI WAR ZIEMLICH STARK. IHRE SCHMERZUNEMPFINDLICHKEIT HÄTTE SELBST DIE BAATEZU BESCHÄMT.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~ICH HATTE KEIN VERGNÜGEN AN SEINEM TOD.~ */
  IF ~~ THEN REPLY #64049 /* ~"Warum hast du es dann getan?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~ICH HATTE KEIN VERGNÜGEN AN IHREM TOD.~ */
  IF ~~ THEN REPLY #64050 /* ~"Warum hast du es dann getan?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~ES WAR MEIN WILLE. ICH WAR ES NICHT, DER SIE HIERHER GEBRACHT HAT.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~ES WAR MEIN WILLE. ICH WAR ES NICHT, DER IHN HIERHER GEBRACHT HAT.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~ES WAR MEIN WILLE. ICH WAR ES NICHT, DER SIE HIERHER GEBRACHT HAT.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~SIE ALLE HATTEN EINE WAHL. UND SIE HABEN SICH ENTSCHIEDEN, FÜR DICH ZU STERBEN.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~ER HATTE EINE WAHL. UND ER HAT SICH ENTSCHIEDEN, FÜR DICH ZU STERBEN.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~SIE HATTE EINE WAHL. UND SIE HAT SICH ENTSCHIEDEN, FÜR DICH ZU STERBEN.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~SO GING ES IMMER MIT ALLEN, DIE DIR FOLGEN. DENN SIE SIND GEPEINIGTE SEELEN, DIE NACH ERLÖSUNG SUCHEN. ABER SIE WISSEN NICHT, WARUM.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~DU HAST ES VERGESSEN. UND DU WIRST ES WIEDER VERGESSEN.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"Ich kenne dich als das, was du bist - du bist meine Sterblichkeit. Deine Rüstung - sie ist verdreht wie die Äste von Bäumen. Diese Dinge lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"Ich kenne dich als das, was du bist - du bist meine Sterblichkeit. Deine Rüstung - sie ist verdreht wie die Äste von Bäumen. Diese Dinge lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"Wer bist du?! Warum hast du das getan?!"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~IST ES MÖGLICH, DASS DU SO WEIT GEKOMMEN BIST UND NICHT WEISST, WAS AM ENDE LIEGT? ~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"Nein, ich weiß, was du bist. Du bist meine Sterblichkeit. Deine Rüstung - sie ist gedreht wie Äste von Bäumen. Diese Dingen lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"Nein, ich weiß, was du bist. Du bist meine Sterblichkeit. Deine Rüstung - sie ist gedreht wie Äste von Bäumen. Diese Dingen lassen auf Ravels Zauberei schließen."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"Was meinst du?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~ICH BIN DAS; DAS DAS GANZE LEBEN BEGLEITET. MEINE STIMME IST EINE TODESRASSEL, EIN LETZTER ATEMZUG IN DER KEHLE, DAS FLÜSTERN EINES STERBENDEN MANNES.~ */
  IF ~~ THEN REPLY #64065 /* ~"Du... bist meine Sterblichkeit."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~JA. ICH BIN DAS, WAS DURCH DIE KRAFT DER HEXE VON DIR ABGESPALTEN WURDE. BEFREIT AUS DEM GEFÄNGNIS DEINES KÖRPERS.~ */
  IF ~~ THEN REPLY #64066 /* ~"Von mir befreit?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~JA. ICH BIN DAS, WAS DURCH DIE KRAFT DER HEXE VON DIR ABGESPALTEN WURDE.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~ICH BIN DAS; DAS DAS GANZE LEBEN BEGLEITET. MEINE STIMME IST EINE TODESRASSEL, EIN LETZTER ATEMZUG IN DER KEHLE, DAS FLÜSTERN EINES STERBENDEN MANNES.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~ICH BIN AUS DEM GEFÄNGNIS DEINES KÖRPERS BEFREIT WORDEN.~ */
  IF ~~ THEN REPLY #64068 /* ~"Von mir befreit?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~IN DEM MOMENT, ALS ICH VON DEINER KREBSIGEN HÜLLE GETRENNT WURDE, ERKANNTE ICH DAS LEBEN. ICH ERKANNTE DIE FREIHEIT. ICH WERDE MICH DIR NICHT ERGEBEN.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"Wir sollten nicht getrennt werden. Und die Ebenen haben wegen unserer Trennung gelitten."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"Du hast dich für mich und meine vorherigen Inkarnationen als sehr lästig erwiesen, Geist. Wir sollten nicht getrennt werden."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~DU WEISST *NICHTS* VON BEDEUTUNG UND VON TRENNUNG. BEVOR DEINE ERINNERUNG WIEDER STIRBT, WISSE, DASS ES NIE GEPLANT WAR, DASS WIR *EINS* SIND.~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~DIES IST DAS LETZTE MAL, DASS DU UND ICH UNS UNTERHALTEN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #64074 /* ~"Dann möchte ich etwas von dir wissen, Geist - Ich bin weit gereist, und du kannst mir viele Fragen beantworten."~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"Ich werde mich dir nicht unterwerfen. Mach dich auf etwas gefaßt, Geist. Wir werden ja sehen, ob meine Sterblichkeit getötet werden kann." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~ICH WILL EIN LETZTES MAL GEDULDIG MIT DIR SEIN. DANACH WIRD IN DIESE FESTUNG WIEDER RUHE EINKEHREN.~ */
  IF ~~ THEN REPLY #65848 /* ~"Dann hätte ich folgende Fragen..."~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"Ich werde mich dir nicht unterwerfen. Mach dich auf etwas gefaßt, Geist. Wir werden ja sehen, ob meine Sterblichkeit getötet werden kann." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(Dies ist ein Platzhalter.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~GLAUBST DU, ICH *FÜRCHTE* MICH VOR DIR, GEBROCHENER? DAS TUE ICH NICHT.~ */
  IF ~~ THEN REPLY #65852 /* ~"Schickst du deshalb Schatten nach mir aus, um mich zu töten, anstatt es selbst zu versuchen? Es ist ihnen noch nie gelungen mich zu töten, und es *wird* ihnen nie gelingen."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"Ein Eisengolem, geschmiedet aus den Waffen des Kriegs, sagte mir einst: Wenn jemand aus sicherer Entfernung tötet und selbst nicht zum Vorschein tritt, ist dies ein Zeichen der Schwäche. So kämpft ein *Feigling*."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"Schickst du deshalb Schatten nach mir aus, anstatt dich mir selbst zu stellen? Es ist ihnen noch nie gelungen, mich zu töten... Doch ich vermute, dies ist auch nie ihr *Zweck* gewesen. Sie 'töten' mich nur, damit ich vergesse."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"Wenn du mich noch nicht fürchtest, dann kannst du noch etwas dazulernen. Aber es gibt jetzt andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~ICH SENDE SCHATTEN AUS, WEIL SIE GROSSE ENTFERNUNGEN ÜBERBRÜCKEN. DOCH GELEITET WERDEN SIE VON *MEINEN*AUGEN.~ */
  IF ~~ THEN REPLY #65857 /* ~"Die Schatten reichen also weiter als du selbst."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~ES GIBT *NICHTS*, WAS ICH NICHT KANN.~ */
  IF ~~ THEN REPLY #65860 /* ~"Und doch hast du nie diese Mauern verlassen, um gegen  mich zu kämpfen. Du hast nur Schatten ausgeschickt. Wie ein *Feigling*."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~ICH BRAUCHE MEINE ENERGIE, UM DIESEN ORT ZU VERTEIDIGEN, GEBROCHENER. SONST WÜRDE ICH DICH JEDES MAL MIT *MEINER* EIGENEN HAND ERWÜRGEN. ICH KANN DIE MAUERN DIESER FESTUNG NIE FÜR LÄNGERE ZEIT VERLASSEN.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"Ich glaube dir nicht. Entweder du hast *Angst*, dich mir zu stellen... Oder du lügst, und es gibt einen anderen Grund, weshalb du immer hier bleibst..."~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"Ich glaube dir nicht. Entweder du hast *Angst*, dich mir zu stellen... Oder du lügst, und es gibt einen anderen Grund, weshalb du immer hier bleibst..."~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"Ich glaube dir nicht. Entweder du hast *Angst*, dich mir zu stellen... Oder du lügst, und es gibt einen anderen Grund, weshalb du immer hier bleibst..."~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"Doch auch als ich innerhalb der Festungsmauern war, hast du nicht selbst versucht, mich aufzuhalten, sondern statt dessen Vhailor nach mir ausgesandt."~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"Doch auch als ich innerhalb der Festungsmauern war, hast du nicht selbst versucht, mich aufzuhalten, sondern statt diesen diesen hohlen Harnisch nach mir ausgesandt."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"Doch auch als ich innerhalb der Festungsmauern war, hast du nicht selbst versucht, mich aufzuhalten, sondern statt dessen Ignus nach mir ausgesandt."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"Doch auch als ich innerhalb der Festungsmauern war, hast du nicht selbst versucht, mich aufzuhalten, sondern diesen wahnsinnigen brennenden Magier nach mir ausgesandt."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"Und dann dieser Kristall, mit dem zu mich teilen und in die Falle locken wolltest - nicht um mich zu töten, sondern um  mich einzusperren."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~DER GNADENTÖTER-GEIST... KAM SEHR GELEGEN. DU HAST VIEL UNRECHT BEGANGEN, UND ES HAT VIELE NARBEN AUF DEN EBENEN HINTERLASSEN. ICH HABE DER GEISTERRÜSTUNG DIE CHANCE GEGEBEN, SIE ZU *KORRIGIEREN*. ~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"Wie hast du es geschafft, ihn gegen mich aufzubringen? Er war mein Verbündeter und folgte mir h-"~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"Dann wolltest du mich mit diesem Kristall in die Falle locken, aber *es* ist dir nicht gelungen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~ICH HABE IHM VON DEINER *SCHULD* ERZÄHLT UND IHM GESAGT, DASS ANDERE AN DEINER STELLE STERBEN, DAMIT DU LEBST. DAS HAT IHN STARK GEMACHT.~ */
  IF ~~ THEN REPLY #65875 /* ~"Aber es ist auch DEINE Schuld. Solange wir getrennt sind, werden weiter andere für uns sterben. Vhailor hätte versuchen sollen, *dich* zu töten."~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"Dann wolltest du mich mit diesem Kristall in die Falle locken, aber *es* ist dir nicht gelungen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~*MICH* TRIFFT KEINE SCHULD. ~ */
  IF ~~ THEN REPLY #65878 /* ~"*Du bist* es doch, der mich immerzu tötet, *du bist* es, der schon so viele Körper angehäuft hat, daß die Galerien dieser Festung VOLLER Schatten sind. Und dann WAGST du es zu behaupten, dich träfe keine Schuld? Du hast Glück, das Vhailor tot ist, sonst würde seine Axt *dich* richten."~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~RICHTE NICHT ÜBER *MICH*. BALD WERDEN DIE EBENEN ÜBER DICH RICHTEN, UND DANN WIRD ZWISCHEN UNS ALLES ZU ENDE SEIN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #65880 /* ~"Doch selbst nach Vhailors Scheitern, hast du dich mir *nicht* gestellt, obwohl du angeblich dazu in der Lage gewesen wärst. Statt dessen hast du versucht, mich mit diesem Kristall zu fangen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~DER MAGIER... KAM SEHR GELEGEN. SEIN ZORN AUF DICH IST GROSS. ICH HIELT ES FÜR ANGEMESSEN, DASS ER SICH AN DIR *RÄCHEN* KANN. WENN DIE EBENEN DIR KEINE GNADE LEHREN KONNTEN, DANN VIELLEICHT DER *SCHMERZ*.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"Er wollte sich rächen? Weil ich ihm die Kunst gelehrt und ihm Schmerz bereitet habe?"~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"Er wollte sich rächen? Wofür?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~JA. SO WIE DER SCHMERZ IHM EINE LEHRE WAR, DACHTE ICH, ER KÖNNTE ES AUCH FÜR DICH SEIN. DOCH DER MAGIER WAR SCHWÄCHER ALS ICH DACHTE, UND JETZT BIST DU HIER. BALD WIRD ZWISCHEN UNS ALLES ZU ENDE SEIN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #65885 /* ~"Also hast du Ignus geschickt, um mich aufhalten... Doch als er gescheitert war, bist du mir *dennoch* nicht selbst begegnet, auch als du gekonnt hättest - statt dessen hast du versucht, mich mit diesem Kristall zu fangen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~DAS SPIELT KEINE ROLLE. DU HAST DERLEI SCHON *VERGESSEN*, UND DU WIRST ES WIEDER TUN.~ */
  IF ~~ THEN REPLY #65887 /* ~"Also hast du ihn geschickt, um mich aufzuhalten... Doch als er scheiterte, bist du mir *dennoch* nicht selbst entgegengetreten -- statt dessen hast du versucht, mich mit diesem Kristall zu fangen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~JA, DER KRISTALL IST EIN KERKER, VIELLEICHT DER GRÖSSTE, DEN ES JE GEGEBEN HAT. ~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~ICH HABE IHN BENUTZT, WEIL ICH ES MÜDE WAR, DICH STÄNDIG IN DEN EBENEN ZU SUCHEN, NAMENLOSER. DU BIST... *SCHWER* ZU FINDEN. ICH WOLLTE DICH LIEBER AN EINEM ORT IN DER NÄHE HABEN, WO ICH DICH SEHEN KANN. DER KRISTALL IST EIN SOLCHER ORT.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~ICH MÖCHTE WISSEN, *WIE* DU DICH AUS DEM KRISTALL BEFREIT HAST.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"Warum bin ich schwer zu finden?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"Jemand hat mir geholfen. Die Frau, die ich vor langer Zeit hierher gebracht habe, Deionarra, hat mich befreit."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"Ich habe meine Methoden. Mich kann nichts aufhalten - weder ein Kerker, noch du in diesem Augenblick."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~ES IST UNWICHTIG.~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"Warum sagst du es dann nicht? Ich würde es ohnehin vergessen und es zum letzten Mal wissen."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"Dann macht es ja nichts, wenn du es mir sagst."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~GENAU WIE NAMEN MACHT BEDEUTEN, LIEGT AUCH MACHT DARIN, *KEINEN* NAMEN ZU HABEN, DENN NAMENLOSE WESEN - WIE DICH UND MICH - VERLIEREN DIE EBENEN GERNE AUS DEN AUGEN.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~AH... DER VON DER LIEBE GEMARTERTE GEIST. ICH HABE IHR ECHO SCHON IN DEN HALLEN DIESER FESTUNG VERNOMMEN. SIE WIRD DICH *NICHT* WIEDER BEFREIEN.~ */
  IF ~~ THEN REPLY #65899 /* ~"Das wird auch nicht *nötig* sein. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~WIE ANMASSEND. WIR WERDEN DICH NOCH HEUTE AUF DIE PROBE STELLEN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #65901 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~DU WEISST *NICHTS*. ~ */
  IF ~~ THEN REPLY #65903 /* ~"Warum ist es dir so wichtig, diesen Ort zu verteidigen? Wenn du wirklich so mächtig bist, wie du vorgibst, warum willst du dann hierbleiben? Hier ist doch NICHTS."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~ES IST MEINE FESTUNG. MEIN ZUHAUSE.~ */
  IF ~~ THEN REPLY #65905 /* ~"Und was für ein Zuhause... Es wird zusammengehalten vom Mörtel meines Bedauerns, und durch seine Hallen wandeln nur die Schatten derer, die wir getötet haben. Unter dem Staub ruhen die vergessenen Relikte der Vergangenheit, und sein einziger Schmuck sind die lebensvernichtenden Energien der Negativen Materiellen Ebene,. Einen solchen Ort nennt man gemeinhin *Gefängnis*."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~JEDES WORT VERRÄT DEINE UNWISSENHEIT, GEBROCHENER. DIE FESTUNG IST *RUHIG*. ALLES, WAS HIER ANKOMMT, *STIRBT*, BEVOR ES IN MEIN DASEIN EINDRINGT. UND DIE SCHATTEN SIND STILLE WESEN.~ */
  IF ~~ THEN REPLY #65907 /* ~"Ich glaube, du *mußt* mit all den Schatten und Geistern hier bleiben, weil du selbst einer geworden bist. Ich glaube nicht, das die Festung von dir geschützt wird. Sie schützt *dich*."~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~ICH BLEIBE HIER *AUS FREIEN STÜCKEN*.~ */
  IF ~~ THEN REPLY #65909 /* ~"*Wirklich*? Dann hast du gelogen, als du sagtest, du dürftest diese Mauern nie länger verlassen? Wie ist es möglich, daß eine Festung, die aus MEINEM Bedauern gebaut ist, DEINEN Schutz braucht?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~FÜR DEINE UNVERSCHÄMTHEIT SOLLST DU *TAUSEND* TODE STERBEN, GEBROCHENER. DU BIST IN DIESE HALLEN EINGEDRUNGEN, UND ICH WERDE DAFÜR SORGEN, DASS DU *NIE* MEHR HIERHER ZURÜCKKEHRST.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"Denk an deine eigenen Worte: Wir sind miteinander verbunden. Wenn ich leide, leidest auch du. Vielleicht sitzt du hier fest, *weil* du leidest, aber anders als ich."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"Deine leeren Drohungen ermüden mich. Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~WOVON REDEST DU, NARR?~ */
  IF ~~ THEN REPLY #65916 /* ~"Kann es sein, daß bei jedem Tod meines Geistes dein Körper stirbt? Ich verliere mein Gedächtnis, du deine Substanz. Deshalb fällt es dir immer schwerer, diese Festung und diese Ebene zu verlassen. Diese Festung ist nicht nur dein Gefängnis, sie wird dein Grab sein."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~UNMÖGLICH.~ */
  IF ~~ THEN REPLY #65919 /* ~"Tatsächlich? Du hast gesagt, daß uns etwas verbindet. Du mußt doch gespürt haben, wie dein Körper in den letzten hundert Jahren immer schwächer wurde - du benutzt sogar Ravels Gerüst als Stütze, obwohl du sie *verachtest*, doch du brauchst es, um deine geisterhafte Form zusammenzuhalten und deinen schnellen Zerfall zu bremsen."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~SELBST WENN DEINE WORTE WAHR WÄREN, ÄNDERT DAS NICHTS. LIEBER STERBE ICH DEN TOD DES KÖRPERS HIER IN DER FESTUNG, ALS MIT DIR LEBEN ZU MÜSSEN.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"Aber warum dieses langsame Vergessen, wenn wir eine andere Lösung haben? Wenn du und ich wieder vereint würden, hätte unser beider Leiden ein Ende; wir würden wieder ein Ganzes bilden."~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"Aber warum langsam sterben, wenn wir wieder eins werden können? Dann würden wir endlich aufhören, einander zu quälen."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~DEINE WORTE SIND MIR *GIFT*. ICH WILL NICHT LÄNGER TEIL VON DIR VON UND DEINES *KLÄGLICHEN* DASEINS SEIN. SIEH DICH AN. DEINE HÜLLE IST VOLLER RISSE UND NARBEN. ICH WILL LIEBER FREI STERBEN ALS IN DEINER KRANKEN HÜLLE LEBEN.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"Sie *dich* doch an. Ein Spektralwesen, das große Stücke auf sich hält, aber dessen Leben und Macht nur noch ein schwacher Abglanz des Lebens ist, wie es früher war. Sollen die Ebenen dich so in Erinnerung behalten, wenn du der Vergessenheit anheimfällst?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"Gut. Aber da gibt es noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~ICH MÖCHTE DAS EINE VERGESSEN NICHT GEGEN DAS ANDERE EINTAUSCHEN. UND ICH MÖCHTE NICHT IN DEINER HÜLLE WOHNEN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #65929 /* ~"Es *muß* kein Vergessen geben. Wer weiß, was passiert, wenn wir wieder ein Ganzes bilden? Vielleicht bist du dann du selbst, und ich sterbe. Oder vielleicht sind wir als Ganzes *größer* als beide einzelne Teile zusammen."~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"Gut. Aber da gibt es noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~DU WEISST NICHT, WOVON DU SPRICHST. WENN WIR WIEDER VEREINT WERDEN, DANN WIRD ALLES ZU ENDE SEIN. DANN WIRD ES KEINE *ZUKUNFT* FÜR UNS GEBEN, SONDERN NUR NOCH WEITERE QUALEN. ICH WEISS ES.~ */
  IF ~~ THEN REPLY #65932 /* ~"Dann werden wir diesen Qualen gemeinsam begegnen, als ein Wesen. Und wir werden sie besiegen."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~WISSE, DASS WIR LEIDEN WERDEN, WENN WIR EINS WERDEN. IN UNS STECKT ZU *VIEL* DES JEWEILS ANDEREN WESENS, ALS DASS ES FÜR UNS EINE RETTUNG GEBEN KÖNNTE. WIR WERDEN VERDAMMT SEIN. ~ */
  IF ~~ THEN REPLY #65934 /* ~"Dann kämpfen wir eben bis zur Verdammnis. So werden wir wieder frei sein."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~WISSE, DASS ICH DICH IMMER *GEHASST* HABE, GEBROCHENER. WENN WIR EINS SIND, WERDE ICH DICH WEITER *HASSEN*. WENN DEINE HÜLLE SCHLIESSLICH STIRBT, WIRD DEIN TOD MICH MIT *FREUDE* ERFÜLLEN. ~ */
  IF ~~ THEN REPLY #65936 /* ~"Damit kann ich leben - und die Ebenen auch. Im schlimmsten Fall wirst du in meinem Leid schwelgen. Aber es ist doch besser, du wirst eins mit mir und haßt mich, als daß wir getrennt sterben und langsam der Vergessenheit entgegengehen."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~WISSE, DASS MEIN HASS FÜR DICH DIE EBENEN *VERNICHTEN* WIRD. MACH DICH BEREIT. WIR WERDEN WIEDER EINS SEIN - BIS AN DIE LETZTEN AUGENBLICKE DEINES LEBENS.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"Aber bevor wir es tun: Was ist mit meinen Freunden? Können sie gerettet werden?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"Aber bevor wir es tun: Was ist mit meinen Gefährten? Auch sie sollen wieder ihr eigenes Leben leben."~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"Bevor wir eins werden, möchte ich, daß du meinem Freund das Leben zurück..."~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"Aber vorher verlange ich, daß du meinen Begleiter wiederbelebst."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"Gut. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~WENN WIR EINS WERDEN, WERDEN AUCH SIE WIEDER EINS. MEIN WISSEN WIRD DEIN WISSEN SEIN. WENN DU WILLST, KANNST DU IHNEN IHR LEBEN WIEDER ZURÜCKGEBEN. ICH BIN DIE STERBLICHKEIT. DIE NATUR DES LEBENS UND DES TODES IST ETWAS, DAS ICH ... GUT KENNE.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"Gut. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"Sehr schön. Ich bin bereit, wieder sterblich zu werden."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~DIE HÜLLE DEINES GEISTES BIRGT *NICHTS*, WAS VON BELANG IST, GEBROCHENER.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"Außer dem Wissen, wo du bist und was du bist. Ich könnte es weitergeben oder dich selbst wieder besuchen. Ich könnte mich eines Tages erinnern, wie man zu dir gelangt, und dann müßtest du mir erneut begegnen. Deshalb soll ich alles vergessen, stimmt's?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"Nur, daß ich von der Schädelsäule weiß, daß nur drei Wesen je wußten, wo du bist und wie man zu dir gelangt: Einer ist Trias, der andere bist du, und der dritte bin ich. Wenn du Trias und mich tötest, weiß niemand mehr, wo du bist und wie man dich findet."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"Nur, daß ich von der Schädelsäule weiß, daß nur drei Wesen je wußten, wo du bist und wie man zu dir gelangt: Einer war Trias, aber er ist tot, der andere bist du, und der dritte bin ich. Wenn ich es vergesse, dann weiß niemand mehr, wo du bist und wie man dich findet."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~JA, DER ENGEL, DER SICH HINTER GOLDENEN LÜGEN VERSTECKT. DU HAST MICH SCHLIESSLICH ZU IHM GEFÜHRT. DER VERRÄTER WAR SCHWER ZU FINDEN, GENAU WIE DU. ER WIRD DEN ENDGÜLTIGEN TOD STERBEN.~ */
  IF ~~ THEN REPLY #65949 /* ~"Dann hast du mich benutzt, um ihn zu finden? Du wolltest, daß ich ihn töte, damit sein Wissen stirbt. Und danach wolltest du mich töten, damit *ich* vergesse, wie man zu dir gelangt."~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~WIE ICH SEHE, HAT DIE KLINGE DER ZEIT DIR NOCH NICHT DEN GANZEN VERSTAND GERAUBT. MEIN ZWECK IST ES IMMER GEWESEN, DASS DU VERGISST. ~ */
  IF ~~ THEN REPLY #65951 /* ~"Aber *weshalb*? Weshalb w-"~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~WEIL ICH NIE MEHR DEINE *PRÄSENZ* ERTRAGEN WILL, GEBROCHENER. DU BIST EIN ÄRGERNIS, EIN ANDENKEN AN DAS LEBEN, WIE ES FRÜHER WAR, UND SOLCHE ANDENKEN VERABSCHEUE ICH. ICH WILL IN RUHE IN MEINER FESTUNG LEBEN. ~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~SO WIE DU MICH VERGESSEN HAST, MÖCHTE ICH AUCH DICH VERGESSEN. FÜR IMMER.~ */
  IF ~~ THEN REPLY #65955 /* ~"Das kann ich akzeptieren. Doch ich werde es nicht länger zulassen, daß du mich angreifst. Laß deine Schatten hier und laß mich MEIN Leben leben. Dann lasse ich dich DEINES leben."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"Das ist bestimmt auch nicht der Grund. Ich glaube eher, ich soll alles vergessen, weil du mich FÜRCHTEST."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"Aber ich vergesse nichts mehr, wenn ich sterbe. Das war vielleicht früher so."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~DU LÜGST. DU HAST IMMER ALLES VERGESSEN. UND ICH HABE MICH IMMER AN ALLES ERINNERT. SO IST ES SCHON IMMER GEWESEN.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"'Immer' heißt nicht mehr dasselbe wie früher. Ich bin schon einmal gestorben, ohne meine Erinnerungen zu verlieren."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"'Immer' heißt nicht mehr dasselbe wie früher. Ich bin viele Male gestorben, ohne meine Erinnerungen zu verlieren."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~DEINE ILLUSION KANN DICH HIER NICHT *BEWAHREN*, GEBROCHENER.~ */
  IF ~~ THEN REPLY #65962 /* ~"Es ist die Wahrheit. Du kannst mich nicht aufhalten, indem du mich tötest - denn ich *vergesse* nichts mehr, wenn ich sterbe. Ich werde dich immer kennen, ich werde mich an alles erinnern, was du getan hast. Ich werde mich erinnern, wie man hierher gelangt und auch, wie man dich vernichtet."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~DANN MUSS ICH DICH EINSPERREN, NAMENLOSER. WENN DU NICHT VERGISST, KANN ICH NICHT ZULASSEN, DAS DU FREI BIST.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"Ich bin bereits aus dem größten aller denkbaren Kerker ausgebrochen. Du kannst mich nicht töten, und du kannst mich nicht aufhalten. Ich vergesse nicht mehr."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"Ich bin bereits aus diesem kristallenen Gefängnis ausgebrochen, in dem du mich gefangen halten wolltest. Du kannst mich nicht töten, und du kannst mich nicht aufhalten. Ich vergesse nicht mehr."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~JA... ABER WAR NICHT DEIN WERK. DER VON DER LIEBE GEMARTERTE GEIST HAT DICH BEFREIT. ER WIRD ES NICHT WIEDER TUN. ICH WERDE DEINE KNOCHEN ZERSCHLAGEN UND DEINE SCHLAFFE HÜLLE NEHMEN UND SIE IM KRISTALL EINSCHLIESSEN. DU KANNST NIE MEHR DURCH DIE EBENEN REISEN.~ */
  IF ~~ THEN REPLY #65967 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"Du kannst es versuchen. Mach dich bereit , Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~UND DANN WERD ICH DIE SCHATTEN MIT DIR FÜTTERN. ICH WERDE DICH HIER VERNICHTEN UND DICH IN DIE SCHATTENGALERIE WERFEN, WO DIE SCHATTEN SICH VON DIR ERNÄHREN. SIE WERDEN DICH IM LAUFE VIELER EWIGKEITEN TÖTEN. DU WIRST *NIE* MEHR DURCH DIE EBENEN REISEN.~ */
  IF ~~ THEN REPLY #65970 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"Du kannst es versuchen. Mach dich bereit , Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~DU HAST KEINE *WAHL,* GEBROCHENER. WENN DU DIESEN ORT VERLÄSST, WIRST DU ALLES VERGESSEN, WAS GESCHEHEN IST. ICH WILL NICHT, DASS DU WEITER WEISST, WIE DU MICH FINDEST. DU WIRST DEN TOD DES GEISTES STERBEN, IMMER UND IMMER WIEDER, WEIL ICH ES WÜNSCHE.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"Aber ich vergesse nichts mehr, wenn ich sterbe. Das war vielleicht früher so."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~DAS SPIELT KEINE ROLLE. DU KANNST NICHT STERBEN. DU KANNST ZWAR DEINEN GEIST VERLIEREN, ABER DEIN FLEISCH WIRD WEITERLEBEN.~ */
  IF ~~ THEN REPLY #65976 /* ~"Meinen Geist verlieren? Wovon redest du?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~ICH HABE GESEHEN, WIE DEIN GEIST AUSDÜNNT. UND DOCH LEBST DU WEITER. MEHR IST NICHT NÖTIG.~ */
  IF ~~ THEN REPLY #65978 /* ~"'Nötig'? Warum?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~DAS SPIELT KEINE ROLLE. DU KANNST NICHT STERBEN. DU KANNST ZWAR DEINEN GEIST VERLIEREN, ABER DEIN FLEISCH WIRD WEITERLEBEN. MEHR IST NICHT NÖTIG.~ */
  IF ~~ THEN REPLY #65980 /* ~"'Nötig'? Warum?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~UNS BEIDE VERBINDET ETWAS, UND WENN ES NOCH SO GERING IST. ICH WILL NICHT, DASS DU VERNICHTET WIRST, SONDERN NUR, DASS DU WEIT WEG VON MIR BIST.~ */
  IF ~~ THEN REPLY #65982 /* ~"Warum hast du dann die ganze Zeit versucht, mich zu *töten*?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"Wenn uns etwas verbindet, dann mußt du doch auch leiden, wenn ich leide."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"Du wolltest mich also nicht töten, weil diese Verbindung mit meinem Tod entzweit würde..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~DAS HAT *KEINE* BEDEUTUNG. ~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"Warte... Diese Schatten, die du nach  mir ausgesandt hast... Es ist ihnen noch nie gelungen, mich zu töten... Doch ich vermute, dies ist auch nie ihr *Zweck* gewesen. Sie 'töten' mich nur, damit ich vergesse."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"Warte... Diese Schatten, die du nach  mir ausgesandt hast... Es ist ihnen noch nie gelungen, mich zu töten... Doch ich vermute, dies ist auch nie ihr *Zweck* gewesen. Sie 'töten' mich nur, damit ich vergesse."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"Warte... Diese Schatten, die du nach  mir ausgesandt hast... Es ist ihnen noch nie gelungen, mich zu töten... Doch ich vermute, dies ist auch nie ihr *Zweck* gewesen. Sie 'töten' mich nur, damit ich vergesse."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"Wirklich? Vielleicht wolltest du mich ja nicht töten, weil diese Verbindung mit meinem Tod entzweit würde... Es wäre auch dein Ende."~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~DIE SCHWACHEN LEIDEN. ICH *HALTE STAND*.~ */
  IF ~~ THEN REPLY #65991 /* ~"Mit meinem Tod würde sich diese Verbindung also lösen..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~DU KANNST NICHT STERBEN. ~ */
  IF ~~ THEN REPLY #65993 /* ~"Aber wenn ich nicht sterben kann, dann kannst du nicht leben. Du bist meine *Sterblichkeit*."~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~VIELLEICHT FRÜHER. JETZT NICHT MEHR. ICH HABE MICH VERÄNDERT. ICH BIN JETZT EIN TRANSZENDETES, EIN HÖHERES WESEN.~ */
  IF ~~ THEN REPLY #65995 /* ~"Schon möglich - aber im Grunde bist du immer *noch* meine Sterblichkeit. Wenn ich sterbe, stirbst auch du."~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"Dann gibst du also zu, daß ein Wesen seine Natur verändern *kann*?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"Aber du hast doch selbst gesagt, daß nichts die Natur eines Menschen verändern kann."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~DU WEISST *NICHT*, WOVON DU REDEST. DEINE WORTE SIND HOHL - GENAU WIE DEINE HÜLLE.~ */
  IF ~~ THEN REPLY #66000 /* ~"Ich weiß genau, wovon ich rede. Wenn ich umkomme, dann kommst auch du um."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"Das wird sich zeigen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~DU HÖRST ZU, ABER DU *VERSTEHST* NICHT. DU KANNST NICHT STERBEN.~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"Doch, jetzt schon. Ich habe von einem Golem eine Waffe anfertigen lassen, die sogar mich töten kann. Aber ich mußte sie an einen Ort bringen, der vom Rest der Ebenen abgeschnitten ist, damit meine Unsterblichkeit kein anderes Leben in ihren Sog zieht. Und hier bin ich." ~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"Vielleicht nicht. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~DU *LÜGST*.~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Zeig ihm die Klinge: "Glaubst du? Sieh dir die Klinge an - ihre Beschaffenheit. Wenn du wirklich so allwissend und allmächtig wärst, wie du BEHAUPTEST, dann wüßtest du, daß diese Waffe mich töten kann."~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Zeig ihm die Klinge: "Glaubst du? Sieh dir die Klinge an - ihre Beschaffenheit. Wenn du wirklich so allwissend und allmächtig wärst, wie du BEHAUPTEST, dann wüßtest du, daß diese Waffe mich töten kann. Und da wir verbunden sind, kann sie auch DICH vernichten."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~Als du diese Worte mit der Klinge in der Hand sprichst, spürst du, wie sie sich in deiner Hand krümmt und sich in etwas tödliches verwandelt, das ALLES übertrifft, was die Ebenen je erlebt haben.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~DAS WÜRDEST DU NICHT WAGEN.~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"Du *weißt*, daß ich das würde. Nach all dem Elend, das du mir beschert hast, würde ich sie gern durch deine spektrale Haut bohren."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"Wenn du dich weiter widersetzt, werde ich die Klinge gegen mich selbst richten und uns beide vernichten."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Richte die Klinge gegen dich selbst.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~WENN ICH UMKOMME, KOMMST AUCH *DU* UM. UNSERE VERBINDUNG WIRD SICH LÖSEN UND DU WIRST DEN ENDGÜLTIGEN TOD STERBEN.~ */
  IF ~~ THEN REPLY #66015 /* ~"Dann hab ich also zwei Möglichkeiten- entweder wir sterben beide, oder ich lasse mich immer wieder von dir töten und mir den letzten Rest meines Geistes rauben. Ich bin für den schnellen Tod - ES SEI DENN, du hast eine DRITTE Lösung."~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Richte die Klinge gegen dich selbst.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~DAS IST TÖRICHT VON DIR. DEIN TOD HÄTTE KEINE BEDEUTUNG.~ */
  IF ~~ THEN REPLY #66017 /* ~"Dann habe ich also zwei Möglichkeiten - entweder ich töte mich selbst mit dieser Klinge, oder ich lasse mich immer wieder von dir töten und mir sogar den letzten Rest meines Geistes rauben. Ich bin für den schnellen Tod - ES SEI DENN, du hast eine DRITTE Lösung."~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Richte die Klinge gegen dich selbst.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~ES GIBT KEINE LÖSUNG. DU WIRST DEINE KLINGE FALLENLASSEN, DANN WIRST DU DICH ERGEBEN. DU WIRST DIESE FESTUNG VERLASSEN, OHNE DEIN GEDÄCHTNIS. EINE *ANDERE * LÖSUNG GIBT ES NICHT.~ */
  IF ~~ THEN REPLY #66020 /* ~"Doch, es gibt eine. Vereine dich mit mir. Dann werden wir wieder eins, so wie es uns vorbestimmt ist."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~DU WEISST NICHT, WAS DU TUST. WENN WIR WIEDERVEREINT WERDEN, DANN WIRD ALLES ZU ENDE SEIN. DANN WIRD ES KEINE *ZUKUNFT* FÜR UNS GEBEN, SONDERN NUR NOCH WEITERE QUALEN.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"Aber *es* ist immer noch besser, als das ganze Multiversum weiter wegen uns leiden zu lassen."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"Solche Qualen will ich gern riskieren. Ich bin es leid, dich in den Ebenen und in der Zeit zu bekämpfen. Damit ist jetzt Schluß."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~WENN WIR WIEDER EINS WERDEN, DANN WERDEN WIR LEIDEN. IN UNS STECKT ZU *VIEL* DES JEWEILS ANDEREN WESENS, ALS DASS ES FÜR UNS EINE RETTUNG GEBEN KÖNNTE. WIR WERDEN VERDAMMT SEIN. DU WEISST NICHT, WAS DU TUST.~ */
  IF ~~ THEN REPLY #66025 /* ~"Nein, ich weiß sehr wohl, was ich tue. Und ich glaube, es ist die einzige Lösung. Mach dich bereit."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~WISSE, DASS ICH DICH IMMER *GEHASST* HABE, GEBROCHENER. WENN WIR EINS SIND, WERDE ICH DICH WEITER *HASSEN*. WENN DEINE HÜLLE SCHLIESSLICH STIRBT, WIRD DEIN TOD MICH MIT *FREUDE* ERFÜLLEN. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"Damit kann ich leben - und die Ebenen auch."~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"Freude wird es keine für dich geben. Du wirst mein Diener sein, und alles, was du zu Lebzeiten gewonnen hast, wird mir gehören."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~EINEN NAMEN ERWIRBT MAN DURCH SEINE TATEN. AUS DIESEM GRUND IST DER NAME, DEN WIR FRÜHER HATTEN, OHNE BEDEUTUNG.~ */
  IF ~~ THEN REPLY #66031 /* ~"Du *weißt* unseren Namen nicht mehr, stimmt's?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~EINEN NAMEN BEKOMMT WIR VON DEN ANDEREN AUFGRUND DESSEN, WIE SIE UNS SEHEN. DESHALB HAT DER NAME, DEN WIR FRÜHER HATTEN, KEINE BEDEUTUNG.~ */
  IF ~~ THEN REPLY #66033 /* ~"Du *weißt* unseren Namen nicht mehr, stimmt's?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~EINE NAME IST EIN MANTEL AUS BUCHSTABEN, DER MAN UNS UMWIRFT. ER BEDEUTET NICHTS.~ */
  IF ~~ THEN REPLY #66035 /* ~"Du *weißt* unseren Namen nicht mehr, stimmt's?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~DU WIRST DEINEN NAMEN NIE WISSEN, GEBROCHENER.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"Ich weiß unseren Namen noch, Wesen. Und dieses Wissen hat mich stark gemacht."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"Du *weißt* unseren Namen nicht mehr, stimmt's?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~IN DER GANZEN EXISTENZ GIBT ES NIEMANDEN, DER UNSEREN NAMEN WEISS. DAS IST UNSER SCHUTZ. NAMEN BERGEN MACHT IN SICH. WENN WIR *NAMENLOS* SIND, DANN SIND WIR STARK. MAN KANN UNS NICHT JAGEN. MAN KANN UNS NICHT FINDEN. MANN KANN UNS NICHTS ANTUN.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"Ich weiß unseren Namen noch, Wesen. Und dieses Wissen hat mich stark gemacht."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"Hat das denn je eine Rolle gespielt? Hat uns jemand gejagt?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~DU *LÜGST*. UNSER NAME IST VERLOREN UND VERGESSEN, UND SO WIRD ES BLEIBEN BIS ANS ENDE DER EWIGKEIT. ~ */
  IF ~~ THEN REPLY #66043 /* ~"Ich lüge? Wenn du Teil meiner selbst bist, mußt du *wissen*, ob ich dich täusche. Ich lüge nicht."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~SELBST MIT DIESEM WISSEN HAST DU NICHT DIE MACHT, MICH ZU VERNICHTEN. ~ */
  IF ~~ THEN REPLY #66045 /* ~"Du irrst dich. Ich werde nicht zulassen, daß du mir einen Kampf aufzwingst, der gar nicht nötig ist. Denn da ich meinen Namen kenn, meinen wahren Namen, weiß ich auch deinen. Du kannst mir nichts mehr anhaben."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"Das wird sich zeigen, Geist. Mach dich bereit. Wir werden sehen, ob meine Sterblickeit besiegbar ist..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~ICH WERDE DICH *VERNICHTEN*.~ */
  IF ~~ THEN REPLY #66048 /* ~"Nein, ich werde *dich* vernichten. Du sollst die Ebenen nicht länger bewohnen... Leb wohl. Dich erwartet die Vergessenheit."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"Nein, das wirst du nicht. Du wirst dich wieder mit mir vereinen, damit wir eins werden, wie es uns vorbestimmt ist."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~ALLES LEBENDE WIRD GEJAGT. DER JÄGER IST DER TOD. ER JAGT UNS NICHT MEHR.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"Dann wisse, daß er uns jetzt jagt. Ich weiß unseren Namen, Wesen. Und dieses Wissen hat mich stark gemacht."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"Nein, aber er jagt *andere* an unserer Stelle. Zahllose andere sterben, weil wir getrennt sind. Wir können nicht so weiterleben, sonst müssen andere weiter an unserer Stelle sterben."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~ALLES LEBENDE STIRBT. DIE SCHATTEN HIER LEIDEN, DOCH FÜR SIE IST ES EINE ART UNSTERBLICHKEIT. ICH BIN DAS LICHT IN DER FINSTERNIS DIESER FESTUNG, UND IHR HASS GILT DIR, NICHT MIR.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"Du läßt es also zu, daß anderer an unserer Stelle leiden?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~WENN DU IHR LEIDEN BEENDEN MÖCHTEST, DANN GIB AUF. BEGIB DICH IN DEN KERKER DER KRISTALLS AUF DIESER FESTUNG, DAMIT UNSCHULDIGE NICHT WEITER LEIDEN SIE LEIDEN, WEIL *DU* STIRBST, NICHT ICH.~ */
  IF ~~ THEN REPLY #66058 /* ~"Ich lasse mich nicht gefangennehmen... Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"Gut. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~DIESE FRAGE IST SINNLOS.~ */
  IF ~~ THEN REPLY #66061 /* ~"Dennoch will ich dein Antwort hören, bevor zwischen uns alles zu Ende ist."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~DANN IST DIES MEINE ANTWORT, UND DU BIST DER BEWEIS. *NICHTS* KANN DIE NATUR EINES MENSCHEN VERÄNDERN.~ */
  IF ~~ THEN REPLY #66063 /* ~"Das genügt mir. Ich werde dir beweisen, daß du Unrecht hast... Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"Wenn mir meine Reisen durch die Ebenen etwas gelehrt haben, dann das Wissen, daß vieles die Natur eines Menschen verändern kann. Bedauern oder Liebe, Rachsucht oder Furcht - jede Art von *Glauben* kann die Natur eines Menschen ändern."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"Du irrst dich. Jeder Glaube kann die Natur eines Menschen verändern. Mein Glaube hat Vhailor vernichtet, und vielleicht könnte ich mich sogar selbst vernichten."~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"Du irrst dich. Jeder Glaube kann die Natur eines Menschen verändern. Vor langer Zeit hat mein Glaube einen Menschen geschaffen, und vielleicht könnte ich auch einen vernichten."~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"Dann ist das deine Antwort. Es gibt noch etwas anderes, das ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~DANN HAST DU EINE FALSCHE LEKTION GELERNT, GEBROCHENER.~ */
  IF ~~ THEN REPLY #66069 /* ~"Habe ich das? Ich habe gesehen, wie der Glaube Städte versetzt hat, wie er Menschen geholfen hat, den Tod abzuwenden, und wie er das Herz einer bösen Hexe in einen Halbkreis verwandelt hat. Diese ganze Festung besteht aus Glauben. Der Glaube hat eine Frau verdammt, deren Herz an der falschen Hoffnung hing, ein anderer liebte sie. Er hat einen Menschen dazu veranlaßt, die Unsterblichkeit zu suchen und sie zu erreichen. Und er hat einen eingebildeten Geist zu der Annahme verleitet, er sei mehr als ein Teil von mir."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~DEIN WIDERSTAND WIRD DIR GRÖSSERE SCHMERZEN BEREITEN ALS JEDE WUNDE. DER GLAUBE KANN DIE NATUR EINES MENSCHEN NICHT VERÄNDERN.~ */
  IF ~~ THEN REPLY #66071 /* ~"Doch, ich denke, der Glaube könnte mich sogar vernichten, wenn er nur stark *genug* wäre."~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"Vielleicht probier ich es später aus... Aber es gibt jetzt andere Dinge, die mich interessieren."~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~DAZU FEHLT DIR DIE NÖTIGE WILLENSKRAFT.~ */
  IF ~~ THEN REPLY #66074 /* ~"Dann gibst du also zu, daß es möglich ist."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"Das wird sich zeigen... Vielleicht sollte ich es einfach ausprobieren."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"Oder wenn wir wirklich miteinander verbunden sind, wie du sagst, dann könnte ich *dich* vielleicht vernichten."~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"Vielleicht probier ich es später aus... Aber es gibt jetzt andere Dinge, die mich interessieren."~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~STELL MEINE *GEDULD* NICHT AUF DIE PROBE, GEBROCHENER.~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Konzentrier dich fest.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Versuch dich zu konzentrieren.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"Vielleicht probier ich es später aus... Aber es gibt jetzt andere Dinge, die mich interessieren."~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~ES IST *TÖRICHT* VON DIR, DIES ZU GLAUBEN, WENN DU ES KAUM SCHAFFST, DEINEN EIGENEN MÜRBEN GEIST ZUSAMMENZUHALTEN. DU KANNST GAR NICHT TIEFER FALLEN, GEBROCHENER.~ */
  IF ~~ THEN REPLY #66083 /* ~Konzentrier dich weiter.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~Als du dich konzentrierst, findest du tief in dir drin nichts Greifbares, woran du dich festhalten könntest, sondern nur Scherben und Bruchstücke... Dir wird bewußt, daß du dich nicht vernichten kannst, weil du nicht die nötige Willenskraft besitzt.~ */
  IF ~~ THEN REPLY #66085 /* ~"Vielleicht nicht *dieses* Mal, Geist. Es gibt andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*HÖR AUF*. DU WEISST *NICHT*, WAS DU TUST. ~ */
  IF ~~ THEN REPLY #66087 /* ~"Ich weiß, was ich tue. Du hast mich genug gequält. Jetzt ist Schluß."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~WENN DU DIES TUST, WERDEN *WIR* VERNICHET. DANN WIRD ES KEIN SCHICKSAL GEBEN. DU WIRST UNS BEIDE ZUGRUNDE RICHTEN.~ */
  IF ~~ THEN REPLY #66089 /* ~"Dann habe ich also zwei Möglichkeiten - entweder ich töte uns beide, oder ich lasse mich immer wieder von dir töten und mir den letzten Rest meines Geistes rauben. Ich bin für den schnellen Tod - ES SEI DENN, du hast eine DRITTE Lösung."~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"Dann werden wir beide sterben. Ich werde uns beide vernichten, Wesen."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~ES GIBT KEINE ANDERE LÖSUNG.~ */
  IF ~~ THEN REPLY #66092 /* ~"Doch, es gibt eine - wir können wieder eins werden, wie es uns vorbestimmt ist."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"Dann werden wir beide sterben. Ich werde uns beide vernichten, Wesen."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~NEIN. SIE SIND *TOT*. SIE WERDEN IMMER TOT SEIN.~ */
  IF ~~ THEN REPLY #66095 /* ~"Warum? *Kannst* du sie nicht retten? Fehlt dir die Macht dazu?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"Es steht also nicht in deiner Macht, sie zu retten? Dann *ist* deine Macht begrenzt..."~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"Dann wirst ihnen GESELLSCHAFT leisten. Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~STELL NICHT MEINE MACHT IN *FRAGE*, NICHT AN DIESEM ORT. JETZT, WO ICH FREI VON DIR BIN, GIBT ES NICHTS, WAS ICH NICHT TUN KANN.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"Was schadet es dann...?"~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~ICH *WILL* ABER NICHT, DASS SIE GERETTET WERDEN. SIE HABEN MICH IN MEINEM HAUS HERAUSGEFORDERT. IHR TOD SOLL MICH AN ALLES ERINNERN, WAS MICH JE HERAUSGEFORDERT HAT.~ */
  IF ~~ THEN REPLY #66101 /* ~"Aber du *kannst* sie nicht wieder zum Leben erwecken, stimmt's?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"Ich glaube, du hast keine Wahl. Du *kannst* sie nicht wieder zum Leben erwecken."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"Vielleicht wirst du ihnen früh genug Gesellschaft leisten. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"Dann wirst du ihnen Gesellschaft leisten. Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~GEBROCHENER, IM LAUFE DEINER VERGESSENEN LEBEN HABE ICH BEOBACHTET, GELERNT UND IN DEN GEWÖLBEN MEINES KÖRPERS MACHT GEWONNEN ~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~ALS DU IM KRIEG DER SCHWARZEN JAHRZEHNTE GEKÄMPFT HAST, HAT SICH DEIN GANZES MILITÄRISCHES WISSEN IN MEIN GEDÄCHTNIS EINGEGRABEN. ALS DU MIT LUM, DEM VERRÜCKTEN MAGISCHE TÄNZE GETANZT HAST, HABE ICH MIT DIR GELERNT. WAS DU VERGESSEN HAST, HABE ICH *NICHT* VERGESSEN. DIE MACHT ÜBER LEBEN UND TOD IST NUR EIN KLEINES BEISPIEL MEINES GANZEN KÖNNENS.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"Du sagst, du hättest *mit* mir gelernt; was ich erlebt habe, hättest auch erlebt. Gibt es etwas, daß uns verbindet...?"~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"Weil wir verbunden sind... kannst du also erleben, was ich erlebe, und lernen, was ich lerne..."~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~ES IST EINE KLEINIGKEIT. ES IST *NICHT* WICHTIG. ~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"Nein, das glaub ich nicht - wenn du behauptest, *du* könntest sie wieder zum Leben erwecken, dann kann ich es vielleicht auch."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"Deionarra hat mir gesagt, ich kann den Tod nur dann rückgängig machen, wenn das Opfer in meiner Nähe gestorben ist. Aber was sie in mir geweckt hat... Willst du mir sagen, das war nur ein Bruchteil meiner Macht über Leben und Tod?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~DEIN GEDÄCHTNIS IST EIN WIE EIN GEBORSTENER STEIN, DESSEN KANTEN SCHON ABGENUTZT SIND. AUCH WENN DU MACHT BESITZEN WÜRDEST, KÖNNTEST DU SIE NICHT NUTZEN.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"Nein, das stimmt nicht - ich glaube, diese Verbindung wirkt auch in die andere Richtung. Wenn du behauptest, *du* könntest sie wieder zum Leben erwecken, dann kann ich es vielleicht auch."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"Wenn du behauptest, daß *du* die Macht besitzt, dann muß ich sie auch haben... selbst wenn ich im Augenblick des Todes nicht dort war."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~WENN DU DIES TUST, WIRST DU *STERBEN*. DIR FEHLEN DIE NÖTIGEN JAHRE, UM DIE KUNST DES LEBENS UND DES TODES ZU ERLERNEN. DU WIRST VOR MIR FALLEN.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~Ein Ruck geht durch deinen Geist, und dir wird plötzlich bewußt, daß du *sehr wohl* die nötigen Jahre besitzt - denn im Laufe deiner vielen Inkarnationen hast du ja alles einmal gewußt. Aber es wird lange dauern, und du weißt, daß deine Sterblichkeit dir *nicht* soviel Zeit lassen wird, wie du brauchst. Sie wird vielleicht ausreichen, um einen von ihnen wieder zum Leben zu erwecken, aber nicht alle.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"Auf meinem Weg hierher, habe ich das innere Gewölbe geöffnet. Diese größeren Schatten bewegen sich jetzt frei durch die Festung - sie sind nicht mehr in ihrer Kammer eingesperrt."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Erwecke einen deiner Gefährten wieder zum Leben...~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Erwecke deinen Gefährten wieder zum Leben...~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"Dann laß ich sie hier liegen. Es gibt noch andere Dinge, die ich wissen möchte..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Der Takt der Zeit scheint sich plötzlich zu verlangsamen, als du gemach die Hand ausstreckst. Du spürst ihre Seelen, wenn auch nur schwach, und weißt, daß du sie wieder in ihren Körper zurückholen kannst. ~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Erwecke Morte wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Erwecke Annah wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Erwecke Dak'kon wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Erwecke Grace, die Gefallene, wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Erwecke Nordom wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Erwecke Ignus wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Erwecke Vhailor wieder zum Leben.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"Dann laß ich sie hier liegen... Es gibt noch andere Dinge, die ich wissen möchte."~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~DU *LÜGST*.~ */
  IF ~~ THEN REPLY #66128 /* ~"Dein Pech, wenn du mir nicht glauben willst - ich bleibe, wo ich bin."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~ICH WERDE ZURÜCKKOMMEN UND SEHEN, WAS DU GETAN HAST, GEBROCHENER. WENN DU DIE SCHATTEN BEFREIT HAST, WERDE ICH SIE MIT DIR *FÜTTERN*.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"Gut... Ich bin hier. FALLS du es schaffst, zurückzukommen."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"Sehr gut... Ich werde hier sein. FALLS du es bis hierher zurück schaffst."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~STELL DEINE FRAGEN. DOCH WISSE, DASS DU DICH NIE AN DIE ANTWORTEN ERINNERN WIRST.~ */
  IF ~~ THEN REPLY #66132 /* ~"Du hast alles getan, um zu verhindern, dass wir uns von Angesicht zu Angesicht gegenüberstehen. Warum?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"Warum hast du Vhailor nach mir ausgesandt, obwohl du wußtest, daß er mich hätte töten können?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"Warum hast du Ignus nach mir ausgesandt, obwohl du wußtest, daß er mich hätte töten können?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"Du sagtest, uns beide würde etwas verbinden."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"Ich mag unsterblich sein, aber Ravel hat mir gesagt, daß das Ritual einen Fehler hat: Jedesmal, wenn ich sterbe, verliere ich einen Teil meines Gedächtnisses. Im Laufe vieler Tode werde ich sogar meine Fähigkeit verlieren werden, selbst zu denken."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"Es ist uns nicht vorbestimmt, getrennt zu sein, Geist. Unsere Trennung ist unnatürlich. Ich kann nicht so weiterleben und -sterben."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"Wenn wir verbunden sind, wie du sagst, dann würde ich meinen Namen kennen."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"Wenn wir verbunden sind, wie du sagst, dann würde ich meinen Namen kennen."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"Wenn wir verbunden sind, wie du sagst, dann würde ich meinen Namen kennen."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"Wenn wir verbunden sind, wie du sagst, dann würde ich meinen Namen kennen."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"Wenn wir verbunden sind, wie du sagst, dann sag mir, wie wir heißen."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"Wenn wir verbunden sind, wie du sagst, dann sag mir, wie wir heißen."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"Wenn wir verbunden sind, wie du sagst, dann sag mir, wie wir heißen."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"Wenn wir verbunden sind, wie du sagst, dann sag mir, wie wir heißen."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"Meine Freunde... Sie sollen ihr Leben zurückbekommen und diesen Ort verlassen können."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"Meine Gefährten... Ich muß ihr Leben nehmen, nicht du. Sie sollen wieder auferstehen. Jetzt."~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"Belebe meinen Freund wieder, und gewähre ihm freies Geleit von diesem Ort. *Falls* du die Macht dazu hast."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"Ich verlange, daß du meinen Begleiter wiederbelebst und ihm freies Geleit von diesem Ort gewährst. *Falls* du die Macht dazu hast."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"Dann stell ich dir eine letzte Frage: Was vermag das Wesen eines Menschen zu verändern?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"Das genügt mir. Mach dich bereit, Geist. Es wird sich zeigen, ob meine Sterblichkeit besiegbar ist."~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~DANN MACH DICH BEREIT, ERNEUT ZU STERBEN, GEBROCHENER. ~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"Selbst wenn ich sterbe, komme ich wieder. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"Selbst wenn ich sterbe, komme ich wieder. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Selbst wenn ich sterbe, komme ich wieder. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Selbst wenn ich sterbe, komme ich wieder. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~DIES WIRD DIR NICHTS *HELFEN*. DU HAST DEINEN BEGLEITER ZU EINEM ZWEITEN TOD VERURTEILT.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Selbst wenn wir sterben: Ich komme wieder zurück. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"Selbst wenn wir sterben: Ich komme wieder zurück. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"Selbst wenn wir sterben: Ich komme wieder zurück. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Selbst wenn wir sterben: Ich komme wieder zurück. Ich *schwöre* es. Ich finde dich wieder, egal wie lang es dauert."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~ES IST NICHT MEIN *WILLE*, DASS DEIN BEGLEITER GERETTET WIRD. DEIN STERBLICHER... *HUND* HAT MICH IN MEINEM HAUS ANGEGRIFFEN, UND SEIN TOD SOLL FÜR ALLE EINE WARNUNG SEIN, DIE MICH ANGREIFEN. ~ */
  IF ~~ THEN REPLY #68453 /* ~"Du *kannst* meinen Begleiter nicht wiederbeleben, oder?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"Ich glaube, du hast keine Wahl. Ich glaube nicht, daß du meinen Begleiter wiederbeleben *kannst*."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"Vielleicht folgst du ihm noch früh genug zum Tor des Todes. Ich hätte da noch ein paar Fragen..."~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"Dann wirst auch du sterben. Mach dich bereit, Geist. Wir werden ja sehen, ob meine Sterblichkeit niedergestreckt werden kann." ~ */ GOTO 141
END
