class CreateFreelancerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :freelancer_profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :suburb
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :picture
      t.text :bio

      t.timestamps
    end
  end
end
