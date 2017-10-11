for a in `ls`; do echo $a; cd $a; docker run -d  -it $a . ; cd .. ; done
