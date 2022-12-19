text=`echo 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'| sed -e 's/,//g' -e 's/\.//g'`
words=(`echo $text`)
echo $(for word in ${words[@]}; do echo ${#word}; done)
