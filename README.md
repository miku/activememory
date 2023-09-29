# activememory

Try it out at
[https://miku.github.io/activememory/](https://miku.github.io/activememory/) or
[http://bit.ly/stmemory](http://bit.ly/stmemory). The GitHub Page is served
directly from the [master](https://github.com/miku/activememory/tree/master)
branch.

A page to test short term memory. A related discussion in [#540 at
carpentries/instructor-training](https://github.com/carpentries/instructor-training/issues/540).
It is currently used in the [Memory and Cognitive
Load](https://data-lessons.github.io/instructor-training/05-memory/index.html)
unit of the [Instructor
Training](https://carpentries.github.io/instructor-training/).

## Setting the delay between words

There is a default delay. The delay can be set to another value via URL fragment:

* [https://miku.github.io/activememory/#delay=300](https://miku.github.io/activememory/#delay=300)
  sets the delay to 300ms between words.

## Setting the language

English is the default language. It is possible to add a list of words in other language to the wordlist and select them through a fragment:

* [https://miku.github.io/activememory/#delay=300,lang=it](https://miku.github.io/activememory/#delay=300,lang=it)

Currently supported languages are: English (`en`, default), Italian (`it`), Spanish (`es`), Portuguese (`pt`), French (`fr`), and German (`de`).
