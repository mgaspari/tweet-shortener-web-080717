# Write your code here.
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
    tweet.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
  end

def bulk_tweet_shortener(arrayTweets)
arrayTweets.each do |value|
  puts word_substituter(value)
end
end

def selective_tweet_shortener(tweet)
if tweet.length <= 140
  return tweet
else
  return word_substituter(tweet)
end
end


def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    return tweet[0..139]
  else
    return tweet
  end
end
