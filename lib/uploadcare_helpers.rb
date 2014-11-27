require "uploadcare_helpers/engine"
require 'uploadcare_helpers/simple_form_inputs'

module UploadcareHelpers
end

if defined? SimpleForm
  SimpleForm::Inputs.send :include, UploadcareHelpers::SimpleFormInputs
end
