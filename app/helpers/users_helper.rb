module UsersHelper

  # returns the Gravatar (http://gravatar.com/) for the given user.
  # @return an image tag for the Gravatar with a "gravatar" class and alt text equal to
  # the user's name
  def gravatar_for(user, options = { size:50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url,alt: user.name, class: "gravatar")
  end
end
