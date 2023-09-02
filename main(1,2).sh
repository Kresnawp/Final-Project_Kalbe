#!/bin/bash

# Directory checking
path="/hdfs/data/data1"
directory_name="data1"

if [ -d "$path/$directory_name" ]; then
    echo "Directory '$directory_name' exists in '$path'"

    # File moving and logging
    filename_excel="daily_market_price.xlsx"
    source_dir="/local/data/market"
    target_dir="$path/$directory_name"

    if [ -f "$source_dir/$filename_excel" ]; then
        cp "$source_dir/$filename_excel" "$target_dir/$filename_excel"
        echo "File Moved Successfully" > "$target_dir/log.txt"
        echo "File '$filename_excel' moved to '$target_dir'"
    else
        echo "File '$filename_excel' does not exist in '$source_dir'"
    fi
else
    echo "Directory '$directory_name' does not exist in '$path'"
fi


