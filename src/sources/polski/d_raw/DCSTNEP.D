// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~Widzisz przystojnego, młodego mężczyznę noszącego wymyślne ubranie. Zdaje się być czymś podekscytowany.~ */
  IF ~~ THEN REPLY #9790 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~Odwraca się w twym kierunku i częstuje cię podirytowanym spojrzeniem. "Odczep się, trepie. Takim ja ty nie mam nic do powiedzenia." Odwraca wzrok.~ */
  IF ~~ THEN REPLY #9797 /* ~"Słuchaj, chcę ci jedynie zadać parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"Przepraszam za najście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~Odwraca się w twoją stronę po raz kolejny. Zdaje się być wyjątkowo zły z powodu twego najścia. "Knebel. Staram się obejrzeć egzekucję, a ty mi tu kłapiesz jadaczką. Zostaw mnie w spokoju." Znowu odwraca wzrok.~ */
  IF ~~ THEN REPLY #9800 /* ~Szturchnij go w ramię: "Mam już dość twojego zachowania. Odpowiedz mi na kilka pytań albo pokiereszuję ci tę twarzyczkę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~Odwraca się do ciebie, twarz ma czerwoną od gniewu. "Nie odważysz się! Tak się akurat składa, że jestem siostrzeńcem..."~ */
  IF ~~ THEN REPLY #9806 /* ~Przerwij mu: "Nie obchodzi mnie to, czy jesteś spokrewniony z samą Panią. Dobrze by było, gdyby następnymi słowami, jakie się wydostaną z twojej jadaczki, były 'w czym mogę pomóc'."~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~Przerwij mu: "Mniejsza z tym. Szkoda mi czasu na ciebie."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~Młody mężczyzna wygląda tak, jakby miał zaraz wybuchnąć. Rozgląda się szybko wokoło, nie znajduje jednakże w tłumie nikogo, kto by mu współczuł. "W... w czym mogę pomóc."~ */
  IF ~~ THEN REPLY #9812 /* ~"No... To nie było zbyt trudne, co? Mam kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~Uśmiechnij się: "Już to zrobiłeś. Wystarcza mi wyraz upokorzenia goszczący na twojej twarzy. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"Słucham."~ */
  IF ~~ THEN REPLY #9817 /* ~"Co się dzieje?'~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"Kto tu rządzi?"~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"Szukam devy. Mówią, że jest gdzieś w mieście."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"Jakieś lokalne wieści?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"Mniejsza z tym. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"Zwykła egzekucja. To wszystko."~ */
  IF ~~ THEN REPLY #9825 /* ~"Jaką zbrodnię popełnił?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"Rozumiem. W takim razie następne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"Nie wiem. Możesz spytać w biurze administracyjnym."~ */
  IF ~~ THEN REPLY #9831 /* ~"W porządku. Zrobię tak. Pozwól mi spytać cię o coś innego."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~Uśmiechnął się do ciebie szelmowsko. "Mój wuj, Tovus Giljaf."~ */
  IF ~~ THEN REPLY #9836 /* ~"Usuń ze swej twarzy ten wywyższający uśmieszek albo zrobię to za ciebie."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~Uśmiech szybko znika. Patrzy na ciebie krzywo i nic nie mówi.~ */
  IF ~~ THEN REPLY #9839 /* ~"Teraz lepiej. Mam jeszcze parę pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"Sądzę, że mam już ciebie dość. Żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"Tobie też życzę miłego dnia. Opowiem o tobie mojemu wujowi... Obliźniony." Ponownie koncentruje swą uwagę na tłumie gapiów.~ */
  IF ~~ THEN REPLY #9845 /* ~"Zrób to."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~Obrzuca cię pogardliwym spojrzeniem. "Hmpf. Deva w Klątwie. To coś, czego się nie widuje na co dzień. Powiedziałbym, że albo się mylisz albo jesteś pomylony."~ */
  IF ~~ THEN REPLY #9847 /* ~"Dobrze. Następne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~Wzrusza ramionami. "Nic mi nie przychodzi do głowy."~ */
  IF ~~ THEN REPLY #9850 /* ~"Rozumiem. Może powiedziałbyś mi teraz o czymś innym."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"A zatem żegnaj."~ */ EXIT
END
