function main {

  while true
  do
    currentDate=`date +"%T"`
    read -p "$(tput setaf 2)nodecli$(tput setaf 7):$(tput setaf 4)$currentDate$(tput setaf 7)\$ " input
    $input
  done

}
main
