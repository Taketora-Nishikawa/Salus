class AddAgeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :sex, :string
    add_column :users, :profile_image, :string
    add_column :users, :height, :integer
    add_column :users, :body_weight, :integer
    add_column :users, :birthday, :datetime
    add_column :users, :self_introduction, :text
    add_column :users, :commit, :text
  end
end
