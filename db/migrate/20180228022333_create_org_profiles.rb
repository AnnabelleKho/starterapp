class CreateOrgProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :org_profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :logo
      t.string :contact_name
      t.string :contact_phone
      t.text :description
      t.string :slug
      t.string :link
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
    add_index :org_profiles, :slug, unique: true
  end
end
