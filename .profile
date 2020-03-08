echo "Executing .profile"

if [ -z $MINGW_PREFIX ]; then
    echo "Non-windows env detected"
else
    echo "Windows env detected"
    export PATH="C:\Program Files\Java\jdk-13.0.2\bin":$PATH
    alias python="winpty python"
    cd ~/dev
fi
