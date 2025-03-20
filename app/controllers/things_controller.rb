class ThingsController < ApplicationController
  before_action :set_thing, only: %i[show update destroy]

  # GET /things
  def index
    things_data = Thing.all.index_by(&:id).transform_values(&:as_json)

    render json: {
      things_stored: things_data.to_json,
      timestamp: Time.current.to_i
    }
  end

  # GET /things/1
  def show
    render json: { data: @thing }
  end

  # POST /things
  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      render json: { data: @thing }, status: :created, location: @thing
    else
      render json: { errors: @thing.errors }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /things/1
  def update
    if @thing.update(thing_params)
      render json: { data: @thing }
    else
      render json: { errors: @thing.errors }, status: :unprocessable_entity
    end
  end

  # DELETE /things/1
  def destroy
    if @thing.destroy
      head :no_content
    else
      render json: { errors: @thing.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_thing
    @thing = Thing.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { errors: [ "Thing not found" ] }, status: :not_found
  end

  def thing_params
    params.require(:thing).permit(:title, :price, :completed)
  end
end
