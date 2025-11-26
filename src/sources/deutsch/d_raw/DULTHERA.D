// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DULTHERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DULTHERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64787 /* ~Du siehst eine übergewichtige ältere Frau in lumpiger Kleidung. Sie scheint ziellos durch die Straßen zu streifen redet mit sich selbst. Als sie dich kommen sieht. lächelt sie dich zahnlos an. "Bist gekommen, Ulthera zu sehen, ja? Was kann sie tun für dich?"~ */
  IF ~~ THEN REPLY #64788 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #64789 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64790 /* ~"Wohl, wohl. Sei gegrüßt..." Sie mustert dich flüchtig, und ihr Lächeln wird breiter. "Nur selten kommt einer wie du Ulthera besuchen. Was brauchst du?"~ */
  IF ~~ THEN REPLY #64791 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64792 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.2 8.1 9.0 12.1 13.2 14.1 15.1 16.1 17.1 18.1 24.0 30.0
  SAY #64793 /* ~"Wohl, dann frag."~ */
  IF ~~ THEN REPLY #64794 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #64795 /* ~"Was machst du hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #64796 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 13
  IF ~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN REPLY #64797 /* ~"Ich wollte dich etwas über Sheryls Vater Arkin fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #64798 /* ~"Nichts. Ich muß weiter. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64799 /* ~"Hast du nicht zugehört? Ist dir Schorf über die Ohren gewachsen und hat dich taub gemacht?" Sie legt den Kopf auf die Seite und untersucht deine Ohren. "Pah! Egal. Ulthera ist, wer ich bin. Ulthera die Hexe, so nennt man mich."~ */
  IF ~~ THEN REPLY #64800 /* ~"Bist Du eine Hexe?"~ */ GOTO 4
  IF ~~ THEN REPLY #64801 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64802 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64803 /* ~Sie stößt ein Kichern aus, das dir in den Ohren schmerzt. "Natürlich nicht, du Dussel. Keiner versteht Ulthera. Denken, sie ist verrückt, seltsam... eine Hexe. Das ist alles."~ */
  IF ~~ THEN REPLY #64804 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64805 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #64806 /* ~"Was tut Ulthera..." Sie runzelt die Stirn, und ihr Gesicht wird eine einzige Masse aus Falten. "Sie spürt verlorene Dinge auf. Die Leute kommen zu ihr und stellen Fragen. Sie findet die Dinge, nach denen die Leute fragen."~ */
  IF ~~ THEN REPLY #64807 /* ~"Ich habe meine Erinnerungen verloren. Kannst du mir sie suchen?"~ */ GOTO 6
  IF ~~ THEN REPLY #64808 /* ~"Ich habe meinen Namen vergessen. Kannst du ihn mir suchen?"~ */ GOTO 10
  IF ~~ THEN REPLY #64809 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64810 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64811 /* ~Sie sieht dich kurz an, dann reicht sie dir ihre runzelige Hand. "Deine Hand... Gib Ulthera die Hand."~ */
  IF ~~ THEN REPLY #64812 /* ~Nimm ihre Hand.~ */ GOTO 7
  IF ~~ THEN REPLY #64813 /* ~Folge seiner Aufforderung nicht.~ */ GOTO 30
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64814 /* ~Du reichst Ulthera die Hand. Einen Moment lang passiert nichts. Plötzlich fühlst du noch jemanden in deinem Geist, der deine verborgensten Gedanken durchforscht. Das Gefühl ist seltsam und irgendwie beängstigend. Instinktiv wehrst du dich und versuchst, den Eindringling aus deinem Körper zu jagen. Du hörst ein Keuchen von Ulthera, dann läßt sie deine Hand los.~ */
  IF ~~ THEN REPLY #64815 /* ~"Und?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64816 /* ~"Wohl, ein seltsamer einer bist du..." Sie schüttelt traurig den Kopf. "Ulthera weiß es nicht... Deine Erinnerungen scheinen eher verborgen als verloren... oder vielleicht im Besitz eines anderen... Einen großen Ozean spürt Ulthera..." Sie seufzt. "Ulthera kann dir nicht helfen... Du übersteigst ihre schlichten Fähigkeiten."~ */
  IF ~~ THEN REPLY #64817 /* ~"Ich weiß nicht, wovon du redest. Was meinst du?"~ */ GOTO 9
  IF ~~ THEN REPLY #64818 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64819 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #64820 /* ~Sie grunzt und schüttelt den Kopf. "Ulthera versteht weniger als du... Verzeih einer alten Frau. Ulthera kann dir nicht helfen."~ */
  IF ~~ THEN REPLY #64821 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64822 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #64823 /* ~Sie sieht dich kurz an, dann reicht sie dir ihre runzelige Hand. "Deine Hand... Gib Ulthera die Hand."~ */
  IF ~~ THEN REPLY #64824 /* ~Nimm ihre Hand.~ */ GOTO 11
  IF ~~ THEN REPLY #64826 /* ~Folge seiner Aufforderung nicht.~ */ GOTO 30
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64825 /* ~Du reichst Ulthera die Hand. Einen Moment lang passiert nichts. Plötzlich fühlst du noch jemanden in deinem Geist, der deine verborgensten Gedanken durchforscht. Das Gefühl ist seltsam und irgendwie beängstigend. Instinktiv wehrst du dich und versuchst, den Eindringling aus deinem Körper zu jagen. Du hörst ein Keuchen von Ulthera, dann läßt sie deine Hand los.~ */
  IF ~~ THEN REPLY #64827 /* ~"Und?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #64828 /* ~"Wohl, ein seltsamer einer bist du..." Sie schüttelt traurig den Kopf. "Ulthera weiß es nicht... Dein Name ist nicht verloren sondern freiwillig aufgegeben... Namenlos bist du, und namenlos sollst du bleiben. Du hast eine Wahl getroffen... Ulthera kann dir nicht helfen."~ */
  IF ~~ THEN REPLY #64829 /* ~"Ich weiß nicht, wovon du redest. Was meinst du?"~ */ GOTO 9
  IF ~~ THEN REPLY #64830 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64831 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #64832 /* ~Sie sieht umher und lächelt. "Das ist Pharods Reich. Das Begrabene Dorf wird es genannt... Sigil liegt darüber, die Katakomben darunter... Nichts weiter weiß Ulthera..."~ */
  IF ~~ THEN REPLY #64833 /* ~"Ich suche Pharod. Wo kann ich ihn finden?"~ */ GOTO 14
  IF ~~ THEN REPLY #64834 /* ~"Erzähl mir von den Katakomben."~ */ GOTO 15
  IF ~~ THEN REPLY #64835 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64836 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #64837 /* ~"Norden und Osten ist, wo du hingehen mußt. Ulthera weiß nicht, wohin genau. Wachen hat Pharod, also Wachen sollst du suchen. Wenn du Wachen findest, ist Pharod sicher nicht weit..."~ */
  IF ~~ THEN REPLY #64838 /* ~"Du hast etwas von Katakomben gesagt. Was weißt du darüber?"~ */ GOTO 15
  IF ~~ THEN REPLY #64839 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64840 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #64841 /* ~Sie sieht besorgt aus. "Grüfte der Toten sind sie, Weinender Stein werden sie genannt. Die Toten finden keine Ruhe dort, wandeln durch die Hallen... Aufpassen mußt du, wenn du dort bist." Sie zeigt ungefähr nach Süden. "Süden und Osten, dorthin mußt du gehen, wenn du den Weinenden Stein suchst..."~ */
  IF ~~ THEN REPLY #64842 /* ~"Du hast Pharod erwähnt. Wo finde ich ihn?"~ */ GOTO 14
  IF ~~ THEN REPLY #64843 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64844 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.3
  SAY #64845 /* ~"Pah! Dieses Frauenzimmer von Sheryl hat dich geschickt!" Das hört sich mehr nach Aussage als nach einer Frage an. Sie sieht dich einen Moment lang zornig an, dann fährt sie fort. "Was willst du wissen über Arkin?"~ */
  IF ~~ THEN REPLY #64846 /* ~"Sheryl sagt, er sei verschwunden. Sie macht sich Sorgen um ihn."~ */ GOTO 17
  IF ~~ THEN REPLY #64847 /* ~"Schon gut, ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64848 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64849 /* ~Sie nickt langsam. "Wohl, vermißt wird er. Und dieses dumme Frauenzimmer kam und hat Ulthera gefragt... Nein! Hat Ulthera beschuldigt! Hat sie einfach beschuldigt... Pah! Ulthera ist beleidigt!"~ */
  IF ~~ THEN REPLY #64850 /* ~"Du kannst doch wohl einem Kind verzeihen, das sich Sorgen um seinen Vater macht, oder?."~ */ GOTO 18
  IF ~~ THEN REPLY #64851 /* ~"Schon gut, ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64852 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #64853 /* ~Ulthera sieht dich zornig an, aber schon schwindet ihr Ärger, und sie nickt. "Wohl, wohl... Ulthera kann vergeben, denn wenn einer jung ist, kann man manchmal seine Manieren vergessen... Wie kann Ulthera dir helfen?"~ */
  IF ~~ THEN REPLY #64854 /* ~"Arkin suchte nach Portalschlüsseln. Ich denke, er kam dir zur Hilfe."~ */ GOTO 19
  IF ~~ THEN REPLY #64855 /* ~"Schon gut, ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64856 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64857 /* ~"Wohl." Sie nickt. "Arkin kam zu Ulthera und bat sie, die Schlüssel zu finden... Verlorene Schlüssel, wohl, verloren an die Zeit, verloren an einen Mann... Gefunden hat sie Ulthera... Arkin gegeben hat sie sie. Arkin hat die Schlüssel."~ */
  IF ~~ THEN REPLY #64858 /* ~"Was sind sie?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64859 /* ~"Aah... Ulthera hat sie... die Schlüssel. Einfach sind sie." Sie beginnt zu kichern und in ihren Taschen zu kramen. Nach einem Moment huscht der Ausdruck von Freude über ihr faltiges Gesicht. "Hier bitte, der Schlüssel zum Eingang..." Sie gibt dir einen Kerzenhalter.~ */
  IF ~~ THEN REPLY #64860 /* ~"...und der Ausgangs-Schlüssel, was ist das?"~ */ DO ~GiveItemCreate("Candle",Protagonist,1,0,0)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #64861 /* ~Sie lacht kurz hysterisch wie über einen versteckten Witz. "Wohl, der Schlüssel zum Ausgang... ein leerer Geldbeutel! Wohl, mit einem leeren Geldbeutel mußt du die Gruft verlassen..." Ulthera gibt dir einen leeren Geldbeutel.~ */
  IF ~~ THEN REPLY #64862 /* ~"Jetzt muß ich nur noch das Portal finden. Wo ist es?"~ */ DO ~GiveItemCreate("Purse",Protagonist,1,0,0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #64863 /* ~Sie lacht wieder, dann zuckt sie mit den Schultern. "Ulthera weiß es nicht... verloren ist es. Arkin wußte, Ulthera nicht." Ulthera sieht dich feierlich an und senkt die Stimme. "Finden kann sie es, wohl, aber du mußt Ulthera etwas bringen..."~ */
  IF ~~ THEN REPLY #64864 /* ~"Was genau brauchst du?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #64865 /* ~Sie tippt sich mit ihren knochigen Fingern gegen das Kinn. "Hmm. Eine Gruft wirst du finden... freundlich muß sie sein... Bring Ulthera einen menschlichen Beinknochen. Dann wird sie das Portal finden. Jetzt geh!"~ */
  IF ~~ THEN REPLY #64866 /* ~"Also gut, Ulthera. Ich bringe dir einen menschlichen Beinknochen. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, die Hexe, hat mir die Schlüssel zu dem Portal gegeben, das Sheryls Vater, Arkin, untersuchen wollte. Der Schlüssel zum Hineingehen ist ein Kerzenhalter, und der zum Herauskommen ein leerer Lederbeutel. Unglücklicherweise weiß Ulthera nicht, wo das Portal ist. Sie hat mich gebeten, einen menschlichen Beinknochen zu finden. Sie behauptet, mit dem Beinknochen das Portal finden zu können. Ich habe eingewilligt, das zu tun.~ */ EXIT
  IF ~~ THEN REPLY #64867 /* ~"Vergiß es. Ich will das nicht tun. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64868 /* ~Hmm. Ich muß darüber nachdenken. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #64869 /* ~Du siehst Ulthera, die Seherin. Als du auf sie zugehst, winkt sie dir mit ihren knochigen Händen zu. "Wohl, wieder zurück bist du. Was wirst du wollen?"~ */
  IF ~~ THEN REPLY #64870 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64871 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #64872 /* ~Du siehst Ulthera, die Seherin. Als du auf sie zugehst, winkt sie dir mit ihren knochigen Händen zu. "Wohl, wieder zurück bist du. Dachte mir, du kommst. Bring Ulthera einen menschlichen Beinknochen, und sie wird das Portal finden. Was sagst du?"~ */
  IF ~~ THEN REPLY #64873 /* ~"Also gut, Ulthera. Ich bringe dir einen menschlichen Beinknochen. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, die Hexe, hat mir die Schlüssel zu dem Portal gegeben, das Sheryls Vater, Arkin, untersuchen wollte. Der Schlüssel zum Hineingehen ist ein Kerzenhalter, und der zum Herauskommen ein leerer Lederbeutel. Unglücklicherweise weiß Ulthera nicht, wo das Portal ist. Sie hat mich gebeten, einen menschlichen Beinknochen zu finden. Sie behauptet, mit dem Beinknochen das Portal finden zu können. Ich habe eingewilligt, das zu tun.~ */ EXIT
  IF ~~ THEN REPLY #64874 /* ~"Vergiß es. Ich will das nicht tun. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64875 /* ~"Ich denk drüber nach. Wiedersehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #64876 /* ~Du siehst Ulthera, die Seherin. Als du auf sie zugehst, winkt sie dir mit ihren knochigen Händen zu. "Wohl, wieder zurück bist du. Nicht helfen willst du. Bring Ulthera einen menschlichen Beinknochen, und sie wird das Portal finden. Was sagst du?"~ */
  IF ~~ THEN REPLY #64877 /* ~"Also gut, Ulthera. Ich bringe dir einen menschlichen Beinknochen. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, die Hexe, hat mir die Schlüssel zu dem Portal gegeben, das Sheryls Vater, Arkin, untersuchen wollte. Der Schlüssel zum Hineingehen ist ein Kerzenhalter, und der zum Herauskommen ein leerer Lederbeutel. Unglücklicherweise weiß Ulthera nicht, wo das Portal ist. Sie hat mich gebeten, einen menschlichen Beinknochen zu finden. Sie behauptet, mit dem Beinknochen das Portal finden zu können. Ich habe eingewilligt, das zu tun.~ */ EXIT
  IF ~~ THEN REPLY #64878 /* ~"Vergiß es. Ich will das nicht tun. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #64879 /* ~"Ich denk drüber nach. Wiedersehen."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #64880 /* ~Du siehst Ulthera, die Seherin. Als du auf sie zugehst, winkt sie dir mit ihren knochigen Händen zu. "Wohl, wieder zurück bist du. Helfen willst du. Bring Ulthera einen menschlichen Beinknochen, und sie wird das Portal finden. Wo ist der Knochen?"~ */
  IF ~  !PartyHasItem("Legclub")
