
function fib(target)
    output_as_string = ""

    first = 0
    next = 1
    output = 0
    i = 0

    while output < target 
        if i <= 1
            output = i
        else
            output = first + next
            first = next
            next = output
        end

        if output < target
            println(output)
        end
        i += 1
    end
end

function ask_input()
    # print("Enter a number: ")
    # answer = readline()
    # fib(parse(Int64, answer))

    # For benchmarking.
    @time begin
    fib(2971215073) 
    end
end

# Entry point.
ask_input()