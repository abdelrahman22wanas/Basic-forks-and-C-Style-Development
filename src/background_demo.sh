#!/bin/bash
# background_demo.sh
# Demonstrates backgrounding a process and controlling it via ps, kill, jobs.
echo "Starting a sleep 300 process in the background..."
sleep 300 &
BG_PID=$!
echo "Started sleep with PID $BG_PID"
echo
echo "List background jobs (jobs):"
jobs -l
echo
echo "Show with ps and grep:"
ps aux | grep "[s]leep 300" || true
echo
echo "To stop the process: kill $BG_PID"
echo "To pause: kill -STOP $BG_PID"
echo "To resume: kill -CONT $BG_PID"
