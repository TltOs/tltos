if status is-interactive
pfetch
set -g -x fish_greeting ''
starship init fish | source
end
