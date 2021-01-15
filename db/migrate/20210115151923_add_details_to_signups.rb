class AddDetailsToSignups < ActiveRecord::Migration[6.0]
  def change
    add_reference :signups, :camper, null: false, foreign_key: true
    add_reference :signups, :activity, null: false, foreign_key: true
    add_column :signups, :time, :integer
  end
end
