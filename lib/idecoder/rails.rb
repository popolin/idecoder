require "idecoder/rails/version"
require "idecoder/view_helpers"

module Idecoder
  module Rails
    class Engine < ::Rails::Engine
      initializer "idecoder.view_helpers" do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end