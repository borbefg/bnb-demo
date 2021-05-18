class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :guest, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :nights
      t.integer :guests
      t.integer :adults
      t.integer :children
      t.integer :infants
      t.integer :status
      t.string :currency
      t.string :security_price
      t.string :payout
      t.string :total
      t.string :description

      t.timestamps
    end
  end
end
