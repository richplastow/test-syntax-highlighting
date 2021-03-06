With Full Extension
===================

#### This has the verbose `.litcoffee` extension

To watch and compile automatically: 
```bash
coffee --watch --compile with-full-extension.litcoffee
```




Helpers
-------

#### `ª()`
Shorthand `console.log()`. 

    ª = console.log.bind console




#### `vpSize()`
Returns an array with two elements, the viewport width and the viewport height. 
Based on [this Stack Overflow answer. ](http://stackoverflow.com/a/11744120)

    vpSize = ->
      d = document
      e = d.documentElement
      b = d.getElementsByTagName('body')[0]
      w = window.innerWidth  || e.clientWidth  || b.clientWidth
      h = window.innerHeight || e.clientHeight || b.clientHeight
      #w = window.screen.width
      #h = window.screen.height
      [w,h]




Classes
-------

@todo describe

    class Validator

    class ValidatorRx extends Validator
      constructor: (@rx, @message) ->
      check: ($element) -> if @rx.test $element.html() then @message




Boot
----

When the DOM is ready, create an instance of ValidatorRx. 

    jQuery ->
      window.validatorRx = new ValidatorRx






