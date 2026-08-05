fish_add_path ~/bin

set EDITOR nvim

if not set -q NVIM;
	# Vi inside vi is a bad idea
	fish_vi_key_bindings
end

if status is-interactive
# Commands to run in interactive sessions can go here
end
