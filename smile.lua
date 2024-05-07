function smile(input_string)
    local arrEmoName = {'ami', 'anya', 'aru', 'aka', 'dauhanh', 'dora', 'le', 'menhera', 'moew', 'nam', 'pepe', 'qoobee', 'qoopepe', 'thobaymau', 'troll', 'dui', 'firefox', 'conan'}

    for _, emoName in ipairs(arrEmoName) do
        local pattern = ":" .. emoName .. "([0-9]*):"
        local replacement = '<img loading="lazy" src="https://dorew-site.github.io/assets/smileys/' .. emoName .. '/' .. emoName .. '%1.png" alt="%1"/>'
        input_string = input_string:gsub(pattern, replacement)
    end

    return input_string
end
print(smile(":ami1:"))