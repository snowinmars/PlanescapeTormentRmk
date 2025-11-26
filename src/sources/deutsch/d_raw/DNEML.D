// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~Diese große, schlanke Frau, die Wein aus einer kleinen Emailletasse nippt, scheint nach jemandem zu suchen. Ihre Gesichtszüge sind elegant und exotisch, und die Ohren der Frau verlaufen deutlich in scharfen Spitzen zusammen, obwohl sie teilweise durch ihr langes Haar verdeckt sind.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~Die Frau dreht sich zu dir um. Ihre violetten Augen blitzen wie vollkommene Splitter eines Amethysten. Ihre Stimme klingt wie Musik; als sie spricht, hörst du ein leises, melodisches Klingen, wie von hundert winzigen Kristallglöckchen. Jedes Wort verweilt in deinen Ohren, als wollten diese den herrlichen Klang nicht mehr hergeben. "Nemelle drehte sich zu dem narbigen, finster blickenden Fremden um. Sie fragte, was er von ihr wünschte."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"Bist du Nemelle? Ich habe gehört, du kennst das Befehlswort für diese Karaffe."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"Nemelle? Deine Freundin Aelwyn sucht dich."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Ich hab Nemelle erzählt, daß ihre Freundin, Aelwyn, nach ihr suchen würde. Sie belohnte mich mit einem magischen Kuß, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"Suchst du jemanden?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"Gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~Die Frau dreht sich zu dir um. Ihre violetten Augen blitzen wie vollkommene Splitter eines Amethysten. Ihre Stimme klingt wie Musik; als sie spricht, hörst du ein leises, melodisches Klingen, wie von hundert winzigen Kristallglöckchen. Jedes Wort verweilt in deinen Ohren, als wollten diese den herrlichen Klang nicht mehr hergeben. "Nemelle drehte sich zu dem narbigen, finster blickenden Fremden um. Sie fragte, was er von ihr wünschte."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~Die Frau dreht sich zu dir um. Ihre violetten Augen blitzen wie vollkommene Splitter eines Amethysten. Ihre Stimme klingt wie Musik; als sie spricht, hörst du ein leises, melodisches Klingen, wie von hundert winzigen Kristallglöckchen. Jedes Wort verweilt in deinen Ohren, als wollten diese den herrlichen Klang nicht mehr hergeben. "Nemelle drehte sich zu dem narbigen, finster blickenden Fremden um. Sie fragte, was er von ihr wünschte."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~Die Frau macht keine Anstalten, die Karaffe genauer anzusehen oder anzufassen. Sie sagt nur: "Nemelle nahm sie dem Fremden ab und drehte sie in ihren Händen. Hatte sie sie schon einmal gesehen? Vielleicht... Ja, jetzt erinnerte sie sich. Sie gab ihm die Karaffe zurück. Dabei flüsterte sie ihm ins Ohr..."~ */
  IF ~~ THEN REPLY #43936 /* ~"Äh..."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~Eine geheimnisvolle Frau namens Nemelle hat mir das Befehlswort für die magische Karaffe, die ich gefunden habe, gegeben. Es lautet: 'Nildennosaj'.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~Jetzt wird dir bewußt, daß du das Wort kennst - 'Nildenosaj' - obwohl du dir sicher bist, daß die Frau dir niemals wirklich ins Ohr geflüstert hat, sondern nur sagt, sie hätte es getan. Sie zwinkert dir zu. "Würde der Fremde sich jetzt von ihr verabschieden, mit dem zufrieden, was sie ihm gesagt hatte?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"Noch nicht. Ich habe Aelwyn gefunden."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Ich hab Nemelle erzählt, daß ich ihre Freundin, Aelwyn gefunden habe. Sie belohnte mich mit einem magischen Kuß, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"Noch nicht. Deine Freundin Aelwyn sucht dich."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Ich hab Nemelle erzählt, daß ihre Freundin, Aelwyn, nach ihr suchen würde. Sie belohnte mich mit einem magischen Kuß, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"Noch nicht ganz. Suchst du jemanden?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"Nein... Ich hätte da ein paar Fragen."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~Nemelle formt ihren Mund zu einem perfekten Lächeln. Sie strahlt eine ansteckende Heiterkeit aus, die süß duftet und dir Wärme spendet. "Nemelle war überglücklich, von ihrer Freundin zu hören. War Aelwyn in der Nähe?"~ */
  IF ~~ THEN REPLY #43944 /* ~"Sie ist in einem anderen Café östlich von hier, auf der anderen Seite von diesem Teil des Bezirks."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"Nemelle dankte dem Man für seine fabelhaften Neuigkeiten. Bald würde sie ihre älteste Freundin, Aelwyn, besuchen gehen. Doch zuerst wollte sie den Fremden belohnen..."~ */
  IF ~~ THEN REPLY #43946 /* ~"Nein, ist schon gut. Ich brauche keine Belohnung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~Warte auf ihre Belohnung.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~Nemelle legt ihren Zeigefinger auf die Lippen und macht leise 'ssscht'.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"Sie zieht den Fremden an sich, legt ihre Hand auf seine Brust und küßt die blasse, lederne Haut seiner Wangen. Dies erfüllt ihn mit neuem Leben und neuer Kraft... Das war seine Belohnung."~ */
  IF ~~ THEN REPLY #43950 /* ~Warte.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~Nach kurzer Zeit spürst du ein leichtes Kribbeln auf deiner Brust und deinen Wangen. Das Gefühl breitet sich im ganzen Körper aus. Du beginnst, dich stärker und lebendiger zu fühlen.

