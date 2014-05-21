module UploadcareHelpers
  module SimpleFormInputs
    class UploadcareInput < SimpleForm::Inputs::Base
      @@uploadcare_widget_options_keys = %w(
        public_key
        multiple
        multiple_max
        multiple_min
        images_only
        preview_step
        crop
        clearable
        tabs
        autostore
        path_value
      )

      def input
        options.symbolize_keys!
        input_options = (options[:input_html] || {}).dup
        input_options.merge! Hash[@@uploadcare_widget_options_keys.map do |key|
          if value = options.delete(key.to_sym)
            ["data-#{key.dasherize}", value] 
          end
        end.compact]
        
        input_options[:role] = [input_options[:role].presence, 'uploadcare-uploader'].compact.join(' ')

        template.content_tag :div, class: 'form-control-static' do
          @builder.hidden_field attribute_name, input_options
        end
      end
    end
  end
end
