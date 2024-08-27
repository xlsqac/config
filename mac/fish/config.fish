if status is-interactive
    # Commands to run in interactive sessions can go here
end

# function
function kitty-reload
    kill -SIGUSR1 $KITTY_PID
end
