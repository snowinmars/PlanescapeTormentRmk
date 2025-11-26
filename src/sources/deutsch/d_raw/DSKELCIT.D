// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~An den Knochen dieser uralten, untoten Leiche hängt kein bißchen Fleisch mehr... nur ein paar bunte Fetzen, die mehr als Dekoration denn als Kleidung zu dienen scheinen.~ */
  IF ~~ THEN REPLY #19744 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"Sei gegrüßt." Die ruhige, weit entfernte Stimme des Dings hallt in seinem Schädel wider und tritt in einer Staubwolke aus.~ */
  IF ~~ THEN REPLY #19753 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"Ich werde antworten, so gut ich kann." Während es spricht, fällt Staub aus den Kiefergelenken des Skeletts. "Frage, was dir beliebt; ich habe mehr als genug Zeit, um mit dir zu sprechen."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"Wo bin ich?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"Was machst du hier?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"Du bist an einem Ort, den wir die Toten Lande nennen... unser Land und unsere Heimat, unter der Stadt Sigil. Dies ist nur ein kleiner Teil unserer Zivilisation, eine Grenzregion... die Toten Lande erstrecken sich viele, viele Meilen in die Dunkelheit hinein."~ */
  IF ~~ THEN REPLY #19769 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"Dieser Ort ist ein Ort der Untoten, unter der Herrschaft unseres Schweigenden Königs. Es gibt hier Zombies und auch Ghule. Weiter weg, in den Katakomben im Osten, leben Schädelratten. Außerdem wagt sich hin und wieder auch einer der Lebenden - jemand wie du, oder Soego - hier herunter."~ */
  IF ~~ THEN REPLY #19771 /* ~"Wer ist der Schweigende König?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"Erzähl mir was von deinen eigenen Leuten."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"Erzähl mir was von den anderen Untoten."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"Erzähl mir was von den Schädelratten."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"Erzähl mir von Soego."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"Erzähl mir von Soego."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~Das Skelett nickt langsam, seine Halswirbel knirschen leise. "Bitte, frag."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"Wo bin ich?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"Was machst du hier?~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~Das Skelett nickt. "Wir sind die ältesten der Untoten hier, die mit dem wenigsten Fleisch. Wir bemühen uns, den anderen als Führer und Mentoren zu dienen und hier eine gesunde Gemeinschaft zu erhalten."~ */
  IF ~~ THEN REPLY #19786 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"Sie sind stark, Geist und Körper sind jedoch langsam. Sie haben sich mehr an Menschlichkeit - an Gefühlen - bewahrt als wir. Sie dienen unserer Gemeinschaft als Arbeiter unter der Führung der Muffigen Mary, der fürsorglichsten und intelligentesten unter ihnen."~ */
  IF ~~ THEN REPLY #19789 /* ~"Erzähl mir von der Muffigen Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"Die Ghule sind starke, gewalttätige und ausgehungerte Kreaturen, die ihrer abscheulichen Matriarchin Akaste folgen. Sie dienen der Gemeinschaft - den Toten Landen - als Wächter... sind jedoch ein instabiler Faktor. Die Angst vor der Zahl der anderen Untoten und vor dem Schweigenden König hält sie in Schach. Ohne unseren mächtigen Herren, der sie befehligt, würden wir... und auch unsere Schützlinge... ihnen eines Tages zum Opfer fallen."~ */
  IF ~~ THEN REPLY #19793 /* ~"Erzähl mir was über Akaste."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"Wer ist der Schweigende König?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"Eure Schützlinge?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"Wen meinst du?"~ */
  IF ~~ THEN REPLY #19799 /* ~"Die Zombies."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"Die Ghule."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"Egal. Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"Unser Herr und Meister. Er wird der Schweigende König genannt, weil er nur in Zeiten höchster Not spricht." Das Skelett gestikuliert beim Sprechen, die alten Gelenke knarzen und knacken dabei. "Frag Hargrimm, unseren Hoheprister, nach ihm. Er kann dir mehr sagen."~ */
  IF ~~ THEN REPLY #19803 /* ~"Erzähl mir was über Hargrimm."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"Sie sind Ungeziefer, dessen Intelligenz proportional zur Nähe zu Ihresgleichen wächst. Eine ernstzunehmende Bedrohung. Einmal... haben sie unsere Schützlinge überfallen und die Knochen der Schweigenden in ihrer Ruhe gestört. Jetzt bleiben sie immer in den östlichsten Teilen der Katakomben. Die Ghule haben genug von ihnen gefangen und gefressen, um ihren Raubzügen ein Ende zu setzen, wenn auch nur vorübergehend."~ */
  IF ~~ THEN REPLY #19808 /* ~"Eure Schützlinge?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"Erzähl mir was von den Ghulen."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"Er war eine Art Missionar, ein Staubmensch, der hoffte, uns dazu überreden zu können, uns dem Wahren Tod zu ergeben. Jetzt ist er, soweit ich weiß, einer unserer Schützlinge."~ */
  IF ~~ THEN REPLY #19814 /* ~"Eure Schützlinge?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"Er ist eine Art Missionar, ein Staubmensch, der hofft, uns dazu überreden zu können, uns dem Wahren Tod zu ergeben. Er wandert in der Kapelle im nördlichen Teil dieser kalten, staubigen Hallen herum; du möchtest vielleicht selbst mit ihm sprechen."~ */
  IF ~~ THEN REPLY #19818 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"Was tun die Lebenden in der Welt da oben? Wir leben hier unser Leben in der stillen Dunkelheit. Wir arbeiten, um unsere Schützlinge, die Schweigenden, vor den Übergriffen der anderen zu bewahren."~ */
  IF ~~ THEN REPLY #19821 /* ~"Eure Schützlinge?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"Die Schweigenden... die Toten, die nichts tun als schlafen. Wir beschützen sie, wachen über ihre Ruhe."~ */
  IF ~~ THEN REPLY #19824 /* ~"Wer würde sie in ihrer Ruhe stören?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~Das Skelett zuckt mit den Schultern, seine Schulterblätter scheuern an der Rückseite seines Brustkorbs. "Nein. Vielleicht solltest du mit Hargrimm, unserem Hohepriester sprechen. Er weiß viel."~ */
  IF ~~ THEN REPLY #19827 /* ~"Erzähl mir was über Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~Das Skelett berührt sein Kinn und kippt seinen Schädel leicht nach oben. "Die Ghule haben die Erlaubnis, sich an all denen gütlich zu tun, die beim Räubern in den Katakomben entdeckt werden. Der Schweigen König war der Ansicht, es wäre das Beste, die übrigen Eindringlinge - die so wie du beim Herumwandern erwischt und gefangengenommen werden - hier darben zu lassen, bis sie in unsere Obhut fallen, anstatt sie von den Ghulen verschlingen zu lassen. Du magst vielleicht mit Hargrimm sprechen, unserem Hohepriester - er ist derjenige, der mit dem Schweigenden König spricht."
