// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~Ten olbrzymi szkielet - o wiele większy niż przeciętny człowiek - ma na sobie zdobiony pancerz z brązu, na którym wyryte są pełne szczegółów symbole. Gdy się zbliżasz, szkielet spogląda na ciebie z góry, po czym odwraca wzrok.~ */
  IF ~~ THEN REPLY #51342 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~Pozostaw ogromny szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"Witaj, Żyjący," mówi grzmiącym głosem. "Stoję tutaj jako Straż Królewska naszego pana, jego wysokości Milczącego Króla. Muszę prosić, abyś nie zakłócał mojej pracy swoimi pytaniami."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"Dlaczego potrzebuje on straży? Przecież jest martwy..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"Dlaczego potrzebuje on straży? Przecież jest martwy..."~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"Możesz mi przynajmniej powiedzieć kim jesteś... lub byłeś?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~Potężny szkielet cofa się jakby się przed czymś wzdragał, rozgląda się wokół siebie, po czym warczy na ciebie, sycząc przy tym przez zaciśnięte zęby: "Bądź cicho, głupcze! Wspomnij o tym jeszcze raz, a nie będziesz już zaliczany pomiędzy Żyjących!"~ */
  IF ~~ THEN REPLY #51416 /* ~"W porządku. Możesz mi przynajmniej powiedzieć kim jesteś... lub byłeś?"~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"Milczący Król jest czymś więcej niż jedynie zasuszonym ciałem, Żyjący. Nawet w czasie tych dawno minionych dni, kiedy do nas przemawiał, Milczący Król był czymś *więcej* niż jedynie wspaniałym człowiekiem. To *instytucja*, której ja teraz z poświęceniem bronię, tak jak to robiłem od dwustu lat. Jego wspaniała wola trwa jako głosy Hargrimma i Czerstwej Mary i będzie tak trwać dopóki moje kości nie obrócą się w proch pod stopami potężniejszego wroga."~ */
  IF ~~ THEN REPLY #51419 /* ~"Rozumiem. Kim jesteś... lub byłeś?"~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"Jestem w śmierci, tak jak byłem za życia, jednym z Dziewięćdziesięciu Dziewięciu Synów Gór Zachodnich, zrodzonym, gdy przynależący do Amahar został odłączony i zesłany na Ith'hyr. Zobowiązani słowem honoru do obrony naszej królowej, zostaliśmy uwięzieni w tym świecie, podczas gdy nasz - a wraz z nim nasza pani - został zniszczony przez rozgniewane bóstwo, jednego z braci Amahar. Wielu z nas przemierza równiny, ale niektórzy - jak ja sam - zdecydowali się pozostać w Sigil. Po śmierci zostałem tutaj pochowany, a później przebudziłem się w stanie w jakim mnie teraz widzisz. Postanowiłem wtedy bronić nowego mistrza - Milczącego Króla."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"Po co go bronić? Przecież jest martwy..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"Po co go bronić? Przecież jest martwy..."~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
