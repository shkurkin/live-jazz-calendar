class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :performers
      t.string :venue
      t.string :address
      t.datetime :date_time
      t.string :repeat_info
      t.string :cost
      t.text :details
      t.string :picture_url
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
    add_index :events, :date_time
  end
end
