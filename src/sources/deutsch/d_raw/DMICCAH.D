// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~Diese rundliche Frau mit dem zänkischen Blick ruft mit nasaler Stimme: "Was haben wir denn da Schönes? Einen Kunden? Sehe ich da etwa einen Kunden?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"Der Tote ist wieder da. Brokah! Der Tote ist wieder da!"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~Seine Partnerin, eine winzige Frau mit einer umso lauteren Stimme, wirft dir einen kurzen Blick zu. "Es ist ein Kunde, Tölpel. Wie ich dir schon seit Jahren prophezeit habe! Ich hab dir gesagt, daß irgendwann Kunden kommen werden, aber du wolltest mir ja nie glauben. Und jetzt ist einer da! Bist du bereit für... für... diese... halbe Leiche?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"Glaubst du etwa, ich hätte keine Augen im Kopf? Natürlich seh ich ihn. Fall mir nicht auf die Nerven, du schrumpeliger alter Knacker!" Sie wendet sich dir zu und sagt im freundlichsten Ton. "Was kann die alte Miccah für Euch tun?"~ */
  IF ~~ THEN REPLY #45926 /* ~"Reden wir über Geschäfte."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"Kannst du mir was über dieses Gebiet erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"Kannst du mir was über dich erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"Wer ist das?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"Was kannst du mir über die Bünde erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"Sag ich doch!" Dann senkt sie ihre Stimme und wendet sich dir zu. "Was können wir für Euch tun?"~ */
  IF ~~ THEN REPLY #45934 /* ~"Reden wir über Geschäfte."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"Kannst du mir was über dieses Gebiet erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"Kannst du mir was über dich erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"Wer ist das?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"Was kannst du mir über die Bünde erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~"Mein Mann wird dir sicher gerne was über die Städtische Festhalle und das Bordell erzählen...". Sie rümpft die Nase. "Ich steh' ja eher auf..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"Über mich? Ich bin hier an dieses Leihhaus gekettet, und an diesen Mann, der nicht mal weiß, was er an mir hat..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"Der da? Das ist Brokah. Ich bin seit mehr als zwanzig Jahren mit ihm verheiratet, obwohl es bei seinem sprunghaften Wesen erstaunlich ist, daß er noch nicht abgehauen ist..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"Über die Bünde? Die Bünde? Ha. Die waren doch nur dazu gut, uns mit ihren Steuern an den Rand des Bankrotts und in den Stock zu treiben, was Brokahs Männlichkeit nicht grade gefördert hat..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~Miccah fällt ihm ins Wort: "Ja, ja, immer mußt du das Bordell zuerst erwähnen! Männer! Immer dreht sich alles ums Bordell oder um die Städtische Festhalle - nie um den Markt oder..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"Das tut er doch nur aus Höflichkeit, nicht aus Interesse. Du hast sowieso nichts Brauchbares zu sagen. Du bist der Inhaber eines Leihhauses. Zu mehr hast du's nicht gebracht, weil du nämlich keinen Ehrgeiz hast..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"... das größte Geschenk seines Lebens, nicht wahr? Ich hab ihn nämlich vor seinen Eltern gerettet, die was ganz anderes mit ihm vorhatten. Er hat mir eine rosige Zukunft versprochen, aber du siehst ja selbst, was daraus geworden ist. Könnte man sich glatt dem Fusel ergeben..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"Ich habe Ohren und höre ihn sehr wohl. Brokah hat mit den Bünden nichts am Hut, weil sie nämlich wissen, daß er nicht imstande ist, eine Weile an dieselbe Sache zu glauben."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"Und auch herzlich wenig Urteilsvermögen - denn sonst hätt ich mir nicht meine vielversprechende Zukunft von dir verderben lassen. Jetzt bin ich..."
Die beiden sticheln sich aufs Heftigste.
~ */
  IF ~~ THEN REPLY #45970 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"Dann leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"Ich hatte gehofft, mit der Ehe würde sich das bald legen, aber vergeblich. Ach!"
Die beiden brechen einen weiteren Streit vom Zaun und ignorieren dich völlig.
~ */
  IF ~~ THEN REPLY #45974 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"Dann leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"Den Ziegen auf dem Hof wird deine Zuwendung fehlen..."
Brokah wird rot. Die beiden Streithammel scheinen mal wieder ein neues Thema gefunden zu haben, über das sie sich zanken können. Sie nehmen nur noch sich selbst wahr und beachten dich nicht.
~ */
  IF ~~ THEN REPLY #45979 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"Dann leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~Sie schnaubt vor Wut. Dann läßt sie eine Tirade los, die dir fast das Trommelfell platzen läßt. Brokah schreit bald ebenso laut. Dich beachten sie gar nicht.~ */
  IF ~~ THEN REPLY #45983 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"Dann leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~Die beiden legen sich mächtig ins Zeug. Ihre Worte bringen die Luft im Raum zum Glühen, aber dich beachten sie gar nicht.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"Dann muß ich's wohl später noch einmal versuchen. Lebt wohl."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"Dann muß ich's wohl später noch einmal versuchen. Lebt wohl."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"Dann muß ich's wohl später noch einmal versuchen. Lebt wohl."~ */ EXIT
END
