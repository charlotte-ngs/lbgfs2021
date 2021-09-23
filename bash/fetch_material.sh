#!/bin/bash

SCRIPTDIR=/home/quagadmin/source/misctools/
# DIRTOFETCH=ex/gel_ex04
DIRTOFETCH=sol/gel_ex04
TESTSTUDENT=/home/quagadmin/courses/gelasmss2021/students/test_gel_student_usernames_gelasmss2021.txt
STUDENTUSER=/home/quagadmin/courses/gelasmss2021/students/gel_student_usernames_gelasmss2021.txt
#' fetch individual directory
#' change to progdir
cd $SCRIPTDIR

#' fetch for test student
cat $TESTSTUDENT | while read s
do
  echo " * Student: $s"
  ./fetch.sh -s $s -d $DIRTOFETCH
  sleep 2
done

#' fetch for real students
cat $STUDENTUSER | while read s
do
  echo " * Student: $s"
  ./fetch.sh -s $s -d $DIRTOFETCH
  sleep 2
done

# check content
cat $STUDENTUSER | while read s
do
  echo " * Student: $s"
  ls -l /home/quagadmin/courses/gelasmss2021/home/$s/gelasmss2021/$DIRTOFETCH
  sleep 2
done
