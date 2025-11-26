// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~Dieses Skelett trägt ein Gewand, das wie die schwere, verzierte Robe eines alten Priesters aussieht. Es hält eine riesige Stange, an deren Ende aufwendig geschnitzte Hörner, verschiedene Anhänger und ein vergoldeter Schädel befestigt sind.~ */
  IF ~~ THEN REPLY #2928 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~Laß den 'Skelettpriester' in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~Das Skelett hat Augen wie glühende Kohlen, mustert dich... aber antwortet nicht.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"Bist du der Schweigende König?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"Bist du Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~Es nickt erhaben, die Anhänger an seinem Knüppel klingeln leise. Sein stiller, durchdringender Blick hat etwas Beunruhigendes.~ */
  IF ~~ THEN REPLY #21047 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~Es bedeutet dir fortzufahren.~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"Hast du gewußt, daß Soego ein Schädelrattenspion ist?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"Ich hab' ein paar Schädelratten im Schutt einer alten Gasse gefunden und getötet."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~Ich habe Hargrimm erzählt, daß ich einige Schädelratten in den Toten Landen gefunden und sie getötet habe. Er hat mir gedankt, aber das war auch alles.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"Kann ich mit dem Schweigenden König sprechen?"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"Wo bin ich?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"Was machst du hier?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"Ich will etwas über eine bestimmte Person wissen..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"Ich brauche Heilung. Kannst du mir helfen?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"Könnten wir uns hier ausruhen?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"Wir brauchen Heilung. Kannst du uns helfen?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~Es schüttelt seinen Kopf und dreht ihn mit einer unheimlichen Anmut so, daß er nach Osten zeigt. Dann wendet es sich wieder dir zu.~ */
  IF ~~ THEN REPLY #21109 /* ~"Bist du Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"Kann ich mit ihm sprechen?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~Es hebt eine knochige Hand. Mit einem knarzenden Stöhnen und einer Staubwolke öffnen sich seine Kiefer zum Sprechen: "Nein." Seine Stimme ist tief und sonor und hallt im Gewölbe der Kammer lange nach.~ */
  IF ~~ THEN REPLY #21114 /* ~"Aber wieso denn nicht?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"Aber ich brauche seine Erlaubnis, um von hier weg zu dürfen."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"Aber ich brauche seine Erlaubnis, um von hier weg zu dürfen."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~Wahrheit: "Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~Täuschung: " Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"Ich hätte dann ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~Seine Stimme dröhnt durch die Kammer: "Kein lebendes Wesen darf die Türen passieren, die zu seinem Thronsaal führen. Ich würde dir selbst dann keine Audienz gewähren, wenn dies möglich wäre. Du darfst ihn *nicht* treffen."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"Aber ich brauche seine Erlaubnis, um von hier weg zu dürfen."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"Aber ich brauche seine Erlaubnis, um von hier weg zu dürfen."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~Wahrheit: "Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~Täuschung: " Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"Ich hätte dann ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"Ich werde deine Bitte dem Schweigenden König vortragen."~ */
  IF ~~ THEN REPLY #21129 /* ~"Danke..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"Der Schweigende König hat gesprochen. Du darfst gehen. Der Weg soll dir nicht länger versperrt sein."~ */
  IF ~~ THEN REPLY #21131 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~Hargrimm hat für mich mit dem Schweigenden König gesprochen, und ich bin von meiner Gefangenheit in den Toten Landen freigelassen.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~Hargrimm nimmt deine Anwesenheit zur Kenntnis, indem er schweigend in deine Richtung nickt.~ */
  IF ~~ THEN REPLY #21134 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"Komm' nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~Es hebt die Hand. "Nein. Im Namen des Schweigenden Königs, du darfst diesen Ort nicht verlassen."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"Wie kann ich dich überzeugen?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"Wie kann ich dich überzeugen?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"Aber... was kann ich *noch* tun, um dich zu überzeugen?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~Ich habe Hargrimm gefragt, wodurch ich ihn noch dazu bringen könnte, mich rauszulassen. Da hat er mich beauftragt, eine Möglichkeit zu finden, wie er Soego aus den Toten Landen entfernen kann... Dann würde er beim Schweigenden König ein gutes Wort für mich einlegen.~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~Wahrheit: "Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~Täuschung: " Laß mich zu ihm, oder ich werde eure ganze Bande in staubige Scherben schlagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"Ich hätte dann ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~Seine Stimme dröhnt durch die Kammer: "DU WIRST *NICHTS* DERARTIGES TUN." Staub rieselt von der Decke, und dir dröhnen die Ohren von der Lautstärke. Gerade als du dich wieder gefaßt hast, beginnt sich ein Nimbus der Macht um es zu formen. Es macht jedoch keine Anstalten anzugreifen.~ */
  IF ~~ THEN REPLY #21144 /* ~Greif ihn an.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"Ich hätte dann ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"Dies ist der Wille des Schweigenden Königs. Die Lebenden, die hier gefangen werden, lassen wir in diesen Hallen darben, bis sie sich den Schweigenden anschließen."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"Könnte man ihn denn nicht irgendwie umstimmen?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm hat mir gesagt, es gebe eine Möglichkeit, daß der Schweigende König überredet werden könne, mich freizulassen. Wenn ich ihn nur irgendwie treffen könnte...~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"Schweigende?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"Die wahren Toten. Die, die keine Stimme haben, und nichts tun, als ewig zu schlafen. Möge der Schweigende König über sie wachen!"
