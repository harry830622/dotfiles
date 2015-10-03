#!/bin/sh
# DEFAULTPROF=`dconf read /org/gnome/terminal/legacy/profiles:/default`
# DEFAULTPROF=`echo "$DEFAULTPROF" | sed -e "s/^'/:/" -e "s/'$//"`
# dconf write /org/gnome/terminal/legacy/profiles:/$DEFAULTPROF/cursor-shape "'$1'"
cd ~
dconf list /org/gnome/terminal/legacy/profiles:/ > .gnome_terminal_profile_list
while IFS='' read -r line || [[ -n "$line"  ]]; do
  if [[ $line != "list" ]]; then
    # profile id read by dconf is appended with /, we need to remove it
    PROFILE=${line::-1}
    dconf write /org/gnome/terminal/legacy/profiles:/$PROFILE/cursor-shape "'$1'"
  fi
done < ".gnome_terminal_profile_list"
rm -f .gnome_terminal_profile_list
