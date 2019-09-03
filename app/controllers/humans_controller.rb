class HumansController < ApplicationController
  before_action :set_human, only: [:show, :edit, :update, :destroy]
  def index
    @humans = Human.all
  end

  def show
    # @human = Human.find(params[:id])
  end

  def new
    @human = Human.new
    render partial: 'form'
  end

  def create
    @human = Human.new(human_params)
    if @human.save
      redirect_to humans_path
    else
      render :new
    end
  end

  def edit
    # @human = Human.find(params[:id])
    render partial: 'form'
  end

  def update
    # @human = Human.find(params[:id])
    if @human.update(human_params)
      redirect_to humans_path
    else
      render :edit
    end
  end

  def destroy
    Human.find(params[:id]).destroy
    redirect_to humans_path
  end

  private
  def human_params
    params.require(:human).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
 end

 def set_human
  @human = Human.find(params[:id])
end

end
