#1/bin/bash

keyword=$1

package=$(adb shell pm list packages | grep $keyword)
package="$(echo -e "${package#"package:"}" | tr -d  '[:space:]')"
path=$(adb shell pm path $package)
path="$(echo -e "${path#"package:"}" | tr -d  '[:space:]')"

adb pull $path ~/Desktop/$keyword".apk"
