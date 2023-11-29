#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Takaki Nakamura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0


out=$(seq 10 | ./minus)
[ "${out}" = -35 ] || ng ${LINENO}

out=$(echo い | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
