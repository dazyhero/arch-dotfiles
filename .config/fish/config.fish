pyenv init --path | source
if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
end

function nvm 
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

