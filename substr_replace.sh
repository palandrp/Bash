#!/bin/sh
stringZ=abcABC123ABCabc
echo ${stringZ/abc/xyz}
echo ${stringZ//abc/xyz}