module V1
  class Workouts < Grape::API

  # EXAMPLES

    # /api/v1/workouts
    resources :workouts do
      # GET /api/v1/workouts
      get do
        Workout.all
      end

      # POST /api/v1/workouts
      # <input name="workout[name]" type="email">
      params do
        requires :workout, type: Hash do
          requires :name, type: String
        end
      end
      post do
        Workout.create!(params[:workout])
      end
    end

  end
end
