### Nes Arena - Banerekorder

Gir mulighet for å hente ut de beste resultatene basert på klasse og øvelse.

For uttrekk av data fra FriRes så må du åpne MS Access databasen og kjøre følgende spørring:
<pre>
SELECT [Øvelse], [Klasse], [Fødselsår], [Name], [Country Code], [Result]
FROM [Info - participant]
WHERE ([plassering] = 1 AND [PlasseringTotal] = 1) OR ([plassering] = 1 AND [PlasseringTotal] IS NULL)
ORDER BY [Klasse];
</pre>
Resultatet må kopieres over i [Google Sheets](https://docs.google.com/spreadsheets/d/1zA44L7hW48u4mY8RAxR3xK11XJn6eSExLoXHG6mN4gc/edit?usp=sharing) og du må legge på de to første kolonnene som spesifiserer navn på stevne og dato.

**nes-arena.rb** er et Ruby script som innhenter verdier fra [Google Sheets](https://docs.google.com/spreadsheets/d/1zA44L7hW48u4mY8RAxR3xK11XJn6eSExLoXHG6mN4gc/edit?usp=sharing) og skriver det til JSON-fila.

**nes-arena.json** inneholder verdiene produsert fra RB-fila i JSON-format.

**nes-arena.html** inneholder HTML og Javascript som gir brukeren et enkelt grensesnitt for å lese data fra JSON-fila
