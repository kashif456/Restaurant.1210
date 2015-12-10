class AddCommentToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :reservation_comments, :string
  end
end
