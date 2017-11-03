VERSION = "1.0.0"

if GetOption("rustfmt") == nil then
  AddOption("rustfmt", true)
end

function rustfmt()
  -- Prevent infinite loop of onSave()
  CurView():Save(false)
  
  -- No flags needed, as rustfmt's default behaviour is "overwrite"
  local handle = io.popen("rustfmt " .. CurView().Buf.Path)
  local result = handle:read("*a")
  handle:close()

  CurView():ReOpen()
end

function onSave(view)
  -- Check if we're working with a rust file
  if CurView().Buf:FileType() == "rust" then
    -- Only run when enabled. Allows for disabling of formatter without uninstall
    if GetOption("rustfmt") then
      rustfmt()
    end
  end
end

-- User command & help file
MakeCommand("rustfmt", "rustfmt.rustfmt", 0)
AddRuntimeFile("rustfmt", "help", "help/rustfmt.md")
