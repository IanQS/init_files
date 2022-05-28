#!/bin/bash

#!/bin/bash
#if [ $# -ne 3 ]
#then
#  echo "Usage example: ./pdfInsertBlankPageAt 5 src.pdf res.pdf"
#  exit $E_BADARGS
#else
#  pdftk A=$2 B=blank.pdf cat A1-$(($1-1)) B1 A$1-end output $3
#fi 


if [ $# -ne 1 ]
then
  echo "Usage example: ./bashscript src.pdf"
  exit $E_BADARGS
else
  NUM=$(pdftk "$1" dump_data | grep 'NumberOfPages' | awk '{split($0,a,": "); print a[2]}')
  COMMSTR=''

  for i in $(seq 1 $NUM);
  do
    COMMSTR="$COMMSTR B1 A$i " 
  done
  $(echo "" | ps2pdf -sPAPERSIZE=letter - pageblanche.pdf)
  $(pdftk A="$1" B=~/custom_scripts/cornell_template.pdf cat $COMMSTR output 'mod_'"$1")
  #(pdfjam 'mod_'"$1" --nup 2x1 --landscape --outfile 'p_'"$1")
  $(mv "$1" 'original_'"$1")
  (pdfjam 'mod_'"$1" --outfile "$1")
  $(rm pageblanche.pdf && rm 'mod_'"$1")

fi

#for f in *.pdf; do ./bashscript.sh $f; done 2> /dev/null

