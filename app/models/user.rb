class User < ActiveRecord::Base

  has_many :favourite_shows
  has_many :favourites, through: :favourite_shows, source: :show
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