~ THEN REPLY #64881 /* ~"Ich habe ihn noch nicht. Ich suche noch. Wiedersehen."~ */ EXIT
  IF ~  PartyHasItem("Legclub")
~ THEN REPLY #64882 /* ~"Hier ist er. Nun sag mir, wo das Portal ist."~ */ DO ~DestroyItemObject("Legclub",Protagonist,TRUE)
SetGlobal("Ulthera_Quest","GLOBAL",4)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #64883 /* ~Ulthera sieht sich vorsichtig um und nimmt den Knochen. Sie drückt ihn fest an sich, beginnt zu singen und wiegt sich vor und zurück. Ihre Stimme wird angespannter aber leiser, bis du sie kaum noch hörst. Endlich keucht sie und zeigt mit dem Knochen nach Nordwesten. "Wohl, nach Norden und Westen mußt du gehen, in die Nähe des Eingangs zur Stadt... Ulthera hat für dich gefunden, nun geh!~ */
  IF ~~ THEN REPLY #64884 /* ~"Danke, Ulthera. Wiedersehen."~ */ JOURNAL #64936 /* ~Ich habe den Beinknochen für Ulthera gefunden und sie gebeten, das Portal zu finden, das Arkin verwendet hat. Sie hat ein bißchen gesungen und rumgemacht, und dann hat sie gesagt, das Portal könne im Nordwesten, in der Nähe des Eingangs zum Begrabenen Dorf, gefunden werden. Ich hoffe, sie hat recht.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ulthera_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #64885 /* ~Du siehst Ulthera, die Seherin. Als du auf sie zugehst, winkt sie dir mit ihren knochigen Händen zu. "Wohl, wieder zurück bist du. Was wirst du wollen?"~ */
  IF ~~ THEN REPLY #64886 /* ~"Gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 6.1 10.1
  SAY #64932 /* ~Ulthera runzelt die Stirn und legt die Hände in die Hüften. "Hast du Angst vor einer alten Frau? Angst, daß Ulthera dich beißt? Hab keine Angst. Was willst du noch?"~ */
  IF ~~ THEN REPLY #64933 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64934 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END
