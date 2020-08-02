User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.name = 'master'
  user.admin = true
  user.password = '9123ryoi'
  user.password_confirmation = '9123ryoi'
end