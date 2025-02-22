#!/bin/sh

charge_level="$(cat /sys/class/power_supply/BAT1/capacity)"
status="$(cat /sys/class/power_supply/BAT1/status)"

echo -n "$charge_level% "

if [ "$status" = "Charging" ]; then
    if [ "$charge_level" -eq 100 ]; then
        echo -n 󰂅
    elif [ "$charge_level" -gt 90 ]; then
        echo -n 󰂋
    elif [ "$charge_level" -gt 80 ]; then
        echo -n 󰂊
    elif [ "$charge_level" -gt 70 ]; then
        echo -n 󰢞
    elif [ "$charge_level" -gt 60 ]; then
        echo -n 󰂉
    elif [ "$charge_level" -gt 50 ]; then
        echo -n 󰢝
    elif [ "$charge_level" -gt 40 ]; then
        echo -n 󰂈
    elif [ "$charge_level" -gt 30 ]; then
        echo -n 󰂇
    elif [ "$charge_level" -gt 20 ]; then
        echo -n 󰂆
    else
        echo -n 󰢜
    fi
else
    if [ "$charge_level" -eq 100 ]; then
        echo -n 󰁹
    elif [ "$charge_level" -gt 90 ]; then
        echo -n 󰂂
    elif [ "$charge_level" -gt 80 ]; then
        echo -n 󰂁
    elif [ "$charge_level" -gt 70 ]; then
        echo -n 󰂀
    elif [ "$charge_level" -gt 60 ]; then
        echo -n 󰁿
    elif [ "$charge_level" -gt 50 ]; then
        echo -n 󰁾
    elif [ "$charge_level" -gt 40 ]; then
        echo -n 󰁽
    elif [ "$charge_level" -gt 30 ]; then
        echo -n 󰁼
    elif [ "$charge_level" -gt 20 ]; then
        echo -n 󰁻
    else
        echo -n 󰁺
    fi
fi
