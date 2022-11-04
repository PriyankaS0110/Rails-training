class Teacher < ApplicationRecord
  has_many :courses
  # validates :student_email, confirmation: true
  # validates :first_name, presence: true
  # validates :first_name, presence: { message: "must be given please" }
  validates :first_name, :last_name, :student_email, presence: true

  # before_create :display_greetings

  # def display_greetings
  #   puts ' Hello I am a before action callback'
  # end
end
