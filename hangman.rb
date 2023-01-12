def start_new_game
    wordlist = File.read('google-10000-english')
    p pick_random_word(wordlist)
end

def pick_random_word(wordlist)
    words = wordlist.split(" ")
    valid_words = words.select { |word| word.length >= 5 && word.length <= 12 }
    return valid_words.sample
end

start_new_game