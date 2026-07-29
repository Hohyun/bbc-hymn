local sqlite3 = require("lsqlite3")

local db = sqlite3.open("../bbc-hymn-meta_data.db")

local function k_word_range(phrase)
    if phrase <= "가" then
        return "가"
    elseif phrase <= "나" then
        return "나"
    elseif phrase <= "다" then
        return "다"
    elseif phrase <= "라" then
        return "라"
    elseif phrase <= "마" then
        return "마"
    elseif phrase <= "바" then
        return "바"
    elseif phrase <= "사" then
        return "사"
    elseif phrase <= "아" then
        return "아"
    elseif phrase <= "자" then
        return "자"
    elseif phrase <= "차" then
        return "차"
    elseif phrase <= "카" then
        return "카"
    elseif phrase <= "타" then
        return "타"
    elseif phrase <= "파" then
        return "파"
    else
        return "하"
    end
end

local function e_word_range(phrase)
    local first_letter = string.sub(phrase, 1, 1):lower()
    if first_letter < "a" then
        return "A"
    elseif first_letter < "b" then
        return "B"
    elseif first_letter < "c" then
        return "C"
    elseif first_letter < "d" then
        return "D"
    elseif first_letter < "e" then
        return "E"
    elseif first_letter < "f" then
        return "F"
    elseif first_letter < "g" then
        return "G"
    elseif first_letter < "h" then
        return "H"
    elseif first_letter < "i" then
        return "I"
    elseif first_letter < "j" then
        return "J"
    elseif first_letter < "k" then
        return "K"
    elseif first_letter < "l" then
        return "L"
    elseif first_letter < "m" then
        return "M"
    elseif first_letter < "n" then
        return "N"
    elseif first_letter < "o" then
        return "O"
    elseif first_letter < "p" then
        return "P"
    elseif first_letter < "q" then
        return "Q"
    elseif first_letter < "r" then
        return "R"
    elseif first_letter < "s" then
        return "S"
    elseif first_letter < "t" then
        return "T"
    elseif first_letter < "u" then
        return "U"
    elseif first_letter < "v" then
        return "V"
    elseif first_letter < "w" then
        return "W"
    elseif first_letter < "x" then
        return "X"
    elseif first_letter < "y" then
        return "Y"
    else
        return "Z"
    end
end

-- Korean First Phrase Order
current_range = nil
print("\\section*{가사 차례}")
print("\\begin{supertabular}{c l}")
for row in db:nrows("SELECT * FROM metadata ORDER BY first_phrase") do
    local key = string.gsub(row.key_signature, " Maj", "")
    if current_range ~= k_word_range(row.first_phrase) then
        if current_range ~= nil then
            print(" & \\\\")
        end
        current_range = k_word_range(row.first_phrase)
        print(string.format("\\textbf{%3d} & \\textbf{%s} \\textbf{(%s)} \\\\", row.hymn_no, row.first_phrase, key))
    else
        print(string.format("%3d & %s (%s) \\\\", row.hymn_no, row.first_phrase, key))
    end
end
print("\\end{supertabular}")
print("\\clearpage\n\n")

-- Korean Title Order
local current_range = nil
print("\\section*{제목 차례}")

print("\\begin{supertabular}{c l}")
for row in db:nrows("SELECT * FROM metadata ORDER BY title_k") do
    local key = string.gsub(row.key_signature, " Maj", "")
    if current_range ~= k_word_range(row.title_k) then
        if current_range ~= nil then
            print(" & \\\\")
        end
        current_range = k_word_range(row.title_k)
        print(string.format("\\textbf{%3d} & \\textbf{%s} \\textbf{(%s)} \\\\", row.hymn_no, row.title_k, key))
    else
        print(string.format("%3d & %s (%s) \\\\", row.hymn_no, row.title_k, key))
    end
end
print("\\end{supertabular}")
print("\\clearpage\n\n")

-- Category, SubCategory, Korean Title Order
local current_category = nil
local current_sub_category = nil
print("\\section*{분류별 제목 차례}")

print("\\begin{supertabular}{c l}")
for row in db:nrows("SELECT * FROM metadata ORDER BY category, sub_category, title_k") do
    local key = string.gsub(row.key_signature, " Maj", "")
    if  row.category ~= current_category then
        if current_category ~= nil then
            print(" & \\\\")
        end
        print("\\multicolumn{2}{l}{\\textbf{\\large " .. row.category .. "}} \\\\")
    end
    
    if row.sub_category ~= "" and row.sub_category ~= current_sub_category then
        -- if current_sub_category ~= nil then
        --     print(" & \\\\")
        -- end
        print("\\multicolumn{2}{l}{\\textbf{" .. row.sub_category .. "}} \\\\")
    end
    
    print(string.format("%3d & %s (%s) \\\\", row.hymn_no, row.title_k, key))
    current_category = row.category
    current_sub_category = row.sub_category
end
print("\\end{supertabular}")
print("\\clearpage\n\n")

-- English Title Order
current_range = nil
print("\\section*{영문 제목 차례}")

print("\\begin{supertabular}{c l}")
for row in db:nrows("SELECT * FROM metadata WHERE title_e != 'N/A' ORDER BY title_e") do
    local key = string.gsub(row.key_signature, " Maj", "")
    if current_range ~= e_word_range(row.title_e) then
        if current_range ~= nil then
            print(" & \\\\")
        end
        current_range = e_word_range(row.title_e)
        print(string.format("\\textbf{%3d} & \\textbf{%s} \\textbf{(%s)} \\\\", row.hymn_no, row.title_e, key))
    else
        print(string.format("%3d & %s (%s) \\\\", row.hymn_no, row.title_e, key))
    end
end
print("\\end{supertabular}")

db:close()
