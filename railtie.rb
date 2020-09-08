module Idecoder
  class Railtie < Rails::Railtie
    initializer "idecoder-rails" do |app|
      ActionController::Base.send include: Idecoder::ScriptInserter
      ActionController::Base.after_filter :insert_idecoder
    end
  end
end