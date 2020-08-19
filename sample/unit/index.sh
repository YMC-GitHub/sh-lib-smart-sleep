#!/bin/sh

THIS_FILE_PATH=$(cd $(dirname $0);pwd)
THIS_FILE_NAME=$(basename $0)
[ -z "$RUN_SCRIPT_PATH" ] && RUN_SCRIPT_PATH=$(pwd)

#echo "$THIS_FILE_PATH"
#echo "$RUN_SCRIPT_PATH"


# desc:get project dir path
# desc:include lib project-dir-map and(to) gen project dir map
# desc:include lib lib-load and(to) load lib
# desc:test unit

# step-x:get project dir path relative to THIS_FILE_PATH
PATH_TO_PROJECT_RELATIVE="../../";PROJECT_PATH=$(cd "$THIS_FILE_PATH";cd "$PATH_TO_PROJECT_RELATIVE" ;pwd)

# step-x:project-dir-map load
source "${PROJECT_PATH}/sh_modules/sh-lib-project-dir-map.sh"
# step-x:gen project dir map with default tpl
#[ -z "$THIS_FILE_PATH" ] && THIS_FILE_PATH=$(this_file_path_get) ; project_dir_map_gen3 "../"
# step-x:gen project dir map with custom tpl from file  or default tpl
[ -z "$THIS_FILE_PATH" ] && THIS_FILE_PATH=$(this_file_path_get) ; f="${PROJECT_PATH}/P_DIR_MAP.md" ; [ -e $f ] && P_DIR_MAP_LIST=$(cat "${PROJECT_PATH}/P_DIR_MAP.md") ; project_dir_map_gen3 "$PATH_TO_PROJECT_RELATIVE" "$P_DIR_MAP_LIST"

# step-x:sh-lib-load-lib load
source "${PROJECT_PATH}/sh_modules/sh-lib-load-lib.sh"
# step-x:sh-lib-load-lib use

# step-x : lib require and load
#mod_require "${SH_MODULE_LOCAL}/sh-lib-gpg.sh" ;
SH_MODULE_LOCAL="${PROJECT_PATH}/sh_modules"
# step-x : get p dir
SH_MODULE_GLOBAL=$(cd "$PROJECT_PATH";cd "../" ;pwd)
# step-x : lib require only
mod_require_only "${SRC_PATH}/index.sh" ;
# step-x : lib load auto
mod_load_auto

#echo "todos:test.unit"

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
#smart_sleep "$SHOW_CHAR_MID" "$TIME_LONG" "$SHOW_CHAR_END" "$SHOW_DEVIDE_COUNT" "$PER_TIME" #.........*.........*.........*.........*.........*.........*


# 总共停顿几秒
TIME_LONG=60
# 每次停顿几秒
PER_TIME=1
# 显示分成几份
SHOW_DEVIDE_COUNT=10
# 中间显示符号
SHOW_CHAR_MID="-"
# 端点显示符号
SHOW_CHAR_END="+"
#smart_sleep "$SHOW_CHAR_MID" "$TIME_LONG" "$SHOW_CHAR_END" "$SHOW_DEVIDE_COUNT" "$PER_TIME" #---------+---------+---------+---------+---------+---------+


# 总共停顿几秒
TIME_LONG=60
# 每次停顿几秒
PER_TIME=1
# 显示分成几份
SHOW_DEVIDE_COUNT=6
# 中间显示符号
SHOW_CHAR_MID="."
# 端点显示符号
SHOW_CHAR_END="*"
smart_sleep "$SHOW_CHAR_MID" "$TIME_LONG" "$SHOW_CHAR_END" "$SHOW_DEVIDE_COUNT" "$PER_TIME" #.....*.....*.....*.....*.....*.....*.....*.....*.....*.....*


# file usage
# sample/unit/index.sh