class FriendshipsController < ApplicationController
	def destroy
		@friendship = current_user.friend_ships.where(friend_id: params[:id]).first
		@friendship.destroy

		respond_to do |format|
			format.html {redirect_to root_path, notice: "Friend was successfylly removed"}
		end
	end
end