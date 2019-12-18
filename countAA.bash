#!/bin/bash
if [ $# -ne 2 ]; then
echo "this script requires a protein file"
exit 1
fi
if [ ! -f $2 ]; then
echo "cannot fine protein file"
exit 1
fi
grep $1 $2 | awk '{print $2}'
