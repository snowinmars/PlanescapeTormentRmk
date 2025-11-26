// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"Aha, du bist also der, wegen dem sie alle soviel Wind machen? Kann ich ihnen nicht verübeln... Du siehst recht gefährlich aus. Mach schon, verschwinde von hier."~ */
  IF ~~ THEN REPLY #5910 /* ~Töte den alten Mann.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Verschwinde.
~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"Ich würde dir gerne helfen, mein Sohn, aber dann würde ich mir mehr Ärger einhandeln, als es wert ist. Verschwinde und komm wieder, wenn die Wachen dir nicht so dicht auf den Fersen sind."~ */
  IF ~~ THEN REPLY #5913 /* ~Verschwinde.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~Du siehst einen weisen, alten Mann mit zitternden Händen und einem verschmitzten Gesicht. Er mustert dich sorgfältig und sagt: "Verd... äh... hab' ich dich schon mal gesehn? Du kommst mir irgendwie bekannt vor."~ */
  IF ~~ THEN REPLY #5915 /* ~"Kann schon sein."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"Unmöglich, alter Mann."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"Woher? Erinnerst du dich nicht daran, wo?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"Ich soll hier etwas abholen."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"Ich bräuchte ein paar Lumpen und Schmiedewerkzeug."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"Ich suche eine Verkleidung."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"Wer bist du?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"Ich wollte ein bißchen Werkzeug für die Schmiede abholen."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"Interessant. Lebe wohl, alter Mann."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"Hast du noch etwas auf dem Herzen?"~ */
  IF ~~ THEN REPLY #5925 /* ~Du sagtest, du hättest mich schon mal irgendwo gesehen. Weißt du noch, wo?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"Nein, ich wollte bloß dein nettes Gesicht sehen."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"Ich soll hier etwas abholen."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"Ich bräuchte ein paar Lumpen und Schmiedewerkzeug."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"Ich suche eine Verkleidung."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"Wer bist du?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"Ich wollte ein bißchen Werkzeug für die Schmiede abholen."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"Interessant. Lebe wohl, alter Mann."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"Ich vergesse niemals ein Gesicht... Es fällt mir noch ein... Ach, zu Baator damit."~ */
  IF ~~ THEN REPLY #5934 /* ~"Weißt du noch, wo? Das ist äußerst wichtig für mich."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"Ich soll hier etwas abholen."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"Ich bräuchte ein paar Lumpen und Schmiedewerkzeug."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"Ich suche eine Verkleidung."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"Wer bist du?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"Ich wollte ein bißchen Werkzeug für die Schmiede abholen."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"Dann vergiß es einfach. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"Ich könnte schwören, daß ich dich schon mal gesehen habe. Hattest du nicht mal was auf dem Kerbholz?" Der alte Mann kichert leise vor sich hin. "Ach, vergiß es. Es fällt mir noch ein."~ */
  IF ~~ THEN REPLY #5942 /* ~"Okay. Dann beantworte mir doch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"Ich hoffe nicht. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"Nicht so hastig, mein Freund. Für so eine Aufgabe muß der Geist langsam in Schwung kommen. Ich habe schon allerhand Jahre auf dem Buckel und in dieser Zeit unzählige Gesichter gesehen, und es ist nicht so einfach, sich an jedes zu erinnern. Das Gedächtnis ist vergänglich - darauf kannst du dich verlassen."

