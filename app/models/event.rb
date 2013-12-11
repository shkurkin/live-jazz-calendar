# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  event_name    :string(255)
#  performers    :string(255)
#  venue         :string(255)
#  address       :string(255)
#  date_time     :datetime
#  repeat_info   :string(255)
#  cost          :string(255)
#  details       :text
#  picture_url   :string(255)
#  contact_phone :string(255)
#  contact_email :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :address, :contact_email, :contact_phone, :cost,
  :date_time, :details, :event_name, :performers, :picture_url,
  :repeat_info, :venue, :password, :password_confirmation, :time
  has_secure_password

  validates :event_name, presence: true, length: { maximum: 80 }
  validates :venue, presence: true
  validates :date_time, presence: true
  validates :performers, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :contact_email, format: { with: VALID_EMAIL_REGEX }

end
