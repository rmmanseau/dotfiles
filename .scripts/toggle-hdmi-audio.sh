#
#!/bin/sh
#

PCH_CONFIG="/home/ryan/.alsa-configs/asoundrc.pch-dmix-boost"
HDMI_CONFIG="/home/ryan/.alsa-configs/asoundrc.hdmi-dmix-boost"
CURRENT_CONFIG="/home/ryan/.asoundrc"
CURRENT_CONTENTS=`cat $CURRENT_CONFIG`

# if current card is pch, switch to hdmi
if echo "$CURRENT_CONTENTS" | grep -q "PCH Output"
    then
        echo "turning on hdmi audio"
        echo "hdmi video output must be active for audio to play"
        echo "programs must be restarted to switch to hdmi output"
        cp "$HDMI_CONFIG" "$CURRENT_CONFIG"

# if current card is hdmi, switch to pch
elif echo "$CURRENT_CONTENTS" | grep -q "HDMI Output"
    then
        echo "turning off hdmi audio"
        cp "$PCH_CONFIG" "$CURRENT_CONFIG"
fi

# reload alsa
alsactl restore &> /dev/null