Bevor du antwortest, murmelst du: "Was du nicht sagst, 'mein Freund'."
~ */
  IF ~~ THEN REPLY #5945 /* ~"Dann vergiß es einfach. Ich soll hier etwas abholen."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"Also gut. Ich bräuchte ein paar Lumpen und Schmiedewerkzeug."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"Gut. Ich suche eine Verkleidung."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"Vielleicht kannst du mir dann sagen, wer du bist?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"Dann würde ich gerne ein bißchen Werkzeug für die Schmiede abholen."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"Gut. Bis dann, Kumpel."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"Hast du einen Beleg? Ich brauche einen Beleg, oder ich kann dir gar nichts geben."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"Ich hab' hier gleich zwei davon."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"Klar hab' ich einen. Hier, bitte schön."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"Klar hab' ich einen. Hier, bitte schön."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"Ja, hab' ich."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"Klar hab' ich einen. Hier, bitte schön."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"Nein."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"Vergiß es. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"Hast du? Na, in Ordnung. Das macht... alles in allem... sagen wir sechzig Kupfermünzen."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"Hier, bitte sehr."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"Soviel habe ich nicht."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"Vergiß es. Ich hätte noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"Vergiß es. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"Eine Verkleidung, was? Ich kann mir schon denken, für was die gut sein soll, und ich geb sie dir zum Sonderpreis von nur sechzig Kupfermünzen."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"Hier, bitte sehr."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"Soviel habe ich nicht."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"Vergiß es. Ich hätte noch ein paar Fragen."
~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"Vergiß es. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"Ich? Ich bin Nadilin, Göttermensch und Kämpfer der Extraklasse!" Er seufzt. "Zumindest war ich das mal. Jetzt bin ich ein Schreiber in der Gießerei, kann in dieser stickigen Luft kaum atmen und werd mich bis an mein Lebensende hier abschuften."~ */
  IF ~~ THEN REPLY #5971 /* ~"Das ist schade. Ich hätte noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"Okay. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"Aha, du willst also Schmied spielen, mein Freund? Na schön. Du brauchst eine Schürze - zehn Kupfermünzen - eine Schmiedezange - noch mal zehn Kupfermünzen - und einen Hammer - der kostet zwanzig. Das kommt, wollen wir mal sehen, zusammen auf fünfzig Kupferstücke.~ */
  IF ~~ THEN REPLY #5974 /* ~"Hey, das macht vierzig Kupferstücke, alter Mann."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Zahl ihm fünzig Kupferstücke.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Zahl ihm fünzig Kupferstücke.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"Pardon, aber nach meiner Rechnung macht das bloß vierzig Kupferstücke."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"Vergiß es. Ich hätte noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"Ich glaube nicht, daß ich das jetzt brauche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"Alles Gute, mein Sohn. Wenn du mich jetzt bitte entschuldigst, ich muß noch einen Blick aus dem Fenster werfen."~ */
  IF ~~ THEN REPLY #5981 /* ~"Ähh. Okay."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"Ich bin gleich damit zurück", sagt er. Minuten vergehen. Er kommt zurück und präsentiert dir zwei Gegenstände: einen kleinen, fast fragilen Metallgegenstand und einen meisterhaft gefertigten Streitkolben. "Der erste Gegenstand ist über hundert Jahre alt! Darauf hast du sehr lange gewartet, mein Freund. Wie ist das in deinen Besitz gekommen?"~ */
  IF ~~ THEN REPLY #5983 /* ~"Ich hab' es für mich aufgehoben, und dann war ich einfach zu beschäftigt."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"Es wurde mir vermacht."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"Ich habe es geerbt."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~Der alte Mann nimmt deinen Beleg und vergleicht ihn mit seinen Unterlagen. Er schlendert für eine oder zwei Minuten davon und kommt mit einem wundervollen Streitkolben in seinen Händen zurück. "Hier, mein Freund."
~ */
  IF ~~ THEN REPLY #5987 /* ~"Danke. Ich hätte da ein paar Fragen."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"Danke. Bis dann."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~Der alte Mann nimmt deinen Beleg und studiert ihn sorgfältig. "Das Ding ist über hundert Jahre alt! Wie ist das in deinen Besitz gekommen?"~ */
  IF ~~ THEN REPLY #5990 /* ~"Ich hab' es für mich aufgehoben, und dann war ich einfach zu beschäftigt."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"Es wurde mir vermacht."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"Es war in einem Nachlaß."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~Er ist für einen Moment still. "Wenn du einen Beleg hast, dann gib ihn mir. Anderenfalls kann ich dir nichts aushändigen. Jetzt mach schon. Ich hab' auch ohne dieses Theater schon genug um die Ohren."~ */
  IF ~~ THEN REPLY #5993 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"So, hier ist sie. Schmuggel die Schlampe hier raus, damit wir uns mit dieser Verräterin nicht länger herumschlagen müssen."~ */
  IF ~~ THEN REPLY #5995 /* ~Lüge: "Was? Nein, dafür brauch ich's nicht!"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"Vielen Dank, alter Mann. Leb wohl."
