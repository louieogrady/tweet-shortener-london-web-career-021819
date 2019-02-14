require "pry"

def dictionary
  keys = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

#dictionary.each do |k, v| tweet.gsub! (k, v) 

=begin
def word_substituter(tweet)
  newtweet = tweet.split.each do |word| 
    dictionary.each do |phrase, subs|
      newtweet.map do 
        if word == phrase
          word = subs  
        end 
    end
  end
newtweet.join(" ")
end 
=end 

def word_substituter(tweet)
  newtweet = tweet.split 
    dictionary.each do |phrase, subs|
      newtweet.map! do |word|
        if word == phrase
           word = subs
        elsif 
          word == phrase.capitalize
          word = subs
        else 
          word = word
        end
      end
    end 
  newtweet.join(" ")
end

def bulk_tweet_shortener(tweetarray)
  tweetarray.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    newtweet = tweet.split 
    dictionary.each do |phrase, subs|
      newtweet.map! do |word|
        if word == phrase
           word = subs
        elsif 
          word == phrase.capitalize
          word = subs
        else 
          word = word
        end
      end
    end 
    newtweet.join(" ")
  else
    tweet
  end 
end


def shortened_tweet_truncator(tweet)
  if tweet.length >= 140
    newtweet = tweet.split 
    dictionary.each do |phrase, subs|
      newtweet.map! do |word|
        if word == phrase
           word = subs
        elsif 
          word == phrase.capitalize
          word = subs
        else 
          word = word
        end
      end
    end 
    trunctweet = newtweet.join(" ") 
    trunctweet[0..136] << "..."
  else
    tweet
  end 
end



#"hello" becomes 'hi'
#"to, two, too" become '2' 
#"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#"at" becomes "@" 
#"and" becomes "&"