// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DP_STONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DP_STONE~

IF ~  Global("PStone","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49785 /* ~Die Inschrift im Sockel dieses Sinnessteins zeigt an, daß in ihm die Erfahrung "Einwöchiger Jagdausflug in den Wäldern von Arborea" eingeschlossen ist.~ */
  IF ~~ THEN REPLY #49786 /* ~Beginn die Erfahrung.~ */ DO ~SetGlobal("Pstone","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49787 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49788 /* ~Du befindest dich irgendwo tief im Wald inmitten eines von weißen Zelten gebildeten Kreises. Die Bäume um dich herum sind die bei weitem größten, die du je gesehen hast. Plötzlich spürst du ein seltsames Kribbeln am Hinterkopf...~ */
  IF ~~ THEN REPLY #49789 /* ~Setz die Erfahrung fort.~ */ GOTO 3
  IF ~~ THEN REPLY #49790 /* ~Brich die Erfahrung ab, und geh weg.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #49791 /* ~So sehr du es auch versuchst, es gelingt dir nicht, das Gefühl abzustellen. Das ungebetene Kribbeln hört nicht auf und treibt deinen Geist immer tiefer in die Erfahrung hinein...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #49792 /* ~Deine Umgebung verschmilzt zu einem farblosen, verschmierten Fleck und löst sich dann zu etwas auf, das wie das Innere einer großen grauen Kugel aussieht. Dir gegenüber steht ein Mann, der dir fast bis aufs Haar gleicht. Seine Augen blitzen im Halbdunkel. Ein irres Lächeln liegt auf seinem Gesicht. "Ich hab GEWUSST, daß du kommen würdest..."~ */
  IF ~~ THEN REPLY #49793 /* ~"Sei gegrüßt..."~ */ GOTO 4
  IF ~~ THEN REPLY #49794 /* ~"Wer bist du?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #49795 /* ~"Oh, 'sei gegrüßt, sei gegrüßt, schön dich zu seh'n'." Er grinst höhnisch. "Ich will, daß deine MÖRDERISCHE Zunge schweigt! Jawohl! Mörderisch! Deine geheuchelte Unschuld ist LÄCHERLICH!"~ */
  IF ~~ THEN REPLY #49796 /* ~"Wer bist du?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #49797 /* ~"Oh, WEISST du das nicht? Hast du all diesen SCHMUTZIGEN, LÜGENDEN, DREIMAL VERDAMMTEN JOURNALEN nicht entnehmen können, wer ich bin? Diese Journale, die man mir so netterweise 'zurückgelassen' hatte, als ich aufgewacht bin... Diese Journale, die mich als INKARNATION bezeichnet haben! Ha! VERBRANNT hab ich sie! Alle, die ich GEFUNDEN hab..."~ */
  IF ~~ THEN REPLY #49798 /* ~"Was genau hat in ihnen dringestanden?"~ */ GOTO 6
  IF ~~ THEN REPLY #49799 /* ~"Also... du bist eine meiner früheren Inkarnationen?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #49800 /* ~"Sie haben nichts als LÜGEN, LÜGEN, LÜGEN und nichts anderes enthalten! Schmutz und Schund über einen Mann, der vergessen hat, wer er ist, über andere Inkarnationen, darüber, daß sie ihre Erfahrungen niederschreiben sollen, damit spätere Leben davon profitieren können... DIEBE! Das ist MEIN Leben! MEINS! IHR WOLLT ALLE NUR MEINEN KÖRPER HABEN, ABER IHR BEKOMMT IHN NICHT!"~ */
  IF ~~ THEN REPLY #49801 /* ~"Also... du bist eine meiner früheren Inkarnationen?"~ */ GOTO 7
  IF ~~ THEN REPLY #49802 /* ~"Wo bin ich?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #49803 /* ~Er verschränkt seine Arme und schaut weg. "Wenn du diesem MÜLL glauben willst, dann ja."~ */
  IF ~~ THEN REPLY #49804 /* ~"Was hat in diesen 'lügenden' Journalen dringestanden?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #49805 /* ~"Oh, DAS HIER?" Er fuchtelt herum und kichert boshaft. "Nur eine kleine FALLE, mehr nicht. Ich bin mir bewußt geworden, daß es vielleicht nicht genug ist, euch KÖRPERDIEBE zu TÖTEN... Ich würde euch wohl eine Falle stellen müssen, um euch so für immer gefangenzuhalten. Du hast vielleicht schon bemerkt, daß es keinen Ausweg aus diesem Sinnesstein gibt... Dein Geist ist hier drin eingeschlossen. Du wirst sicherlich noch die ziemlich KARGE Umgebung bemerken, die ich dir überlassen hab... Alles um dem WAHNSINN gut und SCHNELL zum Durchbruch zu verhelfen, während dein Fleisch hier verrottet." Er kichert boshaft.~ */
  IF ~~ THEN REPLY #49806 /* ~"Dann hab ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #49807 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 10.3 11.3 12.3 15.4 16.1 19.4 20.3 21.3 22.3
  SAY #49808 /* ~Du versuchst, der Erfahrung zu entkommen, aber es gelingt dir nicht. Deine frühere Inkarnation überschlagt sich vor hämischem Gelächter. "Gib auf! Du kommst hier NIE raus! Du kannst dich ruhig hinlegen und warten, bis du dich in NICHTS auflöst. Ich bin der einzige, der dich befreien kann - und ich denk nicht im Traum dran, das zu tun."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49809 /* ~"Moment... Aber ich *bin* du. Das heißt, daß ich mich selbst befreien *kann*..."~ */ GOTO 14
  IF ~~ THEN REPLY #49810 /* ~"Dann hab ich ein paar Fragen an dich..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.1
  SAY #49811 /* ~Deine frühere Inkarnation verschränkt die Arme und sieht empört weg. Bis auf ein paar Haarbüschel mehr auf seinem Kopf, sieht er dir vollkommen ähnlich. Sogar seine Arme weisen die meisten der Tätowierungen auf, die auf deinen Armen zu sehen sind.~ */
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49812 /* ~"Hast du diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49813 /* ~"Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49814 /* ~"Hast du dir diese Tätowierungen draufgemacht?"~ */ GOTO 19
  IF ~~ THEN REPLY #49815 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0 15.2 19.2 20.1 21.1 22.1
  SAY #49816 /* ~"Ich weiß nicht, wovon du faselst. Heh. Heh-heh. Also schön, ich WAR'S. BRILLIANT, oder? Hast du ein bißchen damit GESPIELT? Hast doch wohl hoffentlich 'n FINGER oder 'n AUGE dabei verloren?" Er gluckst fröhlich.~ */
  IF ~  Global("P_Journal","GLOBAL",5)
~ THEN REPLY #49817 /* ~"Ganz schön schlau, aber ich hab das Ding trotzdem geöffnet und gelesen."~ */ GOTO 12
  IF ~~ THEN REPLY #49818 /* ~"Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49819 /* ~"Hast du dir diese Tätowierungen draufgemacht?"~ */ GOTO 19
  IF ~~ THEN REPLY #49820 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49821 /* ~Deine frühere Inkarnation sieht dich entsetzt an. "NEIN! NEIN! NEIN! UNMÖGLICH! Niemand kann die Sprache lesen, in der es geschrieben worden ist! Den EINZIGEN Mann, der es lesen konnte, hab ich umgebracht, nachdem er sie mich GELEHRT hatte. TOTE Sprache, TOTER Linguist... macht sich doch gut in den Hallen des Todes."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49822 /* ~Lüge: "Ich konnte sie lesen, weil ich *du* bin. Ich bin keines dieser falschen Ichs. Du sitzt hier in deiner eigenen Falle. Ich sitze in meiner Falle. Verstehst du das nicht?"~ */ GOTO 13
  IF ~~ THEN REPLY #49823 /* ~"Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49824 /* ~"Hast du dir diese Tätowierungen draufgemacht?"~ */ GOTO 19
  IF ~~ THEN REPLY #49825 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #49826 /* ~"Aber... das ist nicht... Du bist einer von den... Ich hab geglaubt, daß ich einen SCHUTZ eingebaut hätte. Wie konntest DU... ich... so DUMM sein!" Er ringt die Hände und beißt sich auf die Unterlippe. "Wie komm ich hier RAUS? WIE? Ich hab's vergessen... Moment! 'Ich bin der einzige, der dich befreien kann - und ich denk nicht im Traum dran, das zu tun'. Wenn du ich bist, dann KANNST du dich befreien..."~ */
  IF ~~ THEN REPLY #49827 /* ~Versuch, dich zu befreien, indem du mit deinem 'Willen' die Falle öffnest.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #49828 /* ~"Nein! Nein... Das kann nicht... AUFHÖREN!"~ */
  IF ~~ THEN REPLY #49829 /* ~Versuch, dich zu befreien, indem du mit deinem 'Willen' die Falle öffnest.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 11.1 12.1 19.3 20.2 21.2 22.2
  SAY #49830 /* ~"Kann ich dir nicht sagen... Sie kann nie wieder NACHGEBILDET werden, denn die für ihre Schaffung verwendete Magie ist verlorengegangen, und selbst ich komme nicht an sie ran. Trotzdem 'ne SCHLAUE Sache... Eine Erfahrung VERSTECKT unter der anderen, so daß kein anderes FLEISCH außer meinem EIGENEN sie auslösen kann..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49831 /* ~"Aber... wenn dein Fleisch sie auslöst, würde das nicht bedeuten, daß ich *du* bin? Du sitzt in deiner Falle. *Ich* sitze in meiner Falle. Verstehst du das nicht?"~ */ GOTO 13
  IF ~~ THEN REPLY #49832 /* ~"In diesem Stein sind also eigentlich zwei Erfahrungen eingeschlossen?"~ */ GOTO 16
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49833 /* ~"Hast du auch diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49834 /* ~"Hast du dir diese Tätowierungen draufgemacht?"~ */ GOTO 19
  IF ~~ THEN REPLY #49835 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #49836 /* ~"Genau, die Erfahrung des Jagdausflugs in Arborea und die Erfahrung dieser FALLE." ER sieht dich plötzlich mißtrauisch an. "WARUM?"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #49837 /* ~Versuch, dir durch reine Willenskraft einen Weg in die andere Erfahrung zu bahnen.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #49838 /* ~Versuch, dir durch reine Willenskraft einen Weg in die andere Erfahrung zu bahnen.~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49839 /* ~"Was... was TUST du? HÖR AUF DAMIT!"~ */
  IF ~~ THEN REPLY #49840 /* ~Bahne dir weiter einen Weg in die andere Erfahrung.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #49841 /* ~Endlich gelingt es dir, dich bis zur 'Oberflächenerfahrung' - des Jagdausflugs in Arborea - durchzuschlagen und die Erfahrung zu beenden, bevor du wieder in die Falle zurückgezogen wirst.~ */
  IF ~~ THEN REPLY #49842 /* ~Geh weg.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2 11.2 12.2 15.3
  SAY #49843 /* ~"Nein!" Er wirkt verstört. "Das hat diese eine Inkarnation, dieser 'PRAKTISCH' veranlagte, gemacht. Ich hab versucht, sie wegzubrennen, aber die Haut hat sich so REGENERIERT, daß die Tattoos auf ihr geblieben sind! Ich hab versucht, sie abzuziehen, sie mit SÄURE wegzuätzen... Ich HASSE sie..."~ */
  IF ~~ THEN REPLY #49844 /* ~"Aber... Weshalb?"~ */ GOTO 20
  IF ~~ THEN REPLY #49845 /* ~Lies die Tätowierungen.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49846 /* ~"Hast du diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49847 /* ~"Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49848 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49849 /* ~Er zwinkert unbehaglich. "Es macht einen verrückt, AUGEN auf einem zu spüren, die den KÖRPER wie ein BUCH lesen..."~ */
  IF ~~ THEN REPLY #49850 /* ~Lies die Tätowierungen.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49851 /* ~"Hast du diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49852 /* ~"Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49853 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #49854 /* ~Er reißt seine Augen weit auf. "Hör auf! HÖR AUF, MICH ZU LESEN!" Er versucht, sich mit den Armen zu schützen und dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #49855 /* ~Lies sie weiter.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 22
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49856 /* ~"Gut. Hast du diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49857 /* ~"Gut. Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49858 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49859 /* ~Die Gestalt reißt ihre Augen noch weiter auf. "AUFHÖREN! HÖR AUF DAMIT! Ich warne dich!" Er gibt seine kauernde Stellung auf, um noch mehr von seinem Körper zu schützen. Auf seinem Rücken erkennst du die Liste eintätowierter Warnungen, die Morte dir einst in der Leichenhalle vorgelesen hat. Ganz unten steht jedoch eine Zeile, die Morte dir unterschlagen hat: 'TRAU DEM SCHÄDEL NICHT.' Während du sie weiter anschaust, dreht deine frühere Inkarnation immer mehr durch. "Ich WARNE dich zum LETZTEN MAL! HÖR AUF!"~ */
  IF ~~ THEN REPLY #49860 /* ~"Du kannst mir nicht drohen... Du bist eine aufgezeichnete Erinnerung, ein Gespenst. Ich lese sie solange weiter, bis du mich hier rausläßt."~ */ GOTO 23
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49861 /* ~"Gut. Hast du diese zwölfeckige Falle geschaffen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49862 /* ~"Gut. Wie hast du diese Falle geschaffen?"~ */ GOTO 15
  IF ~~ THEN REPLY #49863 /* ~Versuch, die Erfahrung zu beenden.~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49864 /* ~Er heult wie ein Wahnsinniger, schlägt dabei wild um sich, kneift sich in die Arme und schäumt aus dem Mund. "RAUS! RAUS! RAUS! RAUS! RAUS! RAUS! RAUS!" Und damit hat alles ein *Ende*... Du befindest dich wieder im Sinnsorium - ein bißchen verwirrt zwar, aber unversehrt.~ */
  IF ~~ THEN REPLY #49865 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("PStone","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #49866 /* ~Die Inschrift im Sockel dieses Sinnessteins zeigt an, daß in ihm die Erfahrung "Einwöchiger Jagdausflug in den Wäldern von Arborea" eingeschlossen ist. Solltest du ihn allerdings berühren, wirst du wieder in die irre Falle deiner früheren Inkarnation zurückgezerrt.~ */
  IF ~~ THEN REPLY #49867 /* ~Laß die Finger von dem Ding.~ */ EXIT
END
