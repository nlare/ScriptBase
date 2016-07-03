#!/bin/bash
sensors | grep radeon -A 2 | grep temp1 | cut -b 16-17

