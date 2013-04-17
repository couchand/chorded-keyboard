// Status Monitor Example

require(['keycodes','keyboard','asetniop','jquery'],
  function ( keycodes, keyboard, asetniop, $ ) {

    keyboard.setLayout( asetniop );

    $(function() {

        var keysList = $('#keys'), i;

        for ( code in keycodes ) {

            $('<li>').attr('id', 'key' + code )
                     .text( keycodes[code] )
                     .appendTo( keysList );
        }

        $(document).keydown(function(event) {
            event.preventDefault();
            keyboard.handlePress( event.keyCode );
            refresh();
        });

        $(document).keyup(function(event) {
            event.preventDefault();
            keyboard.handleRelease( event.keyCode );
            refresh();
        });

        var textarea = $('#editor');

        function type(keypress) {
            var current = textarea.val();
            textarea.val( current + keypress );
        }

        keyboard.setHandler(type);

        function refresh() {

            for ( var i in keycodes ) {
                var elem = $('#key'+i);
                if ( keyboard.keys[i].down ) {
                    elem.hasClass('down') || elem.addClass('down');
                }
                else {
                    elem.hasClass('down') && elem.removeClass('down');
                }
            }
        }

    });

});
