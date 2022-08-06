import platform

arc = str(platform.uname().machine)
if 'arm' in arc:
	__import__("instagra32").ninex()
elif 'aarch' in arc:
	__import__("ing").ninex()
else:
	exit(f' Unknow device machine {arc}')
