local codes = {
    "SLAYER",
    "LATEUPDATESORRY",
    "THXFOR1MLIKES",
    "ROST10K"
}

local codesEvent = game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent")

for _, code in ipairs(codes) do
    local args = { [1] = code }
    codesEvent:FireServer(unpack(args))
    task.wait(.3)
end
