class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :gig, foreign_key: true
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
