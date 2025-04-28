def caeser_cipher()
    combos = {
    'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6,
    'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12,
    'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18,
    's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24,
    'y' => 25, 'z' => 26
    }

    combos_reverse = combos.invert

    shift = 3
    final_message = ""

    puts "How can I help you?"
    input = gets.chomp.downcase

    input.each_char do |char|
        if combos.has_key?(char)
          num = combos[char]
          shifted_num = (num - shift) % 26
          shifted_num = 26 if shifted_num == 0
          final_message += combos_reverse[shifted_num]
        else
          final_message += char
        end
      end
    
      puts final_message
    end
end
caeser_cipher