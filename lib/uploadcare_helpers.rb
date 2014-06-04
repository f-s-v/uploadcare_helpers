require "uploadcare_helpers/engine"
require 'simple_form'
require 'uploadcare_helpers/simple_form_inputs'

module UploadcareHelpers
end

SimpleForm::Inputs.send :include, UploadcareHelpers::SimpleFormInputs
