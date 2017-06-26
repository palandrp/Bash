#!/bin/sh
stringZ=abcABC123ABCabc
     echo `expr match "$stringZ" 'abc[A-Z]*.2'`
     echo `expr "$stringZ" : 'abc[A-Z]*.2'`