~ */
  IF ~~ THEN REPLY #21155 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"Könnte man den Schweigenden König überzeugen, mich zu befreien?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm hat mir gesagt, es gebe eine Möglichkeit, daß der Schweigende König überredet werden könne, mich freizulassen. Wenn ich ihn nur irgendwie treffen könnte...~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~Nach einer kurzen Pause öffnen sich knarzend seine Kiefer: "Es ist zu bezweifeln, aber doch möglich. Geheimnisvoll sind die Wege des Schweigenden Königs."~ */
  IF ~~ THEN REPLY #21160 /* ~"Kann ich mit ihm sprechen?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~Es deutet mit einer Geste auf seine ganze Umgebung. "Auf dem Territorium der Toten Lande, in den Hallen des Schweigenden Königs."~ */
  IF ~~ THEN REPLY #21164 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~Es deutet auf seinen Knüppel und sein Gewand. "Man nennt mich Hargrimm. Ich bin der Hohepriester der hiesigen Bürger. Ich gebe das Wort des Schweigenden Königs an seine Gefolgsleute weiter."~ */
  IF ~~ THEN REPLY #21168 /* ~"Wie bist du hier gelandet?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"Seine Gefolgsleute? Wer ist denn sonst noch hier?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"Wir, die Skelette. Andere Untote - Zombies, Ghule. Sie waren einmal Schatten, aber sie sind längst geflohen. Manchmal verbringt einer der Lebenden seine letzten Tage hier. Auch leben weit im Osten viele Schädelratten."~ */
  IF ~~ THEN REPLY #21174 /* ~"Erzähl mir von deiner eigenen Rasse."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"Erzähl mir was von den anderen Untoten."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"Erzähl mir von den Ratten."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"Wir sehen nach den Schweigenden, den wahren Toten, und gehorchen dem Wort des Schweigenden Königs. Unsere Arbeit hier tun wir seit Jahrhunderten."
~ */
  IF ~~ THEN REPLY #21180 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~Es atmet seine Erwiderung in einer Wolke von altem Staub aus: "Wen meinst du?"~ */
  IF ~~ THEN REPLY #21185 /* ~"Die Zombies."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"Die Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"Was ist mit den Schatten?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"Na, macht nichts. Wer bewohnt diesen Ort sonst noch ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"Sie dienen dem Schweigenden König und den Toten Landen als Arbeiter. Sie arbeiten unter der Aufsicht der Muffigen Mary, der intelligentesten und weisesten unter ihnen."~ */
  IF ~~ THEN REPLY #21192 /* ~"Erzähl mir was über die Muffige Mary."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"Ich traue weder ihnen noch ihrer Matriarchin, Akaste. Sie beobachten uns mit hungrigen Blicken und würden uns zweifellos alle verschlingen, wenn uns unsere Anzahl und das Wort des Schweigenden Königs nicht vor ihnen schützten." Es unterbricht sich, als müßte es nachdenken.~ */
  IF ~~ THEN REPLY #21197 /* ~"Erzähl weiter..."~ */ JOURNAL #21202 /* ~Hargrimm hat mir erzählt, daß er sich wegen Akaste Sorgen mache. Er hat das Gefühl, nur die Anzahl der Skelette und Zombies sowie die Furcht vor dem Schweigenden König halten Akaste und ihre Ghule davor zurück, alles in den Katakomben zu töten und aufzufressen.~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"Erzähl mir was über Akaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"Sie sind stockhirniges Ungeziefer, das einst in großer Zahl hier einfiel und die Leichen in unserer Obhut fraßen. Die Ghule haben sie größtenteils zurückgetrieben - sie verlassen ihre Bauten östlich von hier nicht mehr."~ */
  IF ~~ THEN REPLY #21204 /* ~"Haben sie irgendwelche Schwächen?"~ */ JOURNAL #21209 /* ~Hargrimm hat mir erzählt, um besser mit den Schädelratten kämpfen zu können, solle ich so viele kleine Gruppen von ihnen suchen und zerstören wie nur möglich. Dadurch haben die größeren Gruppen immer weniger Ratten - und damit weniger Macht - auf die sie im Kampf zurückgreifen können.~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"Erzähl mir was über die Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~Es atmet seine Erwiderung in einer Wolke von altem Staub aus: "Wen meinst du?"~ */
  IF ~~ THEN REPLY #21211 /* ~"Erzähl mir was über dich."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"Erzähl mir was über die Muffige Mary."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"Erzähl mir was über Soego."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"Erzähl mir was über Soego."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"Erzähl mir was über Akaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"Unser Herr und unsere Vision, er, der das Gesetz macht und uns beschützt. Du würdest hier besser keinen Ärger machen, Fremder, denn das Auge des Schweigenden Königs ist überall, und seine Strafe folgt schnell."~ */
  IF ~~ THEN REPLY #21220 /* ~"Warum wird er der Schweigende König genannt?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"Er spricht nicht mehr als nötig, um uns zu leiten. Gelobt sei der Schweigende König."~ */
  IF ~~ THEN REPLY #21225 /* ~"Kann ich mit ihm sprechen?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"Sie ist die intelligenteste unter denen, die manche die 'verrottende Herde' nennen, jenen Zombies, die die Toten Lande bevölkern. Im Gegensatz zu vielen von uns, ist ihr Herz im Moment des Todes nicht gestorben. Das ist alles, was ich sagen kann."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"Hast du keine Schwierigkeiten, sie zu verstehen?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Als ich mit Hargrimm darüber gesprochen habe, daß ich die Muffige Mary nicht verstehe, hat er mir gesagt, ich müsse *lernen*, mit ihr zu sprechen. Vielleicht weiß sie ja, was er damit meint.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"Wie kannst du sie verstehen?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Als ich mit Hargrimm darüber gesprochen habe, daß ich die Muffige Mary nicht verstehe, hat er mir gesagt, ich müsse *lernen*, mit ihr zu sprechen. Vielleicht weiß sie ja, was er damit meint.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"Erzähl mir von der... 'verrottenden Herde'."~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~Es vergeht eine Weile, bevor das Skelett antwortet. "Du mußt *lernen* zuzuhören, das ist alles."
