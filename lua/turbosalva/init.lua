print("hello.lua")
print("hello.lua")
print("hello.lua")
print("hello.lua")
local function greet(name)
  print("Hello, " .. name .. "!")
end

return {
  greet = greet,
}
