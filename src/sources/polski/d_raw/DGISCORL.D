// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~Widzisz długachnego kupca, policzki pokrywa mu szaro czerwona szczecina. Ubrany jest w kilka szat o jasnych kolorach, co sprawia, że wygląda jak chorągiew z nogami i rękami. Gdy go obserwujesz, lekko się trzęsie.~ */
  IF ~~ THEN REPLY #20656 /* ~"Witaj."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"Jesteś Giskorl?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Nie zwracaj na niego uwagi, idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"Ja, Giskorl." Kłania się i rozkłada trzęsące się dłonie. Zauważasz, że jego dłonie i przedramiona są pokryte pełną blizn, czarną tkanką... jak gdyby kiedyś zostały okropnie spalone.~ */
  IF ~~ THEN REPLY #21070 /* ~"Uch, co sprzedajesz?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"Uch... co ci się stało w ręce?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"Mam stąd zabrać czyjeś pranie... Mebbet... Znachorka... Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"Przepraszam, że przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Giskorl odwraca się. "Ja, Giskorl." Kłania się i rozkłada trzęsące się, obliźnione dłonie. "Ja, Giskorl."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"Mogę zobaczyć, co masz?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"Uch, czym się zajmujesz?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"Uch... co ci się stało w ręce?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"Mam stąd zabrać czyjeś pranie... Mebbet... Znachorka... Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"Dzisiaj nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"Giskorl kupować tkaniny." Jego głos jest jak tykanie zegara, płaski i odmierzony. "Giskorl sprzedawać tkaniny, czyścić ubrania, naprawiać je i..." Drżącymi dłońmi pokazuje swoje szaty. "...nosić tkaniny."~ */
  IF ~~ THEN REPLY #21079 /* ~"Mogę zobaczyć, co masz?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"Uch... co ci się stało w ręce?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"Rozumiem. Słuchaj, mam stąd zabrać czyjeś pranie... Mebbet... znachorka.. Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~"Dzisiaj nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Wydaje się, że Giskorl cię nie słyszał; wciąż mówi te same, równe, monotonne słowa: "Giskorl kupować tkaniny, sprzedawać ubrania, czyścić ubrania, naprawiać je i..." Drżącymi dłońmi pokazuje swoje szaty. "...nosić tkaniny."~ */
  IF ~~ THEN REPLY #21083 /* ~"Mogę zobaczyć, co masz?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"Spytałem: co ci się stało w ręce?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"Rozumiem. Słuchaj, mam stąd zabrać czyjeś pranie... Mebbet... znachorka... Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"Dzisiaj nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Giskorl załamuje głos. "Giskorl k-kupować tkaniny, s-sprzedawać ubrania, cz-czyścić ubrania, n-naprawiać je i..." Jeszcze raz pokazuje siebie, ale jego dłonie tak bardzo się trzęsą, że nie potrafi nawet dokończyć.~ */
  IF ~~ THEN REPLY #21087 /* ~"Nieważne. Mogę zobaczyć, co masz?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"Uch... nieważne. Słuchaj, mam stąd zabrać czyjeś pranie... Mebbet... znachorka... Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"Przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Giskorl mruga. "Wyczyścić ubranie?"~ */
  IF ~~ THEN REPLY #21090 /* ~"Tak, Mebbet... Plac Szmaciarzy?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"Ech... szmata? Szmaciarzy?" Stuka palcami, jak gdyby coś liczył. "Wiem, pamiętam." Unosi drżący palec, jak gdyby kazał ci czekać.~ */
  IF ~~ THEN REPLY #21091 /* ~Poczekaj aż przyniesie pranie.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~Wraca, przynosząc płaską masę zielonych szmat, cienkich jak papier, ale tak sztywnych, że wyglądają jak gdyby były twardsze niż drewniana płyta. Są tak nakrochmalone, że wydaje się, iż trzeba by je moczyć przez lata, żeby dało się je zmiękczyć.~ */
  IF ~~ THEN REPLY #21092 /* ~"Uch... ile razy je czyściłeś?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"Giskorl czyścić ubrania, krochmalić je co pięć dni, czyścić ubrania, krochmalić je co pięć dni." Jego oczy migoczą. "Giskorl czyścić wiele lat. Zawsze krochmali ubrania co pięć dni. Rytuał."~ */
  IF ~~ THEN REPLY #21093 /* ~"Ale są zniszczone."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"Czyścić ubrania. To rytuał Giskorla." Ma niski głos, niczym zombie. "*Musi* krochmalić co pięć dni."~ */
  IF ~~ THEN REPLY #3014 /* ~"Jaki jest cel robienia tego co pięć dni, skoro nie trzeba... och, nieważne, daj mi je."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"Dać ubranie." Kiwa głową i podaje ci szmaty. Są ciężkie... tak jakbyś trzymał naręcze cegieł.~ */
  IF ~~ THEN REPLY #21095 /* ~"Odniosę je teraz Mebbet. Żegnaj."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~Kończysz przeglądać wybór Giskorla, a on kiwa głową. "Ja, Giskorl."~ */
  IF ~~ THEN REPLY #21097 /* ~"Właściwie chciałbym jeszcze raz zobaczyć co sprzedajesz..."~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"Uch... co ci się stało w ręce?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"Rozumiem. Słuchaj, mam stąd zabrać czyjeś pranie... Mebbet... znachorka... Plac Szmaciarzy?"~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"Dzisiaj już nic. Żegnaj."~ */ EXIT
END