~ */
  IF ~~ THEN REPLY #21237 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~Seine Stimme wird noch grimmiger: "Ich werde nicht mehr von ihm sprechen. Möge der Schweigende König seine erbärmliche Seele verfluchen!"~ */
  IF ~~ THEN REPLY #21241 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"Er versucht, uns zu überzeugen, daß wir dieses 'vorgetäuschte Leben', wie er es nennt, aufgeben und in den Wahren Tod übergehen. Er behauptet, daß es unsere Leidenschaften sind, die uns an dieses Leben ketten, und daß wir sie und unsere Pflicht aufgeben müssen. Er will, daß wir sterben."~ */
  IF ~~ THEN REPLY #21245 /* ~"Erzähl weiter..."~ */ JOURNAL #21249 /* ~Hargrimm ist unglücklich über die Anwesenheit Soegos, da die Staubmenschen ständig versuchen, die Bürger der Toten Lande zu überzeugen, endlich zu sterben. Sollten sie sich wirklich überreden lassen und ihre Anzahl dadurch zu stark reduzieren, denkt er, daß ihre gesamte Zivilisation gefährdert sei, da sie nicht in der Lage wäre, sich gegen Bedrohungen wie beispielsweise durch die Schädelratten oder Akastes Ghule zu wehren.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"Einige hören ihn an, aber niemand hat beschlossen, sich seinen Lehren anzuschließen. Diejenigen, die es täten, wären für immer zum Schweigen gebracht. Unsere Zahl würde sinken, und alles, was wir hier haben, würde von dem zerstört, was uns umgibt. Soego mag glauben, daß er richtig handelt, aber in Wahrheit richtet er großen Schaden an."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"Hast du gewußt, daß er ein Schädelrattenspion ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"Warum erlaubst du ihm, hierzubleiben?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"Wir können ihn nicht zwingen zu gehen. Er weiß, daß wir ihm nichts anhaben können. Die Tote Waffenruhe... kein Untoter darf einen Staubmenschen verletzen, es sei denn, er wird zuerst angegriffen. Außerdem wünscht der Schweigende König kein Blutvergießen in seinen Hallen."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"Wußtest du, daß er für die Schädelratten spioniert?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"Sie ist die Matriarchin der Ghul-Meute, die unsere Hallen heimgesucht hat. Sie ist stark und äußerst gerissen."~ */
  IF ~~ THEN REPLY #21262 /* ~"Erzähl mir was über die Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"Laß mich dich noch was zu jemand anderem fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~Es schüttelt seinen Kopf. "Ich habe ein solches Ding nicht gesehen. Warum suchst du nach diesem Objekt?"~ */
  IF ~~ THEN REPLY #21267 /* ~"Für einen Mann namens Pharod."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"Egal. Ich hätte noch ein paar andere Fragen ."~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~Das Skelett weicht zurück. Es schaut nach oben und in die Ferne, als ob es zur Oberfläche schaut. "Pulsiert noch Blut in seinem schwarzen, wurmstichigen Herzen? Dieser keuchende Fleischsack schickt seine Meute immer noch zum Stehlen und Räubern in unsere Heimstätten." Es wendet sich wieder dir zu. "Du hättest nicht herkommen sollen... wir dulden keine solchen Schänder auf unserem Territorium."~ */
  IF ~~ THEN REPLY #21271 /* ~"Aber ich gehöre nicht zu seiner Meute..."~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"Was willst du also tun?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"Was willst du also tun?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~Es funkelt dich schweigend an. "Nichts... die Tote Waffenruhe schützt dich. Du wirst jedoch bis zu deinem Tod hierbleiben."~ */
  IF ~~ THEN REPLY #21275 /* ~"Aber ich kann nicht sterben."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"Aber ich bin keiner von Pharods Männern."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"Wir werden dich exekutieren, wie es das Gesetz des Schweigenden Königs verlangt. Kein Grabräuber darf hier am Leben bleiben."~ */
  IF ~~ THEN REPLY #21280 /* ~"Aber ich kann nicht sterben."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"Aber ich bin keiner von Pharods Männern."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~Es starrt dir eine Weile in die Augen, bevor es antwortet. "Das ist kein Problem. Du wirst in alle Ewigkeit hier, unter den Augen des Schweigenden Königs, bleiben. Vielleicht wirst du eines Tages die Torheit deines Verhaltens einsehen und dich bemühen, unserer schönen Zivilisation dienlich zu sein."~ */
  IF ~~ THEN REPLY #21285 /* ~"Aber ich bin keiner von Pharods Männern."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"Warum bist du dann hier, auf einer Mission für diese erbärmliche Seele, und dringst in unsere Heimstätten ein?"~ */
  IF ~~ THEN REPLY #21289 /* ~"Ich finde die Kugel für ihn und erhalte als Gegenleistung die Informationen, die ich brauche. Das ist die einzige Loyalität zwischen uns."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"Ich tu es nur ausnahmsweise, des Geldes wegen. Er bietet mir eine Belohnung, wenn ich ihm die Kugel zurückbringe."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~Es mustert dich sorgfältig und klopft mit einem knochigen Finger gegen sein Kinn - *klick, klick, klick*. "Du erscheinst mir nicht wie jemand, der solch einem Mann folgt. Vielleicht sprichst du die Wahrheit. Vielleicht... kann deine Anwesenheit hier geduldet werden."~ */
  IF ~~ THEN REPLY #21292 /* ~"Gut. Ich hätte noch andere Fragen..."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"Gut. Leb wohl."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~Es tritt nah an dich heran und riecht nach Staub und muffigem Stoff. "Wovon sprichst du? Welchen Beweis hast du, daß Soego sich den Klugschädlingen angeschlossen hat?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"Ich hab' mit ihnen gesprochen, und sie haben's mir selbst erzählt."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Aber er ist jetzt tot."~ */ JOURNAL #21303 /* ~Ich habe Hargrimm von Soegos Verbindung zu den Schädelratten erzählt. Er hat gesagt, er würde sich später um die Sache kümmern.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"Es gibt Beweise dafür in seinem Quartier, seinem Journal."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"Es gib Beweise in seinem Quartier, in seinem Journal. Ich hab mit ihm darüber gesprochen, und da hat er sich in eine Mannratte verwandelt und mich angegriffen."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"Egal. Ich hätte noch ein paar andere Fragen ."~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"Vielleicht haben sie dich angelogen, damit du Soego tötest. Hast du diese Möglichkeit bedacht?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Aber er ist jetzt tot."~ */ JOURNAL #21303 /* ~Ich habe Hargrimm von Soegos Verbindung zu den Schädelratten erzählt. Er hat gesagt, er würde sich später um die Sache kümmern.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"Es gibt Beweise dafür in seinem Quartier, seinem Journal."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Ich hab mit ihm darüber gesprochen, und da hat er sich in einen Rattenmenschen verwandelt und mich angegriffen."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"Dann werde ich eben weitere Beweise finden. Ich hätte noch ein paar Fragen."~ */ JOURNAL #21301 /* ~Ich habe Hargrimm über Soegos Verbindung zu den Schädelratten erzählt, konnte aber nicht genügend Beweise zur Zufriedenheit des Skeletts erbringen. Vielleicht kann ich ja noch deutlichere Beweise bei oder um Soego selbst finden.~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"Wie du meinst. Dann werde ich nach weiteren Beweisen suchen. Leb wohl."~ */ JOURNAL #21301 /* ~Ich habe Hargrimm über Soegos Verbindung zu den Schädelratten erzählt, konnte aber nicht genügend Beweise zur Zufriedenheit des Skeletts erbringen. Vielleicht kann ich ja noch deutlichere Beweise bei oder um Soego selbst finden.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"Wir werden sehen. Ich werde bald zurück sein. Wenn es wahr ist, bin ich dir zu Dank verpflichtet."~ */
  IF ~~ THEN REPLY #21310 /* ~Warte.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~Es mustert dich einen Moment, bevor es spricht. "Beweise den Toten Landen, daß du nichts Böses im Schilde führst. Zeige deinen guten Willen durch Taten. Vielleicht werde ich deine Bitte dann dem Schweigenden König vortragen."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"Hast du gewußt, daß Soego ein Schädelrattenspion ist?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"Ich könnte den Staubmenschen erzählen, daß Pharod ihnen Leichen verkauft, die er hier gestohlen hat. Ich bin mir sicher, sie würden Pharod dann aufhalten."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"Ich könnte den Staubmenschen erzählen, daß Pharod ihnen Leichen verkauft, die er hier gestohlen hat. Ich bin mir sicher, sie würden Pharod dann aufhalten."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"Gibt es etwas, was ich für dich tun kann?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm hat mir gesagt, ich solle mich in den Toten Landen umsehen und alle Schädelratten töten, auf die ich treffe.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"Wollt ihr irgendjemanden tot sehen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm hat mir gesagt, ich solle mich in den Toten Landen umsehen und alle Schädelratten töten, auf die ich treffe.~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"Dann werde ich mir was überlegen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"Ich bin sicher, daß du die Probleme erkennst, die dein Angebot mit sich bringt. Wir können dir nicht erlauben, dich nur in der Hoffnung gehen zu lassen, daß du so etwas tun würdest."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"Hast du gewußt, daß Soego ein Schädelrattenspion ist?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"Gibt es etwas, was ich für dich tun kann?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm hat mir gesagt, ich solle mich in den Toten Landen umsehen und alle Schädelratten töten, auf die ich treffe.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"Wollt ihr irgendjemanden tot sehen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~Hargrimm hat mir gesagt, ich solle mich in den Toten Landen umsehen und alle Schädelratten töten, auf die ich treffe.~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"Dann werde ich mir was anderes überlegen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"Ja, vielleicht. Manchmal übersehen die Ghule kleine Rudel gut versteckter Schädelratten, die zum Spionieren hierher gekommen sind. Solltest du welchen begegnen, bring sie auf jeden Fall um."~ */
  IF ~~ THEN REPLY #21326 /* ~"Erzähl mir was über die Schädelratten."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"Ich werd's mir merken. Ich hätte noch ein paar andere Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"Das könnte ich machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"Ihre Stärke liegt in ihrer großen Zahl. Wenn man einzelne, kleine Rudel finden und töten könnte, würden die größeren Rudel langsam ihre Macht verlieren. Die Rattennester im Osten sind zum Beispiel sehr mächtig. Oben im Stock getötete Klugschädlinge könnten die Position derjenigen hier unten jedoch schwächen."~ */
  IF ~~ THEN REPLY #21330 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~Es nickt, offensichtlich erfreut. "Wir danken dir. Möge der Schweigende König über dich wachen."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"Also... kannst du nun mit dem Schweigenden König für mich sprechen?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"Also... kannst du nun mit dem Schweigenden König für mich sprechen?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"Ich hätte noch ein paar Fragen..."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~Hargrimm nickt dir erhaben zu.~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"Ich habe im Geröll eines alten Durchgangs eine Gruppe von Schädelratten gefunden und getötet."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"Kann ich hier übernachten?~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"Ich brauche Heilung - kannst du mir helfen?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"Können wir hier etwas ausruhen?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"Wir bnrauchen Heilung - kannst du uns helfen?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"Ich wollte dich was über die Muffige Mary fragen... Findest du es nicht schwer, sie zu verstehen?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Als ich mit Hargrimm darüber gesprochen habe, daß ich die Muffige Mary nicht verstehe, hat er mir gesagt, ich müsse *lernen*, mit ihr zu sprechen. Vielleicht weiß sie ja, was er damit meint.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"Ich wollte dich was über die Muffige Mary fragen... Wie verstehst du sie?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Als ich mit Hargrimm darüber gesprochen habe, daß ich die Muffige Mary nicht verstehe, hat er mir gesagt, ich müsse *lernen*, mit ihr zu sprechen. Vielleicht weiß sie ja, was er damit meint.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"Hast du gewußt, daß Soego ein Schädelrattenspion ist?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"Leb wohl, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~Es schüttelt den Kopf. "Ich habe hier so etwas nie gesehen. Vielleicht tiefer unter Sigil... Such in den versunkenen Katakomben. Den Eingang zu diesem Ort findest du westlich von der Stelle, an der du diese Gegen hier zum ersten Mal betreten hast. Achte darauf, die Ruhe der Toten nicht zu stören, sonst ziehst du den Zorn des Schweigenden Königs auf dich!"~ */
  IF ~~ THEN REPLY #21339 /* ~"Vielen Dank. Leb wohl, Hargrimm."~ */ JOURNAL #21340 /* ~Hargrimm hat mir gesagt, ich solle die überfluteten Katakomben hinter den Toten Landen nach der Bronzekugel durchsuchen, hinter der ich her bin.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"Wir wissen es nicht. Es kann sein, daß sie anderswo umherstreifen. Wir verlassen selten diesen Ort." Es verstummt, als ob es nicht wüßte, ob es weitersprechen soll. "Einst lebten viele Schatten unter uns, aber sie kommen nicht mehr in unsere Hallen. Sie haben uns vor langer Zeit verlassen - und wir wissen nicht, wohin sie gegangen sind. Manche sagen, sie wandern auf den Ebenen umher."~ */
  IF ~~ THEN REPLY #21342 /* ~"Sie wandern auf den Ebenen umher?"~ */ JOURNAL #21346 /* ~Hargrimm hat mir erzählt, daß einmal viele Schatten in den Toten Landen gewohnt haben. Nach einer Vision der Muffigen Mary wurden sie alle vor langer Zeit in eine Festung auf der Negativen Materiellen Ebene gezogen.~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"Ich habe einmal danach gefragt. Mary sagt, sie habe ihr Schicksal in Visionen gesehen. Sie behauptet, sie seien alle zu einer zerstörten Festung gezogen worden, die auf der Negativen Materiellen Ebene umhertreibt, einem Friedhof der Reue, aus dem sie nicht entkommen könnten."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"Wer ist Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"Mary... Muffige Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"Eine Festung auf der Negativen Materiellen Ebene?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"Warum bleibst du hier?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~Es nickt. "Ja, die Muffige Mary, möge der Schweigende König über sie wachen. Als sie noch lebte, vor Urzeiten, war sie eine Seherin. Von Zeit zu Zeit hat sie noch immer Visionen."~ */
  IF ~~ THEN REPLY #21356 /* ~"Erzähl mir was über sie."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"Du hast von einer Festung gesprochen?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"Warum bleibst du hier?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"Ja." Der Skelett-Priester schüttelt den Kopf. "Reiner Unsinn."~ */
  IF ~~ THEN REPLY #21363 /* ~"Warum?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"Wer ist Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"Du erwähntest vorhin Mary... Muffige Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"Warum bleibst du hier?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"Diese Ebene ist ein Ort, von dem alle Energien ausgehen, die die Hohlräume der Untoten füllen. Wenn uns das Leben verläßt, besteht die Möglichkeit, daß durch Magie und Leidenschaft... und vielleicht andere Dinge... diese Energie den Hohlraum ausfüllt und uns ein leeres Leben verleiht. Mir ist jedoch unverständlich, wie dort irgend etwas *existieren* könnte."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"Wer ist Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"Du erwähntest vorhin Mary... Muffige Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"Warum bleibst du hier?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"Dieses Land steht unter unserer Obhut. Die Schweigenden - die wahren Toten - müssen beschützt und betreut werden... sonst würde der Schrecken der Katakomben sich ihrer bemächtigen und ihren Schlaf stören. Es ist unsere heilige Pflicht, uns um sie zu kümmern."~ */
  IF ~~ THEN REPLY #21378 /* ~"Die Schrecken der Katakomben?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"Wer ist Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"Du erwähntest vorhin Mary... Muffige Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"Du hast von einer Festung gesprochen?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"Die Lebenden... menschliche Aasgeier, dieses Aasgeier- Ungeziefer... alle, die unsere heilige Pflicht zur Abschirmung verletzen. Möge der Schweigende König uns schützen."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"Wer ist Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"Du erwähntest vorhin Mary... Muffige Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"Du hast von einer Festung gesprochen?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"Ich starb vor langer Zeit, und fand, daß jenseits des Todes nur das Vergessen liegt... glücklicherweise konnte ich im letzten Moment von der Schwelle zurücktreten."~ */
  IF ~~ THEN REPLY #21393 /* ~"Zurücktreten?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"Du hast vorhin von Gefolgsleuten gesprochen. Wer ist sonst noch hier?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"Ja, ich erwachte hier. Ich wanderte unzählige Tage lang durch die Katakomben, bevor ich auf den Thron meines Herrn, des Schweigenden Königs, stieß. Er sprach zu mir, und aus dieser schicksalhaften Begnung entstanden die Toten Lande."~ */
  IF ~~ THEN REPLY #21399 /* ~"Du hast vorhin von Gefolgsleuten gesprochen. Wer ist sonst noch hier?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"Erzähl mir was über den Schweigenden König."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"Zuerst einmal würde ich gerne wissen, warum du hier bist."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"Ich suche nach etwas. Einer kleinen Bronzekugel."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"Das Schädelrattenkollektiv, Viele-als-Einer, hat mich geschickt."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"Ich hab' nach Soego gesucht."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"Nur so."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"Schon gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~Das Skelett zuckt mit den Schultern und winkt dich dann weg. "So sei es. Genieß deinen Aufenthalt hier."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"Ich suche nach etwas. Einer kleinen Bronzekugel."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"Das Schädelrattenkollektiv, Viele-als-Einer, hat mich geschickt."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"Ich hab' nach Soego gesucht."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"Nur so."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~Lüge: "Nur so."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"Warte. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"Wie viele Menschen mehr wird dieser bleichgesichtige Todesanbeter noch in unsere Hallen bringen?! Eine Armee? Eine Legion?! Vielleicht ganz Sigil?!" Das Skelett wendet seine Aufmerksamkeit wieder dir zu. "Bist du mit den Staubmenschen verbündet? Trägst du ihre Fesseln des Glaubens und beugst das Knie vor dieser lächerlichen Vorstellung des Wahren Tods?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"Nein."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"Ja."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"Fmm!" Das Skelett wendet sich ab und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #21429 /* ~"Nun...?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"Wirklich? Es fällt mir schwer, das zu glauben."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"Ich suche nach etwas. Einer kleinen Bronzekugel."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"Das Schädelrattenkollektiv, Viele-als-Einer, hat mich geschickt."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"Ich hab' nach Soego gesucht."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"Stimmt."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~Lüge: "Es stimmt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~Lüge: "Es stimmt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~Lüge: "Es stimmt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"Beim Schweigenden König! Du bist mit den *Schädlingen* verbündet!?"* Es wird wütend. "Du berätst dich mit diesen stockhirnigen Aasgeiern, die die Gräber unserer Schützlinge schänden und sich von ihren Überresten ernähren?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"Es tut mir leid..."~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"Ja. Und?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"Ja. Und?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"Das sollte es auch! Weshalb haben sie dich hergeschickt?"~ */
  IF ~~ THEN REPLY #21445 /* ~"Um den Schweigenden König umzubringen."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~Lüge: "Um einen Waffenstillstand auszuhandeln."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~Lüge: "Ohne Grund."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~Die flackernden, purpurfarbenen Lichter seiner Augen werden schmaler. "Es fällt mir schwer, das zu glauben. Vielleicht hast du noch eine andere Antwort, die der Wahrheit näherkommt?"~ */
  IF ~~ THEN REPLY #21449 /* ~"Um den Schweigenden König umzubringen."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~"Um einen Waffenstillstand auszuhandeln."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"Es gibt nichts auszuhandeln. Es herrscht Waffenstillstand. Sie haben gelernt, unsere Grenzen zu respektieren, und wir respektieren ihre."~ */
  IF ~~ THEN REPLY #21452 /* ~"Auf jeden Fall ist das der Grund, warum ich hier bin."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"Wie kannst du es wagen, in unsere Hallen einzudringen und unseren Herrn zu bedrohen?! Und das auch noch im Auftrag der Klugschädlinge. Für diese Unverfrorenheit wirst du büßen!"~ */
  IF ~~ THEN REPLY #21454 /* ~"Ich habe nur die Wahrheit gesagt. Ich habe jedoch nicht die Absicht, ihn umzubringen."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"Dann laßt mich dafür büßen."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"Dann laßt mich dafür büßen."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"Du wirst diese Katakomben nur im Dung der Ghule verlassen! Möge der Schweigende König uns im Kampf zur Seite stehen!"~ */
  IF ~~ THEN REPLY #21458 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~Flieh.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~Er hebt seinen Stab, hält dann plötzlich inne. "Ach! Es ist nur deinem Glück und der Gnade des Schweigenden Königs zu verdanken, daß wir den Todesvertrag einhalten. Doch sei versichert, daß du diese Katakomben *niemals* verlassen wirst. Leb wohl."~ */
  IF ~~ THEN REPLY #21461 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"Ich werde diese Angelegenheit untersuchen. Sollte es wahr sein, werde ich dir zu Dank verpflichtet sein."~ */
  IF ~~ THEN REPLY #21464 /* ~"Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"Sie sind immer ausgehungert; würden wir sie nicht in Schach halten, würden sie das Begrabene Dorf und die Nester der Schädelratten überfallen, alle töten und dann zurückkehren, um alles hier zu verschlingen."~ */
  IF ~~ THEN REPLY #21467 /* ~"Erzähl mir was über Akaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"Er könnte aus einem anderen Grund geflohen sein. Hast du diese Möglichkeit bedacht?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"Es gibt Beweise dafür in seinem Quartier, seinem Journal."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"Dann werde ich eben weitere Beweise finden. Ich hätte noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"Wie du meinst. Dann werde ich nach weiteren Beweisen suchen. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"Stop! Du bist zu weit gegangen, Reisender, und unrechtmäßig in die Toten Lande, das Reich des Schweigenden Königs, eingedrungen! Wirst du dich friedlich unterwerfen?"~ */
  IF ~~ THEN REPLY #21476 /* ~"Wem oder was unterwerfen?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"Es ist der Wille des Schweigenden Königs, daß alle, die die Tore zu unserem Land passieren, Gefangene seiner Lande werden. Wirst du dich unterwerfen?"~ */
  IF ~~ THEN REPLY #21478 /* ~"Also gut, ich unterwerfe mich."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"Nein, das werd ich nicht."~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"Dann komm... wir werden dich zur Kapelle bringen. Merk dir dies: Du darfst in diesen Hallen ungehindert umherwandern, aber du wirst niemals diese Katakomben verlassen. Bis zu deinem Tod wirst du hier ein Gefangener sein. Solltest du später auferstehen, wie wir es getan haben, so wirst du frei sein. Preiset den Schweigenden König; sein Wille geschehe."~ */
  IF ~~ THEN REPLY #21481 /* ~Folge ihnen.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~Ich habe einen untoten Zauberer-Priester von großer Macht getroffen, der behauptet, ich sei unrechtmäßig in die Toten Lande, das Reich des 'Schweigenden Königs', eingedrungen. Ich habe mich willig ergeben, woraufhin er mir sagte, ich dürfe frei durch die Hallen wandeln, die Katakomben jedoch nicht verlassen. Der Skelettpriester hat gesagt, daß ich bis zu meinem Tod ein Gefangener sei. Sollte ich aber später wieder auferstehen, wie sie es auch getan hätten, dann sei ich frei. Aber vielleicht gibt es ja einen anderen Weg...~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"Dann wirst du hier sterben, in den Hallen des Schweigenden Königs."~ */
  IF ~~ THEN REPLY #21483 /* ~"Also gut, ich unterwerfe mich."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"So sei es."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~Ich habe einen untoten Zauberer-Priester von großer Macht getroffen, der behauptet, ich sei unrechtmäßig in die Toten Lande, das Reich des 'Schweigenden Königs', eingedrungen. Ich habe mich geweigert, mich zu ergeben, und wurde plötzlich von ihm und seinen untoten Handlangern angegriffen.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"Du bist also gekommen." Das Skelett wendet seinen Blick auf den massiven Thron. "Was du hier siehst, ist das Ende unserer Kultur."~ */
  IF ~~ THEN REPLY #24110 /* ~"Was meinst du?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"Ist das der Schweigende König?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~Warte schweigend darauf, daß er fortfährt.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"Ja."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"Niemand darf wissen, daß der König nur schweigend spricht."~ */
  IF ~~ THEN REPLY #24117 /* ~"Wie lange geht das schon so?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"Warum spricht er nicht?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~Hargrimm starrt in die Schatten. "Er hat vor langer Zeit aufgehört, mit uns zu sprechen - er selbst hat sich - wie so viele - diesem verdammten Wahren Tod verschrieben." In seine Stimme mischt sich ein Unterton aus Wut und Verzweiflung. "Er hat uns im Stich gelassen und läßt uns unter den Lebenden leiden! Wir sind zur... Beute... all dieser Leben geworden."~ */
  IF ~~ THEN REPLY #24121 /* ~"Warum regiert er dann?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"Und wie regiert er dann?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"Und wer regiert wirklich?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"Er schweigt, weil er diesen Ort verlassen hat. Er hat uns für den Wahren Tod im Stich gelassen... und ließ nur seine Hülle zurück."~ */
  IF ~~ THEN REPLY #24129 /* ~"Wie lange geht das schon so?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"Warum regiert er dann?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"Und wie regiert er dann?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"Und regiert dann die Toten Lande wirklich?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"Er regiert, weil er muß."
