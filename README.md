

- [CoffeeNode PassPhrase](#coffeenode-passphrase)
	- [Why?](#why)

> **Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*


# CoffeeNode PassPhrase

CoffeeNode bSearch is a passphrase generator; it currently includes a small German wordlist.

## Why?

We all know that good passwords are hard to find. [xkcd](http://xkcd.com) famously explained [how a
good and memorable passphrase works](http://xkcd.com/936/):
![](http://imgs.xkcd.com/comics/password_strength.png)

Following these ideas, i've put together a very simple random Passphrase generator. Here is a selection of
generated passphrases:

````
stadt-155-kommen-person-842-glas-saft
hütte-668-essen-zug-weser-ökonom-244
einladung-307-schön-nebel-491-erde-park
welle-404-pfeffer-opa-kleidung-388-einkaufszentrum
mark-900-kleidung-lampe-824-zeppelin-wilhelm
markt-075-leben-übermut-frau-831-nachricht
hecke-viktor-lehrer-737-mandarine-süden-033
hafen-504-sonnabend-699-hütte-bildschirm-ende
schuh-schnell-zimmer-943-ball-weser-334
zebra-übung-sprache-622-kellner-telefon-207
strumpf-126-sicher-922-ökonom-apfelsine-kleid
````
These phrases all share the following characteristics:

* all 'letter words' are selected from a small, but growing collection of (currently ≈400) words;
* each passphrase has two randomly placed 'digit words' (these help to maintain a reasonable vocabulary
  size);
* all 'digit words' are three digits long;
* there is always at least one 'letter word' between the two 'digit words';
* all words are written in lowercase;
* all words are separated by a single dash / hyphen / minus / whatchamaycallit;
* all words are part of the basic vocabulary of the intended audience (speakers of German);
* all words are 'easy' to write correctly—this is not a spelling bee contest;
* there are no names of digits or other numbers among the 'letter words' (i.e. there is no 'one',
  'two', 'three' etc. to avoid confusion with '1', '2', '3');
* the words are selected so they can be easily and clearly communicated orally;
* all words are 'neutral' and non-offensive;
* no two 'letter words' are repeated within a single phrase.

These rules help to maintain an easily memorable outer form of the generated passphrases; above all, the
passphrases are intended to be reasonably secure while memorable and communicable without having to
write them down.


