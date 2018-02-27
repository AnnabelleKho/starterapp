class AddSlugToFreelancerProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :freelancer_profiles, :slug, :string
    add_index :freelancer_profiles, :slug, unique: true
  end
end
