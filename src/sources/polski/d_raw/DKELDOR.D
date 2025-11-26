// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~Ma beznamiętny wyraz twarzy, ale w jego głosie znać furię. "Zdradziłeś nasze ideały. Nie ma tu dla ciebie miejsca. Straże odprowadzą cię na zewnątrz. Czy odejdziesz w spokoju?"~ */
  IF ~~ THEN REPLY #47129 /* ~"Chcę przeprosić i przyłączyć się do Wyznawców Źródła."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"Odejdę spokojnie."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"Będziesz mnie stąd musiał wywlec."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"Gdy raz odwróciłeś się od naszych ideałów, nie ma powrotu. Jeśli chcesz możesz to traktować jako następny sprawdzian, ale nie otworzymy się na ciebie, ani nie pomożemy ci w poszukiwaniu oświecenia. A teraz... odejdziesz spokojnie, czy chcesz rozlewu krwi?"~ */
  IF ~~ THEN REPLY #47133 /* ~"Odejdę spokojnie."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"Będziesz mnie stąd musiał wywlec."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"Witaj, towarzyszu! Co mogę dziś dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47136 /* ~"Chcę zostać uleczony, jeśli można."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"Muszę kupić parę rzeczy."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"Szukam miejsca, gdzie mogę odpocząć."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"Chcę obejrzeć tajemny projekt, jeśli można."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"Zgubiłem żeton, który pozwalał ujrzeć tajemny projekt."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"Bedai-Lin poprosiła mnie, bym sabotował to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"Bedai-Lin poprosiła mnie bym sabotował to urządzenie. Odmówiłem jej, ale pomyślałem, że powinienem ci o tym powiedzieć."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"Bedai-Lin poprosiła mnie bym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"Bedai-Lin poprosiła mnie bym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"To Bedai-Lin zabiła Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"To Bedai-Lin zabiła Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"Mam dla ciebie wiadomość od Giltspura, licytatora."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"Udowodniłeś, że jesteś godzien zaufania. Masz. Weź to." Wciska ci w dłoń żeton z wytłoczonym symbolem Bogowców. "Nie zgub go. Jeśli go stracisz, nie będę mógł go wymienić, więc bądź ostrożny. Co jeszcze mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47153 /* ~"Tak, mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"Żałuję, że nie mogę dać ci drugiego. Nie ostrzegałem cię, że nie będę mógł go wymienić?" Wzdycha. "Co jeszcze mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47156 /* ~"Odpowiedz mi jeszcze na parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~Jego jowialna twarz staje się zacięta i surowa. "Naprawdę? A więc zatrzymamy ją i dowiemy się prawdy. A jeśli to prawda... stracimy ją. Przepraszam. Muszę w czymś uczestniczyć."~ */
  IF ~~ THEN REPLY #47159 /* ~"Nie spiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~Kiedy powraca, jego twarz jest stężała. "Dzięki twej informacji zatrzymaliśmy groźnego przestępcę. Osiągnęliśmy przewagę nad Harmonium i Łaskobójcami i staliśmy się twymi dłużnikami. Przyjmij nasze podziękowania, a prywatnie ode mnie wyrazy wdzięczności, że okazało się, iż słusznie wierzyłem, że jesteś wspaniałym kandydatem na Bogowca."~ */
  IF ~~ THEN REPLY #47161 /* ~"Nie ma sprawy. Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~Jego jowialna twarz staje się zacięta i surowa. "Naprawdę? A więc zatrzymamy ją i dowiemy się prawdy. A jeśli to prawda... stracimy ją. Przepraszam. Muszę w czymś uczestniczyć."~ */
  IF ~~ THEN REPLY #47164 /* ~"Nie spiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~Kiedy powraca, jego twarz jest stężała. "Odeszła. Nikt nie widział jak się wymknęła i nikt nie wie dokąd poszła. Ale i tak dziękuję, że uświadomiłeś nam jej zdradę. Bądź pewien, że jeśli gdzieś się tu pokaże, będzie zgubiona. Masz moje słowo."~ */
  IF ~~ THEN REPLY #47166 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"Jeśli ją spotkam, upewnię się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"Więcej pytań? Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47169 /* ~"Chcę zostać wyleczony, jeśli można."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"Muszę kupić parę rzeczy."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"Szukam miejsca, gdzie można odpocząć."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"Chcę obejrzeć tajemny projekt, jeśli można."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"Zgubiłem żeton, który pozwalał ujrzeć tajemny projekt."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"Bedai-Lin poprosiła mnie, żebym sabotował to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"Bedai-Lin poprosiła mnie bym sabotował to urządzenie. Odmówiłem jej, ale pomyślałem, że powinienem ci o tym powiedzieć."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"Bedai-Lin poprosiła mnie, żebym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"Bedai-Lin poprosiła mnie, żebym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"To Bedai-Lin zamordowała Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"To Bedai-Lin zamordowała Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"Mam dla ciebie wiadomość od Giltspura, licytatora."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"Czy przyjmiesz przysięgę Bogowców i przyłączysz się do nas?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"Tak."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"Tak."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"Tak."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"Tak."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"Tak."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"Jeszcze nie. Najpierw odpowiedz na kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~Oto przysięga: "Zawirowania życia są próbą. Wszystko czego doznaję jest lekcją. Ból prowadzi do jej lepszego zrozumienia. To czego najbardziej nienawidzę w innych, jest odbiciem tego, czego najbardziej nienawidzę w sobie. Będę starał się pobudzić mój potencjał i pomagać innym osiągać ich cele. Będę pamiętał, że iskra boskości obecna jest we wszystkim. Przysięgam lojalność Wyznawcom Źródła i ich celom; nigdy ich nie porzucę." Wygłaszasz przysięgę, a Keldor uśmiecha się. "Witaj w szeregach Bogowców, młodzieńcze. Czy chcesz jeszcze czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #47188 /* ~"Mam kilka pytań..."~ */ JOURNAL #46638 /* ~Dołączyłem do Wyznawców Źródła i oficjalnie zostałem Bogowcem. Tak brzmiała moja przysięga: "Zawirowania życia są próbą. Wszystko czego doznaję jest lekcją. Ból prowadzi do jej lepszego zrozumienia. To czego najbardziej nienawidzę w innych, jest odbiciem tego, czego najbardziej nienawidzę w sobie. Będę starał się pobudzić mój potencjał i pomagać innym osiągać ich cele. Będę pamiętał, że iskra boskości obecna jest we wszystkim. Przysięgam lojalność Wierzącym w Źródło i ich celom; nigdy ich nie porzucę."~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"Nie teraz. Żegnaj."~ */ JOURNAL #46638 /* ~Dołączyłem do Wyznawców Źródła i oficjalnie zostałem Bogowcem. Tak brzmiała moja przysięga: "Zawirowania życia są próbą. Wszystko czego doznaję jest lekcją. Ból prowadzi do jej lepszego zrozumienia. To czego najbardziej nienawidzę w innych, jest odbiciem tego, czego najbardziej nienawidzę w sobie. Będę starał się pobudzić mój potencjał i pomagać innym osiągać ich cele. Będę pamiętał, że iskra boskości obecna jest we wszystkim. Przysięgam lojalność Wierzącym w Źródło i ich celom; nigdy ich nie porzucę."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #47191 /* ~"Kim jesteś?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"Opowiedz mi o tym miejscu?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"Jakie są korzyści z wstąpienia do Bogowców?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"Opowiedz mi jeszcze o twojej frakcji."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"Opowiedz mi o swojej frakcji."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"Chcę się przyłączyć do Bogowców."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"Chcę się przyłączyć do Bogowców."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"Chcę się przyłączyć do Bogowców."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"Chcę się przyłączyć do Bogowców."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"Mam kilka pytań na temat kuźni."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"Chcę porozmawiać o śledztwie."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"Chcę porozmawiać o Sandozie."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"Chcę złożyć przysięgę Bogowców."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"Chcę zobaczyć tajemny projekt, jeśli można."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"Zgubiłem żeton, który pozwalał wejść do komnaty, w której jest tajemny projekt."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"Bedai-Lin poprosiła mnie bym sabotował to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"To Bedai-Lin zniszczyła to urządzenie."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"Bedai-Lin poprosiła mnie bym sabotował to urządzenie. Odmówiłem jej, ale pomyślałem, że powinienem ci o tym powiedzieć."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"Bedai-Lin poprosiła mnie, żebym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"Bedai-Lin poprosiła mnie, żebym zabił Sandoza. Pomyślałem, że powinieneś to wiedzieć."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"To Bedai-Lin zabiła Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"To Bedai-Lin zabiła Sandoza."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Wydałem Keldorowi Bedai-Lin, donosząc o jej anarchistycznych ciągotkach i usiłowaniach uszkodzenia robót w Kuźni. Informacje te bardzo go zainteresowały.~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"Mam dla ciebie wiadomość od licytatora Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~Uśmiecha się. "Przyjacielu, nie na to zezwolić, zanim nie udowodnisz, że jesteś przyjacielem Bogowców."~ */
  IF ~~ THEN REPLY #47216 /* ~"Odpowiedz mi jeszcze na parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"Żałuję, ale nie mogę dać ci drugiego." Wzdycha. "Czy jeszcze coś mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47219 /* ~"Odpowiedz jeszcze na parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~Jego jowialna twarz staje się zacięta i surowa. "Naprawdę? A więc zatrzymamy ją i dowiemy się prawdy. A jeśli to prawda... stracimy ją. Przepraszam. Muszę w czymś uczestniczyć."~ */
  IF ~~ THEN REPLY #47222 /* ~"Nie śpiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~Kiedy powraca, jego twarz jest stężała. Dzięki twej informacji zatrzymaliśmy groźnego przestępcę. Osiągnęliśmy przewagę nad Harmonium i Łaskobójcami i staliśmy się twymi dłużnikami. Przyjmij nasze podziękowania, a prywatnie ode mnie wyrazy wdzięczności, że okazało się, iż słusznie wierzyłem, że jesteś wspaniałym kandydatem na Bogowca."~ */
  IF ~~ THEN REPLY #47224 /* ~"Nie ma sprawy. Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~Jego jowialna twarz staje się zacięta i surowa. "Naprawdę? A więc zatrzymamy ją i dowiemy się prawdy. A jeśli to prawda... stracimy ją. Przepraszam. Muszę w czymś uczestniczyć."~ */
  IF ~~ THEN REPLY #47227 /* ~"Nie śpiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~Kiedy powraca, jego twarz jest stężała. "Odeszła. Nikt nie widział jak się wymknęła i nikt nie wie dokąd poszła. Ale i tak dziękuję, że uświadomiłeś nam jej zdradę. Bądź pewien, że jeśli gdzieś się tu pokaże, będzie zgubiona. Masz moje słowo."~ */
  IF ~~ THEN REPLY #47229 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"Upewnię się, jeśli ją spotkam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"Oprócz przyłączenia się do tak świetnych ludzi, jacy są wśród nas," uśmiecha się, "będziesz miał prawie nieograniczony dostęp do pewnych innych rzeczy. Chodzi mi o zaklęcia, przedmioty, miejsca wypoczynku. Niektóre z nich są tylko dla członków naszej frakcji. Inne można znaleźć w całym Sigil. Dla naszych członków wszystkie są o wiele tańsze."~ */
  IF ~~ THEN REPLY #47232 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"To jest Wielka Kuźnia, dom Wyznawców Źródła, znanych także jako Bogowcy. Robimy tu przedmioty, które trafiają do wszystkich sfer - w wielu światach cieszymy się znakomitą renomą. Pracują tu tylko najlepsi. Mówi się, że posiadamy narzędzia, które mogą konkurować z tymi z samej Góry Clangeddin. Osobiście, nie uważam, żebyśmy byli aż tak dobrzy... ale JESTEŚMY blisko."~ */
  IF ~~ THEN REPLY #47235 /* ~"Czy możesz mieć dodatkowe zajęcie?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"Opowiedz mi o tutejszych mieszkańcach?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"Rozumiem. Mam kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"Niestety nie możemy, przyjacielu. Jesteśmy związani długoterminowym kontraktem, na który przeznaczamy większość naszych zasobów. Może gdy skończymy... ale to kwestia lat." Wzrusza ramionami. "Przyjmij moje przeprosiny."~ */
  IF ~~ THEN REPLY #47240 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"Jest tu wielu różnych ludzi, większość z nich, to kowale i robotnicy, którzy nakręcają cały interes. Mamy także dwu inżynierów, którzy tworzą niezwykłą rzeczywistość. Zapytaj kiedyś Nila Xandera o jego kreatora snów."~ */
  IF ~~ THEN REPLY #47243 /* ~"Może tak zrobię. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~Szeroko się uśmiecha. "Mój przyjacielu, jestem Keldor z Durian, jeden z faktotumów Bogowców. Jestem zarządcą tytularnym tego miejsca, gdyż nasze prawdziwe władze są na konklawe."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"Opowiedz mi o waszej frakcji."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~Uśmiecha się, aż na twarzy pojawiają mu się zmarszczki. "Co chcesz o nas wiedzieć?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"Jak mogę się do was przyłączyć?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"Jakie są wierzenia tej frakcji?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"Opowiedz mi historię frakcji."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"Co będę mieć z tego, że się do was przyłączę?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"Kto jest wrogiem frakcji?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"Czym się zajmujecie?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"Dlaczego tak się nazywacie?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"Teraz nic. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"Chętnie. Co chcesz wiedzieć?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"Jak mogę się do was przyłączyć?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"Jakie są wierzenia tej frakcji?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"Opowiedz mi historię frakcji."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"Co będę mieć z tego, że się do was przyłączę?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"Kto jest wrogiem frakcji?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"Czym się zajmujecie?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"Dlaczego tak się nazywacie?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"Teraz nic. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"Jeśli chcesz przyłączyć się do Wyznawców Źródła, musisz wypełnić trzy misje. Pierwsza jest taka: Musisz iść do kuźni i stworzyć jakiś przedmiot. W ten sposób udowodnisz, że potrafisz ujrzeć potencjalne możliwości nawet w prostej bryle metalu; że jesteś w stanie stworzyć coś, co przetrwa próbę czasu. To sprawdzian twej wizji i zdolności wprowadzania jej w życie. Pogadaj z Alissą, Nadzorcą Kuźni, żeby dowiedzieć się, o co w tym wszystkim chodzi."~ */
  IF ~~ THEN REPLY #47276 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Aby zostać Bogowcem, mam znaleźć znaleźć jakiegoś kowala w Wielkiej Kuźni. Powie mi on jak kuć żelazo, abym mógł wykonać jakiś przedmiot. Mam to zrobić, aby dowieść, że widzę potencjał nawet w zimnej bryle kamienia. Nie powinno być to trudne. Mam wrócić jak skończę.~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"Tak zrobię. Żegnaj."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Aby zostać Bogowcem, mam znaleźć znaleźć jakiegoś kowala w Wielkiej Kuźni. Powie mi on jak kuć żelazo, abym mógł wykonać jakiś przedmiot. Mam to zrobić, aby dowieść, że widzę potencjał nawet w zimnej bryle kamienia. Nie powinno być to trudne. Mam wrócić jak skończę.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~Na jego twarzy pojawia się przebiegły uśmiech. "Cóż, najpierw musisz zrzec się członkostwa u Grabarzy."~ */
  IF ~~ THEN REPLY #47279 /* ~"Dobrze. Zrzeknę się ich. Co muszę zrobić?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"Nie jestem pewien, czy jestem na to gotów. Odpowiedz mi jeszcze na parę pytań dotyczących twojej frakcji, dobrze?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"Jeszcze nie. Mam jeszcze inne pytania, nie o waszej frakcji."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"Dzięki, jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~Na jego twarzy pojawia się przebiegły uśmiech. "Cóż, najpierw musisz zrzec się członkostwa u Czuciowców."~ */
  IF ~~ THEN REPLY #47284 /* ~"Bardzo dobrze. Wyrzeknę się ich. Co mam zrobić?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"Nie jestem pewien, czy jestem na to gotów. Odpowiedz mi jeszcze na parę pytań dotyczących twojej frakcji, dobrze?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"Jeszcze nie. Mam jeszcze inne pytania, nie o waszej frakcji."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"Jeszcze nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~Na jego twarzy pojawia się przebiegły uśmiech. "Cóż, najpierw musisz zrzec się członkostwa u Kaosytów."~ */
  IF ~~ THEN REPLY #47289 /* ~"Bardzo dobrze. Wyrzeknę się ich. Co mam zrobić?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"Nie jestem pewien, czy jestem na to gotów. Odpowiedz mi jeszcze na parę pytań dotyczących twojej frakcji, dobrze?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"Jeszcze nie. Mam jeszcze inne pytania, nie o waszej frakcji."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"Jeszcze nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"Którykolwiek z kowali powinien być w stanie ci pomóc."~ */
  IF ~~ THEN REPLY #47294 /* ~"Bardzo dobrze. Mam jeszcze dodatkowe pytania."~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"Wierzymy, że wszechświat istnieje po to, byśmy mogli zostać poddani sprawdzianom, że jest miejscem, w którym poprzez próby udowadniamy naszą wartość. Trwają one całe życie, całe inkarnacje. Każdy krok, każdego dnia może być początkiem próby, a nagroda jaką otrzymasz w przyszłym życiu zależy od tego, czego nauczyłeś się w tym. Wierzymy, że naukę zdobywa się przez doświadczanie... a doświadczanie trwa całe życie i sprawia, że stajesz się czymś więcej, niż tylko pojedynczym istnieniem."~ */
  IF ~~ THEN REPLY #47297 /* ~"Więc jaki jest sens tego wszystkiego?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"Jak dotąd ma to sens. Mów dalej."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"Dobrze... jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"Mam jeszcze inne pytania, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"Powszechnie uważa się, że początek naszemu ruchowi dał Perrine, jeszcze przed Wielkim Przewrotem, gdy liczba frakcji wynosiła piętnaście. Podczas Przewrotu Augy z Fauny nadała naszym wierzeniom ich obecną formę - żyła przez tysiąc inkarnacji i *każdą* pamiętała. Uczyła nas jak traktować intuicję i wprowadziła w nową erę. Tych dwoje to najważniejsze postacie naszej frakcji - mamy o wiele więcej opowieści, ale te tworzą szkielet."~ */
  IF ~~ THEN REPLY #47303 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"Cóż, oprócz wstępu do naszej wspaniałej kuźni, pokój i wyżywienie dla ciebie i twych przyjaciół, specjalne przedmioty i zaklęcia i o wiele bardziej przychylne reakcje ze strony większości ludzi na ulicach. Chyba nie potrzeba lepszej rekomendacji. Oczywiście, jeśli zamierzasz być z nami tylko z powodu tych korzyści, muszę ci to odradzić."~ */
  IF ~~ THEN REPLY #47331 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"Nie mamy wrogów jako takich. Oczywiście, są tacy, którzy sprzeciwiają się naszej wierze, na przykład Loża Ponurych naśmiewa się z poglądu, że ludzie stają się coraz bardziej doskonali. Myślę, że skoro nie wierzą w sens, mogliby równie dobrze skończyć z tym raz na zawsze... tak samo jak Grabarze. Ci myślą, że życie to złudzenie, przygotowanie na Wielką Śmierć, a nasze wierzenia bronią sensu życia. Oni lansują śmierć, my świętujemy życie. Cóż może być bardziej przeciwnego?"~ */
  IF ~~ THEN REPLY #47335 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"Cóż, prowadzimy Wielką Kuźnię. A także Dom Zwiastowania, gdzie szkolimy tych, którzy wydają się być zdolnymi... hultajami, którzy wykazali się pewnymi umiejętnościami, które wyróżniają ich ze zwykłych śmiertelników. Niektórzy mówią, że robimy to, ponieważ chcemy mieć być silni, ale robimy to, dlatego że wierzymy, że jest to część próby. Robimy, co możemy, aby upewnić się, że każdy wypełnia swoje obowiązki - chcemy widzieć jak wieloświat posuwa się do przodu."~ */
  IF ~~ THEN REPLY #47339 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"To dobre pytanie. Nasza prawdziwa nazwa to Wyznawcy Źródła, ponieważ wierzymy, że życie pochodzi z czystego, odwiecznego źródła. Ale ponieważ wierzymy, że każdy ma w sobie potencjał by zostać mocą, naturalne jest, że nasz przydomek to Bogowcy."~ */
  IF ~~ THEN REPLY #47343 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"Nie jesteśmy do końca pewni. W końcu jeszcze nie doszliśmy do końca, prawda? Wszystko co wiemy, to fakt, że żyjemy w poszukiwaniu właściwych odpowiedzi i w końcu osiągamy boskość i przenosimy się dalej. To co tam czeka, pozostaje tajemnicą."~ */
  IF ~~ THEN REPLY #47347 /* ~"Dobrze. Mów dalej."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"A więc. Życie to próba. Podejmujemy ją. Kiedy przechodzimy ją pomyślnie, przechodzimy w nową formę. Może być to sędzia, potwór, lub moc. Jak zawsze, wybory, których dokonujemy w tym życiu, mają znaczenie. To, czy mamy wolną wolę, czy nie, wciąż jest kwestią sporną." Uśmiecha się. "Oczywiście, jestem po stronie tych, którzy wierzą w wolną wolę... niechętnie myślę, że ktoś już za mnie podjął decyzję."~ */
  IF ~~ THEN REPLY #47352 /* ~"Dobrze... Mam jeszcze kilka pytań o waszej frakcji."~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"Mam jeszcze kilka pytań, nie o waszej frakcji..."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"Dzięki, że poświęciłeś mi trochę czasu. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"Chciałeś zapytać o kuźnię? Odpowiem ci najlepiej, jak umiem."~ */
  IF ~~ THEN REPLY #47356 /* ~"Jeszcze raz: z kim powinienem porozmawiać?"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~Pokaż mu, co zrobiłeś: "Oto, co zrobiłem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~Pokaż mu, co zrobiłeś: "Oto, co zrobiłem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~Pokaż mu, co zrobiłeś: "Oto, co zrobiłem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"Właściwie chcę, żebyś odpowiedział na parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~Bierze twoje dzieło i uważnie ogląda. Wydaje się powstrzymywać od użycia mocnych słów. "Przynajmniej próbowałeś, hm? Jesteś gotów na następną próbę? Mam taką nadzieję..."~ */
  IF ~~ THEN REPLY #47363 /* ~"Przypuszczam, że tak..."~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~Bierze twoje dzieło i uważnie ogląda. "Wystarczy. Trochę praktyki i mógłbyś stać się przydatny. Jesteś gotów na następną próbę? Mam taką nadzieję..."~ */
  IF ~~ THEN REPLY #47365 /* ~"Przypuszczam, że tak..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~Bierze twoje dzieło i uważnie ogląda. "Jest to bez wątpienia jedna z najlepszych rzeczy, jaką kiedykolwiek zrobił rekrut. Daleko zajdziesz, przyjacielu. Jesteś gotów na następną próbę? Mam taką nadzieję..."~ */
  IF ~~ THEN REPLY #47367 /* ~"Przypuszczam, że tak..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~Kontynuuje. "W Kuźni znalazł się morderca, więc nie będzie zwykłego testu, a zamiast tego będziesz musiał go odnaleźć. Idź do głównej Kuźni, porozmawiaj z nadzorcą, Alissą Tield. Od tego zaczniesz. Kiedy już skończysz dochodzenie i będziesz w stanie podać imię sprawcy, wróć do mnie."~ */
  IF ~~ THEN REPLY #47369 /* ~"Dobrze. Ale najpierw odpowiedz na kilka pytań..."~ */ JOURNAL #39501 /* ~Wykonałem swe pierwsze zdanie dla Bogowców i teraz podejmę się drugiego - śledztwa w sprawie zabójstwa. Mam porozmawiać z nadzorcą Kuźni i zgłosić się u Keldora, gdy zgromadzę dowody.~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"Jeszcze tu wrócę. Żegnaj."~ */ JOURNAL #39501 /* ~Wykonałem swe pierwsze zdanie dla Bogowców i teraz podejmę się drugiego - śledztwa w sprawie zabójstwa. Mam porozmawiać z nadzorcą Kuźni i zgłosić się u Keldora, gdy zgromadzę dowody.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"Tak? Znalazłeś sprawcę tej ohydnej zbrodni? Masz dowody?"~ */
  IF ~~ THEN REPLY #47372 /* ~"Jeszcze nie. Najpierw odpowiedz na jeszcze kilka pytań..."~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"Tak. Tyldon jest sprawcą. Właściwie nie ma żadnego alibi."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"Tak. Saros jest sprawcą. Widziano go, jak kręcił się w pobliżu Kuźni."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"Tak. Winni są Tyldon, Saros i Bedai-Lin. Żadne z nich nie potrafi wyjaśnić, co robili tej nocy, kiedy popełniono morderstwo."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"Tak. Tyldon jest winny. Saros dał mi szydło, które znalazł w pobliżu ciała. To szydło Tyldona."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"Tak. Saros jest winny. Próbował wrobić Tyldona kradnąc jego szydło. Twierdził, że znalazł je w pobliżu ciała, ale Tyldon temu zaprzecza. Saros to twój sprawca."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"Zrobił to Saros. Jest w zmowie z Anarchistami."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"To Tyldon popełnił tę zbrodnię, ale Saros próbował go w to wrobić - to spisek Anarchistów, a Saros bierze w tym udział. Aresztujcie ich obu."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"To był Tyldon. Miał jakieś kłopoty z Avildonem. Poza tym, próbował wrobić w to Sarosa. Straćcie jego."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"Saros jest Anarchistą, który próbuje zniszczyć Kuźnię. Próbował też wrobić Tyldona."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~Potrząsa głową. "Już przez to przechodziliśmy. Taki dowód nie wystarczy. Musisz wrócić i postarać się o lepszy." Wraca do pracy.~ */
  IF ~~ THEN REPLY #47383 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~Potrząsa głową. "Nigdy bym nie uwierzył, że to Tyldon. Ufam, że śledztwo było dokładne... i ufam też tobie. Pozwól mi zawołać straże."~ */
  IF ~~ THEN REPLY #47385 /* ~"Nie śpiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~Oskarżyłem Tyldona o zabójstwo kowala Avildona. Został aresztowany.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~Wydaje się być zasmucony tą przeprawą. "Zrobione. Dziękuję za rozwiązanie zagadki. Zostało ci tylko jedno zadanie. Sandoz, ojciec Sarossy i Sarosa, jeden z naszych ważniejszych członków, wrócił z wstrząsającej podróży. Zamknął się w komnacie w wieży i grozi, że się zabije. Porozmawiaj z nim. Powstrzymaj go."~ */
  IF ~~ THEN REPLY #47387 /* ~"Już się za to zabieram. Odpowiedz mi tylko na parę pytań..."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Moim ostatnim sprawdzianem przed uzyskaniem członkostwa we frakcji Bogowców ma być odwiedzenia od samobójstwa jednego z członków frakcji. Ma na imię Sandoz, jest ojcem Sarosa i Sarossy.~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"Już się za to zabieram. Żegnaj."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Moim ostatnim sprawdzianem przed uzyskaniem członkostwa we frakcji Bogowców ma być odwiedzenia od samobójstwa jednego z członków frakcji. Ma na imię Sandoz, jest ojcem Sarosa i Sarossy.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~Krztusi się. "Nie mogę uwierzyć, żeby Saros mógł zrobić coś takiego... ale dlaczego Tyldon miałby kłamać? To ponure zadanie, ale skoro tak twierdzisz, tak musi być. Każę go aresztować. Pozwól, że zawołam straże."~ */
  IF ~~ THEN REPLY #47390 /* ~"Nie śpiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~Oskarżyłem Sarosa o zabójstwo kowala Avildona. Został aresztowany.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"Co? Obydwaj? To smutny dzień dla Bogowców, naprawdę smutny... Pozwól mi zawołać straże."~ */
  IF ~~ THEN REPLY #47392 /* ~"Nie śpiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~Oskarżyłem Tyldona i Sarosa o zabójstwo kowala Avildona. Zostali aresztowani.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"Czy udało ci się przekonać go, że warto jest żyć?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"Jeszcze nie. Ale przynajmniej jeszcze żyje. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"Udało mi się. Odzyskał radość życia."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~Powiadomiłem Keldora, że udało mi się ocalić Sandoza. Keldor na wieść o tym niezwykle się uradował.~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"Nie udało mi się. Odebrał sobie życie."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~Powiadomiłem Keldora, że nie udało mi się ocalić Sandoza. Chociaż nie krył rozczarowania, zrozumiał, że wypełnienie tego zadania było niezwykle trudne i powiedział mi, że próba zostanie mi zaliczona, ze względu na sam trud włożony w jej wykonanie.~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"Jeszcze nie ale nad tym pracuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"Udało ci się? Wspaniałe wieści! Gratuluję, przyjacielu! Udowodniłeś, że godzien jesteś wstąpienia w szeregi Bogowców! Czy chcesz teraz złożyć przysięgę, czy może wolisz trochę poczekać?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"Teraz."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"Teraz."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"Teraz."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"Teraz."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"Teraz."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"Zrobię to później. Odpowiedz na kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"Zrobię to później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"Nie udało ci się? To smutna, bardzo smutna wiadomość. Ale próbowałeś, prawda? To ważna rzecz. To, że próbowałeś." Robi wszystko, żeby wyglądać radośnie, ale nie bardzo mu się udaje. "Czy chcesz teraz złożyć przysięgę, czy może wolisz trochę poczekać?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"Teraz."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"Teraz."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"Teraz."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"Teraz."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"Teraz."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"Zrobię to później. Odpowiedz na kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"Zrobię to później. Żegnaj."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~Widzisz silnego mężczyznę, który wygląda, jakby tryskał energią. Ma opaloną, pokrytą zmarszczkami twarz, a w jego czarnej brodzie zaczynają pojawiać się ślady siwizny. "Stój, przybyszu i witam! Co mogę dla ciebie zrobić w tym wspaniałym dniu?"~ */
  IF ~~ THEN REPLY #47407 /* ~"Odpowiedz mi na parę pytań..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"Mam dla ciebie wiadomość od licytatora Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"Teraz nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"Witaj przyjacielu! Co mogę dziś dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47410 /* ~"Może odpowiesz na parę pytań..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"Mam dla ciebie wiadomość od licytatora Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"Wiadomość, co?" Odbiera wiadomość. "Bardzo dobrze. Powiedz mu, że wiadomość została dostarczona. Czy chcesz czegoś jeszcze?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~Ma nachmurzoną minę. "Skoro chcesz wstąpić do Bogowców, najpierw musisz zrzec się członkostwa frakcji, w której jesteś."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~Wyrzeknij się Anarachistów: "Zrzekam się członkostwa w tej frakcji."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"Wyrzekam się Czuciowców."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"Wyrzekam się Grabarzy."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"Wyrzekam się Chaosytów."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~Skłam, byś mógł ich infiltrować dla Anarchistów: "Zrzekam się członkostwa w tej frakcji."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"Nie zrobię tego."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"W takim razie nie mogę pozwolić, byś przystąpił do mej frakcji. Żegnaj." Odwraca się.~ */
  IF ~~ THEN REPLY #66317 /* ~"Żegnaj, więc."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"Dowiesz się, że nie jestem bezbronna, człowieku pokryty bliznami. Ani kroku dalej."~ */
  IF ~~ THEN REPLY #6343 /* ~Zrobione.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"Widać, że to nie miejsce dla ciebie. Odejdź natychmiast, intruzie, albo straże będą czymś gorszym niż zwykła eskorta."~ */
  IF ~~ THEN REPLY #6347 /* ~Odejdź.~ */ EXIT
END
