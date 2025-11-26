// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~Wygląda, jakby ten ogromny zegar został częściowo wtopiony w czarny kamień, z którego zdaje się wyrastać. Kiedy spoglądasz na jego tarczę, czujesz nagle, jak z tyłu twojej czaszki pojawia się dziwne mrowienie. Czujesz, że już wcześniej widziałeś zegar bardzo podobny do tego tutaj. Ale to nie był ten sam zegar. Z czasomierzem tym wiąże się jakaś bardzo ważna sprawa, ale nie jesteś w stanie teraz przypomnieć sobie, o co dokładnie chodzi.~ */
  IF ~~ THEN REPLY #64236 /* ~Zostaw zegar w spokoju.~ */ JOURNAL #64240 /* ~W Fortecy znalazłem wielki zniszczony zegar. Kiedy mu się przyjrzałem, poczułem jakiś wewnętrzny nakaz, aby sprawdzić coś, co się na nim znajduje. Nie wiem natomiast, co to takiego może być. Może w którymś z poprzednich żywotów miałem do czynienia z podobnymi czasomierzami.~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~Wygląda, jakby ten ogromny zegar został częściowo wtopiony w czarny kamień, z którego zdaje się wyrastać. Ale w odróżnieniu od zegara, na którym zapisana była wiadomość, tarcza tego zegara nie nosi żadnych znaków czy napisów. Prawdopodobnie w poprzednim żywocie po prostu nie znalazłeś się w pobliżu tego czasomierza.~ */
  IF ~~ THEN REPLY #64237 /* ~Zostaw zegar w spokoju.~ */ EXIT
END
