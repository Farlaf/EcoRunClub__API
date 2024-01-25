module V1
  class Base < Grape::API
    version 'v1', using: :path

    # GET /api/v1
    get do
      {version: '1'}
    end

    mount Workouts
  end
end
