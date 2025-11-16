class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :destroy]

  def index
    @quests = Quest.all
  end

  def show
    @party = Party.new
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
    @quest.destroy
    redirect_to quests_path
  end

  private

  def quest_params
    params.require(:quest).permit(:name, :description, :reward)
  end

  def set_quest
    @quest = Quest.find(params[:id])
  end
end
