json.extract! talent_profile, :id, :username, :first_name, :middle_name, :last_name, :biography, :phone, :address, :address2, :city, :state, :zipcode, :sex, :birthday, :government_id, :topsuit, :waisthip, :pantlength, :eyecolor, :has_visible_tattoo, :user_id, :created_at, :updated_at
json.url talent_profile_url(talent_profile, format: :json)
