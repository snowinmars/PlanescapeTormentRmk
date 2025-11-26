// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~Widzisz chudego człowieka w poplamionym ubraniu. Ma haczykowaty nos, a z czoła sterczą mu dwa krótkie różki. Zatacza się i mamrocze do siebie... śmierdzi solną zalewą, wymiocinami i tanim winem.~ */
  IF ~~ THEN REPLY #21488 /* ~"Witaj."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"Jesteś Jhelai? Jeśli tak, to jesteś potrzebny Kradokowi, na rynku."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~Przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"Eee?" Gapi się zaczerwienionymi oczami. "Czczego? Tso?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"Jesteś Jhelai? Jeśli tak, to jesteś potrzebny Kradokowi, na rynku."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"Nieważne. Przepraszam, że zawracam ci głowę."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"Krad-okowi?" Jego oczy rozszerzają się. "Ach, Kradok, mój hłojny szeff... cóż, możesz mu tak powiedzieć: 'SKURL się... i że jezd plugawym psem, najgorszego sortu kundlem, a Jhelai JUŻ dla niego nie pracuje!" Dźga cię palcem. "Tak mu powiedz!"~ */
  IF ~~ THEN REPLY #22659 /* ~"Powiem mu... z pewnej odległości. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"Uch... powiem mu... Żegnaj, Jhelai."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~Widzisz Jhelaia. Wciąż się zatacza i mamrocze do siebie... śmierdzi solną zalewą, wymiocinami i tanim winem.~ */
  IF ~~ THEN REPLY #22662 /* ~Zostaw go.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~Widzisz Jhelaia. Wygląda, że wytrzeźwiał od ostatniego razu.~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"Jhelai... posłuchaj. Lepiej uważaj. Kradok jest zły i zagroził, że jeśli jeszcze raz cię zobaczy, zabije cię."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~Wróciłem i ostrzegłem Jhelaia przed Kradokiem; mogłem zrobić przynajmniej tyle. Jhelaiowi było chyba głupio, że w ogóle coś powiedział, ale podziękował mi za ostrzeżenie. Biedny skurl.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"Jhelai... posłuchaj. Powiedziałem Kradokowi, że cię zastąpię... wciąż masz pracę, ale uważaj na siebie."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~Wróciłem i powiedziałem Jhelaiowi, że zastąpiłem go i że cały czas ma tę pracę. Było mu chyba głupio, że w ogóle coś powiedział, ale podziękował mi za uratowanie mu posady.~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~Przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~Jhelai chrząka. "Ależ byłem głupi... Wyskoczyłem tylko napić się bełta, a zaraz potem..." Zgrzyta zębami. "Dzięki za ostrzeżenia..."~ */
  IF ~~ THEN REPLY #22666 /* ~"Uważaj na siebie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~Jhelai chrząka. "Ależ byłem głupi... Wyskoczyłem tylko napić się bełta, a zaraz potem..." Zgrzyta zębami. "Dzięki za dobre słowo... doceniam to, naprawdę."~ */
  IF ~~ THEN REPLY #22670 /* ~"Następnym razem uważaj lepiej. Żegnaj."~ */ EXIT
END
