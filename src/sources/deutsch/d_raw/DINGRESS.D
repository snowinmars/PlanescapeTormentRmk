// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINGRESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINGRESS~

IF ~  Global("Ingress","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3408 /* ~Du siehst eine ausgezehrte, in Lumpen gekleidete Frau mit extrem dunkler Gesichtsfarbe. Ihre Haare sind schmutzig und zerzaust. Ihre Arme sind voller Verbrennungen und die rechte Hand sieht aus wie ein Wachsklumpen, der bei großer Hitze zerschmolzen ist.~ */
  IF ~~ THEN REPLY #3409 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Ingress","GLOBAL",1)
~ JOURNAL #28839 /* ~Ich habe eine entstellte Frau namens Ingress in der Stadt vor der Leichenhalle getroffen. Sie war schrecklich vernarbt - und die Wunden haben zweifellos auch ihr Gemüt beeinflußt.~ */ GOTO 1
  IF ~~ THEN REPLY #6167 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6168 /* ~"Was willste von mir?" Die Frau spricht mit einem starken Akzent, und du hast Schwierigkeiten, sie zu verstehen. "Willste, daß ich hier verdufte? KANN ICH NICH, also bleib ich hier. Kann nich, hab's probiert; das is keine Stadt, sondern 'n riesiges Gefängnis."~ */
  IF ~~ THEN REPLY #6169 /* ~"Ein riesiges Gefängnis?"~ */ DO ~SetGlobal("Ingress","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY #6170 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.1 18.2
  SAY #6171 /* ~"Gibt Welten, gibt..." In ihren Augen funkelt der Wahnsinn. "...Ebenen aus Treibsand, Felder mit durstigen Nesseln, unsichtbare Welten, wo deinen Knochen Leben und Haß gegeben wird, Städte aus Staub mit Menschen aus Staub, die Asche flüstern, das Haus ohne Türen, das Land der Schattenlichter, die singenden Winde, die singenden Winde..." Sie beginnt, leise zu schluchzen, aber sie scheint keine Tränen mehr zu haben. "Und Schatten... die furchtbaren Schatten sind dort."~ */
  IF ~~ THEN REPLY #6172 /* ~"Wo sind denn diese Orte?"~ */ DO ~SetGlobal("Ingress","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #6173 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #6174 /* ~"Wo sie sind? Wo diese Orte sind?" Sie fährt mit ihrer rechten Hand durch die Luft und zeigt in die Stadtlandschaft. "Is alles HIER. Türen, Türen, einfach *überall.*"~ */
  IF ~~ THEN REPLY #6175 /* ~"Türen?"~ */ GOTO 4
  IF ~~ THEN REPLY #6176 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 18.3
  SAY #6177 /* ~"Du! Du weißt das nich?!" Sie blinzelt dich an und beginnt mit klappernden Zähnen zu erzählen. "Also, ich sag' dir nur: Hüte dich vor jedem Ort, durch den du gehst oder den du in dieser dreimal verfluchten Stadt berührst... Türen, Tore, Bögen, Fenster, Bilderrahmen, der offene Mund einer Statue, der Platz zwischen Regalen... hüte dich vor JEDEM Ort, der an allen Seiten geschlossen is. ALL das sind Türen zu andern Orten."~ */
  IF ~~ THEN REPLY #6178 /* ~"Wie meinst du das?"~ */ DO ~SetGlobal("Ingress","GLOBAL",4)
~ GOTO 5
  IF ~~ THEN REPLY #6179 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.4
  SAY #6180 /* ~"Jede Tür hat 'nen SCHLÜSSEL, und mit diesem Schlüssel kannst du ihre wahre Natur erkennen... 'n Bogen wird zu 'nem Portal, 'n Bilderrahmen wird zu 'nem Portal, 'n Fenster wird zu 'nem Portal... und alle können dich IRGENDWOHIN befördern. Die Dinger holen dich einfach von der Bildfläche..." Sie hebt den Stumpf ihrer rechten Hand. "Und manchmal nimmt sich das, was auf der andern Seite is, 'nen Teil von dir als ZEHNT."~ */
  IF ~~ THEN REPLY #6181 /* ~"Was für Schlüssel?"~ */ GOTO 6
  IF ~~ THEN REPLY #6182 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #6183 /* ~"Die Schlüssel, von denen gibt es so viele, wie es Türen in der Stadt gibt. Jede Tür ein Schlüssel, jeder Schlüssel eine Tür." Ihre Zähne beginnen wieder zu klappern, als würde sie frieren. "Und 'n Schlüssel is...? 'N Schlüssel is *alles mögliche.* Kann 'n Gefühl sein, 'n Nagel, den du zwischen Zeigefinger und kleinem Finger hältst, 'n dreimal gedachter Gedanke, der nochmal rückwärts gedacht wurde, oder auch 'ne Glasrose."~ */
  IF ~~ THEN REPLY #6184 /* ~"Und all das sind Schlüssel zum Öffnen dieser Türen?"~ */ JOURNAL #28838 /* ~Ingress hat mich vor "Türen" in der Stadt gewarnt... Sie behauptet, daß jeder umrahmte Raum - ein Bilderrahmen, ein Torbogen, ein Fenster - plötzlich zu einem Portal zu einem anderen Ort werden könne, wenn man mit dem richtigen Schlüssel zu dicht an ihm vorbeiginge. Diese Schlüssel könnten fast alles ... Gegeständliche oder Gegenstandslose ... sein: Eisennägel, ein dreimal gedachter Gedanke, eine Glasrose, ein Gefühl ... All das könne eine Tür zu einem anderen Ort öffnen.~ */ GOTO 7
  IF ~~ THEN REPLY #6185 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6186 /* ~"Ja." Ihre Zähne beginnen zu klappern, sie preßt die Lippen aufeinander und kneift die Augen zusammen. "J-j-ja. Kann nich weg... kann nich weg..."~ */
  IF ~~ THEN REPLY #6187 /* ~"Wie bist du hierhergekommen?"~ */ DO ~SetGlobal("Ingress","GLOBAL",5)
~ JOURNAL #28837 /* ~Ingress wurde durch eine dieser Türen auf ihrer Heimatebene in diese Stadt transportiert... Sie summte in einem Tal bei zwei toten Bäumen, die gegeneinandergefallen waren, ein Lied, und so öffnete sie ein Portal zu dieser Stadt. Sie ging hindurch, und seitdem hat sie keinen Weg zurück gefunden.~ */ GOTO 8
  IF ~~ THEN REPLY #6188 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 18.5
  SAY #6189 /* ~"Aus..." Sie scheint sich etwas zu beruhigen, und ihre Augen starren in die Ferne. "Ich kam von ganz woanders, vor fast einem Menschenleben, und habe vor mich hingesummt auf 'ner Lichtung mit zwei toten Bäumen, die ineinandergestürzt waren. Zwischen den gekreuzten Bäumen hat sich eine strahlend helle Tür aufgetan, mit dieser Stadt auf der anderen Seite. Bin hindurchgegangen und dann hier gelandet."~ */
  IF ~~ THEN REPLY #6190 /* ~"Warum kannst du nicht zurück?"~ */ GOTO 9
  IF ~~ THEN REPLY #6191 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6192 /* ~"Hab's versucht!" Sie versucht wieder zu weinen, aber es fließen keine Tränen. "Hab's versucht! ALLE Türen hier führen zu ANDEREN Orten." Sie schaudert und ballt ihre verbrannte rechte Hand zur Faust. "Bin durch dreimal zehn Portale gegangen, durch manche mit Absicht, durch andere aus Zufall, aber keins war das richtige. Ich find nicht mehr zurück..."~ */
  IF ~~ THEN REPLY #6193 /* ~"Es muß doch ein Portal geben, durch das du zurückkehren kannst."~ */ GOTO 10
  IF ~~ THEN REPLY #6194 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #6195 /* ~"Ich kann hier nich weg! Dieser Platz! Und da, der Platz des Todes hinter dem Tor, er wartet auf mich!" Sie zeigt zur Leichenhalle hinter dem Tor, dann schaut sie dich mit einem verzweifelten Gesichtsausdruck an. "In dieser Stadt kann ich nirgendwohin!"~ */
  IF ~~ THEN REPLY #6196 /* ~"Du kannst nirgendwo hingehen? Was soll das heißen?"~ */ GOTO 11
  IF ~~ THEN REPLY #6197 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6198 /* ~"Alles kann eine Tür sein. Jeder Bogen hier, jede Tür hier kann ein Portal sein. Wenn man den Schlüssel nich kennt, kann man sich an einem anderen, schrecklichen Ort wiederfinden..." Ihre Zähne beginnen wieder zu klappern. "...man muß von den umschlossenen Flächen wegbleiben. Kann alles 'ne Tür sein. Vielleicht hab' ich 'nen Schlüssel bei mir und weiß es nich mal."~ */
  IF ~~ THEN REPLY #6199 /* ~"Du... du hast Angst, durch EGAL welche Tür oder einen Bogen zu gehen, weil es ein Portal sein *könnte*?"
~ */ GOTO 12
  IF ~~ THEN REPLY #6200 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6201 /* ~Sie nickt, ihre Zähne klappern.~ */
  IF ~~ THEN REPLY #6202 /* ~"Wie lange hast du denn schon Angst davor?"~ */ GOTO 13
  IF ~~ THEN REPLY #6203 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #6204 /* ~Sie blinzelt. "Seit dem letzten Mal, als ich durch das letzte Portal gegangen bin, der Ort, wo meine Hände..." Sie hält inne. "Seit meiner zehnten Wiederkehr... bin jetzt in meiner vierzigsten Wiederkehr." Ihre Zähne beginnen wieder zu klappern.~ */
  IF ~~ THEN REPLY #6205 /* ~"Dreißig Jahre? Du bist seit dreißig Jahren durch *keine* einzige *Tür* gegangen?"~ */ GOTO 14
  IF ~~ THEN REPLY #6206 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6207 /* ~Ihr Blick scheint klarer zu werden. Sie schaut zu dir auf, während ihre Zähne noch immer klappern.~ */
  IF ~~ THEN REPLY #6208 /* ~"Du bist doch auch hierhergekommen, also muß es ein Portal geben, durch das du zurückkehren kannst. Die Frage ist nur, wo es zu finden ist..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #6209 /* ~"Angst zu haben, durch Türen zu gehen, also wirklich..."~ */ GOTO 15
  IF ~~ THEN REPLY #6210 /* ~"Wie *verrückt* bist du eigentlich, Frau? Du mußt wirklich dumm sein, durch nichts hindurchzugehen, was eine Tür sein könnte..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #6211 /* ~"Tut mir leid... ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #6212 /* ~Sie lächelt. Ihre Zähne klappern nicht etwa, weil ihr kalt ist... sie bewegen sich in ihrem Mund hin und her, ihr Zahnfleisch windet sich, während die Zähne sich verschieben. Du beobachtest, wie die Zähne sich herausschieben und wieder zurücksinken und dabei aneinander schlagen.~ */
  IF ~~ THEN REPLY #6213 /* ~"Was...?"~ */ GOTO 16
  IF ~~ THEN REPLY #6214 /* ~"Ähh... Ich glaube, ich geh jetzt lieber... leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #6215 /* ~Sie faucht dich an. "Es reicht ein EINZIGES Portal, durch das du versehentlich gehst, um dich das FÜRCHTEN zu lehren. Ich bin durch dreißig hindurchgegangen, hab' meine Hand verloren, bin halb verbrannt und hab' meinen Verstand verloren." Sie schaut auf ihre Füße. "Nie mehr, nie mehr."~ */
  IF ~~ THEN REPLY #6216 /* ~"Das tut mir leid... wenn ich ein Mittel finde, dir zu helfen, dann werd ich's tun. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_1","GLOBALGood",1)
~ JOURNAL #28836 /* ~Ingress ist von einer Angst vor Portalen befallen... Ihre Erfahrungen im Bereisen der Ebenen haben sie so ängstlich werden lassen, daß sie durch *nichts* hindurchschreitet, was ein Portal sein könnte. Wenn ich in der Stadt einen erfahrenen Ebenenreisenden finden könnte, ließe sich vielleicht auch ein Weg finden, sie nach Hause zurück zu bringen.~ */ EXIT
  IF ~~ THEN REPLY #6217 /* ~"Dann stirb halt in einer Stadt, die du nicht zu verlassen wagst. Laß dich von deiner Furcht beherrschen. Leb wohl und auf Nimmerwiedersehn."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_1","GLOBALGood",-1)
~ JOURNAL #28835 /* ~Diese Verrückte Ingress hat so viel Angst vor ihrem Schatten und allem, was ein Portal sein KÖNNTE, daß sie wie ein Hund auf den Straßen der Stadt lebt. Ich habe wenig wenn überhaupt kein Verständnis für sie... Trotzdem, wenn ich einen erfahrenen Ebenenreisenden finde, der das Portal kennt, durch das sie gegangen ist, komme ich vielleicht zurück und sage es ihr. ~ */ EXIT
  IF ~~ THEN REPLY #6218 /* ~"Ich werde deine Warnung beherzigen. Leb wohl."~ */ JOURNAL #28836 /* ~Ingress ist von einer Angst vor Portalen befallen... Ihre Erfahrungen im Bereisen der Ebenen haben sie so ängstlich werden lassen, daß sie durch *nichts* hindurchschreitet, was ein Portal sein könnte. Wenn ich in der Stadt einen erfahrenen Ebenenreisenden finden könnte, ließe sich vielleicht auch ein Weg finden, sie nach Hause zurück zu bringen.~ */ EXIT
END

IF ~  GlobalGT("Ingress","GLOBAL",0)
GlobalLT("Ingress","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY #6219 /* ~Du siehst Ingress. Sie ist in ihren Mantel aus schmutzigen Lumpen gehüllt und klappert mit den Zähnen. Sie schaut sich verstohlen um, als ob sie erwartet, jeden Moment angegriffen zu werden.~ */
  IF ~~ THEN REPLY #6220 /* ~"Sei gegrüßt, Ingress."~ */ GOTO 18
  IF ~~ THEN REPLY #6221 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6222 /* ~"He? Du!" Sie blinzelt dich an. "Was willst du denn jetzt von mir?! Willste, daß ich von hier verschwinde? Ich kann aus dieser Stadt NICH fort, also tu ich's nich. Kann nich, hab's versucht; das is keine Stadt, das is'n riesiges Gefängnis."~ */
  IF ~  Global("Ingress","GLOBAL",6)
!Dead("Candrian")
~ THEN REPLY #6228 /* ~"Ingress, ich habe jemanden gefunden, der dich zurück auf deine Heimatebene bringen kann."~ */ DO ~SetGlobal("Ingress","GLOBAL",7)
~ GOTO 19
  IF ~  Global("Ingress","GLOBAL",1)
~ THEN REPLY #6223 /* ~"Ein riesiges Gefängnis? Was meinst du damit?"~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",2)
~ THEN REPLY #6224 /* ~"Erzähl mir noch mal was über diese Orte... diese Ebenen, die du besucht hast."~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",3)
~ THEN REPLY #6225 /* ~"Was waren das für Türen, über die du gesprochen hast?"~ */ GOTO 4
  IF ~  Global("Ingress","GLOBAL",4)
~ THEN REPLY #6226 /* ~"Was waren das für Schlüssel, über die du gesprochen hast?"~ */ GOTO 5
  IF ~  Global("Ingress","GLOBAL",5)
~ THEN REPLY #6227 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 8
  IF ~~ THEN REPLY #28840 /* ~"Tut mir leid, daß ich dich störe, Ingress. Paß auf dich auf."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #28815 /* ~Ingress verstummt. "Ich will weg. WEG von diesem Ort."~ */
  IF ~~ THEN REPLY #28841 /* ~"Sein Name ist Candrian. Er müßte jeden Moment hier sein... vertrau ihm einfach, okay?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #28816 /* ~Ingress sagt nichts. Sie nickt nur, wobei ihre Zähne in ihrem Mund klappern.~ */
  IF ~~ THEN REPLY #28842 /* ~"Ich werde zurückgehen und mich mit Candrian in der Bar zur Schwelenden Leiche treffen. Will wissen, wie alles gelaufen ist. Halt' die Ohren steif, Ingress."~ */ JOURNAL #28834 /* ~Ich habe Ingress erzählt, daß Candrian kommen würde, um ihr zurück nach Hause zu helfen. Ich werde Candrian bei der Bar "Zur Schwelenden Leiche" treffen, um sicher zu sein, daß alles gut gegangen ist. ~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY #28817 /* ~Ingress beobachtet dich mißtrauisch, als du dich näherst. "Can - dri - an?"~ */
  IF ~  !Dead("Candrian")
~ THEN REPLY #28843 /* ~"Nein, ich bin nicht Candrian... er müßte jeden Moment hier sein. Ich werde mich mit ihm in der Bar zur Schwelenden Leiche treffen. Will wissen, wie alles gelaufen ist. Halt' die Ohren steif, Ingress."~ */ EXIT
  IF ~  Dead("Candrian")
~ THEN REPLY #28844 /* ~"Nein, ich bin nicht Candrian... Candrian ist ein Unglück zugestoßen. Er ist tot. Aber das bedeutet ja, daß du und Candrian euch eines Tages treffen werdet. Leb wohl."~ */ EXIT
END
