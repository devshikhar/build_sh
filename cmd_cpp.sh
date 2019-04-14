# source cmd_cpp.sh
function b {
    if [ "$#" -eq 0 ]; then
        echo "Illegal number of parameters"
    else
        #echo $@
        compile $@
    fi
}

function compile {
    #echo $@
    #echo $PWD
    g++ -std=c++14 $@
    echo Executing files $@ #in location $PWD
    ./a.out
    rm a.out
}
