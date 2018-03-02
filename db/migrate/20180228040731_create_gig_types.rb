class CreateGigTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :gig_types do |t|
      t.string :icon
      t.string :name
      t.string :description
      t.string :color

      t.timestamps
    end
  end
end
