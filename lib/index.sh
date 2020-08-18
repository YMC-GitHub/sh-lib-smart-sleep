#!/bin/sh

###
# deps
###

###
# apis
###
function smart_sleep() {
  local SHOW_CHAR_MID=
  local TIME_LONG=
  local MOD=
  local PER_TIME=
  local SHOW_DEVIDE_COUNT=
  local PER_TIME=
  # 总共停顿几秒
  TIME_LONG=60
  # 每次停顿几秒
  PER_TIME=1
  # 显示分成几份
  SHOW_DEVIDE_COUNT=10
  # 中间显示符号
  SHOW_CHAR_MID="."
  # 端点显示符号
  SHOW_CHAR_END="*"

  if [ -n "${1}" ]; then
    SHOW_CHAR_MID="${1}"
  fi
  if [ -n "${2}" ]; then
    TIME_LONG="${2}"
  fi
  if [ -n "${3}" ]; then
    SHOW_CHAR_END="${3}"
  fi
  if [ -n "${4}" ]; then
    SHOW_DEVIDE_COUNT="${4}"
  fi
  if [ -n "${5}" ]; then
    PER_TIME="${5}"
  fi
  MOD=

  # do sth. here
  while [ $TIME_LONG -gt 0 ]; do
    # waite 1 second
    sleep "$PER_TIME"
    # get the rest time to waite
    TIME_LONG=$(expr $TIME_LONG - $PER_TIME)
    MOD=$(expr $TIME_LONG % $SHOW_DEVIDE_COUNT)
    if [ $MOD = "0" ]; then
      if [ $TIME_LONG = "0" ]; then
        echo "$SHOW_CHAR_END"
      else
        echo -n "$SHOW_CHAR_END"
      fi
    else
      echo -n "$SHOW_CHAR_MID"
    fi
  done
}
## func usage
# smart_sleep
# smart_sleep "." "60"


var_list=$(cat<<EOF
$var_list
EOF
)