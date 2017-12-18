Spree::Role.class_eval do
  has_many :role_users, class_name: 'Spree::RolesUser'
  has_many :users, through: :role_users, class_name: 'Spree::User'
end
