import platform

arc = str(platform.uname().machine)
if 'arm' in arc:
	__import__("InstaPro").lisensi()
elif 'aarch' in arc:
	__import__("InstaPro64").lisensi()
else:
	exit(f' Unknow device machine {arc}')
