class Api::V1::FoliosController < Api::V1::ApplicationController
  before_action :set_folio, only: [:show, :edit, :update, :destroy]

  def index
    @folios = Folio.all
  end

  def show
  end

  def create
    @folio = Folio.new(folio_params)
  end

  def update
  end


  def destroy
    @folio.destroy
  end

  def check
    @folio = Folio.where(folio: "#{params[:folio]}")
    render json: @folio
  end

  private
    def set_folio
      @folio = Folio.find(params[:id])
    end

    def folio_params
      params.require(:folio).permit(:folio)
    end
end
