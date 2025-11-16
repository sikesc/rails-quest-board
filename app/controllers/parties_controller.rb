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
      render new_quest_party_path(@quest), status: :unprocessable_entity
    end
  end

  def party_params
    params.require(:party).permit(:hero_id)
  end
end
