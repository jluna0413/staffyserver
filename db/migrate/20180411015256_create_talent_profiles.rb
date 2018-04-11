class CreateTalentProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :talent_profiles do |t|
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :biography
      t.string :phone
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :sex
      t.date :birthday
      t.string :government_id
      t.string :topsuit
      t.string :waisthip
      t.string :pantlength
      t.string :eyecolor
      t.boolean :has_visible_tattoo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
