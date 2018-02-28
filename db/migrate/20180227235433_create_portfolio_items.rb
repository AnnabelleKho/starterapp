class CreatePortfolioItems < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolio_items do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :link
      t.string :image
      t.integer :position, default: 100
      t.string :slug

      t.timestamps
    end
    add_index :portfolio_items, :slug, unique: true
  end
end
