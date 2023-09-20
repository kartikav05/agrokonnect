class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_one_attached :profile_picture
   
has_many :tasks

has_many :tools

has_many :notifications

has_many :messages
has_many :events

   validates :name, :email, :phone_number, presence: true
end
