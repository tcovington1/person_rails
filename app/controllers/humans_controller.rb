class HumansController < ApplicationController
  def index
    @humans = Humen.all
  end

  def show
    @human = Humen.find(params[:id])
  end

  def new
    @human = Humen.new
    render partial: 'form'
  end

  def create
    @human = Humen.new(human_params)
    if @human.save
      redirect_to humans_path
    else
      render :new
    end
  end

  def edit
    @human = Humen.find(params[:id])
    render partial: 'form'
  end

  def update
    @human = Humen.find(params[:id])
    if @human.update(human_params)
      redirect_to humans_path
    else
      render :edit
    end
  end

  def destroy
    Humen.find(params[:id]).destroy
  end

  private
  def human_params
    params.require(:human).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
 end

end
