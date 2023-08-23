def caesar_cipher(string, shift, modified='')
    string.each_char do |char|
        base = char.ord < 91 ? 65 : 97
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            rotation = (((char.ord - base) + shift) % 26) + base
            modified += rotation.chr
        else
            modified += char
        end
    end
    puts modified
end

caesar_cipher("A usew, A kso, A ugfimwjwv.", 8)