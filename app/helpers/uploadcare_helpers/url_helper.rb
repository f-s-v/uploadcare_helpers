module UploadcareHelpers
  module UrlHelper
    def uploadcare_url(uuid, modifiers = {})
      [["https://ucarecdn.com/#{uuid}"] + modifiers.map{|k, v| [k, v].join('/')}].join('/-/') + '/'
    end
  end
end
