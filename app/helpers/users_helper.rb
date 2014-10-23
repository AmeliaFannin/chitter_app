module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  # Fills in a placekitten because this is a practice app no one uses 

  def placekitten_for(user, options = { size: 50 })
    size = options[:size]
    placekitten_url = "http://placekitten.com/g/#{size}"
    image_tag(placekitten_url, alt: user.name, class: "gravatar")
  end

end
