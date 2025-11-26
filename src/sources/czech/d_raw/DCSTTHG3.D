// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~Vidíš drsně vypadajícího muže s větrem ošlehanou pokožkou. Vypadá docela mrzutě, tvého příchodu si nevšiml.~ */
  IF ~~ THEN REPLY #9853 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~Při zvuku tvého hlasu poskočil a rychle se k tobě obrátil. Jeho tvář zrudla, dech se mu zrychlil.~ */
  IF ~~ THEN REPLY #9861 /* ~"Omlouvám se, že jsem tě překvapil. Chtěl jsem se tě zeptat na pár věcí."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"Jsme trochu nervózní, co?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"Promiň, že jsem tě obtěžoval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~Zlostně se zamračil a odněkud vytáhl dýku. "Vodpal, vole! Jdi pryč, nebo tě strčím do knihy zdechlin!"~ */
  IF ~~ THEN REPLY #9865 /* ~"Uklidni se. Jenom se tě potřebuju na něco zeptat."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"Odlož to, nebo ti to vezmu a zabiju tě s tím."~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"Jak si přeješ. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~Postavil se do obraného postoje a ohrožuje tě svou čepelí. "Nemám žádný vodpovědi. Nemám ti co říct. Akorát vypadni!"~ */
  IF ~~ THEN REPLY #9873 /* ~"Odlož to, nebo ti to vezmu a zabiju tě s tím."~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"Velmi dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~Směje se na tebe a ukazuje dýkou. "Tak pojď. Rozpářu tě a budu se smát celou dobu, kdy budeš umírat, parchante!"~ */
  IF ~~ THEN REPLY #9876 /* ~Zaútoč na něj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~Máš pocit, že neví, co ti říct. Tvá poznámka ho asi překvapila. "Já, uh... myslel jsem na něco jinýho, kámo. Co chceš?" Pozorně tě sleduje.~ */
  IF ~~ THEN REPLY #9883 /* ~"Jenom odpověď na pár otázek. Dobře?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"Vlastně nic.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~Chvíli na tebe zírá, pak přejel pohledem okolí. "Jedna otázka a pak odejdeš. Nemám čas ani chuť na hraní Risku."~ */
  IF ~~ THEN REPLY #9886 /* ~"Hledám devu. Pokud vím, měl by být v Curstu."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"Kdo je tady šéf?"~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"Co se děje v okolí poslední dobou?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"Co děláš?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"Kdybys potřeboval spolehlivé odpovědi na pár otázek, kam bys šel?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"To nic. Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~Zmateně se na tebe podíval. "Jo, jistě. Jeden z těch svatej blbečků pobíhá po ulicích. Seš bláznivej, kámo. Dal jsem ti tvoji odpověď, tak teď zmiz." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #9893 /* ~Odejdi~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"Tovus Giljaf. Je v administrativním úřadě na náměstí. Dal jsem ti tvoji odpověď, tak teď zmiz." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #9895 /* ~Odejdi~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~Chvíli přemýšlí. "Nevím... neposlouchám drby. Zajdi si ke Zrádcově bráně. To je místní díra tamdle tím směrem." Mávl rukou. "Dal jsem ti tvoji odpověď, tak teď zmiz." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #9897 /* ~Odejdi~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~Směje se ti. "To není nic, co bys potřeboval vědět, vole. Dal jsem ti tvoji odpověď, tak teď zmiz." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #9899 /* ~Odejdi~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~Zasmál se a usmívá se na tebe. "To je dobrá otázka. Seš docela chytrej." Odmlčel se a přemýšlí. Pozorně si tě prohlíží. "Kdybych byl na tvým místě, promluvil bych si s Shar. Pobíhá tady po ulicích, neměl bys ji přehlédnout. Pokud na ni budeš hodnej, píchne ti. Dal jsem ti tvoji odpověď, tak teď zmiz." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #9901 /* ~Odejdi~ */ DO ~EscapeArea()
~ EXIT
END
