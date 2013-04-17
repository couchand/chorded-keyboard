// Status Monitor Example

require(['keyboard','asetniop','jquery'],
  function ( keyboard, asetniop, $ ) {

    keyboard.setLayout( asetniop );

    $(function() {

        $(document).keydown(function(event) {
            if ( 32 == event.keyCode )
            {
                return true;
            }
            event.preventDefault();
            keyboard.handlePress( event.keyCode );
        });

        $(document).keyup(function(event) {
            if ( 32 == event.keyCode )
            {
                type(' ');
                return true;
            }
            event.preventDefault();
            keyboard.handleRelease( event.keyCode );
        });

        var textarea = $('#editor');

        function type(keypress) {
            var current = textarea.val();
            if ( 'delete' === keypress ) {
                textarea.val( current.substring( 0, current.length-1 ) );
            }
            else {
                textarea.val( current + keypress );
            }
        }

        keyboard.setHandler(type);

    });

});
