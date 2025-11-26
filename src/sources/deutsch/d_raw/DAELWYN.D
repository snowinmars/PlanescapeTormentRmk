// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~Diese große, schlanke Frau blickt gelegentlich von ihrem Becher Wein auf, um die anderen Gäste und Passanten zu begutachten. Ihre eleganten Gesichtszüge haben etwas Exotisches, und in ihre strahlend goldenen Augen leuchten, als sie um sich blickt.~ */
  IF ~~ THEN REPLY #43391 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~Sie betrachtet dich einen Moment lang eindringlich bevor sie antwortet. Sie spricht langsam und sorgfältig und vermeidet dabei jeden Augenkontakt mit dir: "Ich, Aelwyn, erwidere deinen Gruß."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"Aelwyn? Deine Freundin, Nemelle, sucht dich."~ */ JOURNAL #56704 /* ~Ich hab Aelwyn gefunden und ihr gesagt, daß Nemelle nach ihr sucht.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"Suchst du jemanden?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~Sie beginnt zu lächeln, bedeckt aber dann ihren Mund mit der Hand und schlägt die Augen auf ihr Glas nieder. "Ich, Aelwyn, bin hocherfreut, von Nemelle zu hören. Dürfte ich, Aelwyn, dich überreden, ihr von diesem Ort zu erzählen?"~ */
  IF ~~ THEN REPLY #56706 /* ~"Ja, das mach ich für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Ich habe eingewilligt, zu Nemelle zurückzugehen und ihr zu sagen, wo Aelwyn ist.~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"Ich spiele hier nicht den Botenjungen, weil ich so ein guter Mensch bin. Ich erwarte eine Gegenleistung."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"Ich werde darüber nachdenken. Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~Sie sieht dich direkt an und - für den Bruchteil eines Augenblicks, bevor sie die Augen wieder niederschlägt - werden deine Sinne von einem warmen, wunderbaren Gefühl überwältigt: von purem Glück. "Ich, Aelwyn, danke dir."~ */
  IF ~~ THEN REPLY #56712 /* ~"Es ist mir ein Vergnügen. Aber darf ich dich etwas über sie fragen?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~Aelwyn nickt langsam.~ */
  IF ~~ THEN REPLY #56715 /* ~"Wie sie spricht, und was ihre Worte tun... wie?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"Ich, Aelwyn, kann nur sagen, daß wir von einem anderen Ort kommen, einer anderen Welt. Wir sind nicht wie die Leute hier, deren Worte, Gedanken - ja gar Gefühle - nichts direkt beeinflussen."~ */
  IF ~~ THEN REPLY #56718 /* ~"Erzähl weiter..."~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"Später mußt du mir mehr erzählen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"Ich, Aelwyn, bin sehr vorsichtig, die um mich herum nicht zu sehr zu beeinflussen. Nemelle ist neu hier, sie kann es noch nicht. Sie muß es noch lernen, wenn sie länger hierbleiben will."~ */
  IF ~~ THEN REPLY #56721 /* ~"Aber wieso denn?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"Da gibt es viele Gründe. Ich, Aelwyn, finde, daß es nicht richtig ist, jenen meine Realität aufzuzwingen, die nicht die Fähigkeit haben, mir, Aelwyn, ihrerseits ihre Realität aufzuerlegen."~ */
  IF ~~ THEN REPLY #56725 /* ~"Gibt es etwas, was du nicht herbeiführen kannst, indem du einfach davon sprichst?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~Sie runzelt die Stirn. Ein seltsames, unangenehmes Gefühl steigt in dir auf. "Bitte... Ich, Aelwyn, möchte nicht mehr davon sprechen."~ */
  IF ~~ THEN REPLY #56728 /* ~"Nur noch eine Frage...."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"In Ordnung. Leb wohl, Aelwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~Sie sieht dich direkt an, und dein Gesicht spiegelt sich in den glitzernden goldenen Scheiben ihrer Augen. "Er würde nicht mehr davon zu Aelwyn sprechen, und sie so nicht mehr zwingen, auf diese Art mit ihm zu sprechen." Du bist nicht fähig, eine weitere Frage zu stellen... Die Worte bleiben dir im Halse stecken.~ */
  IF ~~ THEN REPLY #56731 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~Sie nickt. "Ich, Aelwyn, verstehe. Bist du ein Sinnsate?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"Ja."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"Nein, bin ich nicht."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~Sie schüttelt den Kopf. "Dann habe ich, Aelwyn, keine Möglichkeit, dich zu belohnen.."~ */
  IF ~~ THEN REPLY #56736 /* ~"Ich mach es trotzdem."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Ich habe eingewilligt, zu Nemelle zurückzugehen und ihr zu sagen, wo Aelwyn ist.~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"Komme ich, Aelwyn, dir nicht bekannt vor?"~ */
  IF ~~ THEN REPLY #56740 /* ~"Nein. Solltest du?"~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"Nein, tust du nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"Das ist unwichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"Es ist wie ich, Aelwyn, dachte. Der Geist eines Menschen ging ihm verloren."~ */
  IF ~~ THEN REPLY #56744 /* ~"Was meinst du damit? Weißt du, wer ich bin?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"Da könntest du recht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"Ich, Aelwyn, habe dich schon einmal getroffen, und würde von diesem Treffen sprechen, wenn du mir helfen würdest."~ */
  IF ~~ THEN REPLY #56747 /* ~"Also, dann mach ich's."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Ich habe eingewilligt, zu Nemelle zurückzugehen und ihr zu sagen, wo Aelwyn ist.~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~Die Frau schüttelt den Kopf, ihre purpurnen Locken fangen das Licht ein und funkeln wie eine flackernde Flamme. "Ich, Aelwyn, habe keine Antworten, Fremder. Du solltest deine Antworten lieber woanders suchen."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"Du sagst, du bist Aelwyn? Deine Freundin, Nemelle, sucht dich."~ */ JOURNAL #56704 /* ~Ich hab Aelwyn gefunden und ihr gesagt, daß Nemelle nach ihr sucht.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"Suchst du jemanden?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"Also dann, leb wohl..."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~Sie nickt und starrt schwermütig in ihren Weinbecher. "Nemelle ist ihr Name, eine Freundin von mir, Aelwyn. Ich, Aelwyn, mache mir Sorgen um sie, an diesem Ort, und frage mich, warum sie noch nicht zu mir, Aelwyn, gekommen ist."~ */
  IF ~~ THEN REPLY #56756 /* ~"Ich könnte dir helfen, deine Freundin zu finden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Ich habe eingewilligt, jemanden namens Nemelle für eine Frau, die ich getroffen habe, Aelwyn, aufzusuchen.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"Ich könnte sie für dich finden - gegen Bezahlung, versteht sich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"Ich hoffe, ich finde sie. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"Das würdest du tun?" Sie blickt von ihrem Becher auf, lächelt, und dich überkommt plötzlich ein Gefühl der Hoffnung und der freudigen Dankbarkeit. Als sie deine Reaktion bemerkt, bedeckt sie ihren Mund mit der Hand und wendet erneut ihren Blick ab... und das Gefühl verschwindet völlig. "Ich, Aelwyn, danke dir."~ */
  IF ~~ THEN REPLY #56761 /* ~"Was... was war das?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"Natürlich. Wie sieht sie denn aus?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"Was war was, freundlicher Fremder?" Sie beißt sich auf die Unterlippe. "Ich, Aelwyn, weiß nichts von den Dingen, von denen du sprichst."~ */
  IF ~~ THEN REPLY #56764 /* ~"Also gut. Wie sieht Nemelle aus?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"Sie sieht aus wie ich, Aelwyn, aber sie hat schwarze Haare und strahlend violette Augen."~ */
  IF ~~ THEN REPLY #56766 /* ~"Dann werde ich ihr sagen, daß du hier auf sie wartest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~Sie nickt. "Ich, Aelwyn, verstehe. Bist du ein Sinnsate?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"Ja."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"Nein, bin ich nicht."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~Sie schüttelt den Kopf. "Dann habe ich, Aelwyn, keine Möglichkeit, dich zu belohnen.."~ */
  IF ~~ THEN REPLY #56771 /* ~"Ich mach es trotzdem."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Ich habe eingewilligt, jemanden namens Nemelle für eine Frau, die ich getroffen habe, Aelwyn, aufzusuchen.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"Komme ich, Aelwyn, dir nicht bekannt vor?"~ */
  IF ~~ THEN REPLY #56775 /* ~"Nein. Solltest du?"~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"Nein, tust du nicht."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"Das ist unwichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"Es ist wie ich, Aelwyn, dachte. Der Geist eines Menschen ging ihm verloren."~ */
  IF ~~ THEN REPLY #56779 /* ~"Was meinst du damit? Weißt du, wer ich bin?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"Da könntest du recht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"Ich, Aelwyn, habe dich schon einmal getroffen, und würde von diesem Treffen sprechen, wenn du mir helfen würdest."~ */
  IF ~~ THEN REPLY #56783 /* ~"Also, dann mach ich's."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Ich habe eingewilligt, jemanden namens Nemelle für eine Frau, die ich getroffen habe, Aelwyn, aufzusuchen.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~Sie sieht dich direkt an und - für den Bruchteil eines Augenblicks, bevor sie die Augen wieder niederschlägt - werden deine Sinne von einem warmen, wunderbaren Gefühl überwältigt: von purem Glück. "Ich, Aelwyn, danke dir."~ */
  IF ~~ THEN REPLY #56787 /* ~"Was... was war das?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"Natürlich. Wie sieht sie denn aus?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~Aelwyn sieht gerade lange genug von ihrem Glas auf, um dich kurz zu grüßen. "Ich, Aelwyn, treffe wieder auf diesen Fremden. Was willst du?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"Deine Freundin, Nemelle, sucht dich."~ */ JOURNAL #56704 /* ~Ich hab Aelwyn gefunden und ihr gesagt, daß Nemelle nach ihr sucht.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"Suchst du jemanden?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~Aelwyn sieht gerade lange genug von ihrem Glas auf, um dich kurz zu grüßen. "Ich, Aelwyn, warte begierig auf Neuigkeiten von Nemelle. Hast du sie gefunden, Fremder?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"Ja, ich hab' sie gefunden."~ */ JOURNAL #56799 /* ~Ich habe Aelwyn gesagt, daß ich Nemelle für sie gefunden habe.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"Noch nicht. Wie sah sie doch gleich aus?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"Nein, noch nicht. Ich komme wieder, wenn ich sie gefunden habe. Leb wohl."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~Aelwyn sieht gerade lange genug von ihrem Glas auf, um dich kurz zu grüßen. "Ich, Aelwyn, warte immer noch auf Nemelles Ankunft. Hast du ihr die Nachricht nicht überbracht?"~ */
  IF ~~ THEN REPLY #56801 /* ~"Nein, noch nicht. Ich werde sie finden und ihr sagen, daß du hier bist."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~Aelwyn schlägt die Hände zusammen und neigt ihren Kopf in Dankbarkeit. Freudentränen fallen aus ihren goldenen Augen. Gerade, als auch deine Augen zu tränen beginnen, wischt sie die Tränen weg und lächelt - was deinen ganzen Körper mit einer Welle des Wohlbehagens überspült. "Aelwyn *dankte* dem Fremden! Sie wurde mit ihrer teuersten Freundin, Nemelle, wieder vereint!"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"Es war mir ein Vergnügen."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"Es war mir ein Vergnügen."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"Natürlich. Jetzt erzähl mir von unserem früheren Treffen."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~Eine Frau namens Aelwyn hat mir gesagt, daß ich früher einmal ein Mitglied der Gesellschaft der Empfindung - ein Sinnsate - war... und es möglicherweise immer noch bin.~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~Sie nickt und schlägt dann wieder die Augen nieder. Die Gefühle, die ihr Lächeln hervorgerufen hat, verblassen zu einer angenehmen Erinnerung.~ */
  IF ~~ THEN REPLY #56807 /* ~"Wie kommt es, daß du und Nemelle meine Wahrnehmungen und Gefühle beeinflussen könnt?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~Sie nickt und schlägt dann wieder die Augen nieder. Die Gefühle, die ihr Lächeln hervorgerufen hat, verblassen zu einer angenehmen Erinnerung. "Ich, Aelwyn, würde dir jetzt etwas sagen, Fremder."~ */
  IF ~~ THEN REPLY #56810 /* ~"Ja? Nur zu..."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~Eine Frau namens Aelwyn hat mir gesagt, daß ich früher einmal ein Mitglied der Gesellschaft der Empfindung - ein Sinnsate - war... und es möglicherweise immer noch bin.~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"Vielleicht ein andermal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"Der Name, den ich, Aelwyn, für dich gewählt habe - 'Fremder' - ist nicht so passend. Du hast mich, Aelwyn, zuvor getroffen... in der Festhalle. An einem Ort, an dem du nicht gewesen sein könntest, wenn du nicht selbst ein Sinnsate wärest. Ob du dich daran erinnerst oder nicht - wenn du die Gesellschaft der Empfindung nicht irgendwie hintergangen hast, dann bist du ein Sinnsate."~ */
  IF ~~ THEN REPLY #56814 /* ~"Ich verstehe... Erzähl weiter."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"Den Rest höre ich mir ein andermal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~Sie nickt. "Du hast mich, Aelwyn, bei zwei verschiedenen Gelegenheiten getroffen. Die erste ist über zwei Jahrhunderte her, die zweite nicht so lange. Vielleicht gerade mal 50 Jahre."~ */
  IF ~~ THEN REPLY #56817 /* ~"Das ist eine ganze Weile her..."~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"Den Rest höre ich mir ein andermal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~Sie nickt wieder. "Mein, Aelwyns, Volk ist enorm langlebig, Vergeßlicher." Sie seufzt traurig, und ein Schauer läuft dir über den Rücken. "Du warst damals ein anderer Mensch... weniger verbittert, weniger vernarbt. Du warst so gespannt auf alles, was das Multiversum dir zu bieten hatte. Du hast mir, Aelwyn, damals den Hof gemacht, und ich hätte dich fast zum Liebhaber genommen - aber dann bist du verschwunden."~ */
  IF ~~ THEN REPLY #56820 /* ~"Wo bin ich hingegangen?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"Den Rest höre ich mir ein andermal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"Man hat mir, Aelwyn, gesagt, daß du erschlagen worden seist... ermordet." Sie blickt einen Moment auf und sieht dir neugierig in die Augen. "Danach habe ich dich nur noch einmal getroffen."~ */
  IF ~~ THEN REPLY #56823 /* ~"Habe ich mich damals an dich erinnert?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"Den Rest höre ich mir ein andermal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"Nein." Sie schüttelt traurig den Kopf und faßt sich an den Hals. "Nein, das hast du nicht. Du bist auf mich, Aelwyn, losgegangen, als wolltest du mich umbringen. Du hast gebrüllt, daß ich, Aelwyn, dich nicht täuschen könne, dich nicht umgarnen und ermorden würde..."~ */
  IF ~~ THEN REPLY #56826 /* ~"Was ist passiert?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"Den Rest höre ich mir ein andermal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"Wir hatten uns in einem der Nordtürme der Festhalle getroffen, im sechsten Stock. Bevor du mich zu Tode würgen konntest, habe ich, Aelwyn, meine Kräfte eingesetzt, damit du aus einem Fenster in den Tod springst. Als ich, Aelwyn, mich schließlich auf die Suche nach deinem Leichnam gemacht habe, warst du bereits verschwunden..."~ */
  IF ~~ THEN REPLY #56829 /* ~"Du hast *was* getan?"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"Ich verstehe..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"Das ist meine, Aelwyns, Geschichte. Einst waren wir keine Fremden, aber wir sind es nun geworden. Leb wohl, Fremder, und möge das Glück dich auf deinen Reisen begleiten."~ */
  IF ~~ THEN REPLY #56832 /* ~"Danke, Aelwyn. Leb wohl."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~Aelwyn sieht gerade lange genug von ihrem Glas auf, um dich zu grüßen. "Ich, Aelwyn, treffe wieder auf den Fremden und grüße ihn."~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"Erzähl mir, wie wir uns noch mal begegnet sind, Aelwyn."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~Die Frau knurrt dich an, ihre goldenen Augen blitzen wie zwei Feuer puren Hasses. "Du Narr! Du wagst es, eine Tochter Asaharms anzugreifen! Du bist ein Hund...", ihre Augen verengen sich, "...und wie ein Hund sollst du sterben!" Dann sieht sie dich kalt an und nimmt einen Schluck aus ihrem Weinbecher.~ */
  IF ~~ THEN REPLY #56838 /* ~"Was...?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~Hör nicht auf sie. Zieh es durch.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~Du fällst zu Boden und heulst vor Schmerz... Deine Eingeweide scheinen zu brodeln, und bald speist du große Tropfen dampfenden, schwarzen Blutes aus. Schließlich sackst du zitternd auf der Straße zusammen und hauchst den letzten Lebensatem aus...~ */
  IF ~~ THEN REPLY #56841 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END
