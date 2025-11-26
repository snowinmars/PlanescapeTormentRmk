// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"Heda! Wer ist das? WACHEN! ER IST HIER DRÜBEN!"~ */
  IF ~~ THEN REPLY #12871 /* ~Erledigt.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"Du wirst mich nicht mit deinem Gerede besudeln! Hinfort mit dir!"~ */
  IF ~~ THEN REPLY #12873 /* ~Geh weg.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"Was hat dir Kleiner Speichellecker erzählt? Ich bin sicher, das waren nichts als Lügen."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"Ich hab' noch nicht mit ihm gesprochen. Ich hatte noch Fragen, die ich dir stellen wollte."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"Er meint, er wolle überhaupt keinen reinlegen. Statt dessen sagt er, daß er mit eigenen Augen gesehen hat, wie du den armen Schlucker um die Ecke gebracht hast."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"Ich verfolge nach wie vor diese Anarchistenspur."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"Er sagt, er hätte die Ahle bei dem Toten gelassen, aber nur, weil er sichergehen wollte, daß du mit dem Tod in Verbindung gebracht würdest. Er sagt, du bist ein Mörder, und er möchte sichergehen, daß du gefaßt wirst."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"Er sagt, er hätte die Ahle bei dem Toten gelassen, aber nur, weil er sichergehen wollte, daß du mit dem Tod in Verbindung gebracht würdest. Er sagt, du bist ein Mörder, und er möchte sichergehen, daß du gefaßt wirst."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"Ich habe mich entschieden, wen ich anklagen werde."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"Das geht dich erst mal nichts an. Ich brauche von dir Antworten auf ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"Noch nichts. Leb wohl."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"Eine Schande wegen des armen Schmieds Avildon, wirklich. Trotzdem. Das war keiner, der hart gearbeitet hat. Er war einfach nicht *engagiert*. So ist das im Lauf der Ebenen, hör mir gut zu: Jeder Knochenbrecher bekommt, was er verdient. Ach, ja. Was kann der alte Thildon für dich tun?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"Saros - du erinnerst dich doch an Saros, oder? - gab mir eine Ahle, die neben der Leiche gefunden wurde. Seltsamerweise ist dein Name in den Griff dieser Ahle eingraviert. Wie erklärst du dir das?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~Ich habe Thildon mit der Ahle konfrontiert, die Saros mir gegeben hatte. Thildon behauptet, daß Saros ihm das Ganze anhängen will.~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"Ich würde dir gern ein paar Fragen stellen."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"Vorerst nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"Das ist nicht nur so, weil ich es sage, Dussel! Du hast es hier mit nem gefährlichen Jungen zu tun, und du mußt dafür sorgen, daß er nicht noch jemanden tötet. Mach dich an die Arbeit!"~ */
  IF ~~ THEN REPLY #12888 /* ~"Thildon, ich sagte, ich bräuchte Antworten auf ein paar Fragen. Und ich brauche sie jetzt."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"Ich bin an dem Fall dran. Mach dir keine Sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"Er WAS? Ich sag dir, daß der Junge ein Dieb und ein Mörder ist, und du glaubst mir nicht? Was, wenn ich dir sage, daß der Bursche auch noch ein Anarchist ist, ein Mitglied der Revolutionsliga?"~ */
  IF ~~ THEN REPLY #12891 /* ~"Warum sollte ich das glauben?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon behauptet, daß Saros ein Anarchist ist, der ihn gemeinsam mit der Ingenieurin Bedai-Lihn in Verruf bringen will.~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~Lüge: "Wenn das wahr wäre, würde ich dafür sorgen, daß er vor Gericht gebracht wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon behauptet, daß Saros ein Anarchist ist, der ihn gemeinsam mit der Ingenieurin Bedai-Lihn in Verruf bringen will.~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~Wahrheit: " Wenn das wahr wäre, würde ich dafür sorgen, daß er vor Gericht gebracht wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon behauptet, daß Saros ein Anarchist ist, der ihn gemeinsam mit der Ingenieurin Bedai-Lihn in Verruf bringen will.~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"Das ist mir, ehrlich gesagt, egal. Ich glaube, ich habe genug gehört, um sicher zu sein, daß du der Schuldige bist."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~Ein frommer Blick kommt in seine Augen. "Weil ich das so sag. Weil ich gleich was sag, was einen Kriminellen aus mir macht, aber ich sag's, damit Gerechtigkeit getan wird." Er macht eine Pause. "Ich weiß, daß er ein Anarchist ist, weil er versucht hat, mich zu rekrutieren. Er und diese Ingenieurin Bedai-Lihn. Ich hab' ihm gesagt, daß ich's tu, um ihm ne Falle zu stellen, aber dann hab' ich gemerkt, daß ich einfach nich die Nerven hab', dem armen Saros zu schaden. Ich hab' sie im Stich gelassen, und jetzt versuchen die, ihre Spuren zu verwischen. Darum wollen die mich dran kriegen. Die sind die Killer. Nicht ich."~ */
  IF ~~ THEN REPLY #12896 /* ~"Nehmen wir mal an, daß ich diese Geschichte glaube, warum sollte ich dich nicht ebenfalls einsperren lassen?"~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"Sagst du. Ich werde das überprüfen. Beantworte mir zunächst noch ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"Gut. Ich werde das sofort überprüfen. Bleib, wo du bist, Thildon. Bis bald."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"Tja, es ist wahr! Ich schwör's bei den heiligen Augen meiner armen, toten Mutter. Er und diese Ingenieurin, Bedai-Lihn, die wollten mich rekrutieren. Ich hab' ihnen gesagt, daß ich beitrete, weil ich die Verräter überführen wollte. Ich steh zu meinem Bund. Aber dann, tja, dann hab' ich beschlossen, daß es einfach nicht das Richtige für mich wäre, das zu tun. Da haben sie beschlossen, daß sie mich am nimmergrünen Baum schaukeln sehen wollten."~ */
  IF ~~ THEN REPLY #12900 /* ~"Interessant. Und doch letztendlich unglaubwürdig. Das hört sich einfach zu weit hergeholt an. Ich denke, ich muß dich einfach anzeigen."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"Ich verstehe. Ich werde das überprüfen lassen. Beantworte mir jetzt noch ein paar Fragen, Thildon."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"Ich werd das überprüfen. Vielen Dank für den Hinweis."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"Was? Du beschuldigst MICH? Aber ich hab' nichts getan! Dussel, du hast den Falschen! Bitte! Ich hab's nicht getan!"~ */
  IF ~~ THEN REPLY #12904 /* ~"Ich hab' nur 'nen Scherz gemacht, Thildon. Entspann dich. Und beantworte mir mal ein paar andere Fragen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"Hey, war nur ein Scherz, Thildon. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"Sämtliche Indizien deuten auf dich, Thildon. Das nächste Mal sehen wir uns bei deiner Hinrichtung. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"Immer noch auf der Suche? Bist nicht gerade der Meisterdetektiv, was? Ich weiß nicht mal, warum ich mir die Mühe mach, dir zu helfen, wenn du nicht mal die Informationen überprüfst, die ich dir geb..."~ */
  IF ~~ THEN REPLY #12908 /* ~"Schluß mit der falschen Frömmigkeit, Thildon. Beantworte mir ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"Ich hab' gehört, was ich von dir hören wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~Alle Farbe weicht aus dem Gesich des Aufsehers. "Er... was... er... ich... er hat zugegeben, daß er ein Anarchist ist?"~ */
  IF ~~ THEN REPLY #12911 /* ~"Ja. Er scheint der Ansicht zu sein, daß du eine Gefahr für alle um dich herum darstellst, egal ob es sich dabei um Anarchisten oder Göttermenschen handelt, und er denkt, daß jemand dich aufhalten muß. Er ist bereit, seine eigenen Verbrechen zuzugeben, nur um sicherzugehen, daß du vor Gericht kommst."~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"Ja. Und du bist ein Mörder. Deine Handlungen verraten dich."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"Er... hat er? Dann mußt du ihn festnehmen! Siehst du denn nicht, daß er eine Bedrohung darstellt? Wie konntest du nur diesem diebischen, lügenden Dreikäsehoch vertrauen, wenn es doch offensichtlich ist, daß er keine Moral hat? Nimm ihn fest, und Schluß damit!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"Also, Thildon, so wie ich das verstehe, ist er bereit, sich selbst zu stellen, wenn du ebenfalls festgenommen wirst. Alles, was ich über ihn gehört habe, sagt mir, daß er im Grunde genommen kein schlechter Kerl ist - und wenn er freiwillig eine Bestrafung auf sich nimmt, nur damit du deine gerechte Strafe erhältst, dann mußt du es wirklich verdient haben."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"Das scheint falsch zu sein. Warum sollte er das tun?"~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"Du erteilst hier keinerlei Befehle, Thildon. Das solltest du nicht vergessen. Und nun beantworte mir ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"Treib's nicht zu weit, Thildon. Du befindest dich ohnehin schon auf unsicherem Boden. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"Um die Agenda der Anarchisten zu verbreiten, du Dussel!" Er senkt seine Stimme und starrt dich böse an. "Diese Anarchisten, weißte, das sind doch alles Fanatiker, und die sind nicht gerade nett zu Leuten wie mir, die versuchen, sie zu entlarven. Die opfern jeden und alles, um mit ihren Plänen weiterzukommen." Er richtet sich wieder auf und verkündet: "Es ist an ehrbaren Männern wie mir, dafür zu sorgen, daß diese Dussel so wenig Schaden wie möglich anrichten können."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~Ehrlich, Thildon. Saros ist ein junger Mann, und junge Männer machen nun mal Fehler. Ich bezweifle stark, daß er sein eigenes Leben wegwerfen würde, um dich dranzukriegen, und das nur, um die Leute zu schützen, die ihm das Ganze erst eingebrockt haben. Loyalität ist schön und gut, aber er ist schlau genug, um zu erkennen, wann er reingelegt wird. Nein, Thildon, ich denke, du trägst hier die Schuld."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"Es hat den Anschein, als ob hier irgendwas nicht stimmt, aber ich kann nicht sagen, was."~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"Ehrbar? Daß ich nicht lache. Beantworte mir noch ein paar Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"Jaja, du leistest ganze Arbeit. Leb wohl, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"Was hier nicht stimmt, ist, daß du Dummkopf einfach die Pläne nicht verstehen kannst, die diese Dussel aushecken! Zieh deinen Kopf aus der Dunkelheit deines Fundaments, du Schlucker, und loch den kleinen Bastard ein!" Er sieht einen Moment lang schockiert aus, als ihm klar wird, was er gesagt hat, und zu wem, und dann fügt er schnell hinzu: "He. Ich entschuldige mich. Das ist der Streß im Moment. Ist nicht so einfach, von allen für einen Mörder und Anarchisten gehalten zu werden."~ */
  IF ~~ THEN REPLY #12924 /* ~"Sicher nicht. Ich werde das sorgfältig prüfen müssen. Beantworte mir nun noch ein paar Fragen."
