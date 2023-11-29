#!/bin/bash
out=$(seq 10 | ./minus)

[ "${out}" = -52 ]
