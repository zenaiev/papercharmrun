#/bin/bash

dirorig='/home/zenaiev/May19/dif/190619/plots/'

for prefix in `echo parton-ptmax20 parton-b parton-t`; do
  for suffix in `echo dyn-therr3 dyn-therr3-onlynom dyn-therr-mass`; do
    dirtarget='figs/'$prefix'/'$suffix
    mkdir -p $dirtarget
    for file in `echo data_401-1.pdf data_401-2.pdf data_401-3.pdf data_401-4.pdf`; do
      cp $dirorig/$prefix-$suffix/$file $dirtarget
    done
  done
done

if [ 1 -eq 2 ]; then
for prefix in `echo parton-lowpt`; do
  for suffix in `echo dyn-therr-mumass`; do
    dirtarget='figs/'$prefix'/'$suffix
    mkdir -p $dirtarget
    for file in `echo data_401-1.pdf data_401-2.pdf data_401-3.pdf data_401-4.pdf`; do
      cp $dirorig/$prefix-$suffix/$file $dirtarget
    done
  done
done
fi