~ */
  IF ~~ THEN REPLY #19830 /* ~"Erzähl mir was über Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"Mit dem Schweigenden König?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"In eure Obhut fallen?'"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~Das Skelett nickt. "Einer unserer Schützlinge zu werden. Zu den Schweigenden zu gehören."~ */
  IF ~~ THEN REPLY #19835 /* ~"Eure... Schützlinge?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"Wer ist der Schweigende König?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"Sei einmal mehr gegrüßt. Hast du dich schon an deine neue Heimat gewöhnt?"~ */
  IF ~~ THEN REPLY #19839 /* ~"Wohl kaum. Ich hätte ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"Noch nicht ganz. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"Viele." Er zählt sie an vergilbten, staubbedeckten Fingerknochen ab, während er spricht. "Hungrige, unkontrollierbare Ghule, Ratten, und vor allem... die Lebenden. Die aus dem Begrabenen Dorf - die Diener eines Mannes namens Pharod - steigen oft herunter in die Gefilde der Toten Lande und stören die Schweigenden. Ich weiß nicht warum, und es ist mir auch gleichgültig... mein einziges Bestreben ist, daß wir ihrer schändlichen Arbeit ein Ende setzen."~ */
  IF ~~ THEN REPLY #19841 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~Das Skelett nickt galant. "Wen meinst du?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"Über den Schweigenden König."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"Hargrimm."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"Die Muffige Mary."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"Akaste."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"Soego."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"Egal. Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"Niemanden, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"Unser Hohepriester. Er ist derjenige, der mit dem Schweigenden König spricht, und uns die Worte und Gesetze unseres Herrn überbringt. Er ist hier, im Vorzimmer zum Thronsaal des Schweigenden Königs."~ */
  IF ~~ THEN REPLY #19850 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"Ich hab' noch eine Frage zu jemand anderem..."~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"Sie ist langsam, aber gütig und weise. Sie ist wie eine Mutter für die anderen Zombies. Du findest sie in der Kammer westlich von der Stelle, wo du die Toten Lande zum ersten Mal betreten hast."~ */
  IF ~~ THEN REPLY #19854 /* ~"Erzähl mir was über die Zombies."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"Ich hab' noch eine Frage zu jemand anderem..."~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"Sie ist die abscheuliche Matriarchin einer Horde Ghule, die sich selbst die Schändlichen nennen. Sie dienen den Toten Landen als Wächter und Beschützer... fürs erste. Sie bewacht die Kammer, durch die du die Toten Lande zum ersten Mal betreten hast."~ */
  IF ~~ THEN REPLY #19858 /* ~"Erzähl mir von den Schändlichen."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"Ich hab' noch eine Frage zu jemand anderem..."~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
