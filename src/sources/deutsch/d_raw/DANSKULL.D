// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31732 /* ~Dieser Schädel zischt durch seine Zähne: "Du bist also ein Zauberer, Mörder und Giftmörder."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 8
END

IF ~  Global("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 1 // from:
  SAY #31733 /* ~Die Stimme des Schädels ist tief und kratzig wie der Klang von Feuerstein auf Stahl. "Ich... ich glaube, ich habe dich schon mal gesehen, Fremder."~ */
  IF ~~ THEN REPLY #31734 /* ~"Wo hast du mich gesehen?"~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31743 /* ~"Kann schon sein, aber ich habe jetzt keine Zeit."~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  GlobalGT("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31744 /* ~"Du schon wieder, was? Was willst du jetzt von mir?"~ */
  IF ~~ THEN REPLY #31745 /* ~"Du hast gesagt, du hast mich schon mal gesehen. Wo denn?"~ */ GOTO 3
  IF ~~ THEN REPLY #31746 /* ~"Erzähl mir was von dir."~ */ GOTO 4
  IF ~~ THEN REPLY #31747 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 5
  IF ~~ THEN REPLY #31748 /* ~"Erzähl mir was über Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31749 /* ~"Erzähl mir was über die anderen Schädel hier."~ */ GOTO 7
  IF ~~ THEN REPLY #31750 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 10.0 11.0
  SAY #31751 /* ~"Verdammnis. Torstadt zu Carzeri."~ */
  IF ~~ THEN REPLY #31752 /* ~"Verdammnis? Torstadt? Carzeri?"~ */ GOTO 8
  IF ~~ THEN REPLY #31753 /* ~"Was habe ich da gemacht?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.0 6.2 7.0
  SAY #31754 /* ~"Ich heiße Grimmskalp. War mal ein Anarchist, einer von der Revolutionsliga. Wir hatten Geheimnisse und Zellen und wollten die Ebenen umstürzen, damit alle in Frieden leben konnten. Wir hatten das Dunkel über einige der Bundmeister und waren bereit, zuzuschlagen. Aber dann wurden wir von einem anderen Bund verraten. Ich starb und Lothar hat mich wegen meiner Geheimnisse eingesammelt. Gut, daß die meisten von ihnen mittlerweile überholt sind, denn Lothars Zauber kann man einfach nicht widerstehen."~ */
  IF ~~ THEN REPLY #31755 /* ~"Was kannst du mir über die Anarchisten erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #31756 /* ~"Erzähl mir was über Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31757 /* ~"Erzähl mir was über die anderen Schädel hier."~ */ GOTO 7
  IF ~~ THEN REPLY #31758 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 6.3 7.1
  SAY #31759 /* ~"Ich wurde verraten. Ich hätte damit rechnen müssen, wenn man bedenkt, wer ich bin bzw. wer ich war."~ */
  IF ~~ THEN REPLY #31760 /* ~"Wer warst du?"~ */ GOTO 4
  IF ~~ THEN REPLY #31761 /* ~"Da hast du wohl recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 4.1 7.2
  SAY #31762 /* ~"Ich habe viele Geheimnisse preisgegeben, aber dieses werde ich nicht offenbaren. Was Lothar an schrecklichen Dingen tut, dagegen sind die strengen Regeln des Harmoniums ein Witz. Er kennt meine Geheimnisse viel besser als ich seine, und ich wäre des Teufels, wenn ich sie irgendwem verraten würde. Und dir gebe ich sie auf keinen Fall preis."~ */
  IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31763 /* ~"Wieso? Was weißt du über mich?"~ */ GOTO 10
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31764 /* ~"Wieso? Was weißt du über mich?"~ */ GOTO 11
  IF ~~ THEN REPLY #31765 /* ~"Dann erzähl mir was über dich."~ */ GOTO 4
  IF ~~ THEN REPLY #31766 /* ~"Wie bist du hier gelandet?"~ */ GOTO 5
  IF ~~ THEN REPLY #31767 /* ~"Was kannst du mir über die anderen Schädel erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #31768 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 4.2 6.4
  SAY #31769 /* ~"Die anderen Schädel? Sie sind alle nur ein Mittel zum Zweck, obwohl sie das nicht wissen. Ihre Träume sind klein und persönlich. Bei ihren Machenschaften haben sie keine größeren Zusammenhänge vor Augen. Sie können nicht über sich selbst hinaussehen. Sie sind wertlos. Ich rede nicht mit ihnen."~ */
  IF ~~ THEN REPLY #31770 /* ~"Aha. Dann erzähl mir was über dich."~ */ GOTO 4
  IF ~~ THEN REPLY #31771 /* ~"Wie bist du denn dann hier gelandet?"~ */ GOTO 5
  IF ~~ THEN REPLY #31772 /* ~"Und Lothar?"~ */ GOTO 6
  IF ~~ THEN REPLY #31773 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 9.0
  SAY #31774 /* ~"Weißt du denn überhaupt nichts? Das ist eine Torstadt am Rand der Außenländer und der Eingang zur Gefängnisebene von Carzeri. In der Stadt wohnen Meuchelmörder und Verräter und es wimmelt nur so von Verschwörungen. Sie befindet sich direkt im Bereich von Carzeris Fähigkeit, den Wesenszug eines Stalls zu ändern; und es würde mich nicht wundern, wenn die Stadt bald hinübergleitet."~ */
  IF ~~ THEN REPLY #31775 /* ~"Hinübergleitet? Was meinst du damit?"~ */ GOTO 16
  IF ~~ THEN REPLY #31776 /* ~"Was habe ich da gemacht?"~ */ GOTO 9
  IF ~~ THEN REPLY #31777 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 8.1
  SAY #31778 /* ~"Was du da gemacht hast? Du hast irgendwas von einem Dussel gefaselt, der versucht, dich zu töten und bist wie blöd durch die Gegend gerannt. Naja, du warst offensichtlich völlig übergeschnappt, also haben meine Freunde und ich zugeschlagen. Haben ein Schlitzermesser in dich reingesteckt und dein Zeug unter uns aufgeteilt. Gleich danach wurde ich verraten, aber erst, nachdem ich einen Teil des Zeugs versteckt hatte."~ */
  IF ~~ THEN REPLY #31779 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 8
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #31780 /* ~"Wo ist mein Zeug?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN REPLY #31781 /* ~"Wo ist mein Zeug?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31782 /* ~"Wo ist mein Zeug?"~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #31783 /* ~"Oh. Na dann, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #31784 /* ~"Ich weiß, daß du für Lothar irgendwie wichtig bist. Er will irgendwas über dich rausfinden. Du bist so eine Art Rätsel. Er interessiert sich für dich, Junge, und er will Antworten auf seine Fragen. Er wird dich im Auge behalten. Und ich weiß, daß du weit gereist bist. Es ist nicht das erste Mal, daß du hier gesehen wirst."~ */
  IF ~~ THEN REPLY #31734 /* ~"Wo hast du mich gesehen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31794 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #31795 /* ~"Ich habe deinem Freund da schon fast alles erzählt. Du bist für Lothar irgendwie wichtig. Er will irgendwas über dich rausfinden. Du bist so eine Art Rätsel. Er interessiert sich für dich, Junge, und er will Antworten auf seine Fragen. Er wird dich im Auge behalten. Und ich weiß auch, daß du weit gereist bist. Es ist nicht das erste Mal, daß du hier gesehen wirst."~ */
  IF ~~ THEN REPLY #31734 /* ~"Wo hast du mich gesehen?"~ */ GOTO 3
  IF ~~ THEN REPLY #31797 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 16.0
  SAY #31798 /* ~"Wir sind eine geheime Gesellschaft. Unsere Zellen mit Mitgliedern arbeiten allein oder nach Weisungen, die durch ein Netzwerk von Informanten und Führern-die-verborgen-bleiben verbreitet werden. Unser Ziel ist es, die Machtstruktur niederzureißen, die Menschen von den Lügen der Politiker und Mächte zu befreien und jeden sein Leben nach Gutdünken leben zu lassen. Wir arbeiten bzw. haben geheim gearbeitet und unsere Vorgehensweise laufend geändert, um uns vor einer Infiltration zu schützen. Da das alles schon Jahrzehnte her ist, sind alle Geheimnisse, die ich kenne, abgesehen von den Personen, an die ich mich noch erinnern kann, längst überholt. Und selbst die Personen sind heute bestimmt auch ganz andere."~ */
  IF ~~ THEN REPLY #31799 /* ~"Ihr scheint ja alle unter Verfolgungswahn zu leiden."~ */ GOTO 13
  IF ~~ THEN REPLY #31800 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31801 /* ~"Wenn deine Gesellschaft von Intrigen, Infiltration und dem Haß der etablierten Machthaie leben würde, wärst du auch vorsichtig. Das ist kein Verfolgungswahn, wenn sie wirklich hinter dir her sind. Nach unseren Glaubensgrundsätzen ist jemand, der in einen Dreifach-Handel verwickelt ist, ein Amateur." Der Schädel blickt dich einen Moment lang gelassen an. "Ich habe dir nichts mehr zu sagen. Leb wohl."~ */
  IF ~~ THEN REPLY #31802 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1 9.2
  SAY #31803 /* ~"Das sage ich dir nicht. Vielleicht kriege ich eines Tages wieder einen Körper und begebe mich dann selbst auf die Suche, vielleicht auch nicht. Im Moment jedenfalls freut es mich, dich grübeln zu sehen. Viel Glück bei der Suche." Der Schädel schweigt. Ihn bringt nichts dazu, noch etwas zu sagen.~ */
  IF ~~ THEN REPLY #31804 /* ~"Rutsch mir doch den Buckel runter!"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #31805 /* ~Du hast das Gefühl, daß der Schädel dich abschätzend mustert. "Du bist einer der Brüder, nicht wahr? Ich habe ein Gespür für solche Dinge, zumindest hatte ich es, und ich glaube, du bist einer von uns. Na gut. Das Zeug ist im Lager. Sprich mit dem Besitzer, und sag ihm, daß ich dich geschickt habe. Sag ihm nicht, daß ich tot bin. Er müßte es dir dann eigentlich geben."~ */
  IF ~~ THEN REPLY #31806 /* ~"Mach ich. Danke, auch wenn ich nicht gerade froh darüber bin, daß du mich getötet hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #31807 /* ~"Wenn die Vorstellungen einer Torstadt zu sehr wie die Ebene werden, an die sie angrenzt, reicht die Kraft dieser Vorstellung aus, daß die angrenzende Ebene die ganze Stadt verschlingt. Das passiert ständig, jedenfalls, wenn die Anarchisten damit zu tun haben." Den letzten Satz sagt er mit einer Art grimmigen Stolzes.~ */
  IF ~~ THEN REPLY #31808 /* ~"Erzähl mir was über die Anarchisten."~ */ GOTO 12
  IF ~~ THEN REPLY #31809 /* ~"Danke. Leb wohl."~ */ EXIT
END
