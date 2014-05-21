require "uploadcare_helpers/engine"
require 'uploadcare_helpers/simple_form_inputs'

module UploadcareHelpers
end

SimpleForm::Inputs.send :include, UploadcareHelpers::SimpleFormInputs
