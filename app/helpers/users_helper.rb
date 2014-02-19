module UsersHelper

  # returns the Gravatar (http://gravatar.com/) for the given user.
  # @return an image tag for the Gravatar with a "gravatar" class and alt text equal to
  # the user's name
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url,alt: user.name, class: "gravatar")
  end
end
