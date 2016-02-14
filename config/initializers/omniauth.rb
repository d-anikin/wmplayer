Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :vkontakte, Rails.application.secrets.vk_app_id, Rails.application.secrets.vk_app_secret, scope: [:audio, :offline]
end
