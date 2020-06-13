
function code(keyboard)
    keyboard.H = tocolor('red')
    keyboard.J = tocolor('red')
    keyboard.K = tocolor('red')
    keyboard.L = tocolor('red')
end

buffer = RenderTarget:new()
thread(code, buffer)

function render(ms, target)
    target:blend(buffer)
end
