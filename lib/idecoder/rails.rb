require "idecoder/rails/version"
require "idecoder/view_helpers"

module Idecoder
  class Engine < ::Rails::Engine
    initializer "idecoder.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
    # isolate_namespace Idecoder
  end
end