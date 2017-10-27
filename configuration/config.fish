set --export ANDROID_HOME $HOME/Library/Android/sdk
set --export REACT_EDITOR code

set PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools


function launch_emulator --description "launches Android emulator in the background with outputs redirected to /dev/null"
	begin
        fish -c "~/Library/Android/sdk/tools/emulator $argv &"
    end > /dev/null ^ /dev/null
end


alias refish="source ~/.config/fish/config.fish"

alias rmnm="rm -rf node_modules"
alias finder="open ."
alias code="code ."

alias emu-pixel="launch_emulator @Pixel_Lollipop"
alias emu-old="launch_emulator @Galaxy_Nexus_KitKat"
alias emu-small="launch_emulator @Small_Screen_Oreo"
alias emu-large="launch_emulator @Large_Screen_Marshmallow"
alias emu-long="launch_emulator @Long_Screen_Nougat"

alias r-a='react-native run-android'
alias r-i='react-native run-ios'

alias spy-a="adb logcat | grep '#spy'"
alias spy-i='echo "Use Xcode!"' #maybe should open console?

alias unlock-catalyst='rm /Users/juozask/code/wix/catalyst/.git/index.lock'


function s-woa
    cd ~/code/wix/wix-one-app
    npm start
end

function s-clu
    cd ~/code/wix/catalyst/clubs/clubs-demo-app
    ./node_modules/.bin/whack run start
end
