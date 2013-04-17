# Keyboard class tests

define ['keycodes', 'keyboard'], (codes, kb) ->

  test "key codes", ->
    for code of codes
      ok kb.keys[code]?,
        "each keyCode should have a key (#{code}: \"#{codes[code]}\")"

  test "key press", ->
    TEST_KEY = 74

    kb.handlePress TEST_KEY

    ok kb.keys[TEST_KEY].isDown(),
      "after pressing a key is should be down"
    notEqual -1, kb.currentChord.indexOf(TEST_KEY),
      "the depressed key should be added to the chord"

  test "key release", ->
    TEST_KEY = 74
    kb.handlePress TEST_KEY

    kb.handleRelease TEST_KEY

    ok not kb.keys[TEST_KEY].isDown(),
      "after releasing a key should be up"

  asyncTest "trigger event", () ->
    TEST_KEY = 74
    TEST_CHAR = 'foobar'
    kb.mappings[[TEST_KEY]] = TEST_CHAR

    kb.setHandler (char) ->
      equal char, TEST_CHAR,
        "the correct character should be matched"
      start()

    kb.handlePress TEST_KEY
    kb.handleRelease TEST_KEY
