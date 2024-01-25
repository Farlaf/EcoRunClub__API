# app/api/api.rb
require 'grape-swagger'

class API < Grape::API
  format :json
  prefix :api

  mount ::V1::Base

  # Swagger docs
  add_swagger_documentation \
    host: 'http://localhost:3000',
    doc_version: '0.0.1',
    base_path: '',
    mount_path: '/docs',
    add_base_path: true,
    add_version: true,
    info: {
      title: 'EcoRunClub API',
      contact_url: 'http://localhost:3000'
    },
    array_use_braces: true
end