~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"Sicher nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~Sein fleischiges Gesicht läuft vor Wut rot an. "Du beschuldigst MICH? Aber ich bin nicht der Mörder! Ich versuch nur, die Anarchisten zu entlarven, du Dussel! Verdammt, das kannst du mir nicht antun! Du kannst niemandem trauen, der behauptet, gesehen zu haben, wie ich's getan hab', also kannst du auch nicht sagen, ich hätt's getan!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"Würdest du dasselbe unter Eid und Zauber sagen? Ich wette, Saros würde."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"Saros gibt einen viel besseren Zeugen ab. Er ist überzeugender, und er ist auch nicht so verhaßt hier wie du. Ich wette, daß seine Geschichte stimmt, und das werde ich auch Keldor sagen."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"Ich lasse euch beide verhaften. Wie schmeckt dir das? Leb wohl, Thildon. Wir werden uns nicht wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"Und ob ich das kann. Leb wohl, Thildon."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"Ich werde gründlich darüber nachdenken. In der Zwischenzeit, genieß dein Leben, Thildon. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"Mist. Kann ich wenigstens meinen Kram packen und diesem Ort eins grinsen? Der alte Thildon wird schon dafür sorgen, daß du es nicht bereust."~ */
  IF ~~ THEN REPLY #12933 /* ~"Sicher. Na los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"Nur, wenn du dich verflüchtigst, bevor ich bei Keldor bin. Und da stehen deine Chancen eher schlecht."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"Nein. Bleib hier oder trage schlimmere Konsequenzen. Du kannst dich drauf verlassen, daß ich dafür sorgen werde. Schönen Tag noch, Thildon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"Ich bin ja schon weg. Von mir hörst du keinen Pieps mehr."~ */
  IF ~~ THEN REPLY #12937 /* ~"Geh, bevor ich's mir noch mal anders überlege."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"Ich hab's mir anders überlegt. Du wirst bald ein kleines Stelldichein mit dem Henker haben. Leb wohl, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"Du willst Antworten? Was denn zum Beispiel?"~ */
  IF ~~ THEN REPLY #12940 /* ~"Wer bist du?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"Erzähl mir von den Göttermenschen."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"Was hast du in der Mordnacht gemacht?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"Wen hast du ausgesucht?" Der alte Mann wirkt seltsam eifrig.~ */
  IF ~~ THEN REPLY #12951 /* ~"Ich werde Saros als den Mörder nennen."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"Ich klage sowohl dich als auch Saros an."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"Ich sage Keldor, daß du der Mörder bist."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"Noch keinen. Ich habe noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"Das sage ich noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"Thildon, der Graue, Aufseher für diesen Hof. Es ist mein Job, dafür zu sorgen, daß meine Arbeiter mit ihrer Arbeit fertigwerden, und daß Leute wie du sie nicht davon ablenken. Die arbeiten ohnehin schon wenig genug, die kleinen Schlucker, und die würden's noch fertig bringen und den Rest des Tages tatenlos verplempern, wenn ich nicht hier wäre. Ich bin hart... aber gerecht. Frag nur rum."~ */
  IF ~~ THEN REPLY #12957 /* ~"Warum nennen sie dich 'den Grauen'?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."
