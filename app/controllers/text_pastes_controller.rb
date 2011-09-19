class TextPastesController < ApplicationController
  # GET /text_pastes
  # GET /text_pastes.xml
  def index
    @recent_pastes = TextPaste.all
    @new_paste = TextPaste.new
  end

  # GET /text_pastes/1
  # GET /text_pastes/1.xml
  def show
    @text_paste = TextPaste.find(params[:id])
    @recent_pastes = TextPaste.all
  end

  # POST /text_pastes
  # POST /text_pastes.xml
  def create
    @text_paste = TextPaste.new(params[:text_paste])
    @recent_pastes = TextPaste.all

    if @text_paste.save
      flash[:notice] = 'Paste successfully saved!'
      render "show"
    else
      flash[:notice] = 'Error, paste not saved!'
      render 'index'
    end

  end
end
