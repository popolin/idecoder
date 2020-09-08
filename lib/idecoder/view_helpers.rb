require 'erb'

module Idecoder
  module ViewHelpers
    include ActionView::Helpers::OutputSafetyHelper

    def render_idecoder options={}, dev_only=true
      if dev_only == false || (dev_only && ::Rails.env.development?)
        binding.local_variable_set(:options, options.to_json)
        template_file = ::File.read(::File.expand_path('../templates/idecoder.erb', __FILE__))
        raw ERB.new(template_file).result(binding)
      end
    end

  end
end