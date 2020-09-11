# require "idecoder/engine"

module Idecoder
  class Engine < ::Rails::Engine
    isolate_namespace Idecoder
  end
end