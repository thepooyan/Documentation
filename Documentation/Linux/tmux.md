### adding packages

add line to `~/.tmux.conf`:
```
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

source it using this command:
```bash
tmux source ~/.tmux.conf
```
and run \[pk]+I  to install the mentioned plugins.

***
\[pk] = ctrl + space


\[pk] + c => new window
\[pk] + \[num] => cycle windows
\[pk] + n => next window
\[pk] + p => prev window
\[pk] + % => kill a window
\[pk] + " => split verticlry
\[pk] + % => split horizontolly
\[pk] + \[arrow keys] => navigate
\[pk] + q => navigate usuing numbers
\[pk] + z => full screen a panel
\[pk] + ! => make panel into a new window
\[pk] + x => kill a pane
\[pk] + c => 
\<pk> + c => 
\<pk> + c => 
\<pk> + c => 
\<pk> + c => 
\<pk> + c => 
\<pk> + c => 
\[pk] + c => 
\[pk] + c => 
***
### sessions

making new:
```
tmux new -s new_session
```

whilst in tmux:
```
:new
```

\[pk] + s => list all sessions
\[pk] + w => select session to attach
