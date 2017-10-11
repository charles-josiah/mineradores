for a in `ls`; do cd $a; docker build -t $a . ; cd .. ; done