~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"Dann kann ich ihn dir eigentlich nicht geben. Tut mir leid."~ */
  IF ~~ THEN REPLY #5999 /* ~"Gut. Dann beantworte mir doch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"Schön. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~Er studiert den Beleg sorgfältig und schaut dann zu dir hoch. "Ist das nicht der gleiche Gegenstand, den ich dir bereits gegeben habe? Ich kann ihn dir nicht zweimal geben." Er steckt den Beleg ein. "Mach schon. Verschwinde!"~ */
  IF ~~ THEN REPLY #6002 /* ~Verschwinde.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"Wo hab' ich bloß meine Sinne? Natürlich. Ich sage dir, das Gedächtnis ist eine heimtückische Sache."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"Das ist es. Gib mir das Zeug."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"Das ist es. Gib mir das Zeug."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"Nun, das ist immer noch zu heftig für mich."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"Vergiß nicht, dir von Thildon etwas Erz zu besorgen, wenn du in der Schmiede arbeiten willst. Er ist ein elender Mistkerl, aber der einzige, von dem man Erz bekommt."~ */
  IF ~~ THEN REPLY #6008 /* ~"Danke. Ich hätte da noch ein paar Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"Danke. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"Wenn du in der Schmiede arbeiten willst, mußt du etwas Erz besorgen. Versuchs mal bei Thildons Stellvertreterin. Ich habe ihren Namen vergessen, aber sie gibt es dir wahrscheinlich ohne große Umstände."~ */
  IF ~~ THEN REPLY #6011 /* ~"Danke, alter Mann. Ich hätte da ein paar Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"Danke, und lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"Das ist ein feines Stück, mein Freund. Ich wette, du warst sehr beschäftigt!" Er lacht in sich hinein. Er reicht dir, was er im Arm hält. "So, hier. Geh damit vorsichtig um, hörst du?"~ */
  IF ~~ THEN REPLY #6014 /* ~"Das werde ich tun. Ich hätte da aber noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"Mit Sicherheit werde ich das. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"Von Generation zu Generation weitergereicht, hä? Du hast Glück, daß wir sie nicht weggeworfen haben... Das machen wir nämlich manchmal oder wir verkaufen das Zeug, von dem wir wissen, daß der Kunde es nicht mehr abholt. So, hier ist sie. Geh damit vorsichtig um, hörst du?"~ */
  IF ~~ THEN REPLY #6017 /* ~"Schon gut. Könntest du mir noch ein paar Fragen beantworten?"~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"Ich verstehe. Du hast wirklich einen Glücksgriff getan. Hier bitte, mein Freund. Geh damit vorsichtig um, hörst du?"~ */
  IF ~~ THEN REPLY #6020 /* ~"Aber klar doch. Könntest du mir vielleicht eine Frage beantworten?"~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"Sicher. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~Er schaut dich entrüstet an. "Mach mal halblang, mein Freund. Du hast deine Sachen bekommen. Jetzt mach, daß du hier rauskommst, oder ich ändere meine Meinung und hole die Wachen."~ */
  IF ~~ THEN REPLY #6023 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"Ich bin vielleicht ein alter Kauz, aber das heißt noch lange nicht, daß ich nicht sehe, was hier vorgeht. Bedai-Lihn war schon eine ganze Weile nicht sehr glücklich, und sie hat nie gern für die Scheusale gearbeitet. Und jetzt geh. Ich hab' noch allerhand zu tun."~ */
  IF ~~ THEN REPLY #6025 /* ~Verschwinde.~ */ EXIT
END
