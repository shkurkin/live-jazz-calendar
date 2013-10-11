class Event < ActiveRecord::Base
  attr_accessible :address, :contact_email, :contact_phone, :cost, :date_time, :details, :event_name, :performers, :picture_url, :repeat_info, :venue
end
