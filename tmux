# Jeremy's TMUX Configuration

# Basic config settings
unbind C-b # unbind the default prefix
set -g prefix C-f # rebind the prefix to Ctrl-f
set -g default-terminal "xterm-256color" # some bullshit with the color scheme
# set-option -g mouse on*/ # allows you to resize and click between screens w/ mouse
### Config to fix issue with not being able to use pbcopy while in a TMUX session
set -g default-shell $SHELL
set -g default-command "reattach-to-user-namespace -l ${SHELL}"

# Binding for sourcing the tmux.conf file
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"

# Bindings for splitting panes
bind-key - split-window -v
bind-key \ split-window -h

# Bindings to allow you to resize a pane with h,j,k,l keys
bind j resize-pane -D 10 
bind k resize-pane -U 10
bind l resize-pane -L 10
bind h resize-pane -R 10

# Bindings for more precise resizings
bind -n S-Left resize-pane -L 2
bind -n S-Right resize-pane -R 2
bind -n S-Down resize-pane -D 1
bind -n S-Up resize-pane -U 1

# Make TMUX use a 1-base index for windows
set-option -g base-index 1
set-option -g renumber-windows on

# Break a pane into a separate window
bind-key b break-pane -d

# Bindings for navigation between panes
# bind-key -n C-h select-pane -L
# bind-key -n C-j select-pane -D
# bind-key -n C-k select-pane -U
# bind-key -n C-l select-pane -R

# Status bar colors
set-option -g status-bg '#666666'
set-option -g status-fg '#aaaaaa'

# Make the status bar message longer and more useful
set-option -g status-left-length 50
set-option -g status-right-length 50
set-option -g status-right " #(battery -ta) #(date '+%a, %d %b %Y - %H:%M %p') " 

####  Scrollback / Copy Mode settings ####

# Use vim keybindings in copy mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"





