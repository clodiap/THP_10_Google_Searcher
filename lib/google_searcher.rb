require 'launchy'

def check_if_user_gave_input
  abort("missing input") if ARGV.empty?
end

def get_url
  return url = ARGV
end

def open_url(url)
  # p url
  Launchy.open("https://www.google.com/search?q=#{url.join("+")}")
end
check_if_user_gave_input
open_url(get_url)
