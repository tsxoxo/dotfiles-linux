man rg
xmodmap -pke | rg 171|172|173 --
xmodmap -pke | rg "171|172|173"
z
fd ".x*"
fd "\.x*"
fd "\.x*" --hidden
fd "\.x*" --hidden --max-depth=1
fd "\.x" --hidden --max-depth=1
fd ".x" --hidden --max-depth=1
fd "\.x" --hidden --max-depth=1
man 7 X
man xorg.conf
cat /sys/class/power_supply/BAT0/capacity
cat /sys/class/power_supply/BAT0/present 
cat /sys/class/power_supply/BAT0/status 
man upower
upower --monitor
acpi -b
tmuxconf
z vids
ffprobe dod1978highestquality.mp4 
source /home/tom/.config/tmux/tmux.conf 
man type
man wget
setxkb realprog
setxkbmap realprog
tmux
tmu
tmux
man tmux
tmux attach
nohup kitty -e tmux attach
man nohup
man setsid
setsid kitty -e tmux attach
tmux attach
y
y
y
bs
y
y --debug
y
y
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
fluxconf
echo $TMUX
echo $TERM
tmuxconf
v docs
mv docs/bash.md docs/bash-cool-gh.md

(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) &&   sudo mkdir -p -m 755 /etc/apt/keyrings &&   out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg &&   cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&   sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&   sudo mkdir -p -m 755 /etc/apt/sources.list.d &&   echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&   sudo apt update &&   sudo apt install gh -y
man gh
gh auth login
gh auth status
gh config set editor nvim
gh-repo-create --public hpi-vorkurs-python
gh repo create --public hpi-vorkurs-python
z dev/hpi/vorkurs/python/
git status
git add remote origin 
git add remote origin https://github.com/tsxoxo/hpi-vorkurs-python
git add remote origin https://github.com/tsxoxo/hpi-vorkurs-python
git remote add origin https://github.com/tsxoxo/hpi-vorkurs-python
git remote -v
git push
git branch -vv
man git branch
git branch -u origin/main
git remote -v
git push
git push --set-upstream origin main
z
v docs
sconf
v -S
mv /home/tom/.config/qutebrowser/config.py /home/tom/.local/share/qutebrowser/
tldr ln
ln .local/share/qutebrowser/config.py .config/qutebrowser/config.py
v -S
v -S
v -S
cd .config/qutebrowser/
v pyrightconfig.json
v config.py 
v config.py 
v config.py 
v config.py \
v config.py \
v config.py
z
sv _S .
sv .fluxbox/
cp -r .fluxbox .fluxbox-working
ls -la | rg fluxbox
mv .fluxbox-broken/keys .fluxbox
ls -la .fluxbox-broken | rg keys && ls -la .fluxbox | rg keys
ls -la | rg fluxbox
man chwon
man chown
chown -R tom .fluxbox
sudo chown -R tom .fluxbox
ls -la | rg fluxbox
sudo chown -R tom:tom .fluxbox
ls -la | rg fluxbox
mv .fluxbox-broken/keys .fluxbox
nvim .fluxbox/keys
man tmux
man tmux
tmuxconf
kittyconf
rg 'kitty -e'
rg 'kitty -e' .
rg 'kitty -e' . --max-depth=4
rg "kitty -e" . --max-depth=4
rg "kitty" . --max-depth=4
v .fluxbox-broken/
kitty -e tmux attach
tmux detach
yo
tmux detach
tmuxconf
z /home/tom/.tmux/plugins/tmux-resurrect/
ls -la
ls -la /home/tom/.local/share/tmux/resurrect/
ls -la /home/tom/.local/share/tmux/resurrect/ | sort -r
ls -lA /home/tom/.local/share/tmux/resurrect/ | sort -r
ls -lA /home/tom/.local/share/tmux/resurrect/ | rg tmux | sort
ls -lA /home/tom/.local/share/tmux/resurrect/ | rg tmux | awk '{print $NF}'| sort
z ~/.local/share/tmux/
z resurrect/
ls -la
ls -la | rg -i -e tmux
man rg
ls -la | rg -i -v tmux
ls -lah | rg -i -v tmux
ls -lah restore
ls -lah restore/*
ls -lah save/*
ls -lah save
ls -lah save/
z save
ls
..
apt show eza
apt show gpg
apt list --installed
apt list --installed || rg gpg
apt list --installed | rg gpg
gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
eza
eza -1 
eza -G
eza -1 -F
eza -1 -F
eza -1
eza -1 -F --color=auto
eza -1 -F --color=always
eza -1 -F --color=always
z
eza -1 -F --color=always
eza -1 -F --color=auto
eza -1 -F --color=auto --icons
eza -1 -F --color=auto --no-icons
eza -1 -F --color=auto --hyperlin
eza -1 -F --color=auto --hyperlink
eza -1 -F --color=auto --hyperlink
eza -1 -F --color=auto --reverse -a 
cat foo
rm foo
rm nohup.out 
eza -1 -Fa --color=auto --reverse
eza -1 -F -a -l --color=auto --reverse
eza -1 -F -a -l --reverse
eza -1 -F -l --all --reverse --treat-dirs-as-files
eza -1 -F -l --all --reverse --treat-dirs-as-files .
eza -1 -F -l --all --reverse --treat-dirs-as-files ./*
eza -1 -F -l --all --reverse ./*
eza -1 -F -l --all --reverse
eza -1 -F -l --all --reverse --sort=name
eza -1 -F -l --all --reverse --sort=name --group-directories-first
eza -1 -F -l --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
eza -1 -F -l --all --reverse --sort=name --group-directories-first --smart-group --no-permissions --extended
eza -1 -F -l --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
eza --oneline -l --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
eza --oneline --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
eza --oneline --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
eza --oneline --all --reverse --sort=name --group-directories-first --smart-group --no-permissions
aliasconf
v -S
v -S
z down
ls
rm Downloads\ bar\ shown\ over\ fullscreen\ videos\ ·\ Issue\ #3426\ ·\ qutebrowser_qutebrowser.html 
man file
qbconf
bs
qbconf
unzip yazi-x86_64-unknown-linux-gnu.zip -d yazi
z yazi
eza
z yazi-x86_64-unknown-linux-gnu/
eza
bat readme.md
bat README.md 
eza
ezal
ezal --icons=always
./yazi
.ya 
./ya
....
z down
rm -rf yazi
eza
rm yazi-x86_64-unknown-linux-gnu.zip 
unzip yazi-x86_64-unknown-linux-musl.zip 
./yazi-x86_64-unknown-linux-musl/yazi
aliasconf
bs
aliasconf
y
man mv
mv yazi-x86_64-unknown-linux-musl/ .local/share
mv yazi-x86_64-unknown-linux-musl/ ~/.local/share
eza
z local share
eza
z yazi
z yazi-x86_64-unknown-linux-musl/
eza
bat README.md 
./yazi --version
..
mv yazi-x86_64-unknown-linux-musl/ yazi
eza
ln -s yazi/yazi /usr/local/bin/yazi
sudo ln -s yazi/yazi /usr/local/bin/yazi
y
yazi
eza /usr/local/bin | rg yazi
man ln
sudo rm /usr/local/bin/yazi 
ln -s /home/tom/.local/share/yazi/yazi /usr/local/bin/yazi
sudo ln -s /home/tom/.local/share/yazi/yazi /usr/local/bin/yazi
y
yazi
op
jq
xclip
aliasconf
bs
docs
apt show plaerctl
apt show playerctl
z
docs
tmuxconf
z vids
ffprobe dod1978highestquality.mp4 
source /home/tom/.config/tmux/tmux.conf 
z vids
mpv
mvp
sudo apt mpv
apt show mpv
z down
tldr xclip
xclip -o -se c
xclip -o -se c > sha
tldr sha
tldr sha256
tldr sha256sum
sha256sum mpv_0.40.0-dmo4_amd64.deb > foo.sha256
cat foo.sha256 
tldr cut
cat foo.sha256 | cut --fields 2
cat foo.sha256 | cut --fields 3
cat foo.sha256 | cut --fields 1
cat foo.sha256 | cut -d' ' --fields 1
cat foo.sha256 | cut -d' ' --fields 2
cat foo.sha256 | cut -d' ' --fields 3
cat foo.sha256 | cut -d' ' --fields 3 >> sha
mv sha sha.sha256
cat sha.sha256 
nvim sha.sha256 
sha256sum --check sha.sha256 
echo 'f' >> sha.sha256 
sha256sum --check sha.sha256 
nvim sha.sha256 
sha256sum --check sha.sha256 
nvim sha.sha256 
sha256sum --check sha.sha256 
sudo dpkg -i mpv_0.40.0-dmo4_amd64.deb 
sudo apt --fix-broken install
apt show mpv
sudo apt update
apt list --upgradable
sudo apt upgrade
sudo apt install mpv
apt list --installed | rg yt-dlp
sudo apt install yt-dlp
z vids
mpv dod1978highestquality.mp4 
rm dod1978highestquality.mp4 
scrot
man scrot
z pics
z
z pics
ls
z
z desktop/
ls
z.
z
eza
ezal
xdg-user-dir PICTURES
man xdg-user-dir
echo $XDG_PICTURES_DIR
bs
ss
sss
xev
xev
xev
xev
tldr pkill
pgrep sxhkd
pkill sxhkd
bs
sxhkd &
shell -c "ss; notify-send 'scrot' 'Took full screenshot, saved in '"
bash -c "ss; notify-send 'scrot' 'Took full screenshot, saved in '"
ls
bs
ss
ls
ss
bash -c "ss; notify-send 'scrot' 'Took full screenshot, saved in '"
which ss
man ss
z pics
ls
xev
xdg-user-dir SCREENSHOTS
xdg-user-dir SCREENSH
xdg-user-dir SCROTS
z
eza
z pics
eza
mv screenshots/ scrots
xdg-user-dirs SCROTS
xdg-user-dir SCROTS
xdg-user-dir SCROTS
xdg-user-dir PICTURES
xdg-user-dir PICTURES
xdg-user-dir SCROTS

mpv --ytdl-raw-options="yes-playlist=" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
mpv --ytdl-raw-options="yes-playlist=" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
mpv --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
pkill mpv
mpv --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
mpv --input-ipc-server=$XDG_CONFIG_HOME/mpv/socket --vo=null --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
pkill mpv
mpv --input-ipc-server=$XDG_CONFIG_HOME/mpv/socket --vo=null --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
mpv --input-ipc-server=$XDG_CONFIG_HOME/mpv/socket --vo=null --ytdl-raw-options="yes-playlist=" "https://www.youtube.com/playlist?list=PL6ZA--5Rknp1pgMg6eAT6VFW3I0Ix1QTJ" &
pkill mpv
tldr xclip
tldr scrot
man scrot
tldr fd
z scrots/
man fd
fd --extension png
fd --extension png -1
fd --extension png -1 -l
z -l
zoxide -l
tldr zoxide
man zoxide
z local share
fd zoxide
z zoxide
eza
ezal
ya --help
ya pkg
ya pkg list
yazi --help
find ~/.config/yazi -name "*.toml" -exec grep -l "zoxide" {} \;
which zoxide
..
z yazi/
ezal
z config
z /home/tom/.config/
fd yazi
z yazi
ezal
v init.lua
yazi --debug
sudo apt install fzf
man wmctrl
wmctrl -l
man wmctrl
tldr xprop
xprop --list
man xprop
xprop -spy
xprop -spy
xprop -spy -root _NET_ACTIVE_WINDOW
man xprop
xprop -root
xprop -root | rg active -i
xdotool getactivewindow
man xdotool
man wmctrl
z
nvim .last_window 
nvim .last_window 
wmctrl -a -i "$(cat ~/.last_window)"
cat ~/.last_window)
cat ~/.last_window
wmctrl -a -i 0x280000e
wmctrl -a -i 0x280000e
wmctrl -a -i "0x280000e"
wmctrl -a 0x280000e
wmctrl -a 280000e
wmctrl -a -i 0x280000e
printf "%d" 0x280000e
printf "%d" 0x280000e | wmctrl -a
printf "%d" 0x280000e | xargs wmctrl -a
printf "%d" 0x280000e | xargs wmctrl -a
xdotool windowactivate "$(cat ~/.last_window)"
killall tint2 && tint2 &
ps auch | grep -i dock
man tint2
clear
tmux -a
tmux -attach
tmux --attach
nvim -S
history
history | bat
history | sort -r
history | sort -r | less
killall -sigusr1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
xev
bs
pkill -USR1 sxhkd
man sxhkd
pkill -SIGUSR1 sxhkd
    pkill -usr1 -x sxhkd; notify-send 'sxhkd' 'Reloaded config', \
    pkill -usr1 -x sxhkd; notify-send 'sxhkd' 'Reloaded config', \
    pkill -usr1 -x sxhkd; notify-send 'sxhkd' 'Reloaded config'
pkill sxhkd
sxhkd &
tldr pkill
pkill -USR1 sxhkd
pkill sxhkd
sxhkd &
pkill sxhkd
sxhkd &
.local/bin/last_window_d 
ps aux | rg last_
pkill 5570
xwininfo  -name "tint2"
xwininfo  -name "tint2" | rg -i layer
xprop  -name "tint2" | rg -i layer
xprop  -name "tint2"
xwininfo -name 'qutebrowser'
nvim .fluxbox/startup 
tmux attach
tmux
tmuxconf
nvim simpleclean-tint2rc 
y
man fluxbox init
man fluxbox-apps
man tint2
shutdown -r now
sudo shutdown -r now
man tint2
ps aux | rg sxh
pkill sxhkd
sxhkd &
tldr date
date +%c
clear
tldr notify-send
man fluxbox-apps
man fluxbox init
clear
clear
clear
nvim -S
clear
clear
qbconf
echo $SHELL
apt list --installed | rg zoxide
sudo apt uninstall zoxide
man apt 
sudo apt remove zoxide
sudo apt purge zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bat
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
zoxide --version
clear
y
bs
y
sudo apt remove fzf
sudo apt purge fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /home/tom/.local/share/applications/fzf
z local share
z fzf
cd fzf
ls
ls applications/
mv applications/fzf .
z fzf
eza
./install
nvim /home/tom/.fzf.bash 
bs
v .bashrc
zoxide init bash  &> zoxide_init_log
bat zoxide_init_log 
man builtin
builtin cs
builtin cd
man bash
help builtin
type eza
type -eza
type \eza
type ls
type \ls
alias ls='echo foo'
type ls
type \ls
ls
\ls
z music
z
z music
z muse
z mus
eza | rg mus
z ./music
z music/
bs
z music
tldr yt-dlp
fd yt dotfiles/
fd zsh dotfiles
yt-dlp -x https://www.youtube.com/watch?v=PXzJPgAxxMQ&list=RDPXzJPgAxxMQ&index=1
yt-dlp -x https://www.youtube.com/watch?v=PXzJPgAxxMQ&list=RDPXzJPgAxxMQ&index=1 --list-formats
yt-dlp -x --list-formats https://www.youtube.com/watch?v=PXzJPgAxxMQ&list=RDPXzJPgAxxMQ&index=1
yt-dlp -x --extractor-args "youtube:player-client=default,tv,ios" https://www.youtube.com/watch?v=PXzJPgAxxMQ&list=RDPXzJPgAxxMQ&index=1
xset q
man xset
sudo apt autolock
apt show autolock
apt show caffeine
sudo apt install caffeine
man caffeine
caffeine &
tldr nohup
tldr
tldr sleep --color
tldr sleep
sleep 2; notify-send 'foo'
sleep 2 &; notify-send 'foo'
sleep 2; notify-send 'foo' &
job
foo
jobs
man yt-dlp
jobs
ps aux | rg xshkd
ps aux | rg sxhkd
tldr disown
man jobs
sleep 2; notify-send 'foo' &
sleep 5 &
sleep 2 & && notify-send 'foo'
(sleep 2) & && notify-send 'foo'
(sleep 2 &) && notify-send 'foo'
sleep 2 & notify-send 'foo'
(sleep 2; notify-send 'foo') &
ps aux | rg caffeine
tldr ps
man ps
ps aux | head -1
ps aux | head -1 && ps aux | rg caffeine
ps aux | head -1 && ps aux | rg caffeine -v 'rg caff'
ps aux | head -1 && ps aux | rg caffeine | rg -v 'rg'
pgrep caff
man pgrep
ps -eo pid,ppid,user,cmd
ps -ef
ps -eo pid,ppid,user,%cpu,%mem,cmd
man ps
ps -eo pid,comm,stat,time
setxkbmap -query
setxkbmap -query
xinput list
setxkbmap realprog
lsusb | rg -i focusrite
cat /proc/asound/cards
aplay -l
pactl info | grep "Default Sink"
pactl info
man pactl
pactl list sinks
man bash
pactl
man actl
pactl set-default-sink 289
man pactl
cat /proc/asound/cards
cat /proc/asound/card2/stream0 
aplay -l
tldr dmesg
sudo dmesg | rg -i memory
sudo dmesg -H | rg -i memory
aplay -l
docs
sxhkdconf
sxconf
xev
man fluxbox
man fluxbox-keys
sxconf
fluxconf
xprop -root _NET_WORKAREA
xprop -name "tint2" _NET_WM_STRUT_PARTIAL
sxconf
man fluxbox
man fluxbox-keys
killall -SIGUSR1 tint2
qbconf
kitconf
y
man tint2
killall kitty
tmux
fluxconf
man fluxbox
fluxconf
qb
killall kitty
fluxconf
bs
killall kitty
tmuxh attach
fluxconf
tmux attach
killall kitty ; kitty -e tmux attach
killall kitty
killall kitty
qb
qb
fluxconf
man fluxbox-apps
man fluxbox-init
man fluxbox
man fluxbox-stylke
fluxconf
z local share
z applications/
v .
aliasconf
fluxconf
killall kitty
v .
clear
xwininfo -root | rg geometry
killall kittz
killall kitty
fluxconf
xwininfo -name "kitty' | rg geometry
xwininfo -name "kitty" | rg geometry
xwininfo --list
man xwininfo
xwininfo
xwininfo
xprop -name "tmux" _NET_FRAME_EXTENTS
man fluxbox-style
xprop -root _NET_WORKAREA
xprop -root _NET_WM_STRUT_PARTIAL
tintconf
aliasconf
bs
man fluxbox
fluxconf
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall tint2
tint2 =
tint2 &
history
history | rg tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall tint2
tint2 -c /home/tom/.config/tint2/simpleclean-tint2rc &
killall -SIGUSR1 tint2
clear
killall tint2
tint2 -c /home/tom/.config/tint2/simpleclean-tint2rc &
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall tint2
tint2 -c /home/tom/.config/tint2/simpleclean-tint2rc &
xprop -name "tint2" _NET_WM_STRUT
killall kitty
z kitty
eza
ln -S kitty-themes/themes/Nova.conf ./theme.conf
eza
man ln
ln -Sf kitty-themes/themes/Nova.conf ./theme.conf
eza
rm theme.conff
ln -Sf kitty-themes/themes/Nova.conf ./theme.conf 
eza
eza -l
ls -la
bat theme.conf 
rm theme*
eza
ln -S kitty-themes/themes/Nova.conf ./theme.conf
eza
tldr ln
ln -s kitty-themes/themes/Nova.conf ./theme.conf
eza
killall kitty
tintconf
vimconf
v .
vimconf
vimconf
echo "Nova" > ./cool-themes.md
bat cool-themes.md 
lsblk -f
df -h
y
man tint2
sudo shutdown -r now
kitty &
tmux attach
man tint2
ps aux | rg sxh
killall -SIGUSR1 sxhkd
ps aux | rg sxh
sxconf
pkill -USR1 -x sxhkd
pkill sxhkd
sxhkd &
killall kitty
qb
man fluxbox-style
fluxbox-remote reconfig
xprop | grep WM_CLASS
fluxbox -info
journalctl --user -b | grep -E "fluxbox|sxhkd|kitty"
fluxbox-remote "reloadconfig"
xprop -name tint2 | rg -i layer
xprop -name tint2 
xwininfo -name tint2
fluxconf
killall kitty
qb
man fluxbox-apps
man fluxbox-startup
man fluxbox
killall -SIGUSR1 tint2
killall -SIGUSR1 tint2
killall tint2
tint2 -c /home/tom/.config/tint2/simpleclean-tint2rc &
man tint2
killall -SIGUSR1 tint2
ps aux | rg tint2
fluxconf
fluxconf
man deadbeed
deadbeef
man tint2
clear
man aptitude
quick-system-info-gui 
quick-system-info-gui 
aptitude
man dpkg
z down
dpkg -i 1password-latest.deb 
sudo dpkg -i 1password-latest.deb 
cat /etc/sudoers 
ls /etc/sudoers
ls /etc/sudoers/*
ls /etc/sudoers.d
bat /etc/sudoers.d/readme
bat /etc/sudoers.d/README 
sudo bat /etc/sudoers.d/README 
man sudoers
sudo bat /etc/sudoers
man sudoers
groups tom
man groups
id tom
clear
polkit
eza
man tar
rm VTS_01_1.VOB 
tar --list ./polkit-126.tar.gz
man tar
tar --list -f polkit-126.tar.gz 
tar xzvf polkit-126.tar.gz 
eza
rm polkit-126.tar.gz 
z polkit-126/
ezal
bat README.md 
tldr pgrep
pgrep -af polkit
z polkit-126/
ezal
bat README.md 
tldr pgrep
pgrep -af polkit


curl -sS https://downloads.1password.com/linux/keys/1password.asc |   sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" |   sudo tee /etc/apt/sources.list.d/1password.list

sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol |   sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol &&   sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 &&   curl -sS https://downloads.1password.com/linux/keys/1password.asc |   sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

sudo apt update && sudo apt install 1password-cli
op --version
op vault list
op item get omb
op item get ombplus
op item get omb*
man op item
man op
rofi -dmenu -password -p "1password: "
op signin --output-raw
op signin --output=raw
echo 'foo' | op signin --raw
man rofi
man rofi-dmenu
rofi -dmenu | op signin --raw > ~/dev/1passtest
z dev
eza
bat 1passtest 
rofi -dmenu -password | op signin --raw > ~/dev/1passtest
op signin --raw > ~/dev/1passtest
bat 1passtest 
op signin --raw > ~/dev/1passtest
bat 1passtest 
TOKEN=$(op signin --raw); echo "$TOKEN" > ~/dev/1passtest
TOKEN=$(op signin --raw); echo "$TOKEN" > ~/dev/1passtest;
TOKEN=$(op signin --raw < /dev/tty); echo "$TOKEN" > ~/dev/1passtest;
TOKEN=$(op signin --raw < /dev/tty); echo "$TOKEN" > ~/dev/1passtest;
wmctrl -l
xdotool search --name "1Password"
op signin --raw > ~/dev/1passtest
op signin --raw > ~/dev/1passtest
op signin --raw
xdotool search --name "1Password"
op signin --raw
xdotool search --name "1Password"
xdotool search --name "1Password"
time op signin --raw
op whoami
echo $TMPDIR
op vault list
echo $OP_SESSION
op signin
op list vault
op vault list
echo $OP_ACCOUNT
echo $OP_ACCOUNT

op item list --format=json --categories=Login | jq '.[0]'
op item list --format=json --categories=Login | jq '.[0] | select(.urls[]?.href'
op item list --format=json --categories=Login | jq '.[0] | select(.urls[]?.href)'
op item list --format=json --categories=Login | jq '.[0] | select(.urls[]?.href | contains("uni"))'
op item list --format=json --categories=Login | jq '.[0] | select(.urls[]?.href | contains("nrw"))'
op item list --format=json --categories=Login | jq '.[0].urls[] | select(.urls[]?.href | contains("nrw") | .href)'
op item list --format=json --categories=Login | jq '.[0].urls[] | select(.href | contains("nrw") | .href)'
op item list --format=json --categories=Login | jq '.[0].urls[]? | select(.href | contains("nrw") | .href)'
op item list --format=json --categories=Login | jq '.[0].urls[]? | select(.href | contains("potsdam") | .href)'
op item list --format=json --categories=Login | jq '.[0].urls[]? | select(.href | contains("potsdam")) | .href'
op get item list --format=json --categories=Login | rg ombplus.de
clear
op item list --format=json --categories Login | rg ombplus.de
clear
op item list --format=json --categories Login | rg ombplus.de

POTENTIAL=$(op item list --format=json --categories Login |
  jq --arg url "$HOSTNAME" '[.[] | select(.urls[]?.href | contains($url))]')

POTENTIAL=$(op item list --format=json --categories Login | jq --arg url "$HOSTNAME" '[.[] | select(.urls[]?.href | contains($url))]')
echo $POTENTIAL
HOSTNAME='ombplus.de'
POTENTIAL=$(op item list --format=json --categories Login | jq --arg url "$HOSTNAME" '[.[] | select(.urls[]?.href | contains($url))]')
echo $POTENTIAL
echo $POTENTIAL

SELECTED=$(echo "$POTENTIAL" | jq -r '.[].title' | rofi -dmenu -i -p "Select login:")
bat /tmp/qute-1pass-opitems.json 
op item list
bat /tmp/qute-1pass-opitems.json 
bat /tmp/qute-1pass-opitems.json 
op signin
~/.local/share/qutebrowser/userscripts/qute-1pass 
lsof -c 1Password
qb
bat /tmp/qute-1pass-selected.txt 
echo $XAUTHORITY
$(echo 'foo')
$(echo "foo")
(echo "foo")
(echo $HOME)
(echo $XAUTHORITY)
z userscripts
z local qute
z userscripts/
chmod +x 1pass 
ezal
man eza
ls -l
env
env | rg -i 1pass
env > /tmp/env-term.txt
diff /tmp/env-rofi /tmp/env-term.txt 
tldr xclip
diff /tmp/env-rofi /tmp/env-term.txt > xdotool -se c
diff /tmp/env-rofi /tmp/env-term.txt > xdotool -se clipboard
diff /tmp/env-rofi /tmp/env-term.txt | xdotool -se clipboard
diff /tmp/env-rofi /tmp/env-term.txt | xclip -se clipboard
ls -l /tmp | rg -i rofi
qb
diff /tmp/env-rofi /tmp/env-working.txt | xclip -se clipboard
diff /tmp/env-rofi /tmp/env-working | xclip -se clipboard
which op
bat /tmp/qute-1pass-opitems.json 
diff /tmp/env-rofi /tmp/env-working | xclip -se clipboard
op signin
(op signin)
op item list
op item list --format=json --categories Login >/tmp/qute-1pass-opitems.json 2>&1
loginctl show-session $(loginctl show-user $USER -p Display --value) --property=Active
ps -p 1 -o comm=
echo $DBUS_SESSION_BUS_ADDRESS
echo $DBUS_SESSION_BUS_ADDRESS
echo $DBUS_SESSION_BUS_ADDRESS
bat /tmp/1pass-sessionbus.txt 
bat /tmp/1pass-sessbusvar.txt 
pkcheck --action-id com.1password.1Password.unlock --process $$ -u
op list
op --list
op item list
pkcheck --action-id com.1password.1Password.unlock --process $$ -u > /tmp/1pass-pkcheck-bash.txt
bat /tmp/1pass-pkcheck-bash.txt 
bat /tmp/1pass-pkcheck-rofi.txt
qb
eza /tmp | rg 1pass
eza /tmp | rg pk
bat /tmp/pkcheck-rofi 
bat /tmp/pkcheck-shell
pkcheck --action-id com.1password.1Password.unlock --process $$ -u > /tmp/1pass-pkcheck-bash.txt
cat /proc/$$/sessionid
pkcheck --action-id com.1password.1Password.unlock --process $$ -u && echo "$?" > /tmp/1pass-pkcheck-bash.txt
bat /tmp/1pass-pkcheck-bash.txt 
bat /tmp/pkcheck-qtshell
man strace
strace -e connect,socket -o /tmp/op-strace.log op item list 2>&1
op item list
strace -e connect,socket -o /tmp/op-strace.log op item list 2>&1
lsof -c op | rg -i sock
lsof -c 1password | rg -i sock
lsof -c 1Password | rg -i sock
lsof -c 1Password | rg -i sock

find /run/user/$(id -u) -name '*1password*' -o -name '*1Password*' 2>/dev/null && ls -la /tmp/ | grep -i 1pass
op list
op item list
find /run/user/$(id -u) -name '*1password*' -o -name '*1Password*' 2>/dev/null && ls -la /tmp/ | grep -i 1pass
test -r /run/user/1000/1Password-BrowserSupport.sock && echo "readable" || echo "not readable"
test -r /run/user/1000/1Password-BrowserSupport.sock && echo "readable" || echo "not readable"
test -r /run/user/1000/1Password-BrowserSupport.sock && echo "readable" || echo "not readable"
ls -l /tmp | rg -i socket
bat /tmp/qb-rofi-socket 
ls -la /run/user/1000/1Password-BrowserSupport.sock
cat /proc/$$/attr/current
bat /tmp/security-context.txt 
qb
bat /tmp/security-context-shell.txt 
bat /tmp/process-tree-shell.txt 
cat /tmp/process-tree-shell.txt | xclip -se clipboard
pstree -apps $$
pstree -apps $$ | xclip -se clipboard
cat /tmp/process-tree-rofi.txt | xclip -se clipboard
bat /tmp/process-tree-rofi.txt 
fd /usr/share --extension desktop
fd . /usr/share --extension desktop
fd qutebrowser /usr/share --extension desktop
fd qutebrowser ~ --extension desktop
fd qutebrowser ~ --extension desktop --hidden
kitconf
tldr setsid
which kitty
which qutebrowser
ln -la /usr/local/bin/qutebrowser
ls -la /usr/local/bin/qutebrowser
..
ls -la
eza 
ezal | rg bin
ezal
ezal qutebrowser/
bat /usr/local/bin/qutebrowser 
op item list
op item list
bat /etc/pam.conf 
bat /etc/pam.d/passwd
nvim /etc/pam.d
nvim /etc/pam.d/common-password 
eza ~/downloads
ezal ~/downloads
z /etc/pam.d
rg -i bio
fd bio
pa aux | grep polkit
ps aux | grep polkit
echo $OP_BIOMETRIC_UNLOCK_ENABLED
env | rg -i OP_
export OP_BIOMETRIC_UNLOCK_ENABLED=false
op item list
export OP_BIOMETRIC_UNLOCK_ENABLED=true
op item list
bat /usr/share/polkit-1/actions/com.1password.1Password.policy 
op signin
op signin --raw
op signin
op signin
op signin
op signin
op signin
op signin
man op
op signin
polkit
find ~/.config /etc -name '*polkit*gnome*' 2>/dev/null
ls -la /usr/share/polkit-gnome/
nvim /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop 
op signin
op item list
z down
bind -p | grep menu-complete
..
nvim /home/tom/.inputrc 
tintconf
op whoami --session
op whoami -h
op --help | rg -i token
op --help | rg -i token -A5 -B5
op --help | rg -i session -A5 -B5
mpv Scream\ 1996\ Unrated\ DirCut\ BluRay\ 10Bit\ 1080p\ DD5.1\ H265-d3g.mkv 
ls -l /
ls -la /lost+found/
sudo ls -la /lost+found/
sudo -l
sudo cat /etc/sudoers
sudo cat /etc/sudoers | rg -i feedback
sudo visudo
rg -i pwfeedback /etc/sudoers.d
sudo rg -i pwfeedback /etc/sudoers.d
sv /etc/sudoers.d/sudo_password_display
tldr sudo
sudo rm /etc/sudoers.d/sudo_password_display 
man sudo
sudo -k
sv .
mpv Videodrome.avi 
ls -la
ls -lah
ls -lah
tldr unzip
mpv Videodrome.rar 
sudo apt install unrar
unrar x Videodrome.rar 
ls -lah
rm *.torrent
rm -rf polkit-126/
rm Videodrome.rar 
z Videodrome/
ezal
mpv Videodrome.avi 
..
eza
rm -rf Vid*
eza
man caffeine
caffeine &
fluxconf
qbconf
docs
..
fd realprog
fd realprog | ls -la {}
fd realprog | xargs ls -la
ls -la /usr/share/X11/xkb/symbols/realprog 
tldr ln
ln /usr/share/X11/xkb/symbols/realprog dotfiles-mac/dotfiles-main/keyboard/realproggo
sudo ln /usr/share/X11/xkb/symbols/realprog dotfiles-mac/dotfiles-main/keyboard/realproggo
fd realprog
fd realprog | xargs ls -l
rm -rf dotfiles-mac/dotfiles-main/keyboard/realproggo 
fd --hidden gitconfig
bat .gitconfig
man stow
info stow
ls /usr/local/man/
fd --type d man1 /
ls /usr/share/man/man1/
man yelp
clear
cd dotfiles
stow bash
apt show stow
z down
man tar
tar list -f stow-latest.tar.gz 
tar xzvf stow-latest.tar.gz 
z stow-2.4.1/
bat README.md 
bat INSTALL.md 
sudo apt install stow
z dotfiles
stow bash
ls -A .. | rg bash
ls -Al .. | rg bash
bs
info stow
