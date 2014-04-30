

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
funktion-köln-lebensmittel-620-monitor-753-glas
gelten-120-person-zuschauer-projektor-spiel-207
ausweis-sonnenbrille-zimmer-449-stehen-klavier-625
winter-heide-turm-314-oma-989-heißen
land-strumpf-musik-531-wirtschaft-257-otto
flughafen-topf-383-strand-einhorn-baum-366
berlin-446-alt-rock-kleidung-wetter-603
stark-natur-vergehen-085-ente-632-tief
friedrich-samstag-166-haar-reservierung-222-kartoffel
paris-nordsee-437-weitblick-488-neu-etage
kugelschreiber-306-hunger-ulrich-hose-852-ökonom
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
* no two 'letter words' are repeated within a single phrase.

These rules help to maintain an easily memorable outer form of the generated passphrases; above all, the
passphrases are intended to be reasonably secure while memorable and communicable without having to
write them down.


