class VotesController < ApplicationController
  def create
    vote_params[:value] = vote_params[:value] == "true" ? true : nil
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to referendas_url, notice: "Vote was successfully created."
    else
      redirect_to referendas_url, alert: "Vote could not be saved."
    end
  end

  private
    def vote_params
      params.require(:vote).permit(:value, :person_id, :referenda_id)
    end
end
