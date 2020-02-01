if [ -z "$TMUX" ]
then
    tmux attach -t ipad || tmux new -s ipad
fi
