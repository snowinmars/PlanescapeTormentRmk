// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~Ten potężny opryszek odziany jest w szaty w kolorze czerwonym i czarnym. Wydaje się, że mięśnie to w przytłaczającej większości główny budulec jego zwalistego ciała. Kiedy się doń zbliżasz, posyła ci spojrzenie spode łba.~ */
  IF ~~ THEN REPLY #26004 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~Zostaw zbójcę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"Czegóż ci trzeba, przybyszu?" Surowe rysy twarzy układają się na moment w złośliwy uśmiech "Wygląda na to, że trzeba ci lekarza."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"Tyś jest jednym z tych, którzy obrabowali kapłana w Ulu? Jednym z tych zbójów, którzy zabrali mu naszyjnik modlitewny?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"Zetrzyj ten uśmieszek ze swojej gęby, bo inaczej sam szybko będziesz potrzebował lekarza, gnojku."~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"Przymknij się! Nie czas teraz na pytania i odpowiedzi." Spluwa tuż przed ciebie. "A teraz, SZPICUJ SIĘ, tępy skurlu!"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"Tyś jest jednym z tych, którzy obrabowali kapłana w Ulu? Jednym z tych zbójów, którzy zabrali mu naszyjnik modlitewny?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"Z tego, co widzę to jedyna osoba tutaj, która potrzebuje solidnej szpicy, to ty."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"Zatem mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"Na twoim miejscu, uważałbym, co mówię. Powiesz jeszcze słowo, a popamiętasz, rozumiesz?"~ */
  IF ~~ THEN REPLY #26888 /* ~"Jeżeli wydaje ci się, że możesz mnie pokonać, proszę bardzo."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"Zatem mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"Takiego skurla o pociętej gębie? Marzyło mu się, że nas wsadzi do księgi umarłych. Chyba trzeba mu było pokazać, gdzie biesy zimują, co?" Wargi opryszka wykrzywiają się powoli w pogardliwym uśmiechu. "Nawet nigdy nie słyszałem o takim głąbie, jak mi bogowie mili, nie słyszałem."~ */
  IF ~~ THEN REPLY #26891 /* ~"Może lepiej byłoby, gdybyś oddał mi ten naszyjnik, zanim wsadzę cię do księgi umarłych, co?~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~Kłamstwo: "To interesujące. Wszyscy jego współbracia z zakonu *Errit-Agge* teraz cię poszukują. Jesteś im bardzo dobrze znany."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"Może moglibyśmy się dogadać. Naszyjnik ten jest bezwartościowy dla każdego spoza zakonu okradzionego kapłana. Może mógłbym go od ciebie odkupić."~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"Zatem mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~Mężczyzna marszczy brwi. "Nie, jestem do tego naszyjnika zanadto przywiązany. Nie mogę się z nim ot tak rozstać. Chyba że w zamian za pękaty trzos. Powiedzmy, piętnaście sztuk miedzi?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"Załatwione."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"Piętnaście? A co byś powiedział na dziesięć miedziaków?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~Blef: "Nie, nie warto. Pomogę współbraciom okradzionego kapłana, którzy cię tak usilnie poszukują. Myślę, że członkowie *Erit-Agge* poznaliby cię z wielką przyjemnością. Inna sprawa, że przebieg takowej schadzki mógłby ci zdecydowanie nie przypaść do gustu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"Nie mogę sprostać twoim wymaganiom cenowym. Może następnym razem."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"Dobrze zatem. Umowa stoi. Bierz, coś chciał..."~ */
  IF ~~ THEN REPLY #26902 /* ~"Dzięki."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"Ech, no dobrze. To i tak brzydka rzecz. Bierz, coś chciał..."~ */
  IF ~~ THEN REPLY #26904 /* ~"Dzięki."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"Ech?" Szyderczy uśmiech znika momentalnie z jego twarzy. "O czym prawisz? Czyi bracia? Skurl był sam, sam jak palec."~ */
  IF ~~ THEN REPLY #26906 /* ~Kłamstwo: "Okradziony kapłan to członek religijnego zakonu, głupcze. Ten 'naszyjnik', który mu skradłeś, jest dla nich reliktem otaczanym największa czcią. Jeżeli ta rzecz nie powróci na swoje miejsce, przeciwko tobie ruszy cały zakon... a nie przypominam sobie, aby reguła tego bractwa zabraniała im uśmiercania złodziei."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~Oczy rozbójnika rozszerzają się, "Ech... teraz... Po prostu zatrzymałem to sobie, jako pamiątkę po spotkaniu z tym kapłanem." Sięga do kieszeni swej szaty, wyciąga naszyjnik i zaraz skwapliwie ci go wręcza: "Proszę bardzo. Nieuszkodzony, prawda?"~ */
  IF ~~ THEN REPLY #26909 /* ~Kłamstwo: "Myślę, że to wystarczy, żeby udobruchać zakonników. Myślę, że reguła ich zakonu nie zabrania im przyjmowania darów. Mam wrażenie, że to załagodzi cała sytuację i zawróci z drogi te klątwy, które zmierzały w twoim kierunku."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~Porozmawiałem z jednym z bandytów o naszyjniku Porfirona i kilkoma... niegroźnymi... kłamstewkami przekonałem go, że jeśli nie zwróci naszyjnika to przyjdzie po niego więcej 'wojowniczych' braci z zakonu Porfiriona.~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"Twoją mądrość sięga niebios. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"Klątwy..." Zbójca zatacza półokrąg na swoim sercu "O nie, czegoś takiego to bym nie chciał..." Sięga do wiszącej u pasa sakiewki i wysupłuje kilka miedziaków. "Bierz to z dobrym słowem. Powiedz mu, że naszyjnikowi nie stała się żadna krzywda."~ */
  IF ~~ THEN REPLY #26914 /* ~"Twoja hojność nie pozostanie niedostrzeżona. Żegnaj."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~Ten potężny opryszek odziany jest w szaty w kolorze czerwonym i czarnym. Wydaje się, że mięśnie to w przytłaczającej większości główny budulec jego zwalistego ciała... Kiedy się doń zbliżasz, posyła ci spojrzenie spode łba i nagryza swój kciuk. "Szpicuj się. Nie mam ci nic więcej do powiedzenia!"~ */
  IF ~~ THEN REPLY #26916 /* ~"Z tego, co widzę to jedyna osoba tutaj, która potrzebuje solidnej szpicy, to ty."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END
