require "uploadcare_helpers/engine"

module UploadcareHelpers
end

if defined? SimpleForm
  require 'uploadcare_helpers/simple_form_inputs'
  SimpleForm::Inputs.send :include, UploadcareHelpers::SimpleFormInputs
end
