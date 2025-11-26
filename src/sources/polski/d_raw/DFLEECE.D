// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~Widzisz człowieka, który spogląda dookoła na budynki z pewnym zakłopotaniem. Wygląda na zagubionego i coś mamrocze do siebie.~ */
  IF ~~ THEN REPLY #1755 /* ~"Witaj."~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~Człowiek ten uspokaja się. "*Nareszcie*! Błagam o wyrozumiałość, dobry panie, ale chyba kręciłem się w kółko w tym labiryncie ulic..." Chichocze nieprzyjemnie. "Obawiam się, że ta część miasta jest taka jakaś..." Rozgląda się z obawą. "...mi nieznana. Tutejsi mieszkańcy nad wyraz niechętnie pomagają przybyszom..." Z nadzieją spogląda na ciebie. "Czy przypadkiem ty nie mógłbyś mi pomóc?"~ */
  IF ~~ THEN REPLY #1758 /* ~"To zależy, jakiej pomocy ci trzeba."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"Oczywiście. Gdzie usiłujesz trafić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"Nie pomogę ci. Na twoim miejscu próbowałbym się stąd wydostać jak najprędzej."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"Nie mam teraz czasu, aby ci pomóc... żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~"Szukam domu mojej Ciotki Marguerite. Mówiono mi, że mieszka w domu blisko Kostnicy, ale od czasu mojej ostatniej wizyty układ ulic chyba się zmienił... czy wiadomo ci coś na temat domu, o którym mówię?"~ */
  IF ~~ THEN REPLY #1763 /* ~Kłamstwo: "Tak. Mogę ci wskazać drogę... za odpowiednią cenę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Prawda: "Obawiam się, że nigdy nie słyszałem o takim miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"O tak, jest to uczciwe w rzeczy samej. Wedle ostatnich wieści, miała dom blisko Kostnicy." Jego oczy zwężają się, jak gdyby próbował cię wybadać. "Czy wiesz, gdzie dokładnie znajduje się jej dom?"~ */
  IF ~~ THEN REPLY #2246 /* ~Kłamstwo: "Ona jest na południowy wschód od Kostnicy, w pobliżu jednego z mauzoleów."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"Przepraszam - mówiłeś 'Ciotka Marguerite'? Nie zrozumiałem cię i myślałem o kimś innym."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"Zaczekaj. Wydawało mi się, że mówisz o jednym z okolicznych przybytków. Nieważne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~Człowiek kręci przecząco głową. "O, nie, nie... ona nie mieszka aż *tak* blisko, na pewno nie. Być może myślisz o kimś innym." Rozgląda się, potem odwraca się. "Zobaczę, czy ktoś jeszcze coś wie. Dziękuję za twój czas, dobry panie."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"Żegnaj."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~Marszczy brwi, rozczarowany. "Ach, byłoby chyba zbytkiem szczęścia zakładać, że wiesz coś o tym miejscu." Milcząco kiwa głową z podziękowaniem. "No cóż, dziękuję za twój czas, dobry panie; na tych ulicach jest to naprawdę mile widziane."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"Żegnaj."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"W takim razie to ewidentna pomyłka, dobry panie. Dziękuję za twój czas, dobry panie."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"Żegnaj."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~Mruga oczami ze zdumienia. "Eee... nie, nie." Uśmiecha się niespokojnie. "Moja ciotka nie angażuje się w tego typu przedsięwzięcia."~ */
  IF ~~ THEN REPLY #2268 /* ~"To nie to, co *ja* słyszałem."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"Żegnaj."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~Człowiek wygląda na zmieszanego. "Ja... już sobie pójdę, dobry panie."~ */
  IF ~~ THEN REPLY #2275 /* ~"Pozdrów swoją Ciotkę ode mnie. Powiedz jej, że wkrótce wrócę."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Puść go... tym razem.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~Marszczy brwi rozczarowany. "No cóż... dziękuję za twój czas, dobry panie. Miłego dnia."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"Żegnaj."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~Masz już się odwrócić, kiedy nagle doznajesz uczucia, że coś tu się nie zgadza. Podejrzliwie spoglądasz raz jeszcze na tego człowieka, akurat w momencie, gdy wyciąga rękę z twej sakiewki... nie jesteś do końca pewny, ale chyba mógł ci coś zabrać.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~Robisz szybki ruch ręką i chwytasz jego rękę w miażdżącym uścisku. On jęczy i rozpaczliwie próbuje się uwolnić.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Powiedz cicho: "Przestań się szarpać albo zatrzymam sobie twoją dłoń."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"Przestań się szarpać do cholery!"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Zaatakuj go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Pozwól mu odejść.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~Nie jesteś wystarczająco szybki; on wyrywa rękę, zanim ty zdołasz ją pochwycić. Ze skomleniem rusza przed siebie.~ */
  IF ~~ THEN REPLY #7634 /* ~"No dobrze..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~Mężczyzna podskakuje ze zdziwienia, a następnie rzuca się do ucieczki.~ */
  IF ~~ THEN REPLY #7636 /* ~"No dobrze..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~W dalszym ciągu miota się w twoim uścisku. Coraz ciężej jest ci go przytrzymać.~ */
  IF ~~ THEN REPLY #7638 /* ~Zaatakuj go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Uderz go pięścią. Zwrócisz w ten sposób na siebie jego uwagę.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Pozwól mu odejść.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Może to twoja własna sprawność kieszonkowca sprawia, że jesteś ostrożny, ale w momencie, gdy odwracasz się, aby odejść, instynktownie sprawdzasz sakiewkę... i zauważasz, że człowiek ten wyjmuje zeń rękę. On jednak prawdopodobnie nie wie, że zobaczyłeś, co on robi.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Skuś go, żeby cię znów okradł i obserwuj jego technikę.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Zaatakuj go.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~Wdajesz się z nim w pogawędkę i uważnie obserwujesz jego ruchy. Wydaje się, że w swym działaniu polega on na dwóch rzeczach: po pierwsze, udaje, że jest przedstawicielem klasy wyższej, który zabłądził - co ma osłabić czujność potencjalnej ofiary; po drugie, rozprasza uwagę ofiary, prosząc o wskazywanie kierunków... kiedy ofiara odwraca się, aby wskazać jakąś ulicę czy punkt orientacyjny, wówczas on zgarnia sakiewkę ofiary i wrzuca jej zawartość do swych (odpowiednio długich) rękawów. Zapamiętujesz tę technikę... akurat w chwili, gdy on sięga po twoją sakiewkę raz jeszcze.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Chwyć go za rękę.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Zaatakuj go.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~W twoim tonie musi *coś* być, ponieważ natychmiast zaprzestaje walki. Wydaje się, pod wpływem twego spojrzenia uchodzą z niego wszystkie siły.~ */
  IF ~~ THEN REPLY #7658 /* ~"Oddaj mi to, coś mi ukradł. No już."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~Kiwa głową potakująco i zaczyna opróżniać swoje kieszenie. Daje ci garść monet, o wiele więcej niż ukradł tobie... w sumie będzie tego z kilkadziesiąt miedziaków.~ */
  IF ~~ THEN REPLY #7661 /* ~"Nie, zatrzymaj resztę... Chcę tylko tyle, ile mi ukradłeś."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"Jesteśmy kwita. Odtąd nie chcę cię widzieć na oczy. Rozumiesz?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Blef: "Daj mi wszystko inne, co masz, a nie zabiję cię."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Prawda: "Daj mi wszystko inne, co masz, a nie zabiję cię."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Skiń głową w podzięce, a potem zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~Spogląda na ciebie ze zdziwieniem, jakbyś go chciał nabrać. Potem wzrusza ramionami i chowa nadwyżkę z powrotem do kieszeni.~ */
  IF ~~ THEN REPLY #7668 /* ~"Jesteśmy kwita. Odtąd nie chcę cię widzieć na oczy. Rozumiesz?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Zaatakuj go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"Eee." Przełyka ślinę. "Śmiałek, ot co. Nic poza tym."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"Jak *wszystko*, to *wszystko*."~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"Świetnie. Nie chcę cię więcej widzieć. Rozumiesz?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"W takim razie twoje życie dobiegło kresu. Przygotuj się na śmierć."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~Kiwa potakująco głową.~ */
  IF ~~ THEN REPLY #7677 /* ~Uderz go pięścią. W ten sposób upewnisz się, czy zrozumiał.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~Twoja pięść ląduje na jego szczęce, a on sam na bruku. Trzymając się za szczękę, jęczy i usiłuje się podnieść. Chyba wybiłeś mu kilka zębów.~ */
  IF ~~ THEN REPLY #7681 /* ~"A teraz zmiataj stąd."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~Lewy hak trafia jego kark z boku i on znów skomli. Trochę niepewnie odwraca się, żeby spojrzeć na ciebie, trzymając się za twarz wolną ręką.~ */
  IF ~~ THEN REPLY #7683 /* ~"Czy słuchasz mnie uważnie?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~Oniemiały, kiwa potakująco głową.~ */
  IF ~~ THEN REPLY #7685 /* ~"Oddawaj wszystko, coś mi ukradł."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"Nie dbam o to, coś mi ukradł... o ile cię nigdy więcej nie zobaczę. Nigdy. Jasne?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~Ponownie kiwa potakująco głową.~ */
  IF ~~ THEN REPLY #7688 /* ~Uderz go pięścią. W ten sposób upewnisz się, czy zrozumiał.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~Widzisz tego samego człowieka, co przedtem... wciąż wygląda na zagubionego i mamrocze coś do siebie, przypatrując się budynkom.~ */
  IF ~~ THEN REPLY #7692 /* ~"Witaj."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Idź dalej, nie zatrzymując się.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~Podrywa się, gdy odzywasz się do niego; wygląda na zdenerwowanego. "Eee... więc znów się spotykamy, panie." Spogląda z nadzieją w oczach. "Czy przypadkiem nie zechciałbyś mi wskazać drogę?"~ */
  IF ~~ THEN REPLY #7695 /* ~"Dokąd znowu mam ci wskazać drogę?"~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"Nie, nie dzisiaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"Naprawdę! Nie mam nic więcej!"~ */
  IF ~~ THEN REPLY #7698 /* ~"Świetnie. Nie chcę cię nigdy więcej widzieć. Rozumiesz?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"W takim razie twoje życie dobiegło kresu. Przygotuj się na śmierć."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Puść go i odejdź.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
