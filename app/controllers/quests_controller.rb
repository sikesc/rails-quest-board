class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end

  def show
    @quest = Quest.find(params[:id])
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    if @quest.save
      redirect_to quest_path(@quest)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def quest_params
    params.require(:quest).permit(:name, :description, :reward)
  end
end