~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"Dann bist du derjenige, der mir ein wenig Eisenerz für die Schmiede verschaffen kann..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"Ja, vielleicht. Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"Ja, vielleicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"Weil ich meistens voller Ruß bin von diesen elenden Öfen. Das is'n Spitzname, den mir meine Arbeiter gegeben haben... aus Zuneigung, zweifelsohne."~ */
  IF ~~ THEN REPLY #12968 /* ~Sarkastisch: "Zweifelsohne. Sie scheinen deine zarte Seele wirklich zu respektieren."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~Ernst: "Zweifelsohne."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"Sicher. So muß es sein."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"Willst du etwa andeuten, ich wäre nicht absolut gerecht zu meinen Arbeitern? Das bin ich nämlich sehr wohl! Ich bin wie ein Vater zu ihnen!"~ */
  IF ~~ THEN REPLY #12974 /* ~"Ich fürchte mal, die meisten von ihnen wurden als Kinder regelmäßig geschlagen..."~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"Ich möchte nur andeuten, daß du wohl ein wenig ZU gerecht bist, wenn du verstehst, was ich meine."~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"Also gut, also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"Ich bin mir sicher. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~Sein Gesicht läuft vor Wut lila an. Als er sich endlich unter Kontrolle hat, sprudelt er hervor: "Aus meinen Augen, oder ich rufe die Wachen!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"Nicht während ich diesen Mord noch untersuche. Beantworte mir nun ein paar Fragen."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"Beantworte mir nur ein paar Fragen..."
