
-- this API exists purely to allow external programs to install
-- their own man pages and see that we exist

man = {}

local function tryResolvePath(i, ext)
  if not ( i:byte(#i - 4) == 46 or i:byte(#i - 5) == 46 ) then
    i = i..ext
  end
  i = shell.resolve('.man/'..i)
  if not fs.exists(i) then
    return false, 'ERROR: '..i..':No such man page. Use man --list for a list of available pages.'
  end
  if fs.isDir(i) then
    return false, 'ERROR: '..i..' is a directory; perhaps it was insalled incorrectly?'
  end
  return i
end

local function isolateName(file)
  if not file:byte(#i - 4) == 46 then
    file = file..'.man'
  end
  local errs = {}
  local ext = {
    '.man',
    '.json',
    '.JSON',
    ''
  }
  for _,v in ipairs(ext) do
    local ok, err = tryResolvePath(file, v)
    if ok then
      return ok
    else
      errs[#errs+1] = {file, err} -- only returns errors if all tries fail, but we still want a copy of each error
    end
  end
  return false, errs
end

local function doInstall(file)
  local iso, errs = isolateName(file)
  if not iso then
    return false, errs
  end
  fs.move(target, '.man/'..iso)
  return '.man/'..iso
end

-------------------------------------------------

function man.install(target)
  local ok, errs = doInstall()
end
