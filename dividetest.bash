#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Takaki Nakamura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

out=$(seq 2 | ./divide)
[ "${out}" = 0.5 ] || ng ${LINENO}


out=$(echo え | ./divide)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


out=$(echo | ./divide)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res