~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"In Ordnung, ich gehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~Er bellt nach den Wachen. "WACHEN! Schafft mir diesen traurigen Kadaver aus den Augen und sorgt dafür, daß er WEGBLEIBT!"~ */
  IF ~~ THEN REPLY #12983 /* ~"Das wirst du bereuen. Stirb, du Schwein."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"Na gut. Dann leb wohl."
~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"Glaubst du wirklich? Sagst du da gerade, ich sollte darüber nachdenken, wie ich sie behandle? Tja, das werd ich. Und ich schätze mal, ich mach so weiter wie bisher! Und jetzt raus hier."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"Du gibst hier momentan überhaupt keine Befehle. Beantworte mir noch ein paar Fragen."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"Beantworte mir doch noch ein paar Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"In Ordnung, ich gehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"Das ist richtig. Das tun sie. Sie wissen, wenn sie's nicht tun, bekommen sie, was sie verdienen."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"Du meinst, wie der Schmied - der hat auch bekommen, was er verdient hat?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~Er erblaßt einen Moment lang. "Das hab' ich nur so gesagt. Ich meinte damit nichts."~ */
  IF ~~ THEN REPLY #12994 /* ~"Okay. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"Das werden wir sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"Was soll das denn jetzt heißen?"~ */
  IF ~~ THEN REPLY #12997 /* ~"Das heißt, daß ich dir zustimme."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"Das heißt, daß ich nicht glaube, daß sie viel für dich übrig haben."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"Das heißt, hau ab, du Dussel."~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"Gut. Das Multiversum wäre ein besserer Ort, wenn das jeder täte. Und jetzt muß ich zurück an die Arbeit."~ */
  IF ~~ THEN REPLY #13001 /* ~"Ich hätte nur noch ein paar weitere Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"Ach, glaub doch, was du willst, kleiner Mann. Ich kenne meine Arbeiter. Die brauchen eine feste Hand, die sie führt. Sie respektieren mich dafür. Und jetzt geh mir aus den Augen."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"Du gibst hier momentan überhaupt keine Befehle. Beantworte mir noch ein paar Fragen."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"Beantworte mir doch noch ein paar Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"Sie haben mich aufgenommen und mich geschult und zu dem gemacht, was ich heute bin, und dafür muß ich ihnen danken. Sie haben mein vorhandenes Talent genommen und es zu einer Fertigkeit geformt. Ich sag dir, ich bin ein Liebling des Bundmeisters, und eines schönen Tages wird er jedem zeigen, wie wichtig ich wirklich bin für diese Organisation. Sie sagen mir, daß jeder ein Stück Göttlichkeit in sich trägt. Für mich ist das richtig. Ich glaub, ehrlich gesagt, daß ich dem sogar näher bin als die meisten Leute. Das gibt mir das Recht, wie ein Gott zu handeln und vollkommene Hingabe von meinen Untergebenen zu erwarten. Ich lerne, Macht zu übernehmen und mit meinem Glauben an mich selbst Berge zu versetzen. Wenn ich erst mal den Kosmos beherrsche, kannst du wetten, daß ich mich an jeden einzelnen Dussel erinnern werde, der mir im Weg gestanden hat."~ */
  IF ~~ THEN REPLY #13008 /* ~"Das ist... interessant. Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"Verstehe. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"Du denkst also, du hast noch nicht genug geschmiedet, was? Also gut, dann nimm's, und gut ist." Er schnappt grob einen Klumpen Eisen von einem nahen Stapel und wirft ihn dir in die Hände. "Wolltest du noch was, oder kann ich wieder zurück an die Arbeit und über diese Unglücklichen Aufsicht führen?"~ */
  IF ~~ THEN REPLY #13011 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"Mach dich wieder an die Arbeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~Er schielt dich an. "Du brauchst das nicht, soweit ich das sagen kann. Mach dich in die Irrgänge, Dussel."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"Warum gibst du's mir nicht einfach, und ich werde deine Gesundheit schonen?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"Warum gibst du's mir nicht einfach, und ich werde deine Gesundheit schonen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"Gut, gut. Ich hätte dann noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"Wenn du's so willst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~Er sieht dich von oben bis unten sorgfältig an und denkt nach, und dann sagt er: "Du willst ein Schmied sein, was? Kann nicht sagen, daß das Feuer bei so einer Haut viel Schaden anrichten könnte. Dann nimm's, und komm meinen Arbeitern nicht in die Quere. Guten Tag, der Herr."~ */
  IF ~~ THEN REPLY #13019 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"Sieht so aus, als ob sie heutzutage jeden bei den Göttermenschen aufnehmen", grummelt er. "Ist nicht mehr so wie früher, als man echtes Potential beweisen mußte, um Mitglied zu werden. Willste dieses Eisen für deine läppische Prüfung? Hier, nimm, und ab in die Irrgänge." Er wirft dir einen Klumpen kaltes Erz in die Hände.~ */
  IF ~~ THEN REPLY #13021 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~Er sieht sich den Umfang deiner Arme an, dann dein Gesicht, und beschließt, daß du es ernst meinst. "Glaub bloß nicht, daß ich das vergesse, Dussel", sagt er, als er dir einen Klumpen Eisenerz gibt - aber er schaut dir dabei nicht in die Augen.~ */
  IF ~~ THEN REPLY #13024 /* ~"Danke. Ich hätte noch mehr Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~Er sieht sich den Umfang deiner Arme an und schnaubt verächtlich. "Und wieso sollte ich vor dir Angst haben? Hau ab, Dussel." Er dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #13027 /* ~Greif ihn an.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"Was ich gemacht hab'? Tja, ich hab'... ich hab' in meinem Zimmer gesessen, bei einem schönen Laib Brot und einem Krug Wein, gemütlich bei mir zu Hause. Bin abends nicht groß ausgegangen. Sah die Notwendigkeit nicht."~ */
  IF ~~ THEN REPLY #13030 /* ~"Kennst du irgendjemanden, der etwas anderes beschwören könnte?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"Verstehe. Leb wohl."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"Nein. Ich hab' nie die Notwendigkeit gesehen, mich davon zu überzeugen. Wo du nachfragen kannst, wenn du wirklich nach Spuren suchst, dann bei Saros. Der kleine diebische Ritter geht doch überall hin, wo doch sein Vater hier so ein hohes Tier ist. Der war immer auf neue Erfahrungen aus - der Junge ist praktisch 'n Sinnsate, wenn du mich fragst. Wollte wahrscheinlich mal jemanden umbringen, um zu sehen, ob er damit davonkommt."~ */
  IF ~~ THEN REPLY #13034 /* ~"Saros, was? Ich werd's mir merken. In der Zwischenzeit hätte ich noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"Saros, was? Ich werde das überprüfen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~Er grinst breit, zeigt dabei eine Reihe verrotteter Zähne und lehnt sich vor, um dir die Hand zu schütteln. "Ist ne gute Wahl, die du getroffen hast, Freund, ne gute Wahl. Ich freu mich schon drauf, dich mal wiederzusehen."~ */
  IF ~~ THEN REPLY #13037 /* ~"Jede Wette. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~Der beflissene Ausdruck fällt ihm aus dem Gesicht, als sei er geschlagen worden. "Uns beide? Was hab' ich denn getan?"~ */
  IF ~~ THEN REPLY #13039 /* ~"Ich glaube, daß du den Schmied umgebracht hast. Ich glaube weiterhin, daß du Saros das Ganze anhängen wolltest. Außerdem glaube ich, daß Saros dich illegal bezichtigen wollte, und daß er anderer Verbrechen schuldig ist."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"Ich hab' nur 'nen Scherz gemacht, Thildon. Entspann dich. Und beantworte mir mal ein paar andere Fragen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"Hey, war nur ein Scherz, Thildon. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"Du hast Avildon, den Schmied, getötet und versucht, dich durch Lügen darauszuwinden. Leb wohl."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"Was denn, du schon wieder?"~ */
  IF ~~ THEN REPLY #13045 /* ~"Beantworte mir ein paar Fragen, Thildon."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~Du siehst einen Mann mit flachem Bauch und einem Stoppelbart. Er riecht so, als ob er sich ewig nicht mehr gewaschen hat, und sein Atem tut deinem Frühstück auch nicht gerade gut. Als du auf ihn zugehst, kommandiert er gerade seine Untergebenen herum, und einem gibt er einen Satz heiße Ohren. Er dreht sich zu dir um und zieht seinen Gürtel hoch. "Was willst du?"~ */
  IF ~~ THEN REPLY #13048 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~Er sieht einen Moment lang durcheinander aus und sagt dann: "Saros ist ein Dieb. Wahrscheinlich hat er's mir gestohlen. Tatsächlich hab' ich die Ahle schon ne Weile vermißt - ich hab's nie irgend jemandem gesagt, weil ich dachte, ich hätt sie verloren. Jetzt weiß ich, daß Saros sie gestohlen hat, um mich reinzulegen. Du solltest besser gehen und ihn greifen, bevor er dir eins grinst." Als er deinen Gesichtsausdruck sieht, fügt er hinzu: "Bevor er entkommt."~ */
  IF ~~ THEN REPLY #13092 /* ~"Das hört sich ein wenig zu gut an. Ich werde ihn danach fragen, sobald ich ein paar Antworten von dir bekommen habe..."~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"Na, dann geh ich ihn jetzt suchen. Leb wohl."~ */ EXIT
END
