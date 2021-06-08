import os, platform
try:
    import requests
except:
    os.system('pip2 install requests')

import requests
bit = platform.architecture()[0]
if bit == '64bit':
    from james64bit import menu
    menu()
elif bit == '32bit':
    from james32bit import menu
    menu()
