// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~Ten malutki, pomarszczony człowiek wygląda niczym karzeł w swych szatach Grabarza; wyglądają one tak, jakby wybrano je, aby okrywały jego niską posturę. Mimo, że wygląda na około sto lat, jest niezwykle energiczny... wciąż wierci się, zaś jego oczy rozglądają się po oberży z prędkością ptaka.~ */
  IF ~~ THEN REPLY #13417 /* ~"Witaj."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~Oczy mu świecą, kiedy tak mierzy cię wzrokiem. Delikatnie kiwa głową na powitanie. "Witam i pozdrawiam, podróżniku. Wyglądasz jak ktoś, kto wrócił właśnie z obchodu Sigil..." Słowa zamierają mu na ustach. "Wybacz, czy myśmy się wcześniej spotkaliśmy? Twoja twarz wygląda tak jakoś znajomo."~ */
  IF ~~ THEN REPLY #13419 /* ~"Być może. Czy jesteś pewny, że to ja?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"Nie, przynajmniej... ja nie przypominam sobie ciebie."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"Nie szkodzi. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"Hmm... może się pomyliłem." Mortai kręci przecząco głową. "No cóż, nic nie szkodzi, nic nie szkodzi. W jaki sposób Mortai Grobowładny może ci pomóc? Czy poszukujesz..." Jego usta gdaczą, gdy wypowiada słowa... "...może *kontraktu*?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"Kontraktu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"Kontraktu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"Mortai Grobowładny? Czy to ty jesteś tym Grabarzem, który podpisał kontrakt z Angyarem?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"Nie dzisiaj, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"Kontrakt? Cóż, to po prostu zwykła transakcja." Gdzieś z przepastnej szaty Mortai wydobywa zakurzony pergamin i gęsie pióro. "Dam ci pięćdziesiąt miedziaków. W zamian za to - po śmierci - frakcja Grabarzy może domagać się twoich szczątków." Uśmiecha się, potem znów wydaje z siebie gdaknięcie. "Na co ci one będą wtedy potrzebne?"~ */
  IF ~~ THEN REPLY #13426 /* ~"Co Grabarze robią z ciałem?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"Pięćdziesiąt miedziaków za moje ciało? Bardzo dobrze, podpiszę."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"Nie interesuje mnie to, dzięki. Mam wszakże kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"Nie wierzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"Kontrakt? Cóż, to po prostu zwykła transakcja." Gdzieś z przepastnej szaty Mortai wydobywa zakurzony pergamin i gęsie pióro. "Zwyczajowo płacimy pięćdziesiąt... ale tobie ja zapłacę sto miedziaków. Uśmiecha się, potem znów wydaje z siebie gdaknięcie. "Na co ci one będą wtedy potrzebne?"~ */
  IF ~~ THEN REPLY #13430 /* ~"Co Grabarze robią z ciałem?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"Sto miedziaków za moje ciało? Bardzo dobrze, podpiszę."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"Nie interesuje mnie to, dzięki. Mam wszakże kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"Nie wierzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~Mortai unosi w górę dłonie, jakby nie wiedział. "A co to za różnica? Nie ma to znaczenia, kiedy umrzesz."~ */
  IF ~~ THEN REPLY #13434 /* ~"Dla mnie to ma znaczenie."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"Doskonale, podpiszę."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"Nie interesuje mnie to, dzięki. Mam wszakże kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"Nie wierzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"No cóż, jeśli już *musisz* wiedzieć, często *nic* nie dzieje się z ciałem i to my, Grabarze, tracimy wszystkie te pieniądze! Wychodzimy na większych głupców!" Mortai lekko się uśmiecha, potem rzuca przepraszające spojrzenie. "Ale... *z rzadka* bywa i tak, że... pracownicy w Kostnicy muszą być wymienieni... i wówczas może się zdarzyć, że będziemy potrzebować twego ciała."~ */
  IF ~~ THEN REPLY #13438 /* ~"Chcesz powiedzieć, że jako ciało zostanę ożywiony i zatrudniony do pracy w Kostnicy? Nie brzmi to dobrze."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"Doskonale, podpiszę."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"Nie interesuje mnie to, dzięki. Mam wszakże kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"Nie wierzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"O, ale nikomu nie dzieje się krzywda, nikt nie odczuwa bólu." Mortai wznosi palec, jak gdyby chciał podkreślić tę prawdę. "I nie ma żadnego niebezpieczeństwa. W zamian za pieniądze, które możesz wydać w *tym* życiu, musisz nam oddać coś, co ci się już i tak nie przyda, kiedy umrzesz." Mortai bije się w piersi. "Ja sam podpisałem kontrakt, jeśli już chcesz wiedzieć... Ja nie będę potrzebował *mojego* ciała, kiedy umrę."~ */
  IF ~~ THEN REPLY #13442 /* ~"Hmm... to prawda. Bardzo dobrze, podpiszę."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"Zastanowię się nad tym. Póki co, mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"No cóż, wolę spoczywać w pokoju, z kilku powodów. Nie sądzę, byś mógł mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"Ależ mogę ci pomóc! Mogę!" Mortai krzyczy za tobą błagalnie, kiedy odchodzisz. "Wróć, kiedy zabraknie ci funduszy, a Mortai cię wspomoże... wszystko w zamian za podpis."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"Oczywiście, oczywiście..." Mortai kiwa głową. "Z przyjemnością odpowiem na każde twoje pytanie..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"Opowiedz mi jeszcze raz o tym kontrakcie."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"Opowiedz mi jeszcze raz o tym kontrakcie."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"Chcę podpisać kontrakt, o którym wspominałeś."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"Chcę odwołać kontrakt, który podpisałem."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"Czy to ty podpisałeś Kontrakt Umarłych z Angyarem?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"Czy mogę zobaczyć kontrakt, który podpisałeś z Angyarem?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"Czy możesz mi coś powiedzieć o klientach tego miejsca?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"Czy widziałeś ostatnio jakiś dziennik? Strasznie mi brak mojego."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"Szukam człowieka o imieniu Farod. Widziałeś go?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"Żadnych pytań dzisiaj. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~Mortai kręci przecząco głową. "Nie wiem nic o dzienniku." Uśmiecha się. "Mam do czynienia z dokumentami o całkiem *innym* charakterze..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"Masz na myśli wspomniany już kontrakt? Co z nim?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"Masz na myśli wspomniany już kontrakt? Co z nim?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"Tak właśnie wspominałeś. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~Mortai marszczy brwi. "Jest jednym ze Zbieraczy, nieprawdaż? Mało o nim wiem... Myślę, że Wtajemniczony Emorik wspominał o nim mimochodem." Mortai rozgląda się dookoła. "Emorik powinien tu być gdzieś w oberży... można go zwykle znaleźć w odległym kącie przy stole głównym, jak sądzę."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"Wtajemniczony Emorik?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"Wtajemniczony Emorik?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"Doskonale! Doskonale!" Mortai wygląda na rozbawionego... z niewielkim uśmieszkiem kładzie zakurzony zwój pergaminu i gęsie pióro przed tobą. "Nie *pożałujesz* tego." Palcem stuka w trzy miejsca na stronicy. "Podpisz tutaj, tutaj i tutaj, a nasza transakcja dojdzie do skutku!"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~Podpisz we wskazanych miejscach.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~Podpisz we wskazanych miejscach.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"Wiesz co... ty okazujesz więcej uczuć niż inni Grabarze, z którymi przyszło mi się spotkać."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"Wiesz co... ty okazujesz więcej uczuć niż inni Grabarze, z którymi przyszło mi się spotkać."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"Nie ma o czym mówić. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"Nie szkodzi. Nie sądzę, byś mógł mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~Uśmiech Mortaia robi się lodowaty. "Ufam, że nie była to próba obrażenia mnie."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"Ależ nie. Pozwól, że podpiszę kontrakt."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"Ależ nie. Pozwól, że podpiszę kontrakt."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"Jakiś problem?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"Nie było moim zamiarem urazić cię... ale jakoś strasznie ci pilno, aby podpisać ze mną ten kontrakt. Jak na Grabarza, ten zapał w ogóle do ciebie nie pasuje."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"Przepraszam. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"Nie było moim zamiarem urazić cię... ale nie sądzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~Bierzesz gęsie pióro do ręki i zaczynasz drapać swój podpis na pergaminie... pióro wydaje dziwne *piskliwe* dźwięki przy zetknięciu z pergaminem, niczym sztylet piszący na stali.~ */
  IF ~~ THEN REPLY #13475 /* ~Dalej podpisujesz...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~Gdy próbujesz podpisać pergamin, zauważasz, że usuwa ci się jakby spod pióra... niezależnie od tego, jak bardzo się starasz, po prostu nijak ci nie wychodzi podpisanie się pod dokumentem. A sam kontrakt zaczyna się jak gdyby zmieniać: już nie jest zakurzonym kawałkiem pergaminu, ale raczej czymś... żywym?~ */
  IF ~~ THEN REPLY #13476 /* ~"Uch... Mortai? Co z tym kontraktem?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~Kiedy podnosisz wzrok, aby porozmawiać z Mortaiem, widzisz zamiast jego twarzy czaszkę szczerzącą zęby. Reszta oberży zamarła w oczekiwaniu, klienci przestali rozmawiać i zastygli niczym posągi. Mortai otwiera usta i ze środka czaszki widać smugę prochu wydobywającą się na zewnątrz.~ */
  IF ~~ THEN REPLY #13477 /* ~"Mortai...?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~Głowa śmierci mówi ochryple, a proch opada z jej zębów...

   *Podpisz*

   *Ale pamiętaj... wszystko ma swoją cenę*

   *I cóż może zmienić naturę człowieka?*

