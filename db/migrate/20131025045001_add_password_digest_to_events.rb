class AddPasswordDigestToEvents < ActiveRecord::Migration
  def change
    add_column :events, :password_digest, :string
  end
end
