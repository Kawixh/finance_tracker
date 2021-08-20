class FriendshipsController < ApplicationController
  include FriendshipsHelper
  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend.id)
    user_added_flash(friend.first_name, friend.last_name) if current_user.save
    redirect_to friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first.destroy
    user_removed_message
    redirect_to friends_path
  end
end
