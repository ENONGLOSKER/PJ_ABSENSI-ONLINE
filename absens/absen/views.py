from django.shortcuts import render,redirect
from absenapp . models import absenModel
from django.contrib.auth import authenticate

def akun(request):
  
    return render(request,'akun.html')

def index(request):

    # print(request.user.is_authenticated())

    return render(request, 'index.html')