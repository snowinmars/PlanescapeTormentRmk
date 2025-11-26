// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~Du siehst ein mechanisches Geschöpf mit vulkanroter Haut an einem Arm. Es sieht dir mißtrauisch entgegen, als du näherkommst.~ */
  IF ~~ THEN REPLY #60815 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~Es legt den Kopf zur Seite und sieht dich fragend an. "Sei gegrüßt, Eindringling." ~ */
  IF ~~ THEN REPLY #60818 /* ~"Warum glaubst du, ich sei ein Eindringling?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"Was machst du da?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~Es schenkt dir ein gemeines Lächeln. "Weil du keiner von uns bist. Also bist du ein Eindringling. Und als ein Eindringling mußt du sterben." Es greift dich an.~ */
  IF ~~ THEN REPLY #60824 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"Ich habe keine Identität, nur einen Zweck. Mein Zweck besteht darin, dich zu töten." Es greift dich an.~ */
  IF ~~ THEN REPLY #60826 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"Ich bin eine schwere Kampfdrohne. Ich habe folgende Funktionen: überdurchschnittliche Kampfleistung, überragende Intelligenz und kompetente Waffenführung. Als Extra wurde ich mit einer negativen Einstellung ausgestattet." Es greift dich an.~ */
  IF ~~ THEN REPLY #60828 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"Ich registriere, wo deine lebenswichtigen Organe liegen. Nun, da ich die Informationen zusammengetragen habe, werde ich sie verwenden, um dir heftige Schmerzen zuzufügen." Es greift dich an.~ */
  IF ~~ THEN REPLY #60830 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~Es lächelt dich böse an. "Du kommst noch früh genug hier weg, Eindringling - mit den Füßen zuerst, nachdem ich dich getötet habe!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60832 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~Du siehst ein mechanisches Geschöpf mit vulkanroter Haut an einem Arm. Es sieht dir mißtrauisch entgegen, als du näherkommst.~ */
  IF ~~ THEN REPLY #60834 /* ~"Sei gegrüßt."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~Es legt dem Kopf schief und sieht dich fragend an. "Wieso stellst du uns unaufhörlich Fragen? Ich verstehe das nicht."~ */
  IF ~~ THEN REPLY #60837 /* ~"Es besteht immer die Möglichkeit, daß ich etwas in Erfahrung bringe."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"Wer bist du?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"Was bist du?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"Was machst du da?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~Es sieht einen Moment nachdenklich zur Seite. Dann sieht es dich wieder an und nickt zustimmend. "Ja,... das ist wohl wahr... Von mir wirst du erfahren, was Schmerz ist." Es greift dich an.~ */
  IF ~~ THEN REPLY #60843 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"Ich bin ein Diener des Bösen Zauberers und er befiehlt deinen Tod." Es greift dich an.~ */
  IF ~~ THEN REPLY #60846 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"Ich bin der, der dich in die Knie zwingen wird, Eindringling!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60848 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"Ich unterrichte den Bösen Zauberer über deinen Standort im Irrgarten, bevor ich dich töte..." Es hält einen Moment inne. "Fertig, und nun zum Töten..." Es greift dich an.~ */
  IF ~~ THEN REPLY #60850 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"Du willst schon gehen? Ich werde zeigen, wo's lang geht!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60852 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~Du siehst ein mechanisches Geschöpf mit vulkanroter Haut an einem Arm. Es sieht dir mißtrauisch entgegen, als du näherkommst.~ */
  IF ~~ THEN REPLY #60854 /* ~"Sei gegrüßt."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~Es legt den Kopf schief und sieht dich fragend an. "Deine Hartnäckigkeit ist beeindruckend, Eindringling, aber nichtsdestotrotz dumm." ~ */
  IF ~~ THEN REPLY #60857 /* ~"Warum müssen wir überhaupt kämpfen? Mir scheint das ziemlich sinnlos."~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"Wer bist du?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"Was bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"Was machst du da?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~Es starrt dich eine Weile an, bevor es antwortet: "Es scheint nur sinnlos, Eindringling. Unser Wahnsinn hat einen Sinn..." Es greift dich an.~ */
  IF ~~ THEN REPLY #60863 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"Als einzelner, niemand. Als Teil des Ganzen, alles." Es greift dich an.~ */
  IF ~~ THEN REPLY #60865 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"Ein Mittel zum Zweck, Eindringling." Es greift dich an.~ */
  IF ~~ THEN REPLY #60867 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"Ich berichte dem Bösen Zauberer alles, was dir gelingt oder mißlingt, alles, was du tust. Von dir lernen wir. Durch dich werden wir es besser machen." Es greift dich an.~ */
  IF ~~ THEN REPLY #60869 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"Ja,... bis zum nächsten Mal, Eindringling." Es greift dich an.~ */
  IF ~~ THEN REPLY #60871 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
