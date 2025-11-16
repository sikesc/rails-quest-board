class PartiesController < ApplicationController
  def new
    @quest = Quest.find(params[:quest_id])
    @party = Party.new
  end

  def create
    @quest = Quest.find(params[:quest_id])
    @party = Party.new(party_params)
    @party.quest = @quest
    if @party.save
      redirect_to quest_path(@quest)
    else
      render "quests/show", status: :unprocessable_entity
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @quest = @party.quest
    @party.destroy
    redirect_to quest_path(@quest)
  end

  def party_params
    params.require(:party).permit(:character_id)
  end
end
