// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~Der verzweifelte Mann sieht zu dir auf, in seinen Augen einen Hoffnungsschimmer, aber er spicht so emotionslos wie eh und je. "Hat sie dir meinen Namen und meine Nummer gegeben? Sie hat dir Geld angeboten, nicht wahr? Ich kann nicht leben. Geld hat ohne einen Namen keine Bedeutung. Bring mir meinen Namen. Hat sie ihn dir gegeben?" Seine Augen suchen dein Gesicht mit intensivem Blick ab.~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"Ja. Hat sie."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~Lüge: "Nein. Noch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"Nein. Noch nicht."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"Nein. Noch nicht. Ich arbeite noch dran. Leb wohl."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"Sie hat mir Geld dafür geboten."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~Eine Welle von Muskelzuckungen verzerrt sein Gesicht. "Vergib mir", sagt er, "denn ich habe dir in meinen Gedanken Unrecht getan. Ich sehe dir an, daß Du meinen Namen und meine Nummer weißt, und doch behauptet deine Stimme das Gegenteil. Ich frage dich noch einmal. Hast du meinen Namen und meine Nummer?"~ */
  IF ~~ THEN REPLY #20115 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"Ja. Hab' ich."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"Beantworte mir zuerst ein paar Fragen, ja?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"Dreimal muß ich fragen, bevor ich nicht weiter fragen darf. Das ist das Gesetz. Hast du meinen Namen und meine Nummer?"~ */
  IF ~~ THEN REPLY #20119 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"Ja. Hab' ich."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"Beantworte mir zuerst ein paar Fragen, ja?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"Hier gibt es keine Gerechtigkeit. Mir wurde Unrecht getan, und ich darf nicht davon sprechen. Ich bin nichts, und ich werde ewig nichts bleiben. Ich will dich nicht mehr sehen."~ */
  IF ~~ THEN REPLY #20123 /* ~"Warte, ich hab' deinen Namen und die Nummer doch..."~ */ JOURNAL #66390 /* ~Ku'u Yin hat abgelehnt, als ich ihm seinen Namen und seine Nummer zurückgeben wollte. Soll er doch zu den Neun Höllen gehen.~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"Beantworte mir nur noch ein paar Fragen, ja?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"In Ordnung. Wenn du's so willst."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~Er schüttelt den Kopf und dreht sich um, um wegzugehen.~ */
  IF ~~ THEN REPLY #20127 /* ~"Dann leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"Kann ich sie haben?"~ */
  IF ~~ THEN REPLY #20129 /* ~"Was bekomm ich dafür?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"Ja. Dein Name ist Ku'u Yin. Hier, nimm deine Nummer."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"Ich kann dir nichts geben, denn ich habe nichts. Gibst du mir meinen Namen und meine Nummer?"~ */
  IF ~~ THEN REPLY #20133 /* ~"Ja. Dein Name ist Ku'u Yin. Hier, nimm deine Nummer."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"Ich danke dir für meinen Namen und meine Nummer. Ja. Ku'u Yin. Ja. Aber nein. Jetzt erkenne ich, daß ich hier keine Nummer mehr brauche. Ich werde mir selbst eine neue Nummer suchen, wenn es sein muß. Ich gebe dir meine alte Nummer. Sie kann dir helfen. Sie ist wie der Mantel des Gesetzes. Sie bedeutet Schutz. Nimmst du sie an?"~ */
  IF ~~ THEN REPLY #20136 /* ~"Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"Nein."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~Er nimmt sie mit ernster Miene an. "Ich danke dir für meinen Namen und meine Nummer. Ja. Ku'u Yin. Ja. Ich danke dir. Ich werde dich nicht vergessen." Er wirft die Nummer wie einen Schal um seinen Hals, und sie sinkt in seine Haut. Er entfernt sich langsam von dir.~ */
  IF ~~ THEN REPLY #20139 /* ~"Warte. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #66391 /* ~Ich habe Ku'u Yin seinen Namen und seine Nummer zurückgegeben. Er hat mir nichts dafür angeboten. Vielleicht hätte ich versuchen sollen, ihn deswegen zu erpressen...~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~Ich habe Ku'u Yin seinen Namen und seine Nummer zurückgegeben. Er hat mir nichts dafür angeboten. Vielleicht hätte ich versuchen sollen, ihn deswegen zu erpressen...~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"Laß dich von ihr wärmen. Vertraue auf sie. Sie wird dich beschützen. Lebe wohl." Er dreht sich um und entfernt sich langsam von dir.~ */
  IF ~~ THEN REPLY #20142 /* ~"Warte. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #66392 /* ~Ich habe Ku'u Yin seinen Namen und seine Nummer zurückgegeben. Er hat mir seine Nummer angeboten und gesagt, daß sie mich wärmen und schützen werde.~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~Ich habe Ku'u Yin seinen Namen und seine Nummer zurückgegeben. Er hat mir seine Nummer angeboten und gesagt, daß sie mich wärmen und schützen werde.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"Und die wären?"~ */
  IF ~~ THEN REPLY #20145 /* ~"Erzähl mir was von dir."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"Was machst du da?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"Nichts. Vergiß es. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"Ich bin Ku'u Yin. Ich kam durch Zufall her. Jetzt, wo ich hier bin, will ich mehr lernen. Ich muß mehr wissen."~ */
  IF ~~ THEN REPLY #20150 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"Viel Glück. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"Ich beabsichtige, das selbst herauszufinden. Mit meinem Namen bin ich wieder jemand. Ich kann lernen. Und das werde ich tun."~ */
  IF ~~ THEN REPLY #20153 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"Viel Glück. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"Ich bereite mich darauf vor, dieser neuen Welt mit meiner alten Identität gegenüberzutreten. Jetzt, wo ich weiß, daß es versteckte Fallen gibt, will ich soviel herausfinden, wie ich nur kann. Ich bin jetzt bereit."~ */
  IF ~~ THEN REPLY #20156 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"Viel Glück. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~Er wirft die Nummer wie einen Schal um seinen Hals, und sie sinkt in seine Haut. "Dann werde ich meine alte Nummer tragen. Ich danke dir. Lebe wohl." Er dreht sich um und geht zurück in Richtung Ausgang.~ */
  IF ~~ THEN REPLY #20159 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"Viel Glück. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~Er spricht ausdruckslos, als du dich näherst. "Ich flehe dich an, deine Verhandlungen mit dem Dieb fortzusetzen. Ohne meinen Namen und meine Nummer bin ich nichts."~ */
  IF ~~ THEN REPLY #20162 /* ~"Bin schon auf dem Weg. Beantworte mir aber zuerst noch ein paar Fragen, ja?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"Was möchtest du wissen?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"Erzähl mir was über dich."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"Erzähl mir was über Sigil."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"Nichts. Leb wohl."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"Hast du die Frau mit meinem Namen und meiner Nummer gefunden? Sie wird dir sagen, daß sie den Namen von mir gewonnen hat, aber das ist nicht wahr. Sie hat ihn gestohlen. Ich fordere meinen Namen und meine Nummer zurück. Sie ist irgendwo im Dorf."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~Lüge: "Nein, noch nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"Ich habe deinen Namen und deine Nummer."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"Ich hab' die Frau gefunden. Aber sie will sie nicht herausgeben."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"Ich hab' sie noch nicht."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~Er erblaßt für einen Moment. "Sie muß. Sie gehören mir. Sie hat sie mir gestohlen. Ich erbitte deine Hilfe."~ */
  IF ~~ THEN REPLY #20177 /* ~"Sie sei dir gewährt."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"Vielleicht, wenn du mir noch ein paar Fragen beantworten würdest..."~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"Vergiß es."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"Ich benötige Hilfe. Jede Hilfe, die du mir gewährst, werde ich dankbar in Erinnerung behalten. Bitte hilf mir."~ */
  IF ~~ THEN REPLY #20181 /* ~"Wir können damit anfangen, daß du mir noch ein paar Fragen beantwortest..."~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"Ich lebte einst in einem Land, in dem es Maschinen aus Metall gab, und Türen, die sich auf Zuruf öffneten. Ich träume von den unberührten Metallstädten und den leeren Hüllen, die unser Volk darstellen. Dort hatte ich einen Namen und eine Nummer, und jetzt habe ich keines von beiden. Wie bei allen meiner Art sind sie alles, was ich habe. Sie sind alles, was in meinem Leben jemals mir gehörte. Sie wurden mir gestohlen. Ohne sie bin ich nichts. Ich erbitte deine Hilfe."~ */
  IF ~~ THEN REPLY #20184 /* ~"Ich werd sehen, was ich machen kann. Beantworte mir noch ein paar Fragen..."~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"Wer hat deinen Namen und deine Nummer?"~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"Was kannst du mir geben?"~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"Wir werden sehen. Beantworte mir noch ein paar Fragen."~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"Wir werden sehen. Leb wohl."~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"Ich werd's versuchen. Leb wohl."~ */ JOURNAL #66389 /* ~Ich habe einen seltsamen Mann getroffen, dem seine Nummer gestohlen wurde. Er scheint von einem Land des Gesetzes und Metalls zu kommen, wo alle Dinge ihren Platz und ihre Nummer haben, und ohne seine wirkt er nackt und kalt.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"Ich weiß nichts darüber. Ich kenne diesen Ort nicht. Ich habe keinen Namen. Ich kann mich nicht an diesen Ort erinnern. Mir ist kalt. Ich habe Angst. Es ist seltsam, so nackt zu sein. Ich fürchte, ich werde sterben."~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"Was meinst du?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"Was meinst du?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"Hmm. Interessant. Leb wohl."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"Hmm. Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"Ich habe nichts. Ich erbitte deine Hilfe."~ */
  IF ~~ THEN REPLY #20197 /* ~"Ich werd sehen, was ich machen kann. Beantworte mir noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"Wir werden sehen. Beantworte mir noch ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"Ich werd's versuchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"Die, die früher Radine war. Sie hat sie mir gestohlen. Ich habe ihr den Schutz durch meinen Namen und meine Nummer angeboten, und sie hat sie mir gestohlen. Sie gehören rechtmäßig mir. Finde sie. Sie ist in diesem Dorf."~ */
  IF ~~ THEN REPLY #20202 /* ~"Ich werd sehen, was ich machen kann. Beantworte mir noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"Tja, das ist bitter. Beantworte mir noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"Ich seh zu, was ich machen kann."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"Pech für dich. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~Du siehst einen düsteren Mann mit einem perfekten Mondgesicht. Er sieht dich ausdruckslos an und schweigt. Er sieht aus, als wäre seine Stimme genauso ausdruckslos wie sein Gesicht.~ */
  IF ~~ THEN REPLY #20207 /* ~"Sei gegrüßt. Ich hatte gehofft, du könntest mir ein paar Fragen beantworten..."~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~Laß ihn in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"Man kann einen Namen nicht mit Geld kaufen. Genauso wenig wie man eine Zahl kaufen kann. Geld ist nur ein billiger Ersatz für eine Identität. Das verstehst du doch sicher."~ */
  IF ~~ THEN REPLY #45397 /* ~"Ja, sicher. Ich werd mein Bestes tun. Leb wohl."~ */ EXIT
END
