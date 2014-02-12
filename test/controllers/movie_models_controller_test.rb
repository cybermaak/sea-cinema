require 'test_helper'

class MovieModelsControllerTest < ActionController::TestCase
  setup do
    @movie_model = movie_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_model" do
    assert_difference('MovieModel.count') do
      post :create, movie_model: { length: @movie_model.length, rating: @movie_model.rating, releaseDate: @movie_model.releaseDate, summary: @movie_model.summary, title: @movie_model.title }
    end

    assert_redirected_to movie_model_path(assigns(:movie_model))
  end

  test "should show movie_model" do
    get :show, id: @movie_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_model
    assert_response :success
  end

  test "should update movie_model" do
    patch :update, id: @movie_model, movie_model: { length: @movie_model.length, rating: @movie_model.rating, releaseDate: @movie_model.releaseDate, summary: @movie_model.summary, title: @movie_model.title }
    assert_redirected_to movie_model_path(assigns(:movie_model))
  end

  test "should destroy movie_model" do
    assert_difference('MovieModel.count', -1) do
      delete :destroy, id: @movie_model
    end

    assert_redirected_to movie_models_path
  end
end
