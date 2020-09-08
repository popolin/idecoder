module Idecoder
  module ScriptInserter
    BODY_TAG = %r{</body>}

    JS_SCRIPT = %q{
      <script src='idecoder.js'></script>
      <script>
        var idecoder = new Idecoder()
      </script>
    }

    def insert_idecoder
      if (
      response.content_type == 'text/html' &&
          response.body.match(BODY_TAG)
      )
        response.body = response.body.gsub(BODY_TAG, JS_SCRIPT + '\\0')
      end
    end
  end
end