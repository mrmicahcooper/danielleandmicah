class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.boolean :attending
      t.string :meal_preference
      t.text :song_preferences
      t.string :email
      t.string :phone
    end
  end
end
