require 'launchy'

def check_if_user_gave_input
  abort("Missing input, please enter your search words.") if ARGV.empty?
end

def get_url
  return url = ARGV
end

def open_url(url)
  # p url
  Launchy.open("https://duckduckgo.com/?q=#{url.join("+")}")
end
check_if_user_gave_input
open_url(get_url)
