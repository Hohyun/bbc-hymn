-- list all pdf files in ./ly folder
--
-- Returns a sorted list (array) of PDF file paths inside `dir` (non-recursive).
-- Defaults to "./ly" if dir is not provided.
local function list_pdf_files(dir)
    dir = dir or "../pdf"
    local results = {}

    -- Try using LuaFileSystem if available
    local ok, lfs = pcall(require, "lfs")
    if ok and lfs then
        local attr = lfs.attributes(dir)
        if not attr or attr.mode ~= "directory" then
            return results -- empty if directory doesn't exist
        end

        for name in lfs.dir(dir) do
            if name ~= "." and name ~= ".." then
                local full = dir .. (dir:sub(-1) == "/" and "" or "/") .. name
                local a = lfs.attributes(full)
                if a and a.mode == "file" and name:lower():match("%.pdf$") then
                    table.insert(results, full)
                end
            end
        end
    else
        -- Fallback for Unix-like systems: use find to list files non-recursively
        -- (works on macOS/Linux). Suppress errors by redirecting stderr.
        local cmd = string.format('find "%s" -maxdepth 1 -type f -iname "*.pdf" 2>/dev/null', dir)
        local p = io.popen(cmd)
        if p then
            for line in p:lines() do
                table.insert(results, line)
            end
            p:close()
        end
    end

    table.sort(results)
    return results
end

-- Example usage:
local pdfs = list_pdf_files() -- lists ./ly by default
print("\\includepdfmerge{")
for i, path in ipairs(pdfs) do
    -- 1. Remove the tailing ".pdf" from the path
    -- 2. Split the remaining path by "__" to get the last part which is the number of pages if it exeed 1 page.
    -- 3. Save the last page number if it exists, otherwise save 1.
    local base = path:gsub("%.pdf$", "")
    local parts = {}
    for part in base:gmatch("[^/]+") do
        table.insert(parts, part)
    end
    local last_part = parts[#parts]
    local page_count = 1
    if last_part:find("__") then
        local page_info = last_part:match("__(%d+)$")
        if page_info then
            page_count = tonumber(page_info)
        end
    end
    -- Print the path and page count if greater than 1
    -- if path include 'template' in the path, then skip it.
    if path:find("template") then
        goto continue
    end

    if page_count > 1 then
        print("  " .. path .. ", 1-" .. page_count .. (i < #pdfs and "," or ""))
    else    
        -- if path include '_L', then print the path with '1' as the page count
        -- if path include '_R', then print the path with '2' as the page count
        if path:find("_L") then
            print("  " .. path .. ", 1" .. (i < #pdfs and "," or ""))
        elseif path:find("_R") then
            print("  " .. path .. ", 2" .. (i < #pdfs and "," or ""))
        else
            print("  " .. path .. (i < #pdfs and "," or ""))
        end
    end
    ::continue::  
end
print("}")
