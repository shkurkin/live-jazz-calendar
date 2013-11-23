class ChangeDatetime < ActiveRecord::Migration
  def self.up
    change_column :events, :date_time, :date
  end

  def self.down
    change_column :events, :date_time, :datetime
  end
end