~ */
  IF ~~ THEN REPLY #24135 /* ~"Aber wie... wenn er tot ist?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"Und regiert dann die Toten Lande wirklich?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"Wir erschließen uns die Weisungen des Schweigenden Königs aus dem, was er vor langer Zeit gesagt hat. Das ist nicht gerade einfach..." Hargrimm klingt müde. Er geht gebeugt unter dem Gewicht einer unsichtbaren Last. "Ich habe viele Fragen, sehr viele Fragen an ihn."~ */
  IF ~~ THEN REPLY #24139 /* ~"Warum regiert er dann immer noch?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"Wer regiert hier also wirklich?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"Mary und ich sprechen mit dem Schweigenden König. Wir regieren an seiner Statt."~ */
  IF ~~ THEN REPLY #24143 /* ~"Warum sagst du deinem Volk nicht die Wahrheit?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"Ich will das erhalten, was wir geschaffen haben. Ich will nicht sterben."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"Wenn unsere eigenen Leute davon erführen... oder wenn Akaste den Betrug entdecken würde... oder Viele-als-Einer, der geeinte Geist der Schädelratten im Stock... würde alles, was wir hier geschaffen haben, zerstört. Diese Hülle ist alles, was die Feinde im Inneren und von außen im Zaum hält. Wenn die Wahrheit ans Licht käme, würde unsere kleine Zivilisation zu Staub zerfallen."~ */
  IF ~~ THEN REPLY #24150 /* ~"Erzähl weiter..."~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"Ich kann dich nicht zwingen, darüber zu schweigen. Aber ich möchte dich bitten, zu bedenken, was geschehen würde, wenn du über das sprichst, was du hier gesehen hast."~ */
  IF ~~ THEN REPLY #24152 /* ~Biete ihm einen Schwur an: "Ich habe nur den Wunsch, diesen Ort hier zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~Biete ihm ein falsches Versprechen an: "Mein einziger Wunsch ist, diesen Ort zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"Dein Volk sollte das wissen. Wenn eure Kultur zerstört wird, soll es wohl so sein."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"Warum setzt ihr keinen neuen König auf den Thron?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~Hargrimm schweigt für einen Augenblick. "Du kannst diesen Ort jetzt verlassen. Geh jetzt... Und ich bitte dich: Steh zu deinem Wort."~ */
  IF ~~ THEN REPLY #24164 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Ich habe ein Portal benutzt, von dem die Muffige Mary mir erzählt hat, um in den Thronsaal des Schweigenden Königs zu gelangen. Dort habe ich entdeckt, daß der Herrscher der Toten Lande in Wahrheit wenig mehr als eine verschrumpelte Leiche ist. Ich habe eingewilligt, daß ich niemandem davon erzählen werde, und dafür hat Hargrimm mich aus den Toten Landen freigelassen.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~Hargrimm schweigt für einen Augenblick. "Wie gesagt, ich kann dich nicht dazu zwingen, Stillschweigen darüber zu bewahren. Aber ich muß wissen, ob du ihnen davon erzählen wirst oder nicht."~ */
  IF ~~ THEN REPLY #24166 /* ~"Ich werd's ihnen erzählen."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~Wahrheit: "Ich sag's ihnen nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~Lüge: "Ich sag's ihnen nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"Ich spreche dir meine Dankbarkeit aus. Du kannst diesen Ort jetzt verlassen, wenn du möchtest. Benutz die Türen am südlichen Ende des Thronsaals."~ */
  IF ~~ THEN REPLY #24183 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Ich habe ein Portal benutzt, von dem die Muffige Mary mir erzählt hat, um in den Thronsaal des Schweigenden Königs zu gelangen. Dort habe ich entdeckt, daß der Herrscher der Toten Lande in Wahrheit wenig mehr als eine verschrumpelte Leiche ist. Ich habe eingewilligt, daß ich niemandem davon erzählen werde, und dafür hat Hargrimm mich aus den Toten Landen freigelassen.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~"So sei es. Höre, Lebender: Nur die Tote Waffenruhe bietet dir Sicherheit. Erweis der Waffenruhe Ehre und bewahre Stillschweigen. Es steht dir jetzt frei, diese Hallen zu verlassen. Leb wohl!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"Der König muß lebendig sein, um auf dem Thron zu sitzen. Kein anderer wird akzeptiert. Sobald jemand den Thron besteigt..." Hargrimms Stimme wird noch ominöser: "...dann muß er auf dem Thron bleiben."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"Was ist mit Soego?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"Ich werde euer König, wenn ihr mich haben wollt."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~Biete ihm einen Schwur an: "Ich habe nur den Wunsch, diesen Ort hier zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~Biete ihm ein falsches Versprechen an: "Mein einziger Wunsch ist, diesen Ort zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"Dein Volk sollte das wissen. Wenn eure Kultur zerstört wird, soll es wohl so sein."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"Soego würde keinen guten König abgeben. Er ist zu verliebt in seine eigene Stimme, als daß er schweigen könnte. Seine Thronbesteigung würde ihn außerdem des Wahren Tods berauben. Das wäre etwa so blasphemisch, als wenn man uns unseres Lebens beraubte."~ */
  IF ~~ THEN REPLY #24190 /* ~"Dann werde ich eben euer König, wenn ihr mich haben wollt."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~Biete ihm einen Schwur an: "Ich habe nur den Wunsch, diesen Ort hier zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~Biete ihm ein falsches Versprechen an: "Mein einziger Wunsch ist, diesen Ort zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"Dein Volk sollte das wissen. Wenn eure Kultur zerstört wird, soll es wohl so sein."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"Wenn man erst mal auf dem Thron sitzt, kann man nicht mehr herunter. Der Tod... der Wahre Tod... ist die einzige Erlösung vom Thron des Schweigenden Königs."~ */
  IF ~~ THEN REPLY #24194 /* ~"Ja. Ich werde es tun..."~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"In diesem Falle, nein."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"Hab' ich mir gedacht." Hargrimm seufzt und stößt beim Ausatmen eine Staubwolke aus. "Dann... würde ich noch gern wissen, ob du das wahre Wesen des Schweigenden Königs preisgeben wirst oder nicht."~ */
  IF ~~ THEN REPLY #24196 /* ~Biete ihm einen Schwur an: "Ich habe nur den Wunsch, diesen Ort hier zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~Biete ihm ein falsches Versprechen an: "Mein einziger Wunsch ist, diesen Ort zu verlassen, Hargrimm. Gestatte es mir, und ich werde schweigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"Dein Volk sollte das wissen. Wenn eure Kultur zerstört wird, soll es wohl so sein."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~Hargrimm nickt und zeigt auf den Thron. "Dann besteig deinen Thron, Schweigender König..."~ */
  IF ~~ THEN REPLY #24199 /* ~"Warte... Ich tu's besser nicht."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~Besteige den Thron.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~Der Skelettpriester schüttelt traurig den Kopf. "Ich fürchte, daß können wir nicht erlauben, Lebender. Möge der Schweigende König in der Schlacht mit mir sein..."~ */
  IF ~~ THEN REPLY #24201 /* ~Kämpf.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~Flieh.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~Hargrimm deutet feierlich auf die Flügeltür an der Südseite des Thronsaals des Schweigenden Königs. "Geh jetzt, Lebender, und vergiß nicht: Sprich zu niemandem ein Wort. Solltest du noch einmal mit mir sprechen müssen, so mögest du dies tun, jedoch nicht in diesen heiligen Hallen."~ */
  IF ~~ THEN REPLY #58915 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~Es vergeht eine Weile, bis das Skelett antwortet. "Du mußt *lernen* zuzuhören, das ist alles."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"Ich verstehe. Und hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"Vielleicht spreche ich dann noch mal mit ihr. Leb wohl, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~Hargrimm starrt dich eine Weile schweigend an, dann seufzt er leise. "Hier wirst du sicher sein. Ruh dich aus."~ */
  IF ~~ THEN REPLY #63993 /* ~"Danke."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~Er nähert sich dir. Er riecht nach Staub und modernden Kleidern. "Wovon sprecht Ihr? Welchen Beweis habt Ihr, daß Soego von Klugschädlingen befallen ist?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"Ich habe mit ihnen gesprochen, und sie haben es mir gesagt."~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Aber er ist jetzt tot."~ */ JOURNAL #21303 /* ~Ich habe Hargrimm von Soegos Verbindung zu den Schädelratten erzählt. Er hat gesagt, er würde sich später um die Sache kümmern.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"Es gib Beweise in seinem Quartier, in seinem Journal. Ich hab mit ihm darüber gesprochen, und da hat er sich in eine Mannratte verwandelt und mich angegriffen."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"Sie haben Euch vielleicht belogen, damit Ihr Soego tötet. Habt Ihr dies in Betracht gezogen?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Aber er ist jetzt tot."~ */ JOURNAL #21303 /* ~Ich habe Hargrimm von Soegos Verbindung zu den Schädelratten erzählt. Er hat gesagt, er würde sich später um die Sache kümmern.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"Der Beweis dafür ist in seinen Gemächern: sein Journal. Ich hab mit ihm darüber gesprochen, und da hat er sich in einen Rattenmenschen verwandelt und mich angegriffen."~ */ JOURNAL #21302 /* ~Ich habe Hargrimm über Soegos Verbündung mit den Schädelratten erzählt. Hargrimm hat ihn damit konfrontiert, ihn für schuldig befunden und ihn bis zu seinem Tode in seine Kammern verbannt. Dann hat sich Soego in einer Wer-Ratte verwandelt und Hargrimm angegriffen, wurde aber schnell getötet.~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"Macht nichts, ich finde andere Beweise. Leb wohl."~ */ JOURNAL #21301 /* ~Ich habe Hargrimm über Soegos Verbindung zu den Schädelratten erzählt, konnte aber nicht genügend Beweise zur Zufriedenheit des Skeletts erbringen. Vielleicht kann ich ja noch deutlichere Beweise bei oder um Soego selbst finden.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"Ich werde mich dieser Sache annehmen. Sollte es sich als wahr herausstellen, bin ich Euch zu Dank verpflichtet."~ */
  IF ~~ THEN REPLY #64963 /* ~"Ich muß jetzt gehn. Leb wohl."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~Der Skelettpriester räuspert sich, seine Augen verdunkeln sich, während er überlegt. "Soego. Befreie uns von diesem verdammten Staubmenschen, und ich werde mit dem Schweigenden König über deine Freiheit sprechen. Allerdings... will ich *nicht*, daß er ermordet wird. Gib uns einfach nur einen Grund, ihn aus den Toten Landen zu verbannen."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"Soego? Oh... der ist tot."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"Hast du gewußt, daß er ein Schädelrattenspion ist?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"Was besorgt dich so wegen Soego?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~"Ich kümmere mich drum. Ich habe noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"Ich werde sehen, was ich tun kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"Ach ja...? Pah! Ich schätze, du erwartest, daß ich in deinem Namen mit dem Schweigenden König spreche, aber... nun, das werde ich nicht tun! Solange du mir Soegos Ermordung nicht beweisen kannst, wirst du diesen Ort *nicht* verlassen."~ */
  IF ~~ THEN REPLY #67807 /* ~"Fein. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"Ich schätze, dann versuche ich mal, etwas zu finden."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"Nein. Wärst du nicht hier gefangen und würdest auf deinen Tod warten, wäre die Antwort vielleicht eine andere."~ */
  IF ~~ THEN REPLY #68090 /* ~"Warum *bin* ich ein Gefangener hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
