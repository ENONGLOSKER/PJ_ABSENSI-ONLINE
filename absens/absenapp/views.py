from django.shortcuts import render,redirect,HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from absenapp . models import absenModel,profil
from .forms import profilForm,absenForm


@login_required()
def absen(request):
    data = absenModel.objects.all()
    
    ab = absenForm(request.POST or None)
    if request.method == 'POST':
        if ab.is_valid():
            ab.save()  
        return redirect('akun')
        
    context = {
        'profile':ab,
        'datas':data,
    }
    return render(request, 'absen.html',context)

@login_required()
def profile(request):

    karyawan=profilForm(request.POST or None)
    if request.method == 'POST':
        if karyawan.is_valid():
            karyawan.save()
        return redirect('absen:absen')
    

    context = {
        'karyawan':karyawan,
    }
    return render(request,'profile.html', context)

# AKUN
def register(request):
    if request.method=='POST':
        username=request.POST.get('username')
        email=request.POST.get('email')
        pass1=request.POST.get('password1')
        pass2=request.POST.get('password2')

        if pass1!=pass2:
            return HttpResponse("Your password and confrom password are not Same!!")
        else:
            my_user=User.objects.create_user(username,email,pass1)
            my_user.save()
            return redirect('absen:login')

    return render(request,'register.html')

def loginAkun(request):
    if request.method=='POST':
        username=request.POST.get('username')
        pass1=request.POST.get('passw')

        user=authenticate(request,username=username,password=pass1)
        if user is not None:
            login(request, user)
            if user.is_superuser:
                return redirect('/admin/')
            else:
                return redirect('absen:profile')
                
        else:
            return HttpResponse ("Username or Password is incorrect!!!")
    return render(request,'login.html')

def logoutAkun(request):
    logout(request)
    return redirect('absen:login')


