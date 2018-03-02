class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :gig_type, foreign_key: true
      t.string :name
      t.string :description
      t.date :deadline
      t.string :status

      t.timestamps
    end
  end
end
