require 'test_helper'

class GameDecksControllerTest < ActionController::TestCase
  setup do
    @game_deck = game_decks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_decks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_deck" do
    assert_difference('GameDeck.count') do
      post :create, game_deck: {  }
    end

    assert_redirected_to game_deck_path(assigns(:game_deck))
  end

  test "should show game_deck" do
    get :show, id: @game_deck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_deck
    assert_response :success
  end

  test "should update game_deck" do
    patch :update, id: @game_deck, game_deck: {  }
    assert_redirected_to game_deck_path(assigns(:game_deck))
  end

  test "should destroy game_deck" do
    assert_difference('GameDeck.count', -1) do
      delete :destroy, id: @game_deck
    end

    assert_redirected_to game_decks_path
  end
end
