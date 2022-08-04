# LeafOS
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

clear
cd docs
ls

echo "Navigate and create directories with mkdir, cd, ls, and rm."
echo "Press enter to continue"

#exit if statement
while true
do
  read -p ">" cmd

  if [ "$cmd" == "" ];
  then
    break
  else
    $cmd
  fi
done

ls

read -p "Name of file: " filename

#main file editor
while true
do
  cat -n $filename
  read -p "Mode: read, add, remove, overwrite, delete, or exit: " mode

  if [ "$mode" == "read" ];
  then
    ls
  elif [ "$mode" == "add" ];
  then
    read -p "Write to file: " contents
    echo "$contents" >> "$filename"
  elif [ "$mode" == "remove" ];
  then
    sed -i '$d' $filename
  elif [ "$mode" == "overwrite" ];
  then
    read -p "Overwrite to file: " contents
    echo "$contents" > "$filename"
  elif [ "$mode" == "delete" ];
  then
    rm -f $filename
  else
    break
  fi
done
