// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~Überwältigt starrst du auf das bizarre Schauspiel vor deinen Augen. Was eine gewöhnliche, nicht weiter bemerkenswerte Ziegelmauer zu sein schien, zuckt und pulsiert jetzt heftig. Die Mauer dehnt sich mit eigenartiger Elastizität und wölbt sich nach außen, als ob eine unsichtbare Kraft versuchte, sich von der anderen Seite einen Weg durch diese Barriere zu bahnen. Langsam beginnt die wallende Masse sich zu beruhigen, ihre Kurven zeichnen sich immer deutlicher ab, und du findest dich Auge in Auge mit der steinernen Karikatur eines menschlichen Gesichts.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"Was ist das?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~Warte ab, was als nächstes passiert.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~Ignoriere das Gesicht. Geh weg.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~Plötzlich kommt ein starker Wind auf, und die Luft ist angefüllt mit einem unheimlichen Seufzen. Der tosende Wind wird stärker, und du hörst noch andere Geräusche: das Ächzen von Brettern, das Rauschen von Blättern und das Knirschen von Stein auf Stein. Nach einer Weile beginnt der Krach, sich von einer Kakophonie einzelner Geräusche in einen einzigen deutlichen Ton zu verwandeln. Du hörst eine Stimme, eine Stimme, die leise spricht, und doch von allen Seiten gleichzeitig zu kommen scheint. "DU? DAS KANN NICHT SEIN."~ */
  IF ~~ THEN REPLY #52648 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"Was?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"Kennst du mich?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"Du mußt mich mit jemandem verwechselt haben. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~Der Wind um dich herum hat sich gelegt, aber die Stimme ist immer noch irgendwie da. "DU BIST WIEDERHERGESTELLT? ICH SAH, WIE DU ZERSTÖRT WURDEST."~ */
  IF ~~ THEN REPLY #52652 /* ~"Zerstört? Wo?"~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"Wo bin ich?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"ICH BIN ICH." Die Stimme ist so ausdruckslos wie das Steingesicht vor dir.~ */
  IF ~~ THEN REPLY #52656 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"Wo bin ich?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"Du hast gesagt, du hättest gesehen, wie ich zerstört wurde? Wo?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"ICH BIN ICH." Die Stimme ist so ausdruckslos wie das Steingesicht vor dir.~ */
  IF ~~ THEN REPLY #52659 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"Wo bin ich?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"Du hast gesagt, du hättest gesehen, wie ich zerstört wurde? Wo?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"DU STEHST AUF MIR, IN MIR. DIE STEINE, MÖRTEL, DIE LUFT... DAS ALLES BIN ICH, UNGETEILT."~ */
  IF ~~ THEN REPLY #52662 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"Du hast gesagt, du hättest gesehen, wie ich zerstört wurde? Wo?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"ICH SAH, WIE DU HIER, VOR MIR, ZERSTÖRT WURDEST. ICH SEHE ALLES IN MIR."~ */
  IF ~~ THEN REPLY #52665 /* ~"Weißt du, was mit mir passiert ist?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"DINGE, DIE KEINEN SCHATTEN WERFEN... WAREN SCHATTEN. SIE ERHOBEN SICH UM DICH. RISSEN DICH NIEDER. ERINNERST DU DICH NICHT?" Du konzentrierst dich auf die seltsame Stimme, die sich aus den Geräuschen um dich herum zusammensetzt. Irgendwo, in den tiefsten Winkeln deines Gedächtnisses, glimmt ein Funke der Erinnerung auf. Du hast das Gefühl, daß dir die Geräusche irgendwie bekannt vorkommen.~ */
  IF ~~ THEN REPLY #52719 /* ~Schließ die Augen und versuch, dich zu erinnern.~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"JA... DU ERINNERST DICH." Die Stimme der Gasse dröhnt in deinen Ohren, verscheucht die Bilder aus deiner Erinnerung und bringt dich wieder in die Gegenwart zurück. "ZERSTÖRT. WIE ICH ES BALD SEIN WERDE. ICH KANN DIE TEILUNG NICHT LÄNGER AUFSCHIEBEN. DRUCK STEIGT. BALD WERDEN STEINE ZUSAMMENFALLEN, UND DIE SCHWEBENDEN WERDEN MICH BIS ZUR ZERSTÖRUNG REPARIEREN."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"Verstehe ich nicht."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"Du stirbst?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"Die Schwebenden?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"DRUCK IST ZU STARK. ZU VIELE ORTE IM INNERN GEFALTET. NICHT GENUG PLATZ. MUSS MICH TEILEN."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"Teilen?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"Teilen?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~Die Stimme fährt fort: "HILF MIR, MICH ZU TEILEN. ZU VERZWEIGEN. MICH AUSZUDEHNEN. NEUE ÖFFNUNGEN WERDEN SICH AUFTUN. DU KANNST SIE BENUTZEN, UM IN DEN UNTEREN BEZIRK ZU REISEN."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"Was brauchst du, um dich zu teilen?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"Was brauchst du, um dich zu teilen?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"Was brauchst du, um dich zu teilen?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"DER SCHWEBENDE TREPARIERT MICH. ER HINDERT MICH DARAN, MICH ZU TEILEN. ICH ZERSTÖRE SEINE REPARATUREN. ABER ER KOMMT IMMER WIEDER. REPARIERT VON NEUEM. MUSS DEN SCHWEBENDEN ENTFERNEN."~ */
  IF ~~ THEN REPLY #52675 /* ~"Du willst, daß ich den Dabus in der Gasse *töte*?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"ENTFERNE IHN. NUR DANN KANN ICH MICH TEILEN."~ */
  IF ~~ THEN REPLY #52676 /* ~"Also gut, ich werde den Dabus für dich *entfernen*."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~Ich habe herausgefunden, daß es in der Gasse der hallenden Seufzer doch nicht spukt. Sie lebt. Sie hat mit mir gesprochen, und soweit ich verstanden habe, ist sie trächtig und braucht bei der Geburt meine Hilfe. Offensichtlich hat der Dabus, der dauernd Reparaturen an der Gasse durchführt, sie daran gehindert, sich zu teilen. Ich habe mich einverstanden erklärt, einen Weg zu finden, den Dabus loszuwerden. Im Gegenzug hat mir die Gasse versprochen, einen Weg zum Unteren Bezirk zu öffnen.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"DER SCHWEBENDE IST NICHT MEHR AUF MIR. ER REPARIERT NICHT MEHR. MISCHT SICH NICHT MEHR EIN."~ */
  IF ~~ THEN REPLY #52687 /* ~"Der Dabus dort in der Gasse? Ja, ich habe ihm von dem toten Dabus erzählt, den ich gefunden habe, und er ist los, ihn zu suchen."~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~Ich habe herausgefunden, daß es in der Gasse der hallenden Seufzer doch nicht spukt. Sie lebt. Sie hat mit mir gesprochen, und soweit ich verstanden habe, ist sie trächtig und braucht bei der Geburt meine Hilfe. Offensichtlich hat der Dabus, den ich von seinem toten Artgenossen erzählt habe, Reparaturen durchgeführt, die sie daran hinderten, sich zu teilen. Als er Nachforschungen anstellte, hat ihn die Gasse im selben Gebäude festgesetzt.~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~" DER SCHWEBENDE IST ZERSTÖRT. ER REPARIERT NICHT MEHR. MISCHT SICH NICHT MEHR EIN."~ */
  IF ~~ THEN REPLY #52692 /* ~"Der Dabus dort in der Gasse? Ja, er ist weg... Ich habe ihn getötet."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~Ich habe herausgefunden, daß es in der Gasse der hallenden Seufzer doch nicht spukt. Sie lebt. Sie hat mit mir gesprochen, und soweit ich verstanden habe, ist sie trächtig und braucht bei der Geburt meine Hilfe. Offensichtlich hat der Dabus, den ich getötet habe, Reparaturen durchgeführt, die sie daran hindern, sich zu teilen.~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~Als du dich dem Steingesicht näherst, fallen die verschiedenen Umgebungsgeräusche der Gasse wieder über deine Ohren her, und durch sie hindurch spricht die Stimme. "DU BIST ZURÜCKGEKEHRT."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"Der Dabus ist immer noch da... Ich scheine ihn nicht loswerden zu können."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"Ich habe den Dabus getötet. Er wird nicht länger stören."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"Ich habe mit dem Dabus geredet. Ich habe ihm von seinen toten Brüdern erzählt und er ist losgegangen, um nachzuforschen."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~Ich habe erfahren, daß die Gasse der hallenden Seufzer nicht nur lebendig, sondern auch in der Lage ist, sich zu verteidigen. Es scheint, als habe der Dabus, mit dem ich gesprochen habe, das Gebäude mit dem toten Dabus tatsächlich untersucht. Als er sich darin befand, hat die Gasse den Ausgang des Gebäudes entfernt, und auch er saß in der Falle.~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"Ich muß die Reparaturen des Dabus noch rückgängig machen. Sag mir noch mal, was ich tun muß."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"Ich habe die Reparaturen an einer Stelle rückgängig gemacht. Sag mir noch mal, wo ich die andere finde."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"Ich habe die Reparaturen an einer Stelle rückgängig gemacht. Sag mir noch mal, wo ich die andere finde."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"Ich habe die Reparaturen rückgängig gemacht, ganz, wie du es gewünschst hast."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"ER MUSS ENTFERNT WERDEN. ES MUSS EINEN WEG GEBEN. BRING IHN DAZU ZU VERSCHWINDEN. DIE ZEIT DRÄNGT. MUSS MICH BALD TEILEN, ODER ICH WERDE ZERSTÖRT."~ */
  IF ~~ THEN REPLY #52701 /* ~"Keine Sorge, ich laß mir was einfallen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~" DER SCHWEBENDE IST ZERSTÖRT. ER REPARIERT NICHT MEHR. MISCHT SICH NICHT MEHR EIN."~ */
  IF ~~ THEN REPLY #52702 /* ~"Ja, er wird sich nicht mehr einmischen... Jetzt kannst du dich teilen."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~Die Stimme der Gasse schweigt einen langen Moment, als ob sie deine Worte überdenkt. "HÄTTEST SCHWEBENDEN NICHT ZERSTÖREN SOLLEN. DU ERREGST DIE AUFMERKSAMKEIT DER KLINGENTRAGENDEN. BOTIN DER SCHMERZEN IST SIE."~ */
  IF ~~ THEN REPLY #52703 /* ~"Ich mußte ihn töten... Das war die einzige Möglichkeit, wie ich ihn vom Reparieren abhalten konnte."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"Was geschehen ist, ist geschehen. Aber der Dabus *ist* weg, und jetzt kannst du dich teilen."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"Hör zu, du hast mich gebeten, ihn zu entfernen... Also habe ich ihn zerfetzt. Jetzt kannst du dich teilen, richtig?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"KANN MICH IMMER NOCH NICHT TEILEN. ZU SCHWACH. KANN REPARATUREN DES SCHWEBENDEN NICHT ZERSTÖREN. SEINE ÄNDERUNGEN MÜSSEN RÜCKGÄNGIG GEMACHT WERDEN, BEVOR ICH MICH TEILEN KANN. DU MUSST DIE REPARATUREN DES SCHWEBENDEN FÜR MICH ZERSTÖREN."~ */
  IF ~~ THEN REPLY #52706 /* ~"Du willst, daß ich die Änderungen des Dabus rückgängig mache? Wie?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"Wie kann ich die Reparaturen rückgängig machen? Ich bin kein Zimmermann."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~"SUCHE DIE TEILE VON MIR, DIE DER SCHWEBENDE GEÄNDERT HAT. MACH DIE ÄNDERUNGEN RÜCKGÄNGIG. MACH DIE REPARATUREN RÜCKGÄNGIG. MUSST EXAKT SEIN. PRÄZISE. NUR DANN KANN ICH MICH TEILEN."~ */
  IF ~~ THEN REPLY #52708 /* ~"Also gut. Ich werde die Reparaturen suchen und für dich rückgängig machen."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~Obwohl ich den Dabus loswerden konnte, hindern die Reparaturen, die er gemacht hat, die Gasse noch immer daran, sich zu teilen. Ich habe mich einverstanden erklärt, die Reparaturen zu identifizieren und irgendwie rückgängig zu machen. Es scheint, als stünde die Gasse kurz vor der Geburt und sei in ihrem geschwächten Zustand nicht in der Lage, die Veränderungen selbst rückgängig zu machen.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"JA. DER SCHWEBENDE REPARIERT NICHT MEHR. ER IST JETZT BEI DEM ANDEREN. ICH HABE MICH UM IHN GESCHLOSSEN. ER BLEIBT FÜR IMMER IN MIR."~ */
  IF ~~ THEN REPLY #52709 /* ~"Ich verstehe. Jetzt, wo er gefangen ist, kannst du dich ungestört teilen, richtig?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"ZWEI ORTE AUF MIR. MUSST ZERSTÖREN, WAS DER SCHWEBENDE GEÄNDERT HAT. ICH KANN SIE NICHT SELBST ÄNDERN. MUSS ENERGIE FÜR DIE TEILUNG SAMMELN. DU MUSST ÄNDERUNGEN IN DER WEISE DEINER ART MACHEN."~ */
  IF ~~ THEN REPLY #52710 /* ~"Also gut. Ich werde die Reparaturen suchen und für dich rückgängig machen."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"DIE BEIDEN ORTE SIND AUF MIR. EINER IST WESTLICH DES ANDEREN. EINER IST ÖSTLICH DES ANDEREN."~ */
  IF ~~ THEN REPLY #52711 /* ~"Gut beschrieben. Danke für deine Hilfe."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"JA. ALLES IST IN ORDNUNG. ICH BIN DANKBAR." Wieder beginnt der Wind um dich herum zu wehen, diesmal mit großer Stärke. Die allgegenwärtigen Geräusche der Gasse werden immer lauter, bis das leise Murmeln der Stimme von dem Krach fast übertönt wird. "JETZT MUSST DU GEHEN. TEILUNG BEGINNT. DER WEG IST JETZT FÜR DICH OFFEN."~ */
  IF ~~ THEN REPLY #52712 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~Das Steingesicht vor dir beginnt, abermals seine Form zu verändern, und seine Masse verzerrt und verlagert sich, während du zusiehst. Die ganze Mauer scheint vor deinen Augen zu schmelzen und gibt einen engen Durchgang frei. Der Boden unter deinen Füßen fängt an, gewaltig zu schwanken, und das leise Seufzen des Windes schwillt zu einem eindringlicheren, beinahe menschenähnlichen Jammern an. Um dich herum kannst du die Geräusche berstender Steine und brechender Bretter hören, während du in den Durchgang rennst.~ */
  IF ~~ THEN REPLY #52723 /* ~Geh weg.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~Ich habe der trächtigen Gasse bei der Geburt geholfen. Wie sie versprochen hatte, wurde durch die Geburt der neuen Gasse ein Durchgang geschaffen, durch den ich zwischen Stock und Unterem Bezirk hin und her reisen kann.~ */ EXIT
END
