function fish_greeting
    if not set -q fish_greeting
        hyfetch
    end

    if set -q fish_private_mode
        echo "fish is running in private mode, history will not be persisted."
    end
end
