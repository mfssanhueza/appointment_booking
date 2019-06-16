class AddUniversityAndPictureToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :university, :string
    add_column :doctors, :picture, :string
  end
end
