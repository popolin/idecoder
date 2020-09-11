module Idecoder

  class RunnersController < ApplicationController
    require_dependency "idecoder/application_controller"
    require_relative '../../runners_strategy'
    require_relative '../../runners_factory'

    def test
      @modes = RunFactory.list_types
      @mode = params['mode'] || "ruby"
      render layout: false
    end

    def run
      begin
        fabrica = RunFactory.for(params['mode'])
        parser = CodeParser.new(params['code'], fabrica)

        data = parser.parse
        render json: {data: data, status: 200}, status: :ok
      rescue Exception => ex
        render json: {data: ex.message, status: 500}, status: :ok
      end
    end

  end
end

