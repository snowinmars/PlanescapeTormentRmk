// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~Dieser gutaussehende junge Mann scheint ganz in Gedanken verloren. Seine Stirn und sein Mund sind nachdenklich in Falten gelegt.~ */
  IF ~~ THEN REPLY #43992 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~Laß ihn allein mit seinen Gedanken.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~Der junge Mann macht immer noch eine besorgte Miene. Er grüßt dich, als du näherkommst. "Ich entbiete Euch erneut meinen Gruß. Was kann ich für Euch tun?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"Seid auch Ihr gegrüßt, mein Herr. Was wünscht Ihr?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"Ja?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"Wer bist du noch mal?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"Bist du Montague? Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"Ich muß mit dir über Juliette sprechen."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"Was machst du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"Ich hätte ein paar Fragen über diesen Ort..."~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"Ich bin Montague, meines Zeichens Faktotum der Sinnsaten."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"Montague... Ich muß mit Euch über Juliette sprechen."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"Montague... Ich muß mit Euch über Juliette sprechen."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"Faktotum?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"Sinnsaten?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"Sehr wohl, mein Herr. Ein 'Mitglied', wenn's gefällig ist."~ */
  IF ~~ THEN REPLY #44016 /* ~"Sagtest du eben 'Sinnsaten'?"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"Sehr wohl, mein Herr... Die 'Gesellschaft der Empfindung' ist ein Bund Sigils... der größte. Falls Ihr nähere Auskünfte über die Sinnsaten wünscht, dann sprecht mit Splitter. Ihr findet ihn an der Innenseite des Eingangs zu diesem Gebäude."~ */
  IF ~~ THEN REPLY #44019 /* ~"Sagtest du eben 'Faktotum'?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"Ich betätige mich als Gehilfe eines Bundverwalters. Doch öfter als früher macht mich eine der Absonderlichkeiten dieses Lebens völlig ratlos."~ */
  IF ~~ THEN REPLY #44023 /* ~"Zum Beispiel...?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"Probleme der weiblichen Art."~ */
  IF ~~ THEN REPLY #44027 /* ~"Was ist das für ein Problem?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"Bist du etwa weiblich?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~Der junge Mann schaut dich lange an. "Nein."~ */
  IF ~~ THEN REPLY #44032 /* ~"Was ist das für ein Problem?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"Wie dem auch sei: Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"Ich weiß nicht, was mit ihr los ist. Ich habe versucht, sie aufzumuntern, aber ich habe keine Ahnung, was sie hat."~ */
  IF ~~ THEN REPLY #44036 /* ~"Wie läuft es denn so bei euch?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"Das tut mir leid. Ich hätte noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"Viel Glück. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"Bis auf diese Phase der Unlust und Unzufriedenheit ist alles prima! Alles läuft in den gewohnten, ruhigen Bahnen... Unsere Familien sind mehr als angetan von unserer möglichen Vereinigung, und ihre Geschwister lieben mich. Eigentlich stimmt alles."~ */
  IF ~~ THEN REPLY #44040 /* ~"Hmm. Vielleicht ist genau das euer Problem: keine Probleme."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"Das tut mir leid. Ich hätte noch ein paar Fragen.."~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"Ich hoffe, es renkt sich alles wieder ein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"Wie meint Ihr das, daß keine Probleme ein Problem sind? Bitte erklärt Euch, mein Herr."~ */
  IF ~~ THEN REPLY #44045 /* ~"Vielleicht will sie einfach ein wenig Feuer in eure Beziehung bringen."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"Vergiß es einfach. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"Wie wollt Ihr wissen, was sie will?!", fährt er dich an. "Wir lieben uns, bedingungslos, ohne diese schrecklichen Hüllen, die jedes andere junge Glück zu vergiften scheinen. Ich warne Euch, mein Herr. Ihr seid nichts als ein dümmlicher Kleingeist, der's nicht besser weiß!"~ */
  IF ~~ THEN REPLY #44049 /* ~"Mal halblang... Beruhig dich."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"Es ist dumm von dir, dich mit mir anzulegen - aber wenn du unbedingt kämpfen willst..."~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"Jetzt hast du mich genug beleidigt. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"Halt deine Zunge im Zaum, bevor ich sie dir rausreiße. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"Verzeihung... Meine Wut muß mit mir durchgegangen sein. Ich bitte Euch vielmals um Verzeihung, guter Herr."~ */
  IF ~~ THEN REPLY #44054 /* ~"Mach dir keine Gedanken. Ist nicht so schlimm."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"Paß bloß auf. Gegen mich zu kämpfen, könnte sich als der größte Fehler herausstellen, den du je begangen hast."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~Ignoriere ihn und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"Sehr gnädig von Euch, mein Herr."~ */
  IF ~~ THEN REPLY #44058 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"Sehr wohl, mein Herr. Ich werde mich vorsehen."~ */
  IF ~~ THEN REPLY #44061 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"Aha?" Er blickt dich verwirrt und etwas mißtrauisch an.~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"Ich hab' zufällig mitbekommen, was sie im Bordell gesagt hat. Sie hat nämlich eine Affäre."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"Ich beanspruche ihre Liebe. Und ich verlange, daß du deine geheuchelten Liebesbeteuerungen zurückziehst, bevor ich dich durch den Fleischwolf drehe."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"Ach, vergiß es am besten. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"Aber sprechen wir später über sie. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"Ihr lügt. Bringt mir Beweise, wenn ich Eure Behauptung ernst nehmen soll."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"Ich hab auch diese Briefe gefunden... Hier, lies."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~Lüge: "Ich... habe gesehn, wie sie seine Briefe gelesen hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"Sprechen wir später darüber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"Das stimmt nicht. Ich weigere mich, Euren Worten Glauben zu schenken... Ich mach mir erst Gedanken, wenn ich das Gewicht dieser Briefe in meinen Händen spüre. Bringt mir die Briefe - dann können wir erneut über dieses Thema sprechen."~ */
  IF ~~ THEN REPLY #44073 /* ~"Ich komme zurück, wenn ich sie habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~Er nimmt die Briefe und überfliegt sie. "Dann ist es also wahr! Sie hat einen glühenden Verehrer. Ach! Ich glaube, Liebeskummer ist das Schicksal der Sinnsaten. Ich werde mich nach einer neuen Liebe umsehen und sie diesem anderen Freier überlassen - wenn er ihr schon diese leidenschaftlichen Worte schreibt."~ */
  IF ~~ THEN REPLY #44075 /* ~"Warte - das war nur eine List."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"Dann wünsch ich dir alles Gute. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"Wie? Wovon redet Ihr?"~ */
  IF ~~ THEN REPLY #44078 /* ~"Sie will dich nur provozieren, damit du etwas mehr Leidenschaft zeigst."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"Vergiß es... Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"Und warum hat sie nicht einfach was gesagt?"~ */
  IF ~~ THEN REPLY #44081 /* ~"Daran hat sie wahrscheinlich gar nicht gedacht."~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"Vielleicht fällt es ihr so leichter."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"Offensichtlich nicht. Und was jetzt?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"Nichts, glaub ich."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"Gut. Dann werde ich erstmal nichts unternehmen."~ */
  IF ~~ THEN REPLY #44088 /* ~"Ich hoffe, du kriegst das hin. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"Mach, was du willst. Leb wohl."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"Wie könnte ich das anstellen, mein Herr?"~ */
  IF ~~ THEN REPLY #44091 /* ~"Sag, daß du von eurer Beziehung genug hast, daß du sie nicht mehr interessant findest."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"Sag ihr, daß du eine Affäre hast."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"Ich bin nicht sicher. Das mußt du wissen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"Ich soll also so tun, als interessiere sie mich nicht mehr, um so ihr Interesse an mir zu fördern. Das ist wahre Ironie - aber ich bin einverstanden. Ich bin gespannt, was geschehen wird."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"Viel Glück - Ich hoffe, es klappt. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"Viel Glück - Ich hoffe, es klappt. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"Dies könnte gefährlich sein. Doch dann macht sie sich auf jeden Fall ein paar Gedanken über unsere Beziehung und kämpft um sie. Ich werde es tun. Doch wie bring ich's ihr bei?"~ */
  IF ~~ THEN REPLY #44100 /* ~"Ich mach das schon. Ich sag ihr einfach, ich hätte dich mit einer anderen gesehen."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"Ich bin nicht sicher. Das mußt du wissen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"In Ordnung. Euer Wille geschehe."~ */
  IF ~~ THEN REPLY #44103 /* ~"Wenn ich's mir genau überlege, solltest du dich doch lieber selbst drum kümmern."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"Ich sag's ihr auf jeden Fall, wenn wir uns das nächste Mal treffen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"Ich sag's ihr auf jeden Fall, wenn wir uns das nächste Mal treffen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"Wirklich?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"Ja, das klingt sehr gut."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"Viel Glück - Ich hoffe, es klappt. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"Viel Glück - Ich hoffe, es klappt. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"Ja, vielleicht... Aber was sonst?"~ */
  IF ~~ THEN REPLY #44113 /* ~"Sag, daß du von eurer Beziehung genug hast, daß du sie nicht mehr interessant findest."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"Sag ihr, daß du eine Affäre hast."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"Ich bin nicht sicher. Das mußt du wissen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"Aber... Ich dachte, wir können über alles reden."~ */
  IF ~~ THEN REPLY #44117 /* ~"Vielleicht lag es an der Sache an sich, daß sie nicht drüber reden wollte."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"Da hast du wahrscheinlich falsch gedacht."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"Was würdet Ihr mir empfehlen, mein Herr?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"Nichts, glaub ich."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"Ist Eure Liebe für sie so groß, daß Ihr gegen mich kämpfen würdet?"~ */
  IF ~~ THEN REPLY #44124 /* ~"Ja."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"Nein, ich liebe sie nicht - aber ich werde um sie kämpfen."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~Er schaut dich prüfend an. "Eure Worte zeugen von Leidenschaft. Und Leidenschaft kommt von Liebe. Ihr liebt sie, und eine Liebe wie die Eure kann ich ihr nicht vorenthalten. Ich werde auf sie verzichten. Euer Weg ist frei."~ */
  IF ~~ THEN REPLY #44127 /* ~"Warte... Das war doch alles nur eine List."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"Hm... Na dann. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"Eine List? Was für eine List?"~ */
  IF ~~ THEN REPLY #44131 /* ~"Sie wollte dich provozieren, damit du um sie kämpfst."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"Vergiß es... Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"Wie? Sie dachte, ich würde sie so heftig lieben, daß ich mich sogar mit einem so angsteinflößenden Narbengesicht wie dir anlegen würde? Da hat sie meine Gefühle wohl etwas überschätzt. So... Und was ist jetzt mit dieser List?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"Warum drehst du nicht einfach den Spieß um..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"Nichts, glaub ich."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"Ja, aber... Das zeugt von Leidenschaft. Und Leidenschaft kommt von Liebe. Ihr liebt sie, und eine Liebe wie die Eure kann ich ihr nicht vorenthalten. Ich bin mir ihrer Schönheit, ihrer Mäßigung, ihrer Tugend bewußt, und ich weiß, daß sie Männer zu Großtaten inspirieren kann. Doch ich werde auf sie verzichten. Euer Weg ist frei."~ */
  IF ~~ THEN REPLY #44138 /* ~"Warte... Das war doch alles nur eine List."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"Hm... Na dann. Leb wohl."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"Die Städtische Festhalle? Wendet Euch am besten an Splitter. Ihr findet ihn an der Innenseite des Eingangs zu diesem Gebäude."~ */
  IF ~~ THEN REPLY #44141 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"Hmm... Die legendäre Nachthexe, was? Wendet Euch an Quell, mein Herr - mit solchen Dingen kennt er sich am besten aus. Ihr findet ihn in der Festhalle. Wo genau, weiß ich nicht."~ */
  IF ~~ THEN REPLY #44144 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"Gehabt auch Ihr Euch wohl, mein Herr. Ich habe jetzt einige Dinge zu tun. Wir können ein andermal wieder darüber sprechen." Montague verneigt sich und geht.~ */
  IF ~~ THEN REPLY #44147 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END
