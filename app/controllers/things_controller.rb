class ThingsController < ApplicationController
  before_action :set_thing, only: %i[ show update destroy ]

  # GET /things
  def index
    things_data = Thing.all.index_by(&:id).transform_values do |thing|
      {
        id: thing.id,
        title: thing.title,
        price: thing.price,
        completed: thing.completed
      }
    end
    
    render json: {
      things_stored: things_data.to_json,
      timestamp: Time.now.to_i
    }
  end

  # GET /things/1
  def show
    render json: @thing
  end

  # POST /things
  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      render json: @thing, status: :created, location: @thing
    else
      render json: @thing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /things/1
  def update
    if @thing.update(thing_params)
      render json: @thing
    else
      render json: @thing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /things/1
  def destroy
    @thing.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def thing_params
      params.expect(thing: [ :title, :price, :completed ])
    end
end
