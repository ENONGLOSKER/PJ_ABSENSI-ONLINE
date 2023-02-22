from django.shortcuts import render
from time import gmtime, strftime

def register(requesrt):
    return render(requesrt,'register.html')

def login(requesrt):
    return render(requesrt,'login.html')

def absen(request):
    waktu = strftime("%a, %d %b %Y %H:%M:%S", gmtime())
    context = {
        'waktu':waktu,
    }
    return render(request, 'absen.html',context)