require 'test_helper'

class MusicsControllerTest < ActionController::TestCase
  setup do
    @music = musics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music" do
    assert_difference('Music.count') do
      post :create, music: { genre: @music.genre, image_upload: @music.image_upload, music_upload: @music.music_upload, name: @music.name, rating: @music.rating, user_id: @music.user_id }
    end

    assert_redirected_to music_path(assigns(:music))
  end

  test "should show music" do
    get :show, id: @music
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music
    assert_response :success
  end

  test "should update music" do
    put :update, id: @music, music: { genre: @music.genre, image_upload: @music.image_upload, music_upload: @music.music_upload, name: @music.name, rating: @music.rating, user_id: @music.user_id }
    assert_redirected_to music_path(assigns(:music))
  end

  test "should destroy music" do
    assert_difference('Music.count', -1) do
      delete :destroy, id: @music
    end

    assert_redirected_to musics_path
  end
end
