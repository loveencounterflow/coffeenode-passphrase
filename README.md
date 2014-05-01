

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
tasche-327-schwester-reparatur-tafel-965-kirche
gut-479-april-wörterbuch-einladung-tisch-771
körper-sport-390-schnaps-eintrittskarte-richard-046
gletscher-turm-027-lassen-strumpf-geld-925
kaufmann-einkaufszentrum-383-lachen-onkel-busch-786
reparatur-kino-446-lautsprecher-platz-fest-662
gesicht-schalter-gast-übung-353-oper-798
bier-warenhaus-037-mühle-amerika-415-drachen
kartoffel-musik-094-baum-herd-zeit-095
kleidung-wolga-sollen-217-teppich-fest-691
doktor-turm-brett-959-tasse-365-brust
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


