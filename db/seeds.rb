#  !!!!!!!!!!
#
#
#
# Para testar: rails db:setup e rails db:migrate !!!!!!!!!!!!
#
#
#
# !!!!!!!!
admin = User.create(
  :email => "test@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
admin.update_attribute(:role, 2)
#admin.toggle!(:admin)
admin.save

user1 = User.create(
  :email => "sara@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
user1.update_attribute(:role, 0)
user1.save

user2 = User.create(
  :email => "felipe@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
user2.update_attribute(:role, 0)
user2.save

recepsionista1 = User.create(
  :email => "recep@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
recepsionista1.update_attribute(:role, 1)
recepsionista1.save

recepsionista2 = User.create(
  :email => "recep2@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
recepsionista2.update_attribute(:role, 1)
recepsionista2.save

admin2 = User.create(
  :email => "jhon@example.com",
  :password => "123456",
  :password_confirmation => "123456"
)
admin2.update_attribute(:role, 2)
#admin2.toggle!(:admin)
admin2.save