#!/bin/bash
arr=(Apla Beta Gamma Delta)
select num in ${arr[@]}
do
    echo $num
done

