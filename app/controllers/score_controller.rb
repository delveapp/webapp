#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class ScoreController < ApplicationController

  def index
    # TODO: Sanitize inputs!!
    user = params[:uid]
    menu_item = params[:menu_item]
    score = UserScore.find_by(user_id: user, menu_item_id: menu_item)
    if score == nil
      render :json => {error: "Score not found for user #{user} on menu item #{menu_item}"}, status: 400
    else
      render :json => {success: true, data: score.as_json}
    end
  end

  def create_or_update
    # TODO: Sanitize inputs!!
    user = params[:uid]
    menu_item = params[:menu_item]
    score = params[:score]
    new_score = UserScore.find_by(user_id: user, menu_item_id: menu_item)
    if new_score == nil
      new_score = UserScore.new(score: score, user_id: user, menu_item_id: menu_item)
      render :json => {data: new_score.as_json}, status: 201 if new_score.save
    else
      update(params)
      #render :json => {error: "Score already created for user #{user} on menu item #{menu_item}. Use POST to update"}, status: 409
    end
  end

  def update(params)
    # TODO: Sanitize inputs!!
    user = params[:uid]
    menu_item = params[:menu_item]
    score = params[:score]
    new_score = UserScore.lock.find_by(user_id: user, menu_item_id: menu_item)
    if new_score != nil
      new_score[:score] = score
      render :json => {data: new_score.as_json}, status: 200 if new_score.save!
    else
      render :json => {error: "Score not found for user #{user} on menu item #{menu_item}. Use PUT to create"}, status: 404
    end
  end
end
