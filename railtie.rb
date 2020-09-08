module Idecoder
  class Railtie < Rails::Railtie
    initializer "idecoder" do |app|
      ActionController::Base.send include: Idecoder::ScriptInserter
      ActionController::Base.after_filter :insert_idecoder
    end
  end
end