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

require 'spec_helper'

describe Event do
  before { @event = Event.new(event_name: "Test Jazz Event", performers: "Stanley Clarke", 
  					venue: "The Blue Note", address: "1029 Clark Ct. Davis, CA 95681",
  					date_time: DateTime.now, repeat_info: "weekly", cost: "10$", 
            picture_url: "http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html",
            contact_phone: "530-400-6017", contact_email: "eshkurkin@gmail.com",
            password: "password", password_confirmation: "password")}
  subject { @event }

  it { should respond_to(:event_name) }
  it { should respond_to(:performers) }
  it { should respond_to(:venue) }
  it { should respond_to(:address) }
  it { should respond_to(:date_time) }
  it { should respond_to(:repeat_info) }
  it { should respond_to(:cost) }
  it { should respond_to(:picture_url) }
  it { should respond_to(:contact_phone) }
  it { should respond_to(:contact_email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }
  it { should be_valid }

  describe "when event_name is not present" do
    before { @event.event_name = "" }
    it { should_not be_valid }
  end

  describe "when venue is not present" do
    before { @event.venue = ""}
    it { should_not be_valid }
  end

  describe "when date_time is not present" do
    before { @event.date_time = "" }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @event.password = @event.password_confirmation = ""}
    it { should_not be_valid }
  end

  describe "when password dosent match confirmation" do
    before { @event.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when event name is too long" do
    before { @event.event_name = "a" * 81 }
    it { should_not be_valid }
  end

  describe "when venue is too long" do
    before { @event.event_name = "a" * 81 }
    it { should_not be_valid }
  end

  describe "when performers is too long" do
    before { @event.event_name = "a" * 256 }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @event.contact_email = invalid_address
        @event.should_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @event.contact_email = valid_address
        @event.should be_valid
      end
    end
  end

end
