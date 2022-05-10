#!/bin/bash


function input() {
	echo "설치 툴 쉘 실행"
	echo "1. AA 명령"
	echo "2. BB 명령"
	echo "입력[Enter] :"
	read input
}


input
echo  "##실행##"

case $input in 
	1)
	echo "1"
	;;
	2)
	echo "2"
	;;
	*)
	echo "잘못된 입력"
esac
