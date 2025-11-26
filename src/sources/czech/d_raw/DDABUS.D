// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDABUS~

IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1782 /* ~Vidíš vysokého tvora s chumáčem bílých vlasů. Jeho pokožka má nazelenalý nádech a z čela mu vyčnívá pár kozích rohů. Je oblečen v plavých dlouhých šatech a vypadá, jako by se lehce vznášel kousek nad zemí.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #1784 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #1783 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1785 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #6863 /* ~Nechej bytost na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2781 /* ~Stvoření se k tobě otočilo, nad jeho hlavou se objevila série symbolů. Symboly lehce září a jenom... jenom se tak vznášejí.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 52
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #1786 /* ~Tvor se k tobě otočí a nad jeho hlavou se objeví série zvláštních symbolů. Symboly slabě září a... vznášejí se tam.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1787 /* ~Dabus trpělivě čeká, ruce zastrčené v rukávech. Série symbolů se zhmotnila nad jeho hlavou, pak mizí a objevuje se značka otazníku.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6864 /* ~Zkus to a začni konverzaci, uvidíš, jestli budeš moci přeložit, co dabus říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6867 /* ~Zkus to a začni konverzaci, uvidíš, jestli budeš moci přeložit, co dabus říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6869 /* ~Zkus mluvit s dabusem. Uvidíš, jestli mu budeš rozumět.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6870 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6871 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6872 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6873 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6874 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6875 /* ~"Annah, mohla bys přeložit co mi říká?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6876 /* ~"Dak'kone, mohl bys přeložit co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6877 /* ~"Fall-from-Grace, mohla bys přeložit co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6878 /* ~"Je mi líto, nerozumím ti."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6879 /* ~"Uh... sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 22.0 22.1
  SAY #6730 /* ~Položil jsi dabusovi několik otázek a zkoušíš porozumět hádankám, které se objevují nad jeho hlavou. Během vaší 'diskuse' je velmi trpělivý, zadává ti jednoduché věty na překlad. Za několik minut ti to začíná jít... připadá ti, jako bys to už někdy předtím dělal.~ */
  IF ~~ THEN REPLY #6880 /* ~"Možná mi můžeš pomoci..."~ */ GOTO 8
  IF ~~ THEN REPLY #6881 /* ~"Jenom jsem se chtěl zdokonalit v rébusech. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 22.2
  SAY #6731 /* ~Položil jsi dabusovi několik otázek a zkoušíš porozumět hádankám, které se objevují nad jeho hlavou. Třebaže je během vaší 'diskuse' velmi trpělivý, nezdá se ti, že bys byl schopen je přeložit. Nakonec dabus zastavil poletující symboly a čeká.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6882 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6883 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6884 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6885 /* ~"Morte, mohl bys přeložit co mi říká?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6886 /* ~"Annah, mohla bys přeložit co mi říká?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6887 /* ~"Dak'kone, mohl bys přeložit co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6888 /* ~"Zavržená, mohla bys přeložit co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6889 /* ~"Je mi líto, Nerozumím ti."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6890 /* ~"Uh... sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.12 4.1 5.8 8.6 9.1 10.1 10.2 11.1 12.1 12.2 19.3 22.12
  SAY #6732 /* ~Dabus se lehce uklonil. Symboly zavířily kolem jeho hlavy a pak se otočil.~ */
  IF ~~ THEN REPLY #6891 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.11 5.7 22.4
  SAY #6733 /* ~Série symbolů se objevila nad hlavou dabuse. Pak se uklonil a otočil se.~ */
  IF ~~ THEN REPLY #6892 /* ~"Uh... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.0 9.0 10.0 11.0 12.0 19.2 22.3
  SAY #6734 /* ~Dabus čeká.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6893 /* ~"Kdo jsi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6894 /* ~"Co to děláš?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6895 /* ~"Kdo jsi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6896 /* ~"Co to děláš?"~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #6897 /* ~"Můžeš mi vyprávět o Paní Bolesti?"~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #6898 /* ~"Můžeš mi vyprávět o Fellovi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #6899 /* ~"Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6735 /* ~Dabus lehce naklonil hlavu a nad jeho hlavou se objevil proud symbolů. Domníváš se, že říká, že je dabus.~ */
  IF ~~ THEN REPLY #6902 /* ~"Mám na tebe další otázku."~ */ GOTO 8
  IF ~~ THEN REPLY #6903 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #6736 /* ~Nad dabusovou hlavou se objevila hromada symbolů. Myslíš, že říká, že vykonává svou povinnost... nebo povinnosti. ~ */
  IF ~~ THEN REPLY #6904 /* ~"Mám na tebe další otázku..."~ */ GOTO 8
  IF ~~ THEN REPLY #6905 /* ~"Velmi popisné. Děkuji. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6906 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #6737 /* ~Dabus lehce naklonil hlavu a nad jeho hlavou se objevil proud symbolů. (Já jsem dabus.)~ */
  IF ~~ THEN REPLY #6900 /* ~"Mám na tebe další otázku."~ */ GOTO 8
  IF ~~ THEN REPLY #6901 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #6738 /* ~Nad dabusovou hlavou se objevila spousta symbolů. (Vykonávám své povinnosti.)~ */
  IF ~~ THEN REPLY #6907 /* ~"Mám na tebe další otázku..."~ */ GOTO 8
  IF ~~ THEN REPLY #6908 /* ~"Velmi popisné. Děkuji. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6909 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #6739 /* ~Dabus lehce naklonil hlavu a nad jeho hlavou se objevil proud symbolů. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6910 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6911 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6912 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6913 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6740 /* ~Nad dabusovou hlavou se objevila hromada symbolů. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6914 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6915 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6916 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY #6741 /* ~Dabus lehce naklonil hlavu a nad jeho hlavou se objevil proud symbolů. Domníváš se, že říká, že je dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6917 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6918 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6919 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6920 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #6742 /* ~Nad dabusovou hlavou se objevila hromada symbolů. Myslíš, že říká, že koná svou povinnost... nebo povinnosti. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6921 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6922 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6923 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY #6743 /* ~Dabus lehce naklonil hlavu a nad jeho hlavou se objevil proud symbolů. (Já jsem dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6924 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6925 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6926 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6927 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY #6744 /* ~Nad dabusovou hlavou se objevila hromada symbolů. (Vykonávám své povinnosti.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6928 /* ~"Co říká, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6929 /* ~"Co říká, Dak'kone?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6930 /* ~"Co říká, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY #6745 /* ~Nad dabusovou hlavou se objevil osamělý symbol. Ukazuje kovovou ženskou masku, s čepelemi po stranách. Pohled na strašidelný obrázek je ti nepříjemný.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6931 /* ~"Uh... to není zrovna odpověď, kterou jsem očekával."~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 4
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6932 /* ~"Uh... chápu. Dak'kone, mohl bys položit další otázku?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 1
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6933 /* ~"Uh... Mám pro tebe jinou otázku..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~~ THEN REPLY #6934 /* ~"Uh... to je vše co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY #6746 /* ~U dabusovy hlavy se objevil osamělý symbol. Je to bílý ovál rozdělený černým bleskem. Dabus nechal symbol několik minut se vznášet, pak se otočil a ignoruje tě.~ */
  IF ~~ THEN REPLY #6935 /* ~"Uh... pak tedy sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #6747 /* ~Vidíš dabuse. Je oblečen do dlouhé splývavé róby a vznáší se kousek nad zemí.~ */
  IF ~~ THEN REPLY #6936 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~~ THEN REPLY #6938 /* ~Nechej dabuse na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.1 21.0
  SAY #6748 /* ~Otočil se tváří k tobě a nad jeho hlavou se objevila série symbolů. Symboly se nepatrně chvějí a jen se tak... vznášejí.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6939 /* ~Zkus to a začni konverzaci, uvidíš, jestli budeš moci přeložit, co dabus říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6940 /* ~Zkus to a začni konverzaci, uvidíš, jestli budeš moci přeložit, co dabus říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6941 /* ~Zkus a mluv na něj, uvidíme jestli tomu budeš rozumět.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6942 /* ~"Měl bych na vás nějaké otázky..."~ */ GOTO 8
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6943 /* ~"Je mi líto... nerozumím vám."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6944 /* ~"Morte, mohl bys přeložit, co mi říká?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6945 /* ~"Morte, mohl bys přeložit, co mi říká?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6946 /* ~"Morte, mohl bys přeložit, co mi říká?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6947 /* ~"Morte, mohl bys přeložit, co mi říká?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6948 /* ~"Annah, mohla bys mi přeložit, co mi říká?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6949 /* ~"Dak'kone, mohl bys překládat co říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6950 /* ~"Fall-from-Grace, mohla bys přeložit, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6951 /* ~"Nevadí. Omlouvám se, že jsem tě vyrušoval. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END
