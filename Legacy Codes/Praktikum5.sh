While :; do
ab if=out.fifo bs=1b count=1 2>/dev/null | grep $1
If [ $? -eq 0 ]; then 
Echo “$2” > in.fifo
Exit 0
fi
Done
