module UploadcareHelpers
  class Engine < ::Rails::Engine
    isolate_namespace UploadcareHelpers

    initializer 'uploadcare_helpers.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper UploadcareHelpers::UrlHelper
      end
    end
  end
end
