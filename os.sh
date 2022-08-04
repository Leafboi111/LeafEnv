#!/bin/bash

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

cat data/applist.txt

cursor=0

#keyboard input
function key_react {
  let change=0
  read -d '' -sn 1
  test "$REPLY" = "$ESC" && {
    read -d '' -sn 1 -t1
    test "$REPLY" = "[" && {
      read -d '' -sn 1 -t1
      case $REPLY in
        
      esac
    }
  } || {
    case $REPLY in
      1) let "cursor--"; movecursor "$cursor";;
      2) let "cursor++"; movecursor "$cursor";;
      3) cmpio "$cursor";;
    esac
  }
}

function cmpio {
  case $1 in

  0)
    ./os/nodeupd.sh
    ;;
  1)
    ./apps/2048.sh
    ;;
  2)
    ./apps/nodecal.sh
    ;;
  3)
    ./apps/nodecalc.sh
    ;;
  4)
    ./apps/nodeterm.sh
    ;;
  5)
    ./apps/nodetxt.sh
    ;;
  6)
    ./apps/tetris.sh
    ;;
  7)
    echo Unavialable
    ;;
  8)
    echo Unavailable
    ;;
  9)
    echo Unavailable
    ;;

  *)
    ;;
esac
}

function movecursor {
  if (( $1 == -1 ));
  then
    let "$1 = 1"
  fi
  tput cup $1 0
}

#main function
function main {

  while true
  do
    key_react
    clear
    cat data/applist.txt
    tput cup $cursor 0
  done

}

main
