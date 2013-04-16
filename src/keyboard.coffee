# chorded-keyboard

class Key
  constructor: (@code) ->
    @down = no

  isDown: ->
    @down

  press: ->
    @down = yes

  release: ->
    @down = no

class Keyboard
  constructor: (codes) ->
    @keys = {}
    for code of codes
      @keys[''+code] = new Key code

  handlePress: (code) ->
    @keys[''+code]?.press()

  handleRelease: (code) ->
    @keys[''+code]?.release()

define ['keycodes'], (codes) -> new Keyboard codes

