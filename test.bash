#!/bin/bash

out=$(seq 5 | ./plus_stdin)

[ "${out}" = 14 ]
