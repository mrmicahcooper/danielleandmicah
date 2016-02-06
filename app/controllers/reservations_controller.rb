class ReservationsController < ApplicationController

  http_basic_authenticate_with name: "mrmicahcooper", password: "getmarried", only: :index

  expose :reservations, -> { Reservation.all.order(:attending, :meal_preference, :created_at) }
  expose(:reservation)

  def create
    if reservation.save
      redirect_to :thanks
    else
      flash.alert = reservation.errors.full_messages.to_sentence
      redirect_to '/#rsvp'
    end
  end

  private

  def reservation_params
    params.permit(*%i[
      attending
      email
      meal_preference
      name
      phone
      song_preferences
    ])
  end
end