Deine maximalen Trefferpunkte haben sich um drei erhöht.
~ */
  IF ~~ THEN REPLY #43952 /* ~"Danke. Ich hätte da ein paar Fragen."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"Ich danke dir, Nemelle. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"Nemelle lauschte den Fragen des Fremden, die sie jedoch nicht beantworten konnte. Er mußte seine Antworten woanders suchen."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"Schön. Aber... suchst du jemanden?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"Aber... Ich hab ja noch gar nicht gefragt..."~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~Nemelle lächelt dich an und schüttelt langsam den Kopf. Dein Gesicht spiegelt sich in ihren schimmernden Augen. "Frustriert und verwirrt gab er schließlich auf. Ihm war klar, daß diese Frau nichts wußte, was ihm sonst noch nützlich sein konnte - oder sich nicht überreden ließ, mehr zu sagen."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"Schön. Aber... suchst du jemanden?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"Was? Nein... Ich würd dich nur gern was fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~Du machst den Mund auf, kannst aber nichts sagen. So sehr du es auch versuchst - du kannst ihr keine Fragen stellen. Nemelle schüttelt traurig den Kopf.~ */
  IF ~~ THEN REPLY #43961 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'Wo könnte sie sein?', fragte Nemelle sich. Sie hätte Aelwyn schon vor Tagen hier treffen sollen." Die Frau seufzt erbärmlich; die sie umgebende Luft kühlt sich durch ihre Trauer ab. "Wie lange muß sie in dieser großen, fremden Stadt noch nach ihrer teuersten Freundin suchen?"~ */
  IF ~~ THEN REPLY #43963 /* ~"Ich könnte dir helfen, deine Freundin zu finden. Wie sieht sie aus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"Ich könnte sie für dich finden - gegen Bezahlung, versteht sich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"Ich hoffe, ich finde sie. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~Nemelle klatscht in die Hände und neigt ihren Kopf in deine Richtung. "Sie wäre so glücklich, von ihrer Freundin zu hören! Sie schilderte dem Fremden, wie Aelwyn aussah, damit er sie erkennen könnte, sollte sie ihm begegnen." Vor deinem geistigen Auge siehst du das Bild einer Frau, die Nemelle gleicht, im Gegensatz zu ihr aber goldene Augen und feuerrote Haare besitzt.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"Ehrlich gesagt, bin ich dieser Frau schon begegnet."~ */ JOURNAL #39493 /* ~Ich habe einer geheimnisvollen Frau, Nemelle, angeboten, eine bestimmte Frau für sie zu suchen. Wie sich herausstellte, wußte ich sogar bereits, wo sich diese Frau namens Aelwyn aufhielt. Nemelle hat mich mit einem magischen Kuß belohnt, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"Ich komm zurück, wenn ich sie gefunden habe. Leb wohl."~ */ JOURNAL #39491 /* ~Ich habe einer geheimnisvollen Frau namens Nemelle angeboten, jemanden namens Aelwyn für sie zu finden. Soviel ich weiß, ist Aelwyn eine hochgewachsene, wunderschöne Frau mit goldenen Augen und feuerrotem Haar.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~Nemelle spricht langsam und mit gesenktem Blick: "Sie wußte, daß sie nichts geben konnte, und der Fremde würde dies auch bald wissen. Auch wenn der Preis noch so niedrig war - sie konnte ihn nicht zahlen."~ */
  IF ~~ THEN REPLY #43970 /* ~"Dann betrachte es als reine Gefälligkeit."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"Dann vergiß es. Leb wohl."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~Die Frau lächelt dir zum Gruß zu. Sie ist noch genauso atemberaubend schön wie bei eurem ersten Treffen. "Sie traf den Fremden wieder. 'Warum ist er wohl wieder zu mir gekommen?', fragte sie sich."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"Nemelle... Ich habe gehört, du kennst das Befehlswort für diese Karaffe."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"Deine Freundin Aelwyn sucht dich."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Ich hab Nemelle erzählt, daß ihre Freundin, Aelwyn, nach ihr suchen würde. Sie belohnte mich mit einem magischen Kuß, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"Suchst du jemanden?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"Gar nichts. Leb wohl."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~Die Frau lächelt dir zum Gruß zu. Sie ist noch genauso atemberaubend schön wie beim ersten Mal. "Nemelle hielt den Atem an, als der Fremde näherkam. Hatte er Aelwyn gefunden?', fragte sie sich."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"Ich habe gehört, du kennst das Befehlswort für diese Karaffe."~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"Ich habe Aelwyn gefunden. Sie war ebenfalls auf der Suche nach dir."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Ich hab Nemelle erzählt, daß ich ihre Freundin, Aelwyn gefunden habe. Sie belohnte mich mit einem magischen Kuß, der meine maximale Anzahl an Trefferpunkten um drei erhöht hat.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"Ich habe sie nicht gefunden. Ich hätte da ein paar Fragen..."~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~Nemelle klatscht in die Hände und beugt ihren Kopf nach vorn. Als sie endlich aufblickt und dich anlächelt, durchströmt eine Welle des Wohlempfindens deinen Körper - dir wird fast schwindlig. "Nemelle dankte dem Fremden aufs neue. Sie hoffte, daß er wußte, wie glücklich sie war, wieder mit Aelwyn vereint zu sein."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"Kein... Problem. Ich... Ich habe gehört, du kennst das Befehlswort für diese Karaffe."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"Ich... glaube schon. Leb wohl, Nemelle."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~Die Frau faucht dich an. Ihre violetten Augen funkeln haßerfüllt. Sie spricht, als lese sie die Worte von einem Buch ab: "'Du Dummkopf', schrie sie. 'Wie kannst du es wagen, eine Tochter Asaharms so anzugreifen! Du Hund!' Mit zusammengekniffenen Augen fügt sie hinzu: 'Und wie ein Hund sollst du sterben!'" Dann sieht sie dich mit kühlem Blick an und nippt an ihrem Wein.~ */
  IF ~~ THEN REPLY #43987 /* ~"Was...?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~Hör nicht auf sie. Zieh es durch.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~Du fällst zu Boden und heulst vor Schmerz... Deine Eingeweide scheinen zu brodeln, und bald speist du große Tropfen dampfenden, schwarzen Blutes aus. Schließlich sackst du zitternd auf der Straße zusammen und hauchst den letzten Lebensatem aus...~ */
  IF ~~ THEN REPLY #43990 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END
