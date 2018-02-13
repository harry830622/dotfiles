#!/bin/bash

# Project Manager

workspace_dir=""$HOME"/workspace"

if [[ ! -d "$workspace_dir" ]]; then
  mkdir "$workspace_dir"
fi

function pm_work {
  if [[ "$1" == "" ]]; then
    echo "[ERROR] No project specified"
    return 1
  fi
  export project_name="$1"
  export project_root_dir=""$workspace_dir"/"$1""
  if [[ ! -d "$project_root_dir" ]]; then
    mkdir "$project_root_dir"
  fi
  cd "$project_root_dir"
  tmux new-session -d -s "$project_name" -n "misc"
  tmux new-window -n "src"
  tmux split-window -h
  tmux split-window -v "vim -c \":q\""
  tmux attach-session -d
  return 0
}
