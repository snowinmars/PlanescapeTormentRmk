// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~Gdy podchodzisz, mężczyzna podnosi wzrok,. Patrzy na ciebie i krzywi się z obrzydzenia. "Czymże u diabła jesteś?" Marszczy nos. "Może Grabarze zgubili jednego ze swych gnijących psów." Śmieje się. "Ha! *Nigdy* nie widziałem czegoś tak wstrętnego."~ */
  IF ~~ THEN REPLY #1911 /* ~"Oprócz swojego odbicia?"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"Lepiej uważaj na język, albo będziesz go szukał pod stopami."~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"Żegnaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~Przez chwilę wydaje się zaskoczony, a potem szydzi znowu, stukając palcem w rękojeść swojej broni. "Wyraźnie chcesz, żeby ktoś upuścił ci krwi, guwernacie."~ */
  IF ~~ THEN REPLY #1915 /* ~"Wydobądź tylko to ostrze, a jedynym, do którego śmierci się przyczynisz, będziesz ty sam."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"Uspokój się, nie chcę z tobą walczyć."~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~Wyciąga broń. "Zobaczymy, guwernacie, zobaczymy..."~ */
  IF ~~ THEN REPLY #1945 /* ~"Ostrzegałem cię..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"Och, naprawdę?" Pluje ci pod nogi. "Co płynie w twoich żyłach, trepie? Jakaś cienka, wodnista krew tchórzy? A może całą straciłeś podczas ostatniej awantury?"~ */
  IF ~~ THEN REPLY #1921 /* ~"Z tego co pamiętam, tylko twoja matka ma taką cienką, wodnistą krew tchórzy... z grubsza licząc wychodzi na to, że tak z pół miasta to twoi krewni."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"Skończmy z tym, zanim zaczną się kłopoty."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~Przez chwilę mruga, jakby przetrawiał twoje słowa, a potem jego twarz rumieni się z gniewu. Wyciąga miecz i rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #1946 /* ~Broń się...~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"Nie, nie, to nie takie proste, trepie. Będziesz musiał *zapłacić* za przywilej uniknięcia mojego miecza."~ */
  IF ~~ THEN REPLY #1927 /* ~"No dobra. Ile?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"Twoja matka nie bierze pieniędzy. Dlaczego postępujesz inaczej?"~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~Po prostu odejdź.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"Myślę, że wszystko co masz załatwiłoby sprawę." Śmieje się. "No już, dawaj."~ */
  IF ~~ THEN REPLY #1936 /* ~Daj mu wszystkie pieniądze.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~Odejdź.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"Może lepiej bądź pewien, gdy następnym razem będziesz chciał ze mną rozmawiać, ty wypaczony pomiocie."~ */
  IF ~~ THEN REPLY #1939 /* ~"*Coś* ty powiedział?"~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~Daj temu spokój i odejdź.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"Tak, wracaj z powrotem do sklepu rzeźnika, tchórzu." Śmieje się.~ */
  IF ~~ THEN REPLY #1942 /* ~"*Coś* ty powiedział?"~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~Daj temu spokój i odejdź.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"Ach... przyjmij moje najszczersze przeprosiny, śmiałku... jesteś głuchy?" Patrzy na ciebie pogardliwie. "Ach, rozumiem, zebrałeś parę kopów w głowę, zgadza się?" Na podkreślenie klepie się w głowę. "Mam gadać powoli, trepie?"~ */
  IF ~~ THEN REPLY #1947 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~Wyciąga rękę, gdy sięgasz po pieniądze. "Nie, tchórzu, zatrzymaj je jeszcze przez chwilę... myślę, że i tak je wezmę, po tym jak wypruję ci flaki." Z uśmiechem wyciąga miecz. "Wygląda na to, że jeszcze bardziej cię oszpecę."~ */
  IF ~~ THEN REPLY #1950 /* ~Broń się...~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"Ech?" Uśmiecha się pogardliwie. "To znowu ty, trepie? Szukasz jałmużny? Lepiej szukaj gdzie indziej." Ogląda cię od stóp do głów. "Nigdy nie widziałem czegoś brzydszego."~ */
  IF ~~ THEN REPLY #1953 /* ~"Oprócz swojego odbicia?"~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"Lepiej uważaj na język, albo będziesz go szukał pod stopami."~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"Żegnaj."~ */ GOTO 8
END
