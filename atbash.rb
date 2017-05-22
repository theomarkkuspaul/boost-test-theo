class Atbash

  def initialize(cipher)
    @cipher = cipher
    map_cipher
  end

  def decrypt(encrypted)
    # container string to hold onto each decrypt letter
    decrypted_message = ""

    #iterate through encrypted message
    encrypted.each_char do |char|

      # IF the ASCII value of the char is a letter and NOT a punctuation mark or space or the like
      if char.ord > 64 && char.ord < 123
        #use the current character as a key to get the proper decrypted letter value from the list of letter mappings
        decrypted_message += @cipher_indices[char]
      else
        decrypted_message += char
      end
    end

    # return the decrypted message
    decrypted_message
  end

  def map_cipher
    # container to hold onto the position values
    # of where each cipher letter
    # maps to it's proper placement
    # in the alphabet
    @cipher_indices = {}

    counter = 0

    while counter < alphabet.length

      # use the current counter value as a key for the position of the letter in the cipher
      # this letter will map to a letter in the standard alphabet
      # therefore we get the letter in the standard alphabet using the counter value
      @cipher_indices["#{@cipher[counter]}"] = alphabet[counter]

      # increment counter to prevent infinite l00p
      counter += 1

    end
  end

  private

  def alphabet()
    'abcdefghijklmnopqrstuvwxyz'.split('')
  end

end