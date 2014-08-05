class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end

#The password and password_confirmation fields are sometimes referred to as "virtual attributes"
#because they are not actually being stored in the database.
#Instead, Sorcery uses the given password along with the automatically generated salt value
#to create and store the crypted_password value.
