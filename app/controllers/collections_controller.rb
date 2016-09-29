class CollectionsController < OpenReadController
  before_action :set_collection, only: [:show, :update, :destroy]

  # GET /collections
  # GET /collections.json
  def index
    # if params[:current_user] == 'true'
    #   @collections = current_user.collections
    # elsif params[:user_id]
    #   @collections = User.find(params[:user_id]).collections
    # else
      # @collections = Collection.all
    # end

    @collections = current_user.collections

    render json: @collections
  end

  # GET /collections/1
  # GET /collections/1.json
  def show
    render json: @collection
  end

  # POST /collections
  # POST /collections.json
  def create
    @collection = current_user.collections.build(collection_params)

    if @collection.save
      render json: @collection, status: :created, location: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collections/1
  # PATCH/PUT /collections/1.json
  def update
    @collection = current_user.collections.find(params[:id])

    if @collection.update(collection_params)
      head :no_content
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collections/1
  # DELETE /collections/1.json
  def destroy
    @collection = current_user.collections.find(params[:id])

    @collection.destroy

    head :no_content
  end

  private

  def set_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:name, :description, :user_id)
  end
end
