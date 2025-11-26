// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~Ta mała metalowa zabawka jest kopią stworka w kształcie kostki z ogromnymi oczami na jednej ze ścian. Zabawka ma dwie nogi, dwa składane skrzydła i przynajmniej osiemnaście punktów artykulacyjnych. Może należy do jakiejś kolekcji.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Pokręć zabawką i przyjrzyj się efektom.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Porusz ramionami i naśladuj odgłos walki mieczem.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~Zabawka *klika* i *furkocze* w momencie, gdy przesuwasz jej złącza w kierunku zgodnym z ruchem wskazówek zegara. W ciągu kilku sekund malutka kostka pokonuje każdego wyimaginowanego przeciwnika, którego wysyłasz przeciwko niej, i wraca do swego normalnego położenia.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Pokręć zabawką i przyjrzyj się efektom.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Machaj ramionami zabawki i wiwatuj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Machaj ramionami zabawki i wiwatuj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Machaj ramionami zabawki i wiwatuj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Machaj ramionami zabawki i wiwatuj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Hordy wyimaginowanych stworów wiwatują, ciesząc się ze zwycięstwa kostki. Możesz nawet dostrzec maleńką oleistą łzę na jednym oku... to bohater, największa kostka, jaka kiedykolwiek wędrowała po Sferach. Każdy ją uwielbia.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Pokręć zabawką i przyjrzyj się efektom.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Odłóż kostkę na następne potyczki z wieloświatem.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Odłóż kostkę na następne potyczki z wieloświatem.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Hordy wyimaginowanych stworów z każdego zakątka Sfer wiwatują, ciesząc się ze zwycięstwa kostki. Możesz nawet dostrzec maleńką oleistą łzę na jednym oku... to bohater, największa kostka, jaka kiedykolwiek wędrowała po Sferach. Każdy ją uwielbia. W wyobraźni widzisz już, jak Nie-Sława i Anna przytulają ją i zasypują pocałunkami.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Pokręć zabawką i przyjrzyj się efektom.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Zegnij lewe kolano, aż cała noga utworzy kąt 15 stopni, rozwiń oba skrzydła na maksymalną rozpiętość, a następnie obróć prawe ramię w stawie o 180 stopni.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Wzdychając, odłóż kostkę na przyszłe potyczki z wieloświatem.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Wzdychając, odłóż kostkę na przyszłe potyczki z wieloświatem.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~Słychać *furkot*, potem *klik*, a następnie w twoich rękach rozbłyska oślepiające białe światło...~ */
  IF ~~ THEN REPLY #22847 /* ~"Co...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~Słychać *furkot*, potem *klik*; następnie *klik-klik-klik*, wreszcie cichy *furkot*. Nic się nie dzieje.~ */
  IF ~~ THEN REPLY #22869 /* ~Pociesz się, poruszając ramionami i naśladując odgłos walczących mieczy.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"No cóż, nie podziałało. Odłożę cię i spróbuję później w nowym otoczeniu."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~Zginasz, skręcasz i obracasz różne punkty artykulacyjne zabawki, dostrzegając, że kończyny często nagle wracają do swej wyjściowej pozycji. Wreszcie gdy zginasz jej lewe kolano, zabawka wydaje dziwaczny dźwięk, coś niby trzask, i zaczyna drżeć ci w dłoniach...~ */
  IF ~~ THEN REPLY #42940 /* ~Obróć lewą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Obróć prawą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Rozwiń lewe skrzydło.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Rozwiń prawe skrzydło.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Zegnij prawe kolano.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~Kończyny zabawki nagle wracają do swej wyjściowej pozycji. Towarzyszy temu miękki *klik*.~ */
  IF ~~ THEN REPLY #42952 /* ~Obróć lewą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Obróć prawą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Rozwiń lewe skrzydło.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Rozwiń prawe skrzydło.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Zegnij lewe kolano.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Zegnij prawe kolano.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~Zabawka wydaje dziwaczny dźwięk, coś niby trzask, i zaczyna drżeć ci w dłoniach...~ */
  IF ~~ THEN REPLY #42964 /* ~Obróć lewą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Obróć prawą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Rozwiń lewe skrzydło.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Rozwiń prawe skrzydło.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Zegnij prawe kolano.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~Zabawka wydaje z siebie miękki *furkoczący* dźwięk.~ */
  IF ~~ THEN REPLY #42976 /* ~Obróć lewą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Obróć prawą rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Rozwiń prawe skrzydło.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Zegnij prawe kolano.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~Zabawka wydaje z siebie coś w rodzaju przeciągłego *westchnienia*, nabierając ciepła pod wpływem dotyku.~ */
  IF ~~ THEN REPLY #42987 /* ~Obróć lewą rękę.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Obróć prawą rękę.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Obróć prawą ręką.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Obróć prawą rękę.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Zegnij prawe kolano.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Odłóż kostkę.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~Słychać *furkot*, potem *klik, a następnie w twoich rękach rozbłyska oślepiające białe światło...~ */
  IF ~~ THEN REPLY #42999 /* ~"Co...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
