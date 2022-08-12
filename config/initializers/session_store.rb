if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_budgeting-app', domain: 'budgeting-app-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_budgeting-app'
end