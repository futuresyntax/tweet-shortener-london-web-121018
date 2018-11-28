# # Write your code here.
# def dictionary
#   dictionary = {
#    "hello" => "hi",
#    "to, two,too" => "2",
#    "for, four" => "4",
#    "be" => "b",
#    "you" => "u",
#    "at" => "@",
#    "&" => "&"
#     }
# end
#
# def word_substituter(tweet)
#   tweet.split(" ").map do |word|
#       if
#         dictionary.keys.include?(word.downcase)
#         word = dictionary[word.downcase]
#       else
#         word
#     end
#   end.join(" ")
# end

# def dictionary
#   dictionary = {
#    "hello" => "hi",
#    "to, two,too" => "2",
#    "for, four" => "4",
#    "be" => "b",
#    "you" => "u",
#    "at" => "@",
#    "&" => "&"
#     }
# end

## tried a bunch of stuff, I had the dictionary deffinition and made everything pass.

def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |phrase|
    puts word_substituter(phrase)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
    short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
       short_tweet[0..136] + "..."
  else
    tweet
end
end


# if tweet.length >= 140
#   << "..."
#   tweet.split.map do |phrase|
#     if tweet.length > 140
#       word_substituter(phrase)
#     else phrase.length <= 130
#     phrase
#   end
# end.join(" ")
# end
