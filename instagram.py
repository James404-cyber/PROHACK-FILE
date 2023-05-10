import platform
os.system('python -m pip uninstall urllib3 && python -m pip install urllib3')
arc = str(platform.uname().machine)
if 'arm' in arc:
	__import__("instagra32").ninex()
elif 'aarch' in arc:
	__import__("ig").ninex()
else:
	exit(f' Unknow device machine {arc}')
