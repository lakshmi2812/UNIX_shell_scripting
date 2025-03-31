#!/bin/bash
fav_characters=(Rachel Ed Lauren Rob Janie Cecilia Jahn-Paul Polly Isabel Esther Tess Will Liam)
PS3='Please Choose a Number: '
select name in ${fav_characters[@]}
do
    echo "$REPLY Chosen for $name"
    break
done
