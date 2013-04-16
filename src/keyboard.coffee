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
      @keys[code] = new Key code
    @currentChord = []

  anyDown: ->
    for code of @keys
      return yes if @keys[code].isDown()
    return no

  handlePress: (code) ->
    if @keys[code]?
      @keys[code].press()
      @currentChord.push code if -1 is @currentChord.indexOf code

  handleRelease: (code) ->
    if @keys[code]?
      @keys[code].release()
      @fireEvent @currentChord unless @anyDown()

  fireEvent: (chord) ->
    @currentChord = []
    console.log chord

define ['keycodes'], (codes) -> new Keyboard codes

