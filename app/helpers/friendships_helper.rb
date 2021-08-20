module FriendshipsHelper
  def user_added_flash(first_name, last_name)
    flash[:notice] =  "#{friend.first_name + " " + friend.last_name} added successfully"
  end


  def user_removed_message
    flash[:notice] = "Friend is successfully removed"
  end
end
