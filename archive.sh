#!/bin/bash

my_file="${1:-auto_mhddos_no_proxy}"
my_dir="${2:-upload-to-google-drive}"

mkdir -p "${my_dir}"

for (( i=1; i<=5; i++ ))
do
  cp "${my_file}.ipynb" "${my_dir}/${i}_${my_file}.ipynb"
done

zip -r "unzip-and-${my_dir}.zip" "${my_dir}"
