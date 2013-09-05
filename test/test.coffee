assert = chai.assert
expect = chai.expect
should = chai.should()


describe 'jquery-keyboard-event', ()->
  describe 'initialization', ()->
    it 'adds the `simulateKeyboardEvent` to jQuery', ()->
      $.fn.simulateKeyboardEvent.should.exist
  describe 'simulateKeyboardEvent function', ()->
    it 'sends keydown event one targetted element', ()->
      runs ()->
        hasBeenCalled = false
        element = document.createElement 'div'
        element.addEventListener 'keydown', ()->
          hasBeenCalled = true

        $(element).simulateKeyboardEvent()

        assert hasBeenCalled, 'event was not triggered'

    it 'sends keydown event several targetted elements', ()->
      runs ()->
        hasBeenCalled = 0
        element1 = document.createElement 'div'
        element2 = document.createElement 'div'
        element1.addEventListener 'keydown', ()->
          hasBeenCalled++
        element2.addEventListener 'keydown', ()->
          hasBeenCalled++

        $(element1).simulateKeyboardEvent()
        $(element2).simulateKeyboardEvent()

        hasBeenCalled.should.equal 2

    describe 'handle type options', ()->
      it 'accepting `keypress`', ()->
        runs ()->
          hasBeenCalled = false
          element = document.createElement 'div'
          element.addEventListener 'keypress', ()->
            hasBeenCalled = true

          $(element).simulateKeyboardEvent({type:'keypress'})

          assert hasBeenCalled, 'event was not triggered'

      it 'accepting `keyup`', ()->
        runs ()->
          hasBeenCalled = false
          element = document.createElement 'div'
          element.addEventListener 'keyup', ()->
            hasBeenCalled = true

          $(element).simulateKeyboardEvent({type:'keyup'})

          assert hasBeenCalled, 'event was not triggered'

