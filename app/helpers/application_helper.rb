module ApplicationHelper

  def title(title)
   "#{title} | Potential Employee Application"
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end

end
