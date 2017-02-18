# Jeremy's TMUX Configuration

# Basic config settings
unbind C-b # unbind the default prefix
set -g prefix C-f # rebind the prefix to Ctrl-f
set -g default-terminal "xterm-256color" # some bullshit with the color scheme
# set-option -g mouse on*/ # allows you to resize and click between screens w/ mouse

# Binding for sourcing the tmux.conf file
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"

# Bindings to allow you to resize a pane with h,j,k,l keys
bind j resize-pane -D 10 
bind k resize-pane -U 10
bind l resize-pane -L 10
bind h resize-pane -R 10

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

