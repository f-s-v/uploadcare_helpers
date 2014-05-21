Rails.application.routes.draw do

  mount UploadcareHelpers::Engine => "/uploadcare_helpers"
end
