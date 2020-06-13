function wasd(keyboard)
    keyboard.W = tocolor('orange')
    wait(1)
    keyboard.S = tocolor('orange')
    wait(1)
    keyboard.A = tocolor('orange')
    wait(1)
    keyboard.D = tocolor('orange')
end

buffer = RenderTarget:new()
thread(wasd, buffer)

function render(ms, target)
    target:blend(buffer)
end