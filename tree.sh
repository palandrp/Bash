# Экспериментируем с файловым деревом

# @(#) tree v1.0 Visual display of a file tree Author: Russ Sage 
# Вывод на экран структуры файлового дерева
if [ "$#"-gt1 ]
    then echo "tree: wrong arg count">&2
        echo "usage: tree [dir]" >&2
        exit 2 
fi
if [ "$#"-eq1 ] 
then if [ ! -d $1 ]
    then echo "$0: $1 not a directory">&2 
        echo "usage: tree [dir]" >&2 
        exit 2
        fi 
fi
find ${1:-.} -print | sort | sed -e "1p" -e "1d" \ 
        -e "s|[^/]*/| /|g" \
        -e "s|[^ */|/|"
        -e "s|/\([^/]*\)$|\1|"