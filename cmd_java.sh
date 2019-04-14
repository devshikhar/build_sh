# source cmd_java.sh
function b {
    if [ "$#" -eq 0 ]; then
        echo "Illegal number of parameters"
    else
        compile $@
    fi
}

function compile {
    javac $@
    java ${@%.*}
    rm ${@/java/class}
}
