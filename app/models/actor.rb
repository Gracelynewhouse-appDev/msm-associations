# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :dob,
    message: "dob should be unique to name" }
  has_many :characters, :class_name => "Character", :foreign_key => "actor_id"
end
