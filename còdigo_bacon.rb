class Baconian
  
  @@cipher = {
    'a' => 'AAAAA',
    'b' => 'AAAAB',
    'c' => 'AAABA',
    'd' => 'AAABB',
    'e' => 'AABAA',
    'f' => 'AABAB',
    'g' => 'AABBA',
    'h' => 'AABBB',
    'i' => 'ABAAA',
    'k' => 'ABAAB',
    'l' => 'ABABA',
    'm' => 'ABABB',
    'n' => 'ABBAA',
    'o' => 'ABBAB',
    'p' => 'ABBBA',
    'q' => 'ABBBB',
    'r' => 'BAAAA',
    's' => 'BAAAB',
    't' => 'BAABA',
    'v' => 'BAABB',
    'w' => 'BABAA',
    'x' => 'BABAB',
    'y' => 'BABBA',
    'z' => 'BABBB'
     }

  def initialize
    @translate = ""
  end

  def evaluate_hash(key)
    @@cipher.each do |baconian, translate|
      @translate << baconian if translate == key
    end
  end

   def translate(string)
     string = string.scan(/.{5}/)
     string.each do |str| 
     key = str
     evaluate_hash(str)
    
    end
     p @translate
  end

end

baconian_cipher = Baconian.new
baconian_cipher2 = Baconian.new

baconian_cipher.translate("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
baconian_cipher2.translate("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"