Słowa te brzmią tak, jakby były wypowiedziane przez nierówny, martwy chór; jak gdyby mówiło je pięć, dziesięć, dwadzieścia, sto głosów - młodych, starych, żeńskich, męskich, pełnych rozpaczy, spokojnych, histerycznych...~ */
  IF ~~ THEN REPLY #13478 /* ~"Naturę człowieka...?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~Kiedy wypowiadasz słowa, nagle czujesz, że słabniesz, i następną rzeczą, jaką słyszysz, jest głos Mortaia, już zwyczajny, i jego ręka na twym ramieniu. "Panie, czy wszystko w porządku?" Śmieje się zaniepokojony. "Myślałem, że na chwilę cię straciłem..."~ */
  IF ~~ THEN REPLY #13479 /* ~Postaraj się określić swoje położenie...~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~Wygląda na to, że czas wypuścił powietrze i odzyskał naturalny oddech... reszta oberży wróciła do normalności, a twarz Mortaia nie jest już głową śmierci. Odczuwasz dziwne ciśnienie w głowie, jak gdyby coś rozpaczliwie chciało wypłynąć na powierzchnię, ale nie może. To doświadczenie z głową śmierci, która przemawiała prochem... wyglądało to tak, jakby twoja pamięć kojarzyła kilkadziesiąt rozmaitych okruchów wspomnień w jednej chwili, a wszystkie wrzynały się w siebie nawzajem, aby stworzyć jakiś obraz... i jakoś wiesz, że każdy głos, którym przemawiała głowa śmierci, należał do *kogoś*... kto od dawna nie żyje.~ */
  IF ~~ THEN REPLY #13480 /* ~"Jedną małą chwilkę... Nic mi nie będzie."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~Mortai zabiera dłoń z twego ramienia... wygląda na zaniepokojonego, bardziej z powodu utraty potencjalnego klienta niż z troski o twoje samopoczucie. Kiedy tak wpatrujesz się w zakurzony pergamin leżący na stole, wiesz już na pewno, że to nie pierwszy raz, gdy podpisujesz kontrakt... i być może to nie jest pierwszy raz, gdy podpisujesz tego rodzaju kontrakt.~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~Dokończ podpisywanie kontraktu.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~Dokończ podpisywanie kontraktu.~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"Tak naprawdę, Mortai... Myślę, że się wstrzymam przed złożeniem mego podpisu. Mam najpierw kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"Nie sądzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~Przykładając ponownie gęsie pióro do pergaminu, odczuwasz delikatne poruszenie, a gorączka myśli i wspomnień wzbiera w twojej głowie...~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~Zduś wspomnienie, podpisz kontrakt...~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~Zduś wspomnienie, podpisz kontrakt...~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~Poddaj się wspomnieniu.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"Tak naprawdę, Mortai... Myślę, że się wstrzymam przed złożeniem mego podpisu. Mam najpierw kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"Nie sądzę, że możesz mi pomóc... żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~Drapiesz znak 'X' na kontrakcie w trzech miejscach wskazanych przez Mortaia. Kiedy kończysz skrobać ostatni znak, ręce Mortaia gwałtownym ruchem wyciągają się ku przodowi, niczym dwa baty: Lewą ręką posypuje on pergamin prochem, aby atrament mógł lepiej schnąć, zaś prawą strzepuje strumień miedziaków w twoje dłonie... razem pięćdziesiąt.~ */
  IF ~~ THEN REPLY #13490 /* ~"A teraz, jak już jest po wszystkim, mam kilka pytań do ciebie..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"Koniec interesów... żegnaj."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~Drapiesz znak 'X' na kontrakcie w trzech miejscach wskazanych przez Mortaia. Kiedy kończysz skrobać ostatni znak, ręce Mortaia gwałtownym ruchem wyciągają się ku przodowi, niczym dwa baty: Lewą ręką posypuje on pergamin prochem, aby atrament mógł lepiej schnąć, zaś prawą strzepuje strumień miedziaków w twoje dłonie... razem sto.~ */
  IF ~~ THEN REPLY #13492 /* ~"A teraz, jak już jest po wszystkim, mam kilka pytań do ciebie..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"Koniec interesów... żegnaj."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~Mortai spogląda nieufnie. "Obawiam się, że tego nie da się zrobić. Kontrakt został podpisany, uregulowany i ma moc wiążącą."~ */
  IF ~~ THEN REPLY #13494 /* ~"Czy w jakiś sposób mogę uregulować ten kontrakt z tobą?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~Blef: "Sugeruję, abyś przekazał mi mój kontrakt natychmiast albo zarąbię cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~Prawda: "Sugeruję, abyś przekazał mi mój kontrakt natychmiast albo zarąbię cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"W takim razie nic nie szkodzi. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~Mortai potrząsa przecząco głową. "Jest to teraz kwestia prawa." Klepie się w podbródek i gdacze językiem. "Gdyby chodziło o kogoś innego, byłbym skłonny rozstać się i odejść z takim kontraktem, ale z tobą... patrząc na ciebie myślę, że nastąpi to wkrótce."~ */
  IF ~~ THEN REPLY #13499 /* ~Blef: "A może tak: Dawaj kontrakt natychmiast, albo zarżnę cię tam, gdzie stoisz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~Prawda: "Co powiesz na to: Daj mi mój kontrakt natychmiast albo zarąbię cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"Doskonale. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"Zatem żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~Mortai zastyga, a jego oczy patrzą na ciebie badawczo. "Jeżeli wyciągniesz tutaj broń, umrzesz zanim zdążysz jej użyć. Nad tym miejscem unoszą się strażnicy, których nie możesz nawet *widzieć*. A gdyby ci się nawet udało stąd wyjść, już tam Grabarze dopilnują, aby spotkała cię kara. Nie wygłaszaj tak głupich gróźb w mojej obecności."~ */
  IF ~~ THEN REPLY #13503 /* ~"Zaryzykuję... przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"Zatem zapomnij o tym. Mam kilka innych pytań."~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"Nieważne. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"Oczywiście. O których z klientów pragniesz zapytać?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"Czy możesz mi opowiedzieć o Wyczekującym Śmierci?"~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"Czy możesz mi opowiedzieć o Sere?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"Czy możesz mi opowiedzieć o Emoriku Wtajemniczonym?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"Czy możesz mi opowiedzieć o Emoriku Wtajemniczonym?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~"Czy możesz mi opowiedzieć o Starym Miedziookim?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"Nieważne, nie znam ich imion. Mam zamiast tego kilka innych pytań..."~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"Nieważne. Mam zamiast tego kilka innych pytań..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"Nieważne. Mam zamiast tego kilka innych pytań..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"Nieważne. Mam zamiast tego kilka innych pytań..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"Nieważne. Mam zamiast tego kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"Burzliwy, burzliwy wtajemniczony." Mortai mlaska językiem z dezaprobatą. "On szuka śmierci z namiętnością, która jest *wysoce* niewłaściwa dla Grabarza."~ */
  IF ~~ THEN REPLY #13514 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"Oj, tak." Mortai marszczy brwi. "Zbyt wiele namiętności, zbyt wiele emocji uniemożliwia nam dotarcie do Prawdziwej Śmierci. Uleganie namiętnościom jest wprost przeciwne filozofii naszej frakcji."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"Prawdziwej Śmierci?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"Prawdziwej Śmierci?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"Prawdziwa Śmierć to stan spokojnego zapomnienia, do którego aspirują wszyscy Grabarze... i który wszyscy Grabarze pomagają osiągnąć innym." Mlaska językiem z dezaprobatą. "Nasza frakcja stroni od czegokolwiek, co przywiązuje duszę do tego życia, bez względu na to, czy te więzy oznaczają dobytek, czy też uczucia. Widzisz... namiętności działają na duszę na podobieństwo kotwicy, uniemożliwiając jej osiągnięcie Prawdziwej Śmierci..." Potrząsa głową. "To fatalnie, naprawdę fatalnie."~ */
  IF ~~ THEN REPLY #13521 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"Rozumiem. To wiele wyjaśnia. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"Burzliwa Wtajemniczona. Słyszałem, że nie tak dawno zapadła na jakąś chorobę, która... ją odmieniła. Teraz wydaje się zgorzkniała i zagniewana, i nie głosi już przekonań Grabarzy z takim przekonaniem, jak niegdyś. Boję się, że to zgorzkniałość jest rodzajem namiętności, która może zagrozić jej pozycji we frakcji."~ */
  IF ~~ THEN REPLY #13523 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"Szacowny Wtajemniczony z Czwartego Kręgu. *Bardzo* mądry człowiek." Mortai przypatruje ci się, trochę zmartwiony. "Jaki masz do niego interes, jeśli wolno spytać? Może ja mógłbym pomóc zamiast niego."~ */
  IF ~~ THEN REPLY #13526 /* ~"Cóż, przeszło mi przez myśl, aby podpisać kontrakt z Emorikiem."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~Kłamstwo: "No cóż, myślałem o podpisaniu kontraktu z Emorikiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"Nie sądzę. Mam jednak kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"Nie, nie sądzę, abyś mógł mi pomóc. Żegnaj, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"Szacowny Wtajemniczony z Czwartego Kręgu. *Bardzo* mądry człowiek. Wyzbył się wszelkich związków i namiętności dla tego życia..." Kiwa głową z aprobatą.~ */
  IF ~~ THEN REPLY #13530 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"Dzięki za informacje. Żegnaj, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~Mortai jest wyraźnie zrozpaczony. "Nie, nie, dobry panie! On nie zaoferuje ci za kontrakt ani połowy tego, co ja, to byłyby... po prostu *psie pieniądze* w porównaniu z tym, co ja mógłbym ci dać! Rozważ moje słowa, zanim podejmiesz pochopną decyzję!"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"Ile więcej oferujesz?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"Pomyślę o tym. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"Nie sądzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"Ja..." Mortai gdacze. "Ja zaoferuję siedemdziesiąt pięć... sto miedziaków, panie! O wiele, wiele więcej niż każdy inny Grabarz."~ */
  IF ~~ THEN REPLY #13536 /* ~"Doskonale. Podpiszę go z tobą."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"Pomyślę o tym. Mam klika innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"Nie sądzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~Wzrok Mortaia robi się zimny. "Ten z oczami jak miedziaki? *Jego* oczy mówią wystarczająco wiele o jego celach." Zakreśla półkole wokół swego serca. "Może z niego i Grabarz, ale ja *nigdy* nie podpisałbym z nim Kontraktu Umarłych. Zamiast serca ma miedziaka, i dla mnie to świadczy o namiętności do pieniędzy. Jest Grabarzem tylko z nazwy."~ */
  IF ~~ THEN REPLY #13539 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"O, to on też oferuje kontrakty?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"To znaczy, że mógłbym podpisać Kontrakt Umarłych z nim?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"Dziękuję za informacje. Żegnaj, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~Mortai mlaska z dezaprobatą. "Tak, ale o wiele lepiej stało się, że to ze mną podpisałeś kontrakt niż z tym chciwym potworem. Chytrość jest namiętnością, która zabija, jak wiesz, a dla Grabarza jest po dwakroć zabójcza."~ */
  IF ~~ THEN REPLY #13543 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"Co by się stało, gdybym podpisał kontrakt z nim?"~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"Dziękuję za informacje. Żegnaj, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~Mortai obrzuca cię zimnym spojrzeniem. "Wówczas byłoby to z twojej strony przestępstwo. Aresztowano by cię i wtedy, o ile prawo by na to zezwoliło, Grabarze zebraliby owoce z twego Kontraktu Umarłych o wiele *wcześniej* niż było to twoim zamiarem."~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"Cóż, on już zdobył mój podpis. Co ty na to?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"Dziękuję za informacje. Żegnaj, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~Twarz Mortaia blednie... trudno było przypuścić, że coś takiego może spotkać Grabarza. Prycha przez chwilę, jak gdyby nie wiedział, co ma robić. "Ty..." Nagle obraca się i klaszcze w dłonie trzy razy. Wielki podmuch wiatru przelatuje przez oberżę."~ */
  IF ~~ THEN REPLY #13551 /* ~"Zatem w porządku. Przygotuj się na śmierć..."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~"Tak, ale o wiele lepiej by było, gdybyś to ze mną podpisał kontrakt, a nie z tym chciwym potworem." Mortai mlaska z dezaprobatą. "Chciwość to namiętność, która zabija, jak wiesz, a dla Grabarza jest po dwakroć zabójcza. Nie kłopocz się rozmową z Miedziookim, dobry panie... zamiast tego, ubij ten interes ze mną."~ */
  IF ~~ THEN REPLY #13552 /* ~"Czy Grabarzom nie wolno odczuwać namiętności?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"Rozumiem. Mam jednak kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"Nie sądzę, że możesz mi pomóc. Żegnaj, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~Mortai marszczy brwi, następnie patrzy w fałdy swej szaty. "Zwykle nie trzymam dokumentów przy sobie, ale może się okazać, że..." Mortai wyciąga plik papierów z szaty i zaczyna je kartkować. "Nie, nie mam go przy sobie. Czy twoim życzeniem jest, abym przyniósł go z jednego z pokoi na zapleczu?"~ */
  IF ~~ THEN REPLY #13555 /* ~"Chcę go zobaczyć, jeśli można."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"Niezupełnie. Pragnę anulować ten kontrakt."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"Trzymasz kontrakty tutaj, w tej gospodzie?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"Nie, nie w tej chwili. Mam zamiast tego kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"Tylko sprawdzam, czy to z tobą on podpisał kontrakt. Nie przejmuj się."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~Mortai marszczy brwi. Wygląda na to, że się nad czymś głowi. "Być może..." Myśli nad czymś przez chwilę. "Jednakże, nie przypominam sobie imienia."~ */
  IF ~~ THEN REPLY #13560 /* ~"Chcę uregulować sprawy kontraktu."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"czy masz ten kontrakt przy sobie?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"Czy mogę raz jeszcze spojrzeć na kontrakt Angyara?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"W takim razie to nic. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~Mortai patrzy nieufnie. "Obawiam się, że tego nie da się zrobić. Kontrakt został podpisany, uregulowany i ma moc wiążącą."~ */
  IF ~~ THEN REPLY #13565 /* ~"Kontrakt wprowadza rozdarcie w życie człowieka."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"Kontrakt rozdziera życie człowieka na pół. Wywołuje zaniepokojenie u człowieka... możliwe, że nie będzie nawet w stanie przystąpić do Prawdziwej Śmierci z takimi namiętnościami w swym umyśle."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"Czy istnieje jakiś sposób, w który mógłbym uregulować ten kontrakt z tobą?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~Blef: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~Prawda: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"A zatem, nic nie szkodzi. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~Mortai przecząco kręci głową. "Zaiste źle się składa... ale teraz jest to kwestia prawa, a nie kwestia serca."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"Kontrakt wywołuje zaniepokojenie u człowieka... możliwe, że nie będzie nawet w stanie dostąpić do Prawdziwej Śmierci z takimi namiętnościami w swym umyśle."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"Czy istnieje *jakiś* sposób, w który mógłbym uregulować ten kontrakt z tobą?"~ */ JOURNAL #64581 /* ~Rozmawiałem z Mortaiem Grobowładnym o Kontrakcie Śmierci, który podpisał Angyar, ale Mortai ani myślał unieważniać tej umowy. Nie wiem, jak go przekonać, ale musi istnieć jakiś sposób. W każdym razie zauważyłem jedną rzecz, Mortai zachowuje się nieco inaczej niż wszyscy Grabarze w Sigil. Może gdybym dowiedział się więcej od niego albo od innych ludzi w karczmie o przekonaniach Grabarzy, umiałbym wytargować od niego ten kontrakt, powołując się na argumenty jego własnej filozofii?~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"Czy istnieje *jakiś* sposób, w który mógłbym uregulować ten kontrakt z tobą?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~Blef: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~Prawda: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"W takim razie nic nie szkodzi. Żegnaj."~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~Mortai myśli nad tym przez chwilę; wygląda na to, że udało ci się wmanewrować go do narożnika w negocjacjach. "Nie mogę. To sprawa prawa, przyjacielu... ponadto, cały ciężar spoczywa na beneficjencie kontraktu, aby tak przezwyciężał swoje uczucia, aby dotrzeć do Prawdziwej Śmierci. Ja nie mogę..."~ */
  IF ~~ THEN REPLY #13578 /* ~"Powiadasz więc, że odmówisz mu Prawdziwej Śmierci tylko z powodu kawałka pergaminu?"~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"Czy istnieje jakiś sposób, w który mógłbym uregulować ten kontrakt z tobą?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~Blef: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~Prawda: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"W takim razie, nic nie szkodzi. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~Mortai wzdycha i unosi w górę ręce, jak gdyby chcąc cię udobruchać. "Posłuchaj, to *nie* jest tak, jak ci się wydaje..."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"Pewnie w pogardzie masz filozofię Grabarzy, skoro potępiasz duszę człowieka z powodu kawałka papieru. Czy inni członkowie twojej frakcji wiedzą, jak w tym względzie postępujesz? Jeśli nie, to wkrótce się dowiedzą."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"Pewnie w pogardzie masz filozofię Grabarzy, jeśli potępiasz duszę człowieka z powodu kawałka papieru. Czy inni członkowie twojej frakcji wiedzą, jak w tym względzie postępujesz? Jeśli nie, to wkrótce się dowiedzą."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"Czy istnieje jakiś sposób, w który mógłbym uregulować ten kontrakt z tobą?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~Blef: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~Prawda: "Sugeruję, abyś mi wręczył ten kontrakt natychmiast, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"W takim razie, nic nie szkodzi. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~Przez chwilę, Mortai rzuca ci piorunujące spojrzenie, otwiera usta, następnie je zamyka, potem otwiera je. "Och, na dziewiątą bramę piekieł... zaczekaj tutaj." Zniża głos do szeptu. "I trzymaj jadaczkę zamkniętą na kłódkę." Robi zachmurzoną minę i ciężkim krokiem oddala się.~ */
  IF ~~ THEN REPLY #13591 /* ~Czekaj...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~Po paru sekundach wraca. Dzierży zakurzony kawałek pergaminu, który ci podaje. "Masz!" Pogardliwie wydyma wargi. "Wszystko dla czyjegoś spokojnego umysłu... a teraz odejdź już i nie naprzykrzaj mi się z twymi naukami!"~ */
  IF ~~ THEN REPLY #13592 /* ~"Odejdę... na razie. Żegnaj, Mortai."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~Mortai kręci przecząco głową. "Jest to teraz kwestią prawą i jako takie, nie podlega dyskusji."~ */
  IF ~~ THEN REPLY #13593 /* ~Blef: "Co powiesz na to: Daj mi kontrakt Angyara, albo zabiję cię na miejscu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~Prawda: "Co powiesz na to: Daj mi kontrakt Angyara, albo zabiję cię na miejscu?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"Ale kontrakt rozdziera życie ludzkie."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"Ale kontrakt rozdziera życie ludzkie. Kontrakt wywołuje zaniepokojenie u człowieka... możliwe, że nie będzie nawet w stanie przystąpić do Prawdziwej Śmierci z takimi namiętnościami w swym umyśle."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"Zatem doskonale. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"Żegnaj więc."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~Mortai nieruchomieje i mierzy cię wzrokiem. "Jeżeli zabierzesz ten kontrakt, nie ujdziesz stąd żywy. Nad tym miejscem unoszą się strażnicy, których nie możesz nawet *widzieć*. A gdyby ci się nawet udało stąd wyjść, już tam Grabarze dopilnują, aby spotkała cię kara. Nie wygłaszaj tak głupich gróźb w mojej obecności."~ */
  IF ~~ THEN REPLY #13599 /* ~"Zaryzykuję. Spróbuj mnie powstrzymać."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~Zwróć kontrakt Mortaiowi.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~Mortai rzuca ci przez chwilę piorunujące spojrzenie, otwiera usta, zamyka je, potem znów otwiera. "Na dziewiątą bramę piekieł..." Sięga w głąb szaty i rzuca ci kontrakt. "Masz!" Pogardliwie prycha. "Czego się nie robi dla czyjegoś spokoju umysłu... a teraz idź już."~ */
  IF ~~ THEN REPLY #13601 /* ~"Odejdę... na razie. Żegnaj, Mortai."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~Mortai nieruchomieje i mierzy cię wzrokiem. "Jeżeli wyciągniesz tutaj broń, nie zdążysz. Nad tym miejscem unoszą się strażnicy, których nie możesz nawet *widzieć*. A gdyby ci się nawet udało stąd wyjść, już tam Grabarze dopilnują, aby spotkała cię kara. Nie wygłaszaj tak głupich gróźb w mojej obecności."~ */
  IF ~~ THEN REPLY #13602 /* ~"Zaryzykuję... przygotuj się na śmierć."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"Kontrakt rozdziera życie ludzkie."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"Kontrakt rozdziera życie ludzkie. Kontrakt wywołuje zaniepokojenie u człowieka... możliwe, że nie będzie nawet w stanie przystąpić do Prawdziwej Śmierci z takimi namiętnościami w swym umyśle."~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"Czy sprawę tego kontraktu można uregulować w jakiś inny sposób?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"Zatem nie ma o czym mówić. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"Nic nie szkodzi więc."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~Mortai sięga do swych przepaścistych szat i wyciąga kontrakt, abyś mógł go sobie obejrzeć. "A oto i on, panie... Angyar bardzo się wzbogacił od zwykłego podpisu." Rzucasz okiem na kontrakt; wygląda na prawdziwy... i bardzo oficjalny.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~Udaj, że go studiujesz, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~Udaj, że go studiujesz, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~Udaj, że go studiujesz, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"Doskonale... wszystko wydaje się być w porządku."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"Aż zostaną przewiezione do Kostnicy, tak. W mym życiu podpisałem bardzo wiele kontraktów... włącznie z własnym. To prawdziwy kłopot przetransportować je wszystkie do Kostnicy."~ */
  IF ~~ THEN REPLY #13613 /* ~"Pragnę uregulować kwestię kontraktu, który zawarłeś z Angyarem."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"Czy masz przy sobie kontrakt, który podpisałeś z Angyarem?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"Czy mogę raz jeszcze zobaczyć kontrakt Angyara?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"Nic nie szkodzi. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"Byłem po prostu ciekawy. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~Mortai potakująco kiwa głową. "Hm..." Jego twarz przybiera dziwny wyraz.~ */
  IF ~~ THEN REPLY #13618 /* ~"Czy coś nie gra?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"Żegnaj, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~Mortai marszczy brwi. "Wybacz, *muszę* spytać ponownie... czy masz pewność, że nie spotkaliśmy się już wcześniej?"~ */
  IF ~~ THEN REPLY #13620 /* ~"Być może. Nie przypominam sobie ciebie."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"Nie, nie sądzę."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"Żegnaj, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"Hmmm." Mortai kręci przecząco głową. "Cóż, nie szkodzi."~ */
  IF ~~ THEN REPLY #13623 /* ~"Żegnaj, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"Tak, tak, żegnaj..." Kiedy wychodzisz, Mortai patrzy na ciebie badawczo. Słyszysz, jak mamrocze do siebie pod nosem. "Coś w tym jest..."~ */
  IF ~~ THEN REPLY #13624 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"Aa..." Mortai marszczy brwi, gdy podchodzisz, i mlaska językiem. "To znowu ty... czy przychodzisz, aby nakłonić mnie do anulowania następnych kontraktów w imieniu frakcji Grabarzy?" Marszczy brwi, potem wzdycha. "No cóż, to nieważne, nieważne, przeszłość to przeszłość..." Odzyskuje swój dawny uśmiech i kiwa do ciebie głową. "Co mogę dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #13625 /* ~"Mam do ciebie kilka pytań..."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"Nic to. Muszę już iść."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"Ah, wędrowcze!" Widząc cię, Mortai uśmiecha się. "Znów się spotykamy? I czymże mogę ci służyć w ten piękny dzień w Sigil?" Patrzy z nadzieją w oczach. "Czy przybywasz tu może z zamiarem podpisania kontraktu?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"Kontraktu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"Kontraktu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"Czy to ty podpisałeś Kontrakt Umarłych z Angyarem?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"Czy mogę zobaczyć kontrakt, który podpisałeś z Angyarem?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"Nie, mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"Nie sądzę, że możesz mi pomóc. Muszę już iść."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"Ah, wędrowcze!" Widząc cię, Mortai uśmiecha się. "Znów się spotykamy? I czymże mogę ci służyć w ten piękny dzień w Sigil?"~ */
  IF ~~ THEN REPLY #13633 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"Nic to. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"Zapał?! Ja..." Mortai marszczy brwi w łuk, następnie grzecznie pokasłuje. "Panie... czy twoim życzeniem jest podpisać kontrakt, czy nie? Jeśli nie..."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"Pragnę podpisać kontrakt."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"Pragnę podpisać kontrakt."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"Czy pokazywanie uczuć stanowi jakiś problem?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"Przepraszam, nie chcę podpisywać kontraktu. Mam wszakże kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"Nie było moim zamysłem urażenie cię... ale nie sądzę, że możesz mi pomóc. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"Zaczekaj chwilę..." Wychodzi zza stołu i oddala się.~ */
  IF ~~ THEN REPLY #13640 /* ~Poczekaj, aż wróci...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~Mortai nie miał przy sobie Kontraktu Angyara. Najpierw musiał po niego pójść... Ale zauważyłem, że później nie odłożył go z powrotem na zaplecze.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"Oto i on, panie... Angyar... bardzo posępny człek, podpisał szybko..." Mlaska językiem. "A teraz jest o *wiele* bogatszy." Zerkasz na kontrakt; wygląda na prawdziwy... i bardzo oficjalny.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~Udaj, że go studiujesz, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~Udaj, że go studiujesz, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~Udaj, że studiujesz pergamin, podmień oryginał na pergamin z fałszywym kontraktem, a następnie zwróć go Mortaiowi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"Doskonale... wszystko wydaje się być w porządku."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~Mortai odkłada kontrakt, a ty zauważasz, jak wkłada go gdzieś za pazuchę, zamiast odnieść do pokoju na zapleczu. Mortai mlaska językiem. "Czy to może posłużyć za odpowiedź na twoje pytania odnoszące się do kontraktu?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"Pragnę uregulować kwestię tego kontraktu."~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"Czy mogę jeszcze raz zobaczyć kontrakt Angyara?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"Tak, ale mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"Tak, to wszystko, co pragnę wiedzieć. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~Studiując dokument, przez chwilę odwracasz się od Mortaia... kiedy masz już podmienić kontrakty, Mortai kaszle. "Panie... Uważałbym na ten kontrakt. Gdyby mi zginął, byłbym zmuszony przedsięwziąć pewne działania." Mlaska językiem i strzela palcami. "Kontrakt, jeśli można..."~ */
  IF ~~ THEN REPLY #13650 /* ~Zwróć mu go.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~Studiując dokument, przez chwilę odwracasz się od Mortaia i zamieniasz dokumenty. Nie wydaje się, aby cokolwiek zauważył.~ */
  IF ~~ THEN REPLY #13652 /* ~Zwróć mu 'Kontrakt Angyara'.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~Po chwili Mortai wraca z zakurzonym zwojem pergaminu w rękach. Podnosi go, pozwalając ci go zobaczyć ale nie wypuszcza go z garści.~ */
  IF ~~ THEN REPLY #48405 /* ~Obejrzyj pergamin.~ */ GOTO 65
END
