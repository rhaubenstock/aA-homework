require_relative 'super_useful'

#this gives an argument error since
#convert_to_int is just an alias for Integer
# and Integer(x) expects x to be a digit or string of digits
# 
puts "'five' == #{convert_to_int('five')}"

feed_me_a_fruit

#sam = BestFriend.new('', 1, '') #fails 5 year test
#sam = BestFriend.new('', 5, '') #passes 5 year test but fails empty name
#sam = BestFriend.new('Sam', 5, '') #passes 5 yr and name but fails empty friendstuff
sam = BestFriend.new('Sam', 5, 'Hula-hooping')

sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
