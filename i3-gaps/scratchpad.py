#!/usr/bin/python

import i3ipc
import rofi

i3 = i3ipc.Connection()
menu = rofi.Rofi()

def scratchpad():
    for con in i3.get_tree():
        if(con.name == "__i3_scratch"):
            return con

def get_windows():
    wins = []
    names = []
    for con in scratchpad():
        wins += con
    for con in wins:
        names.append(con.name)
    return wins,names

wins, names = get_windows()
index, key = menu.select("Scratchpad",names)#,select="0 -theme /home/brian/.config/rofi/i3scratch.rasi")

for i in range((index+1)*2-1):
    i3.command("scratchpad show, resize set 1800 1012, move position center")
