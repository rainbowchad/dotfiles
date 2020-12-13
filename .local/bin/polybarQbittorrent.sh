#!/usr/bin/env python3
import qbittorrentapi
from functools import reduce
import argparse
import os

ICON_PLAY = ""
ICON_PAUSE = ""
ICON = ""
PATH=os.path.realpath(__file__)

# Config
username=''
password=''
host='localhost'
port='8080'
####

parser = argparse.ArgumentParser()
parser.add_argument('--playpause', action="store_true")
args= parser.parse_args()



qbc = qbittorrentapi.Client(host=host,username=username,password=password, port=port, SIMPLE_RESPONSES=True)
failed = False
try:
    qbc.auth_log_in()
except:
    print("")
    failed=True
if not failed:
    active = qbc.torrents.info.active()
    ICON = ICON_PLAY
    if len(active):
        ICON = ICON_PAUSE
    if args.playpause:
        if len(active):
            qbc.torrents_pause('all')
        else:
            qbc.torrents_resume('all')
        exit()

    dlspeed = qbc.transfer.info['dl_info_speed']/1024
    dlunit = "kB/s"
    if dlspeed > 1024:
        dlunit = "mB/s"
        dlspeed = dlspeed/1024
    upspeed = qbc.transfer.info['up_info_speed']/1024
    upunit = "kB/s"
    if upspeed > 1024:
        upunit = "mB/s"
        upspeed = upspeed/1024
    cumulative_percentage = 0
    if len(active) > 0:
        cumulative_percentage = reduce(lambda a,b:a+b['progress'], active,0) / len(active)
    print(f'%{{A1: {PATH} --playpause:}}{ICON}%{{A}} {len(active)}  {cumulative_percentage:.2%} |  {upspeed:.2f}{upunit}  {dlspeed:.2f}{dlunit}')