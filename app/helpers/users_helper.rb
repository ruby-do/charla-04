module UsersHelper
  def formal_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end
