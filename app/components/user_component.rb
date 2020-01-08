class UserComponent < Rcode5::Component
  attr_accessor :name

  DOMAINS = [
    "https://www.placecage.com/",
    "https://placekitten.com/",
    "https://placebear.com/",
    "https://www.stevensegallery.com/",
  ]
  
  def image
    width = rand(10) * 10 + 300
    height = rand(10) * 10 + 200
    domain = DOMAINS.sample
    "#{domain}#{width}/#{height}"
  end
end
