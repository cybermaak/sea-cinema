class MovieModelsController < ApplicationController
  before_action :set_movie_model, only: [:show, :edit, :update, :destroy]

  # GET /movie_models
  # GET /movie_models.json
  def index
    @movie_models = MovieModel.all
  end

  # GET /movie_models/1
  # GET /movie_models/1.json
  def show
  end

  # GET /movie_models/new
  def new
    @movie_model = MovieModel.new
  end

  # GET /movie_models/1/edit
  def edit
  end

  # POST /movie_models
  # POST /movie_models.json
  def create
    @movie_model = MovieModel.new(movie_model_params)

    respond_to do |format|
      if @movie_model.save
        format.html { redirect_to @movie_model, notice: 'Movie model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movie_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @movie_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_models/1
  # PATCH/PUT /movie_models/1.json
  def update
    respond_to do |format|
      if @movie_model.update(movie_model_params)
        format.html { redirect_to @movie_model, notice: 'Movie model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movie_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_models/1
  # DELETE /movie_models/1.json
  def destroy
    @movie_model.destroy
    respond_to do |format|
      format.html { redirect_to movie_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_model
      @movie_model = MovieModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_model_params
      params.require(:movie_model).permit(:title, :releaseDate, :rating, :length, :summary)
    end
end
