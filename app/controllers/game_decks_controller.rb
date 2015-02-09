class GameDecksController < ApplicationController
  before_action :set_game_deck, only: [:show, :edit, :update, :destroy]

  # GET /game_decks
  # GET /game_decks.json
  def index
    @game_decks = GameDeck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_decks }
    end
  end

  # GET /game_decks/1
  # GET /game_decks/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_deck }
    end
  end

  # GET /game_decks/new
  def new
    @game_deck = GameDeck.new
  end

  # GET /game_decks/1/edit
  def edit
  end

  # POST /game_decks
  # POST /game_decks.json
  def create
    @game_deck = GameDeck.new(game_deck_params)

    respond_to do |format|
      if @game_deck.save
        format.html { redirect_to @game_deck, notice: 'Game deck was successfully created.' }
        format.json { render json: @game_deck, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_decks/1
  # PATCH/PUT /game_decks/1.json
  def update
    respond_to do |format|
      if @game_deck.update(game_deck_params)
        format.html { redirect_to @game_deck, notice: 'Game deck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_decks/1
  # DELETE /game_decks/1.json
  def destroy
    @game_deck.destroy
    respond_to do |format|
      format.html { redirect_to game_decks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_deck
      @game_deck = GameDeck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_deck_params
      params[:game_deck]
    end
end
