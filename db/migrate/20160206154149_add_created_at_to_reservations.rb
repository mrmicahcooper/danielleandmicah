class AddCreatedAtToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :created_at, :datetime
  end
end
