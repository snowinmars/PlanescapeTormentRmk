// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*Endlich*. Ich dachte, ich würde noch mal sterben, während ich darauf warte, daß er aufsteht."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"Paß auf, *wie* du mit mir sprichst, du schwachsinniges Wrack. Er hatte Glück, daß er es hier zu mir geschafft hat, bei all den Fallen, die *du* auf den Ebenen verteilt hast. Ich schwöre, wenn ich durch die Zeit hätte reisen können, um dich von deinem *Elend* zu erlösen, ich h..."~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"Bei allen Höllen, er hat sein Gedächtnis verloren! Verflucht! Jetzt ist er nutzlos für uns!"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"Jetzt *reicht's* mir aber mit deinem Geheule! Sei ruhig, oder -"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"Die Zeit ist nicht mehr auf unserer Seite. Ich werde hier nicht mehr tatenlos herumstehen, während unser Widersacher uns ohne Zweifel jagt! Wir haben lange genug darauf gewartet, daß er aufwacht - Ich werde *jetzt* mit ihm sprechen."~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~Der Mann vor dir ähnelt dir, aber er verhält sich mehr wie eine Macht als ein Mann. Seine Augen betrachten dich eingehend, und während du ihn musterst, spürst du, wie er dich seinerseits betrachtet. "So... ist es also dazu gekommen." ~ */
  IF ~~ THEN REPLY #62918 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"Ich werde meinen Namen weder dir noch einem anderen Menschen preisgeben." Die Stimme des Mannes ist rauh, wie deine, und sie klingt seltsam in deinen Ohren nach. "Und was das 'wer ich bin' betrifft: Das solltest du dich selbst fragen - du bist eine *meiner* Inkarnationen. Du hast es hierher geschafft, mit meinen Tips, die dich geführt haben."~ */
  IF ~~ THEN REPLY #62920 /* ~"Wir - wir sind verschiedene Inkarnationen? Wie ist das möglich?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~Die Inkarnation starrt dich mit steinernem Blick an, während du näherkommst. Sie sieht aus, als wolle sie deine Schwächen abschätzen. ~ */
  IF ~~ THEN REPLY #62922 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"Wenn du ein Teil von mir bist, dann gibt es ein paar Dinge, die ich gerne wüßte."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~Laß die Inkarnation in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~Die Inkarnation ist einen Moment lang still, dann wird ihr Ausdruck verächtlich. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"Wenn es etwas gibt, das ich an dir *gehaßt* habe, dann sind das deine vielen Fragen - deine verzweifelte Suche nach Antworten und Bedeutungen." Die Stimme des Mannes klingt wie eine Machete, und in seinen Augen flackert Ärger auf. "Die Zeit für Fragen ist vorbei. Jetzt wirst du mir *zuhören*. Ich war der Erste, der in die Festung eindrang, und was immer es war, das uns hier erwartet, konnte mich irgendwie besiegen. Aber ein zweites Mal wird ihm das nicht gelingen."~ */
  IF ~~ THEN REPLY #62927 /* ~"Du... klingst so, als wolltest du bekämpfen, was auch immer hier lauert."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~Der Mann sieht dich merkwürdig an und mustert dich. "Natürlich. Das ist der einzige Grund, warum wir uns jetzt unterhalten. Du mußt meine Hülle sein, aber dein Geist muß *mein* Geist sein. Verstehst du mich?"~ */
  IF ~~ THEN REPLY #62929 /* ~"Du meinst, du willst mich besitzen?"~ */ JOURNAL #68253 /* ~Ich bin nach dem Berühren des Kristalls aufgewacht und fand mich in einem Raum wieder, in dem ich von Inkarnationen meiner selbst umgeben war. Eine von ihnen, die praktische, sagte mir, daß nur *einer* von uns diesen Ort verlassen könne. Entweder müßten wir uns zu einer Person verbinden und unseren freien Willen zugunsten eines der anderen aufgeben, oder einer von uns müßte die anderen drei umbringen. Werd' mir was überlegen müssen... Vielleicht sollte ich ja erst mal mit den anderen reden.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"Ja." Er sieht die stachelgesäumten Wände an, dann richtet sein Blick sich wieder auf dich. "Wir können diesen Ort nicht in Stücken verlassen. Nur einer kann gehen."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"Wie sollen wir denn eins werden?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"Wovon redest du?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"Wovon redest du?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"Und wie sollen wir das machen?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"Du mußt mir deinen Willen unterwerfen, dein Wissen und dein Können: Das kleinste bißchen, das du dir in deinem Leben aneignen konntest, könnte sich jetzt als nützlich erweisen." Er sieht dich wieder abschätzend an. "Es wird zwar letzten Endes nur ein Bruchteil meiner Kräfte sein, aber es könnte uns nützen."~ */
  IF ~~ THEN REPLY #62933 /* ~"Und wenn ich mich entschließe, meinen Willen dir NICHT zu unterwerfen?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"Wie unterwerfe ich denn meinen Willen?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"Du hast in dieser Hinsicht keine Wahl. Du weißt nicht, wie du von hier wegkommst. Ich schon. Wenn du dich weigerst, dich mir zu unterwerfen, dann werde ich mich weigern, mich dir zu unterwerfen, und keiner von uns kommt je hier weg. Nur einer kann gehen, und das bist *nicht* du."~ */
  IF ~~ THEN REPLY #62939 /* ~"Ich könnte dich umbringen."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"Wie unterwerfe ich denn meinen Willen?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"Du könntest es versuchen." Der Mann scheint belustigt. "Du hast nicht die Kraft, mich zu besiegen, und du besitzt auch nicht den Willen, um mich zu zwingen, mit dir zu verschmelzen. Ich würde dich lieber *nicht* umbringen, um hier rauszukommen, aber es ist ein kleiner Preis für unsere Freiheit. Es hat keinen Sinn, daß einer von uns stirbt, wenn ich durch das Verschmelzen stärker werden könnte."~ */
  IF ~~ THEN REPLY #62945 /* ~"Warum willst du nicht mit mir verschmelzen?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"Wie unterwerfe ich denn meinen Willen?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"Mit dir?" Er lacht kurz auf, fast wie ein Bellen. "Weil ich nichts davon hätte. Du hast einen Bruchteil meines Lebens gelebt. Ich werde meinen Willen nicht einem Anfänger wie dir überlassen."~ */
  IF ~~ THEN REPLY #62951 /* ~"Wie unterwerfe ich denn meinen Willen?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"Um es einfach zu sagen: Wir sehen uns an, und du unterwirfst dich. Du wirst mit mir verschmelzen, und wir werden eins sein, wobei aber mein Geist dominiert."~ */
  IF ~~ THEN REPLY #62956 /* ~Wahrheit: "Na gut... Ich werde dir meinen Willen unterwerfen."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~Täuschung: "Na gut... Ich werde dir meinen Willen unterwerfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~Der Mann runzelt die Stirn. "Ich war nicht darauf vorbereitet. Und ich war nicht darauf gefaßt, daß meine Kameraden bei der Ankunft von mir getrennt werden würden... Was danach geschah... ist verwirrend."~ */
  IF ~~ THEN REPLY #62962 /* ~"Selbst wenn ich mich dir unterwerfe, könnte es also noch fehlschlagen?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"Ich muß mich erst mal zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"Unwahrscheinlich. Ich bin der Einzige, der das nötige Wissen hat, um es zu schaffen. Dieser Augenblick ist der Höhepunkt von jahrhundertelanger Planung. Viele haben gelitten und sind dafür gestorben, daß wir hier sein können. Ihre Opfer dürfen nicht vergebens gewesen sein." Der letzte Satz beunruhigt dich: Er wird wie eine Rede vorgetragen und den Worten fehlt völlig die Leidenschaft.~ */
  IF ~~ THEN REPLY #62966 /* ~"Ich glaube dir nicht, und ich werde dir meinen Willen nicht unterwerfen.."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"Du bist doch schon früher hierher gekommen... und wurdest besiegt."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"Und warum sollte ich zulassen, daß du mich besitzt?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"Wenn du eine von meinen Inkarnationen bist, dann habe ich Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"Dann haben wir ein Problem. Ich werde dir mein Wissen *nicht* preisgeben, das heißt, daß du diesem Gefängnis nie entkommen wirst und wir diesen Mörder von uns niemals finden und uns von ihm befreien werden." Die Stimme des Mannes wird sanft. "Aber wenn du mit mir verschmilzt, können wir nicht nur von hier verschwinden, sondern sind auch mit dem ganzen Wissen gewappnet, das ich besitze. Wir werden unseren Widersacher finden, ihn besiegen und endlich Frieden finden."~ */
  IF ~~ THEN REPLY #62972 /* ~Wahrheit: "In Ordnung, ich bin bereit."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~Täuschung: "In Ordnung, ich bin bereit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"Ich werde es mir überlegen. Aber erst würde ich gerne etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"Ich muß mich zuerst mal zurechtfinden, dann unterhalten wir uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"Ich werde dir einen Aufschub gewähren - aber nur noch für kurze Zeit."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"Du bist derjenige, der Dak'kon bei Shra'kt'lor gerettet hat. Derjenige, der Vhailor eingesperrt hat. Und derjenige, der Deionarra in den Tod geführt hat."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"Du bist derjenige, der Dak'kon bei Shra'kt'lor gerettet hat. Und derjenige, der Vhailor eingesperrt hat."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"Du bist derjenige, der Dak'kon bei Shra'kt'lor gerettet hat. Und derjenige, der Deionarra in den Tod führte."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"Du bist derjenige, der Vhailor eingesperrt hat. Und derjenige, der Deionarra in den Tod führte."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"Du bist derjenige, der Dak'kon bei Shra'kt'lor gerettet hat."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"Du bist derjenige, der Vhailor unter Verdammnis eingesperrt hat."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"Du bist derjenige, der Deionarra in den Tod geführt hat."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"Du hast Dak'kon den ungebrochenen Kreis von Zerthimon gegeben. Warum?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"Warum hast du Dak'kon bei Shra'kt'lor gerettet?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"Du hast Dak'kon bei Shra'kt'lor wegen seiner Klinge gerettet. Warum?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"Warum hast du Vhailor eingesperrt?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"Warum mußte Deionarra sterben?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"Warum mußte Deionarra sterben?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"Erzähl mir von Xachariah."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"Was ist mit dem Bogenschützen geschehen, der hier zur Festung reiste?"~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"Bist du derjenige, der Ignus die Kunst gelehrt hat?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"Du hast das Grab unter Sigil errichtet, nicht wahr? Das mit den Fallen?"~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"Du hast das Grab unter Sigil errichtet, nicht wahr? Das mit den Fallen?"~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"Bist du derjenige, der Morte der Schädelsäule entrissen hat?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"Wer sind diese Anderen?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"Wer ist diese andere Version von uns?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"Wer ist diese andere Version von uns?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"Wer waren diese anderen Versionen von uns?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"Wie komme ich hier raus?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"Hast du immer noch die Absicht, zu bekämpfen, was auch immer hier lauert?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~Wahrheit: Ich beabsichtige, mit dir zu verschmelzen.~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~Täuschung: Ich beabsichtige, mit dir zu verschmelzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"Ich werde nicht mit dir verschmelzen - du wirst mit mir verschmelzen."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"Warst du verantwortlich für die Tätowierungen auf meinem Rücken? Die, die ich gelesen habe, als ich in der Leichenhalle erwacht bin."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"Warst du derjenige, der Pharod aufgefordet hat, die Bronzene Kugel aus den Katakomben zu holen?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"Im Moment habe ich dir nichts mehr zu sagen. Wir sprechen uns wieder... später."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~Die Augen des Mannes verengen sich. "Was davon? Alles geschah mit einem Grund."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"Du hast Dak'kon den ungebrochenen Kreis von Zerthimon gegeben. Warum?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"Warum hast du Dak'kon bei Shra'kt'lor gerettet?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"Du hast Dak'kon wegen seiner Klinge gerettet. Warum?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"Warum hast du Vhailor eingesperrt?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"Warum mußte Deionarra sterben?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"Warum mußte Deionarra sterben?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"Der ungebrochene Kreis? Diese Sammlung von Lügen? Ja, es dauerte eine Woche, dieses Ding zu fälschen - es war notwendig, das zu tun, damit er aufhören würde, an sich selbst zu zweifeln."~ */
  IF ~~ THEN REPLY #63037 /* ~"Du hast es gemacht? Aber du hast ihm gesagt -"~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"Laß mich erst meine Fassung wiedergewinnen, und dann unterhalten wir uns."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"Vielleicht enthalten sie ja eine Wahrheit - Ich weiß es nicht. Ich weiß nur, daß es ödes Geschreibsel war, aber die Worte reichten aus, ihm Vertrauen zu einzuflößen."~ */
  IF ~~ THEN REPLY #63041 /* ~"Warum?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"Laß mich erst meine Fassung wiedergewinnen, und dann unterhalten wir uns."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"Deine Ignoranz erstaunt mich." Der Mann sieht dich ungläubig an. "Kann es sein, daß du nicht weißt, was er in seinen Händen hält? Die Klinge, die er trägt, wird von seinen *Gedanken* geformt. So ein Werkzeug kann, wenn es richtig gebraucht wird, das Multiversum selbst zerschlagen..." Der Mann sieht aus, als wäre er in Gedanken verloren, dann rümpft er verächtlich die Nase. "Obwohl der Gith offensichtlich von uns getrennt wurde, als wir in der Festung ankamen, und ich nicht in der Lage war, seine Klinge zu verwenden." Er runzelt die Stirn. "Unglücklicherweise."~ */
  IF ~~ THEN REPLY #63045 /* ~"Da ist noch etwas, was ich wissen möchte..."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"Laß mich erst meine Fassung wiedergewinnen, und dann unterhalten wir uns."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~Der Mann schüttelt den Kopf, als sei er müde. "Vhailor wurde allmählich... lästig." Er lächelt humorlos. "Diese Gnadentöter-Hunde jagen einen auf der Suche nach 'Gerechtigkeit' über die ganzen Ebenen - und Vhailor war ein ganz besonders hartnäckiger Hund." Die Stimme der Inkarnation wird etwas leiser. "Und für meinen Geschmack war er viel zu nahe an der Gerechtigkeit dran."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"Warum hat er uns gejagt?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"Warum hat er uns gejagt?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"War er eine Bedrohung?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"Na gut. Da sind noch andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"Oh, jeder von unzähligen Gründen. Einige davon liegen bei mir - und andere liegen in den *Händen* anderer Inkarnationen." Er schielt hinüber zu der Inkarnation, die heulte, als du gerade ankamst. "Viele Leben wurden von Inkarnationen mit beschädigtem Geist zerstört. Einige von uns haben... Probleme gemacht. Ich glaube an Lösungen."~ */
  IF ~~ THEN REPLY #63054 /* ~"War er eine Bedrohung?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"Na gut. Da sind noch andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"Oh, jeder von unzähligen Gründen. Einige davon liegen bei mir - und andere liegen in den *Händen* anderer Inkarnationen." Wie du vielleicht an dem gestörten Wrack gesehen hast, das vorher mit uns hier war, wurden viele Leben von Inkarnationen mit beschädigtem Geist zerstört. Einige von uns haben... Probleme gemacht. Ich glaube an Lösungen."~ */
  IF ~~ THEN REPLY #63058 /* ~"War Vhailor eine Bedrohung?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"Na gut. Da sind noch andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"Oh, ja - sonst hätte ich ihn einfach getötet." Er nickt. "Es gibt eine Verbindung zwischen ihm und der Gerechtigkeit selbst, und das verleiht ihm sogar über Unsterbliche wie uns Macht." Der Mann lächelt leicht. "Besonders wenn unsere Ungerechtigkeiten groß sind... und unsere sind von der schwärzesten Sorte."~ */
  IF ~~ THEN REPLY #63062 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"Deionarra? Das Mädchen hatte wenig Verstand der Ebenen in sich, und deshalb habe ich sie gebraucht. Weißt du, die Staubmenschen haben recht - manchmal, wenn man zuviel Leidenschaft verspürt, dann klammert man sich zu fest an das Leben, um loszulassen. Auch Deionarra hat nicht losgelassen - wie ich es gehofft hatte."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"Warum hast du sie getötet?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~Die Inkarnation würdigt die heulende kaum eines Blickes, sondern rümpft nur die Nase. ~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"Daß *du* mir für irgendwas die Schuld geben willst, ist lächerlich." Er wendet sich wieder dir zu. "Es war nicht aus Bosheit - obwohl sie etwas lästig wurde. Als ich an der Festung ankam, wollte ich eigentlich nicht bleiben. Ich wollte nur hinein, sie opfern, und dann wieder raus." ~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"Warum hast du sie getötet?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"Ich brauchte jemanden, der mir hier auf der Negativen Materiellen Ebene als Augen diente, ein Pfadfinder, der herausfinden konnte, wer mein Mörder war. Nur die Toten können hier länger überleben - deshalb mußte Deionarra geopfert werden, damit sie etwas Anderes werden konnte, als sie war. Eine schwierige Sache, aber es hat geklappt - sie hat dir doch geholfen, oder nicht?"~ */
  IF ~~ THEN REPLY #63081 /* ~"Du mußtest sie nicht töten."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"Ja, das tat sie. Vielleicht war es richtig so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"Ich will darüber nicht mehr diskutieren. Es gibt andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~Er sieht dich einen Moment schweigend an, dann rümpft er wieder die Nase. "Und deswegen wirst du verlieren, wenn du unserem Mörder gegenübertrittst. Weil du SCHWACH bist. Und du nicht einsiehst, daß einige Dinge NOTWENDIG sind."~ */
  IF ~~ THEN REPLY #63086 /* ~"Das war nicht nötig. Es war bequem für dich. Du hättest dir eine andere Lösung überlegen sollen."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"Du wagst es, mich schwach zu nennen?! Du hast all diese 'großen' Pläne geschmiedet, um diesen unsichtbaren Feind zu besiegen, und dir wird SOWIESO dein Arsch nachgetragen, und ein armes Mädchen wird deswegen ermordet. Wenn du deinen Auftrag das erste Mal erledigt hättest, als du hier warst, dann wäre das vielleicht gar kein Problem!"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"Ich will darüber nicht mehr diskutieren. Es gibt andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"Du WAGST es, mir *Vorträge* zu halten?! Es sind schon immer Frauen mit uns gegangen - ob es Deionarra oder Ravel oder eine andere Frau war, sie haben immer gelitten, und es war immer ihre ENTSCHEIDUNG. Deionarra wäre für mich gestorben, wenn ich es von ihr verlangt hätte. Es gab kein Verbrechen."~ */
  IF ~~ THEN REPLY #63091 /* ~"Ich werde nicht mehr mit dir darüber diskutieren. Es gibt andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"Der Bogenschütze? Nun ja, der alte Säufer Xachariah konnte Dinge mit seinen 'Augen' sehen, die ich nicht sah. Und er konnte sie mit seinen Pfeilen treffen."~ */
  IF ~~ THEN REPLY #63094 /* ~"So?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"Na gut. Da sind noch andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"Tja, ich bin sozusagen blind in diese Festung reingestolpert - Ich wußte nicht, wer mein Mörder war, und so brauchte ich jemanden, der Dinge sehen konnte, die ich nicht sah. Für den Fall, daß der Feind außerhalb meines Gesichtsfeldes liegen würde." Er schnaubt verächtlich. "Aber Xachariah ist leider zu schnell gestorben, und so war er mir nicht besonders nützlich."~ */
  IF ~~ THEN REPLY #63098 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"Das hätte ich fast vergessen - ja, was für eine Verschwendung." Die Inkarnation scheint verwirrt. "Offensichtlich hat *das* nicht funktioniert. Und es kostete auch eine Menge Blut und Klimper." Er runzelt die Stirn. "Kurz nach diesem Fehlschlag habe ich mich entschieden, den Kampf zu unserem Mörder zu tragen, anstatt noch länger auf ihn zu warten."~ */
  IF ~~ THEN REPLY #63101 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"*Lebt* Morte noch?" Die Inkarnation starrt dich einen Augenblick ungläubig an, dann beginnt sie zu lachen. "Ha! Dem blöden Schädel konnte man nicht über den Weg trauen - er hat behauptet, er hätte Informationen, die er nicht hatte. *Dann* mußte ich ihn unter Qualen der Schädelsäule entreißen, und er tat so, als ob er *nichts wüßte,* als er frei war." Die Inkarnation spöttelt: "Ich habe ihm seinen Willen gelassen, weil er mir alles gesagt hat, was ich wissen mußte."~ */
  IF ~~ THEN REPLY #63104 /* ~"Er tat so, als ob er nichts wüßte?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"Hmmm. Da sind andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"Oh, ja." Der Mann lächelt. "Einmal ein Lügner, immer ein Lügner. Da muß aber erst ein anderer kommen als der Schädel, um mir eins zu grinsen."~ */
  IF ~~ THEN REPLY #63108 /* ~"Was war das für ein Spiel? Über was mußte er noch lügen?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"Hmmm. Da sind andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~Die Inkarnation grinst. "Das ist gleichgültig. Soll der Schädel seine Geheimnisse doch behalten - sie sind wertlos für uns."~ */
  IF ~~ THEN REPLY #63112 /* ~"Na gut. Da sind noch andere Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"Ignus?" Der Mann starrt dich an und runzelt dann die Stirn. "Ist das ein Name? Über wen zum Teufel sprichst du?"~ */
  IF ~~ THEN REPLY #63115 /* ~"Du hast meine Frage beantwortet. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"Andere Inkarnationen - Spiegelungen von uns. Ich werde sie mit mir verschmelzen lassen, wenn ich mit dir fertig bin. Er schielt zu der gebückten Inkarnation hinüber, die heulte, als du angekommen bist. "Oder sie umbringen, wenn sie sich weigern, es ist egal. Sie sind überflüssig."~ */
  IF ~~ THEN REPLY #63118 /* ~"Ich verstehe. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"Er ist eine der anderen Inkarnationen - Spiegelungen von mir selbst. Ich werde ihn mit mir verschmelzen lassen, wenn ich mit dir fertig bin. Oder ihn umbringen, wenn er sich weigert, das ist egal."~ */
  IF ~~ THEN REPLY #63121 /* ~"Es gibt andere Dinge, die ich wissen will."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~Der Mann sieht dich an, dann lächelt er ungläubig. "Ich unterwerfe mich niemandem. Du bist es, der von mir absorbiert werden wird."~ */
  IF ~~ THEN REPLY #63124 /* ~"Das bezweifle ich."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"Dann werde ich diesmal nicht mit dir kämpfen. Aber ich möchte noch andere Dinge wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"Dann vergiß es. Ich muß mich nur erst zurechtfinden, und dann können wir weitersprechen."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"Willst du mit mir deswegen kämpfen?" Der Mann scheint darüber belustigt zu sein. "Du bist mir nicht gewachsen. Es hat wenig Sinn, Widerstand zu leisten."~ */
  IF ~~ THEN REPLY #63128 /* ~"Versuch's mal mit mir."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"Dann werde ich diesmal nicht mit dir kämpfen. Aber ich möchte noch andere Dinge wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"Dann vergiß es. Ich muß mich nur erst zurechtfinden, und dann können wir weitersprechen."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~Du siehst ihm fest in die Augen... Seine Augen sind wie Steine und sie beginnen, dich herunterzuziehen...~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~Schau ihm in die Augen und versuche, ihn dazu zu zwingen, mit dir zu verschmelzen.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~Schau ihm in die Augen und versuche, ihn dazu zu zwingen, mit dir zu verschmelzen.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~Schau ihm in die Augen und versuche, ihn dazu zu zwingen, mit dir zu verschmelzen.~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~Unterwirf deinen Willen und lass dich absorbieren.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"Dann sei es." Seine Augen werden grau wie Nebel, und er lächelt leicht, wie in Vorfreude. "Wir werden sehen, was dein Geist uns zu bieten hat..."~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~Du spürst, wie sich dein Geist unter dem Blick der Inkarnation aufzulösen beginnt. Du spürst keine Schmerzen, nur den kalten Hauch des Vergessens, als deine Persönlichkeit Stück um Stück entschwindet und Schwärze deinen Blick ausfüllt. Und plötzlich existierst du nicht mehr.~ */
  IF ~~ THEN REPLY #63138 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~Du spürst, wie dein Geist sich langsam auflöst, als du ihm in die Augen blickst, und du *weißt,* daß sein Wille stärker ist als deiner. Wenn du weitermachst, wird er dich absorbieren, und du wirst nicht mehr existieren -~ */
  IF ~~ THEN REPLY #63140 /* ~Laß die Inkarnation dich absorbieren.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~Reiß deine Augen von ihm los und wende dich ab.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~Weiche seinem Blick aus und greif ihn an. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~Während dein Geist sich auflöst, spürst du keine Schmerzen, nur den kalten Hauch des Vergessens, während deine Persönlichkeit verschwindet, Stück für Stück, und Schwärze deinen Blick füllt. Und plötzlich existierst du nicht mehr.~ */
  IF ~~ THEN REPLY #63144 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~Du reißt deinen Blick von ihm los und siehst, wie sein Gesicht sich vor Zorn verzerrt. "Was *tust* du?! Bist du so schwach, daß du nicht einmal unserer Zukunft gegenübertreten kannst? Bei den Höllen, was für eine leere Hülle du geworden bist!"~ */
  IF ~~ THEN REPLY #63146 /* ~"Vielleicht... stimmt das ja... aber ich habe immer noch... die Kraft, dich zu TÖTEN... Du wirst jetzt STERBEN."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"Es gibt noch... andere Dinge... die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"Ich muß mich erst zurechtfinden... Ich komme wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~Als du durch die Gänge seines Geistes schwimmst, stößt du zuerst auf Überraschung - und seine Augen weiten sich. Er absorbiert dich nicht: Dein Wille ist stärker und verschlingt *ihn.* Du spürst, wie er verzweifelt versucht, sich loszureißen, doch er schafft es nicht - er ist zu schwach, und dein Wille schneidet ihm den Rückzug ab, während du ihn tiefer in dein Unterbewußtsein ziehst.~ */
  IF ~~ THEN REPLY #63150 /* ~"Das ist das letzte Mal, daß wir miteinander reden. Zurück mit dir zum Tod, wo du hingehörst."~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~Er sieht für einen Moment ungläubig aus, dann zerfällt er, und du spürst, wie ein Schwall von Wissen durch dich fließt, sich an die Oberfläche kämpft... Es ist fast zuviel, um es auf einmal aufzunehmen, und du fühlst dich verwirrt. So viel Wissen - so viele Erfahrungen, daß -~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~...und so schnell wie er kam, läßt der Schwall wieder nach, und du fängst dich wieder. Die Wissensbrocken schwirren durch dein Gehirn, und du wirst sie später begreifen. Im Moment ist nur ein Stück Wissen wichtig - daß die Inkarnation NICHT wußte, wie er von hier wegkam. Er hat gelogen, um dich dazu zu bringen, dich zu unterwerfen.~ */
  IF ~~ THEN REPLY #63153 /* ~"Verdammt..."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"Du verschwendest deine Zeit, wenn du dich mit dem unterhältst. Seine Gedanken sind nur Listen und Boshaftigkeit, sonst nichts. Hör auf, deine Zeit zu verschwenden - wir beide haben viel zu besprechen."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"*Droh* mir nicht, du Narr - Ich warne dich. Wenn hier jemand der Dieb ist, dann bist du es - du hast versucht, unsere Verhandlungen zu sabotieren, indem du meine ganze Arbeit zerstört hast!"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"Das hätte ich fast vergessen - ja, das war wirklich eine Verschwendung." Die Inkarnation scheint etwas verwirrt. "Offensichtlich hat *das* nicht funktioniert. Und es hat eine Menge Blut und Klimper gekostet."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~Die erste Inkarnation blickt die zweite mit gerunzelter Stirn an. Er sieht aus, als könnte er sich gerade noch beherrschen, der anderen an die Gurgel zu gehen. "*Noch* etwas, für das du Rechenschaft ablegen wirst..." Er wendet sich wieder dir zu. "Obwohl ich glaube, daß es egal ist. Es war kurz nach dem Fehlschlag mit der Gruftfalle, als ich beschlossen habe, den Kampf zu unserem Mörder zu tragen, anstatt noch länger auf ihn zu warten."~ */
  IF ~~ THEN REPLY #63158 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"Ich habe genug gehört. Wir unterhalten uns weiter... später."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"Sie waren andere Inkarnationen - Spiegelungen von uns selbst. Ich wollte, daß sie mit mir verschmelzen, aber es ist egal. Sie sind unnötig."~ */
  IF ~~ THEN REPLY #63161 /* ~"Ich verstehe. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"*Natürlich* war das richtig. Ich habe es seit Jahrzehnten bis ins kleinste Detail ausgetüftelt." Seine Augen starren in die Ferne. "Und dennoch war es knapp." ~ */
  IF ~~ THEN REPLY #63164 /* ~"Kann ich mir vorstellen. Ich hätte gerne noch etwas gewußt."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"Die Anweisungen?" Er nickt verwirrt. "*Natürlich* war ich verantwortlich - Ich wußte, es gab eine *Möglichkeit,* daß ich hier versagen und meine Erinnerungen verlieren könnte. Ich wollte, daß zukünftige Inkarnationen von meinen Erfahrungen profitieren könnten. Also habe ich die Anweisungen auf meinen Rücken gestickt, weil solche Dinge wie *Journale*..." Er knurrt ärgerlich vor sich hin. "...leider zu *leicht* verloren gehen."~ */
  IF ~~ THEN REPLY #63167 /* ~"Aber die Anweisungen waren etwas vage..."~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"Warum hast du diese Warnung vor Morte auf die Rückseite geschrieben?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"Warst du derjenige, der Pharod aufgefordet hat, die Bronzene Kugel aus den Katakomben zu holen?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"Ich verstehe. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"Bist du ein *Narr?*" Die Inkarnation sieht verärgert aus. "Die Anweisungen *mußten* vage sein - Ich konnte doch nicht *genau* hinschreiben, was mit uns passierte, also hinterließ ich einen Wegweiser. Was wäre wohl passiert, wenn ein Staubmensch das gelesen hätte? Oder jemand noch Verrückteres? Wie *schnell,* glaubst du, wären wir lebendig begraben oder eingeäschert worden?"~ */
  IF ~~ THEN REPLY #63173 /* ~"Na gut. Aber warum mußte ich Pharod ausfindig machen? Warum gerade ihn?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"Warum hast du diese Warnung vor Morte auf die Rückseite geschrieben?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"Warst du derjenige, der Pharod aufgefordet hat, die Bronzene Kugel aus den Katakomben zu holen?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"Ich verstehe. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"Pharod?" Die Inkarnation überlegt einen Moment. "Oh, ja - der Müllkönig mit den ganzen 'harten' Jungs, die mich für leichte Beute hielten..." Er lächelt leicht, als hätte er eine angenehme Erinnerung. "Nach einem kleinen Aderlaß haben wir uns geeinigt - er wollte dafür sorgen, daß seine Männer mich sicher zur Leichenhalle bringen würden, wenn sie mich fanden - und natürlich brauchte ich die Augen und Hände dieser Männer, um die Katakomben unter Sigil für mich abzukämmen." ~ */
  IF ~~ THEN REPLY #63179 /* ~"Wofür?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"Für die Bronzene Kugel?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"Ich verstehe. Es gibt noch mehr Dinge, die ich wissen möchte."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"Eine Sphäre..."~ */
  IF ~~ THEN REPLY #63184 /* ~"...aus Bronze. Gräßlich. Fühlt sich an wie ein Ei und stinkt nach verfaultem Pudding. Stimmt's?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"Ja. Ich sagte Pharod, es wäre das einzige, was sein Leben retten könnte. Was für ein armseliger, flennender Scheißkerl er war." Die Inkarnation lächelt dich an. "Weißt du, der alte Bastard sollte in der Schädelsäule enden, wenn er starb, und er versuchte verzweifelt, dem zu entrinnen. Also habe ich ihm gesagt, es gäbe einen Gegenstand unter Sigil, der ihn vor seinem Schicksal 'bewahren' würde, wenn er ihn finden könnte."~ */
  IF ~~ THEN REPLY #63186 /* ~"Aber es hat ihn nicht gerettet - du wolltest nur, daß er es findet."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"*Natürlich* nützte es ihm nichts. Man kann das Schicksal nicht so leicht austricksen." Er sieht dich irritiert an. "Jedenfalls motiviert nichts einen Mann schneller, als ihm zu sagen, daß das, was er sucht, seine Seele vor der ewigen Verdammnis bewahrt. Ich wollte es ihm abnehmen, wenn er es gefunden hätte. Es hätte einfach zu lange gedauert, wenn ich selbst danach gesucht hätte." Er lächelt wieder. "Und warum sollte ich es selbst suchen, wenn das jemand anders für mich erledigen konnte?"~ */
  IF ~~ THEN REPLY #63188 /* ~"Ehrlich gesagt hat er schließlich mich dazu gebracht, es für ihn zu finden. Warum war es so wichtig?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"Äh, ja... stimmt. Ich bin mir sicher, daß es einer von Pharods Männern, äh, für ihn gefunden hat. Warum war es so wichtig?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"Wichtig? Weißt du das nicht?" Die Inkarnation schweigt einen Moment lang. "Hast du ihn dabei?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"Nein, es starb mit Pharod. Was sollte es tun?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"Nein, es starb mit Pharod. Was sollte es tun?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~Lüge: "Nein, es starb mit Pharod. Aus reiner Neugier, was konnte es tun?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~Lüge: "Nein, es starb mit Pharod. Aus reiner Neugier, was konnte es tun?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"Ja, das tue ich. Ich habe es mitgebracht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"Es war ein toter Sinnesstein." Die Inkarnation starrt durch dich hindurch, als sähe sie etwas in der Ferne. "Weißt du, was er enthielt?" Er lächelt bitter. "Er enthielt die letzten Erfahrungen des *ersten* von uns. Als wir noch ein Mann waren, und nicht eine Kette von Inkarnationen." Seine Stimme wird leiser. "Wenn es einen Weg gegeben hätte, das zu entfesseln, dann hätte ich in sein *Gedächtnis* sehen können..."~ */
  IF ~~ THEN REPLY #63202 /* ~"Und weißt du, warum das alles passiert ist?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"Ja..." Das Gesicht der Inkarnation wird feierlich. "Es ist die Antwort, die ich immer gesucht habe. Warum das passiert ist. Warum wir unsterblich geworden  sind." Er seufzt. "Und ich fürchte, wir werden es nie erfahren."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"Ich habe es mitgebracht, weißt du."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"Es gibt andere Dinge, die ich wissen will."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"Du *hast* ihn?!" Die Augen der Inkarnation flackern auf. "Dann hatte dein Leben doch einen Sinn gehabt!" Du siehst, wie seine Augen berechnend flackern. "Wenn wir verschmelzen, dann könnte ich vielleicht einen Weg finden, es zu entfesseln. Vielleicht ist noch nicht alles verloren...."~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"Was ist die Kugel? Warum ist sie so wichtig?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"Ich habe nicht vor, mit dir zu verschmelzen."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~Wahrheit: "Nun gut. Ich bin bereit, mit dir zu verschmelzen."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~Täuschung: "Nun gut. Ich bin bereit, mit dir zu verschmelzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"Wir werden sehen... aber zuerst möchte ich noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"Es ist ein toter Sinnesstein. Weißt du, was er enthält?!" Er lächelt begierig. "Er enthält die letzten Erfahrungen des *ersten* von uns. Als wir noch ein Mann waren und nicht eine Kette von Inkarnationen." Seine Stimme wird leiser. "Wenn es einen Weg gibt, es zu entfesseln, dann kann ich in sein *Gedächtnis* sehen..."~ */
  IF ~~ THEN REPLY #63215 /* ~"Und weißt du, warum das alles passiert ist?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"Ja..." Das Gesicht der Inkarnation wird feierlich. "Es ist die Antwort, nach der ich immer gesucht habe. Warum das passiert ist. Warum wir unsterblich wurden." Er betrachtet dich. "Wenn wir verschmelzen, versuche ich einen Weg zu finden, es zu entfesseln. Vielleicht ist noch nicht alles verloren..."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"Ich habe nicht vor, mit dir zu verschmelzen."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~Wahrheit: "Nun gut. Ich bin bereit, mit dir zu verschmelzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"Wir werden sehen... aber zuerst möchte ich noch etwas Anderes wissen."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*Ich* verkehre nicht in den Welten von vielleicht und möglicherweise." Die erste Inkarnation verzieht verächtlich das Gesicht. "Ich suche Antworten. Das hat uns ermöglicht, so weit zu kommen." Er sieht die dritte Inkarnation voller Verachtung an. "Wenn wir das Leben in *deiner* Hand gelassen hätten, dann hätten wir nicht einen Bruchteil der Wahrheit, die wir jetzt besitzen. Und in dieser Wahrheit liegt *Macht.*" Er dreht sich zu dir um. "Du wirst das merken, wenn wir verschmelzen."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"Ich habe die Kugel mitgebracht, weißt du."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"Ich habe die Kugel mitgebracht, weißt du."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"Wir werden sehen... aber zuerst möchte ich noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*Ich* verkehre nicht in den Welten von vielleicht und möglicherweise." Die erste Inkarnation verzieht verächtlich das Gesicht. "Ich suche Antworten. Das hat uns ermöglicht, so weit zu kommen." Er sieht die dritte Inkarnation voller Verachtung an. "Wenn wir das Leben in *deiner* Hand gelassen hätten, dann hätten wir nicht einen Bruchteil der Wahrheit, die wir jetzt besitzen. Und in dieser Wahrheit liegt *Macht.*" Er dreht sich zu dir um. "Du wirst das merken, wenn wir verschmelzen."~ */
  IF ~~ THEN REPLY #63227 /* ~"Ich habe nicht vor, mit dir zu verschmelzen."~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~Wahrheit: "Nun gut. Ich bin bereit, mit dir zu verschmelzen."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~Täuschung: "Nun gut. Ich bin bereit, mit dir zu verschmelzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"Wir werden sehen... aber zuerst möchte ich noch etwas Anderes wissen."~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"Ich muß mich erst zurechtfinden, dann sprechen wir weiter."~ */ EXIT
END
