local colors = {'red', 'green', 'blue', 'yellow'}

-- pulls random element from color array
function getRandomColor()
    math.randomseed(30981723095761982)
    return colors[math.random(#colors)]
end


function msword(keyboard)


    keyboard.M = tocolor('red')
    keyboard.S = tocolor('red')
    keyboard.W = tocolor('red')
    keyboard.O = tocolor('red')
    keyboard.R = tocolor('red')
    keyboard.D = tocolor('red')
end

buffer = RemderTarget:new()
thread(msword, buffer)

function render(ms, target)
    target:blend(buffer)
end