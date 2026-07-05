-- list all pdf files in ./ly folder
--
-- Returns a sorted list (array) of PDF file paths inside `dir` (non-recursive).
-- Defaults to "./ly" if dir is not provided.
local function list_pdf_files(dir)
    dir = dir or "./ly"
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
    print("  " .. path .. (i < #pdfs and "," or ""))
end
print("}")
