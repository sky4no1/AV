local codes = {
    "AV500KLIKES",
    "400KLIKES",
    "300KLIKES",
    "200KLIKES",
    "100KLIKES",
    "10KLIKES",
    "AV50MIL",
    "25MVISITS",
    "10MVISITS",
    "RELEASE",
    "DELAY",
    "70MVISITS",
    "600KLIKES",
    "300KPLAYERS",
    "100MVISITS",
    "800KLIKES"
}

local codesEvent = game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent")

for _, code in ipairs(codes) do
    local args = { [1] = code }
    codesEvent:FireServer(unpack(args))
    task.wait(.3)
end
