#http://railscasts.com/episodes/29-group-by-month?view=asciicast
#http://www.aimred.com/news/developers/2010/05/11/rediscovering_ruby_abbrev/


require 'abbrev'

  name = ['friendly', 'pikku']
  nickname = name.abbrev
  grouped_nicknames = nickname.group_by{ |nickname, name| name }

  name_abbrevs = grouped_nicknames.inject({}) do |hash, grouped_nicknames|

puts nickname
puts
puts grouped_nicknames
