from django.shortcuts import render

# Create your views here.
def register(requesrt):
    return render(requesrt,'register.html')

def login(requesrt):
    return render(requesrt,'login.html')

def absen(request):
    
    return render(request, 'absen.html')