# nodecal
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

date +"%D %T"

while true
do

  read -p "read, write, delete, or exit:" rw

  if [ "$rw" == "write" ];
  then

    read -p "Date of event:" date
    read -p "Contents of event:" contents

    echo "$date $contents" >> data/calendar.txt
    sort -r data/calendar.txt

  elif [ "$rw" == "read" ];
  then

    cat data/calendar.txt

  elif [ "$rw" == "delete" ];
  then

    echo "" > data/calendar.txt

  else
    break
  fi

done
