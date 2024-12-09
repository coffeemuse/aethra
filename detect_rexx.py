"""
detect-rexx.py - detect the presence of Regina or OORexx

This script is intended to be called from configure by use of a
    CONFIG_SCRIPT() invocation. It will see if there's a REXX
    interpreter on the PATH, and if there is one, run it with
    the -v parameter to get the version string. It will then
    check to see fi the version reported includes 'Regina' or
    'Object', and return appropriate values in the passed
    dictionary object, which it expects to be passed as a global.
"""
# SPDX-FileCopyrightText: Copyright James R. Maynard III
# SPDX-License-Identifier: MIT-0

import subprocess
import shutil
global report

def get_version(command):
    """Retrieve the version string by running the version command."""
    try:
        result = subprocess.run(
            [command, "-v"], 
            capture_output=True, 
            text=True, 
            check=True
        )
        return result.stderr.strip() + result.stdout.strip()
    except subprocess.CalledProcessError:
        return None
    except FileNotFoundError:
        return None

def is_command_available(command):
    """Check if a command is available in the system PATH."""
    return shutil.which(command) is not None

def find_rexx():
    global report
    if is_command_available('rexx') == False:
        return  # don't do anything to the configuration dict
    rexx_version = get_version('rexx')
    if rexx_version is None:
        return
    if "Object" in rexx_version:
        report.append(("-DHAVE_OBJECT_REXX","1"))
    elif "Regina" in rexx_version:
        report.append(("-DHAVE_REGINA_REXX","1"))
    else:
        print("Found a REXX that doesn't admit to being Regina or OOREXX")
    return

find_rexx()
