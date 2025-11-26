// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"Er ist aufgewacht."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"Seid still, ihr Beiden! Laßt uns nachsehen, ob es ihm gut geht, und den Streit auf später verschieben."~ */
  IF ~~ THEN REPLY #63862 /* ~"W... wer seid ihr alle?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"Beruhigt Euch. Er ist nur etwas verwirrt, wie wir alle es waren. Laßt ihm etwas Zeit, um zu sich zu kommen."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"Diese Streiterei führt zu nichts. Macht ihm Platz, laßt ihn in Ruhe."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~Der Mann vor dir sieht dir ähnlich, aber sein Gesicht sieht... irgendwie ruhiger aus. Er lächelt leicht, als du näherkommst und nickt dir wohlwollend zu. "Geht es dir gut?"~ */
  IF ~~ THEN REPLY #63866 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"Hatten wir *jemals* einen Namen? Oder war das nur der erste von uns?" Der Mann kichert leise. "Wißt, daß ich in dieser Angelegenheit euer Verbündeter bin. - ich bin, wie die anderen hier, in deinem Geist gestorben, und dieses Hirngespinst hier ist alles, was übrigbleibt."~ */
  IF ~~ THEN REPLY #63869 /* ~"Aber wer bist du?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"Ah..." Sein Lächeln erstirbt und er sieht dich besorgt an. "Das muß etwas verwirrend für dich sein. Laß es mich dir erklären - Ich bin eine von deinen Inkarnationen. Ich war einmal verschollen, jetzt bin ich wieder hier."~ */
  IF ~~ THEN REPLY #63871 /* ~"Wie ist das möglich?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"Ich - weiß es nicht. Was auch immer du in der Festung berührt hast, hat Stücke von dir selbst an die Oberfläche gebracht." Er schweigt einen Moment und überlegt. "Einer der Anderen könnte wissen, wie das entstanden ist - aber ich verstehe es nicht."~ */
  IF ~~ THEN REPLY #63873 /* ~"Wenn du ein Teil von mir bist, dann muß ich ein paar Dinge wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~Diese Inkarnation lächelt, als du näherkommst, und als er spricht, hallt seine Stimme leicht nach. "Ja?"~ */
  IF ~~ THEN REPLY #63876 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"Wenn du ein Teil von mir bist, dann muß ich ein paar Dinge wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~Laß die Inkarnation in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"Frag."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"Um zu gehen, mußt du wieder ein Teil von mir werden. Wirst du das tun?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"Vorhin hast du gesagt, wenn wir sterben, bleiben in unserem Geist Spuren zurück. Das hat euch alle hervorgeholt. Stimmt's?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"Ich habe zahllose Leben gelebt. Warum sind hier nur drei Inkarnationen?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"Wißt ihr, warum ich unsterblich werden wollte?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"Wie war dein Leben?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"Ich kam mit ein paar Verbündeten in die Festung, aber sie wurden von mir getrennt."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"Wie komme ich von hier weg?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"Ich habe keine Fragen mehr - wir können uns wieder unterhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"Ich weiß es nicht. Vielleicht waren wir die drei Stücke, die irgendwie noch in deinem Geist anwesend waren."~ */
  IF ~~ THEN REPLY #63889 /* ~"Anwesend? Wie?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"Ich bin mir nicht ganz sicher, aber ich glaube, daß Spuren der früheren Persönlichkeit in deinem Geist zurückbleiben, wenn wir sterben - und ich weiß, daß wir dich manchmal unsere Anwesenheit spüren lassen."~ */
  IF ~~ THEN REPLY #63893 /* ~"Wie?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"Wenn du dich in Gefahr begibst oder kurz vor einer Entdeckung standest, konnte ich mich beispielsweise bemerkbar machen und dich in die richtige Richtung lotsen."~ */
  IF ~~ THEN REPLY #63897 /* ~"Dann warst du also das kribbelnde Gefühl, das ich die ganze Zeit im Hinterkopf gespürt habe?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"Ich kann es unmöglich beschreiben, wie es sich für dich angefühlt hat, aber es ist möglich, ja."~ */
  IF ~~ THEN REPLY #63901 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"Nein, das tue ich nicht. Ich glaube, das geschah aus Angst. Vielleicht weiß es einer von den Anderen, aber ich nicht."~ */
  IF ~~ THEN REPLY #63904 /* ~"Warum denkst du, daß es aus Angst geschah?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~Der Mann lächelt leicht, aber es ist ein humorloses, eher trauriges Lächeln. "Wer möchte schon sterben?" Er schüttelt bedächtig den Kopf. "Aber nur der erste von uns wird jemals den wahren Grund dafür wissen, daß wir in diesem Zustand sind."~ */
  IF ~~ THEN REPLY #63908 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"Dann fürchte ich, daß deine Freunde bereits tot sind." Der Mann macht einen gequälten Eindruck. "Dieser Ort birgt nur Haß für die Lebenden."~ */
  IF ~~ THEN REPLY #63911 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"Ich muß es mir überlegen. Ich spreche wieder mit dir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"Es war ruhig und lang und angefüllt mit dem Freud und dem Leid, das man vom Leben erwartet. Ich habe ein Zeitlang als Kartograph gearbeitet und habe mehrere Jahre lang die Ebenen bereist."~ */
  IF ~~ THEN REPLY #63914 /* ~"Wie bist du gestorben?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"In Ordnung. Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"Am Ende, als ich über die Felder von Bytopia reiste, erwachten schreckliche Schatten zum Leben, während ich schlief. Ich starb, während ich ihre Klauen auf mir fühlte." ~ */
  IF ~~ THEN REPLY #63918 /* ~"Sie sind die Schatten all derer, die an unserer Stelle gestorben sind."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"In Ordnung. Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~Der Mann sieht gequält aus. "Ja, ich weiß... Ich weiß das jetzt. Man kann sich nicht an diesem Ort der Reue aufhalten, ohne ihre Schmerzen zu spüren."~ */
  IF ~~ THEN REPLY #63922 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"In Ordnung. Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"Ich weiß es nicht - Ich war noch nie hier. Vielleicht besitzt einer der Anderen das Wissen darüber, wie man hier wegkommt, aber ich weiß es nicht."~ */
  IF ~~ THEN REPLY #63925 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"In Ordnung. Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"Ich hatte einen Verdacht - wir sollten nicht in dieser Form existieren, und so unnatürlich unsere Unsterblichkeit ist, diese Situation verschlimmert es." Er nickt. "Ja, ich werde wieder mit dir verschmelzen."~ */
  IF ~~ THEN REPLY #63928 /* ~"Weißt du, daß du aufhören wirst zu existieren?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"Nun gut."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~Er nickt. "Ja, ich weiß."~ */
  IF ~~ THEN REPLY #63931 /* ~"Nun gut."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"Noch eine letzte Sache... nur diese eine..." Die Inkarnation schweigt einen Moment, während sie deine Gesichtszüge mustert. "Bevor ich mich wieder der Vergessenheit anvertraue - würde ich gerne etwas wissen."~ */
  IF ~~ THEN REPLY #63933 /* ~"Dafür kann ich ein wenig Zeit erübrigen. Was willst du wissen?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"Dafür habe ich keine Zeit. Wenn du mir wirklich helfen willst, dann mußt du dich mir unterwerfen."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~Er betrachtet deine Augen mit feierlichem Gesichtsausdruck. "Hast du dein Leben *gelebt* - das kurze Leben, das du hattest? Am Ende... war es das wert?"~ */
  IF ~~ THEN REPLY #63936 /* ~"Nein. Ich wurde an einem schrecklichen Ort wiedergeboren, und ich bereue, daß ich gelebt habe."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"Es schien so.... kurz. Das Wenige, das ich erfahren habe, habe ich genossen, und ich möchte es nicht missen."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"Ich bin zuviel umhergereist, um es wirklich zu geniessen. Vielleicht wenn diese Angelegenheit beendet ist."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"Deine Frage ist unwichtig. Ich würde jetzt gehen."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"Dieses Leben scheint mir und Anderen nur Leid gebracht zu haben. Mir wäre es recht, wenn es enden würde, und die Ebenen wieder ihren Frieden hätten."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~Er nickt, und einen Moment lang denkst du, er wollte etwas sagen, dann bricht er zusammen, sein Leben verläßt ihn und verschmilzt mit deinem. Als er auf die schwarzen Steine fällt, spürst du ein seltsames Gefühl in deinem Hinterkopf, das dich erschauern läßt, und du weißt, daß die Inkarnation nun nicht mehr existiert.~ */
  IF ~~ THEN REPLY #63942 /* ~"Leb wohl..."~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~Die dritte Inkarnation spricht langsam, klingt aber gequält. "Warum hast du so etwas Schreckliches getan?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~Die dritte Inkarnation unterbricht dich. "Vielleicht gibt es in solch einem Ding keine Antworten. Vielleicht gab es sie nie."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~Die dritte Inkarnation unterbricht dich. "Vielleicht gibt es in solch einem Ding keine Antworten. Vielleicht gab es sie nie."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"Mein Verständnis ist vielleicht nicht vollkommen, aber ja, das scheint der Fall zu sein. Und wir können uns auf kleine Weisen bemerkbar machen."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"Dann ist es also möglich, daß der erste von uns - der echte von uns - vor all den Inkarnationen, noch irgendwo in meinem Geist begraben ist."~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"Wie denn?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"Es gibt noch etwas, das ich wissen möchte."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"In Ordnung. Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~Der Ausdruck auf dem Gesicht der Inkarnation schwankt für einen Moment, aber er ist wie ein Fenster, und du wirst dir plötzlich bewußt, mit wem du sprichst.~ */
  IF ~~ THEN REPLY #63952 /* ~"*Du* warst der erste von uns."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~Die Augen der Inkarnation nehmen einen gehetzten Eindruck an, und sein Blick wendet sich von dir ab. "Ich weiß, was du denkst, aber das stimmt nicht. Du denkst, daß es dir an diesem Ort irgendwie helfen würde, wenn du den Geist des ersten von uns kennen würdest. Das wird es nicht."~ */
  IF ~~ THEN REPLY #63954 /* ~"Aber warum - Ich habe so viele Fragen, die DU beantworten kannst. Warum bist du unsterblich geworden? Warum?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"Weil wenn wir sterben, *wirklich* sterben," Die Inkarnation sieht zu dir auf, und seine Augen sind wie Stahl. "Das Königreich des Todes wird *nicht* das Paradies sein, nicht für uns. Wenn du mit den anderen sprechen würdest, die hier waren, dann wisse, daß ein Bruchteil ihres Lebens wie ein Tropfen Wasser wäre im Vergleich zu dem Bösen meines Lebens. Dieses Leben, dieses eine Leben, hat selbst *ohne* die Tausende von anderen der Ewigkeit einen Sitz in den Unteren Ebenen verschafft."~ */
  IF ~~ THEN REPLY #63956 /* ~"Aber du scheinst so viel... ruhiger. So voller guter Absichten."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"Ich bin so geworden, ja. Weil für mich..." Seine Stimme bekommt ein seltsames Echo. "Es ist *Reue*, die das Wesen eines Menschen verändern kann." Er seufzt. "Aber es war zu spät. Ich war bereits verdammt."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"Ich habe festgestellt, daß es nicht ausreichte, mein Wesen zu verändern. Ich brauchte mehr Zeit und ich brauchte mehr Leben. Also kam ich zu der größten der Grauen Schwestern und bat sie um ihren Segen - er sollte mir helfen, lange genug zu leben, um all den Schaden, den ich angerichtet hatte, wieder gutzumachen. Um mich unsterblich zu machen."~ */
  IF ~~ THEN REPLY #63959 /* ~"Und Ravel auch. Aber als sie zum ersten Mal deine Unsterblichkeit auf die Probe gestellt und dich getötet hat, hast du alles vergessen. Alles."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~Er macht einen gebrochenen Eindruck. "Und seither sterben die Ebenen. Es gibt viel Verbrechen, und das ist meine Schuld."~ */
  IF ~~ THEN REPLY #63961 /* ~"Da sind so viele Fragen, die ich dir stellen will: Wer bist du, wie war dein Leben, wer-"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~Die Inkarnation schüttelt den Kopf und schneidet dir das Wort ab. "Wenn ich einmal nicht mehr bin, wenn ich mit dir verschmelze, dann bekommst du die Antworten, die du suchst. Es kann einige Zeit dauern, bis du alles verstehst, aber sie sind da. Er lächelt reuevoll. "Es ist schwierig, ein Leben mit Worten zu vermitteln."~ */
  IF ~~ THEN REPLY #63963 /* ~"Also gut... Wir werden eins werden. Bist du bereit?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
