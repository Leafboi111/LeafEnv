clear
cd docs

str1="Back"
str2="Add_file"
str3="Remove_file/directory"
str4="Add_directory"
filename=""

function addfile {
  read -p "Name of file: " filename
  touch $filename
}

function removefile {
  read -p "Name of file: " filename
  rm -rf $filename
}

function addirectory {
  read -p "Name of directory: " dirname
  mkdir $dirname
}

function selectfile {

  while true
  do
    teststr="$str1 $str2 $str3 $str4 $("ls")"
    clear
    select input in $teststr
    do
      if [ "$input" == "Back" ];
      then
        cd ..
      elif [ "$input" == "Add_file" ];
      then
        addfile
      elif [ "$input" == "Remove_file/directory" ];
      then
        removefile
      elif [ "$input" == "Add_directory" ];
      then
        adddirectory
      else
        cd $input || filename="$input";
        return 0
      fi
      break
    done
  done
}

function editfile {
  while true
  do
    clear
    cat -n $filename
    read -p "add or remove line or press enter to exit: "  addrm
    if [ "$addrm" == "add" ];
    then
      read -p "Contents of file: " contents
      echo "$contents" >> "$filename"
    elif [ "$addrm" == "remove" ];
    then
      sed -i '$d' $filename
    else
      return 0
    fi
  done
}

tput setaf 214
selectfile
tput setaf 39
editfile
