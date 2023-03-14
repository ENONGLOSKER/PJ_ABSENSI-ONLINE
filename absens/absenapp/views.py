from django.shortcuts import render,redirect,HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from absenapp . models import absenModel,profil
from .forms import profilForm,absenForm


@login_required() #fungsi ini bisa diakses setelah login berhasil
def absen(request):
    data = absenModel.objects.all() #ambil semua data di tabel absenmodel
    
    ab = absenForm(request.POST or None) #inisial request 
    if request.method == 'POST':
        if ab.is_valid(): #jika isi form valid
            ab.save()  #simpan semua isi form
        return redirect('akun') #setelah disimpan, kemudian arahkan ke alamat/url akun
        
    #lempar data yang sudah didapat ke templates
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
        username=request.POST.get('username') #megambil data dari form username
        email=request.POST.get('email')
        pass1=request.POST.get('password1')
        pass2=request.POST.get('password2')

        if pass1!=pass2: #jika password/password 1 tidak sama dengan confirm password atau password ke 2
            return HttpResponse("Mohon maaf🙏🏻..Password tidak Sama!!") 
        else: #jika sama password 1 dengan ke 2
            my_user=User.objects.create_user(username,email,pass1) #buat user baru dengan data username,email dan password
            my_user.save()
            return redirect('absen:login') #ke halaman login

    return render(request,'register.html')

def loginAkun(request):
    if request.method=='POST':
        username=request.POST.get('username')
        pass1=request.POST.get('passw')

        user=authenticate(request,username=username,password=pass1) #cek username dan password
        if user is not None: #jika username dan password ada di database maka
            login(request, user) #login berhasil
            if user.is_superuser: #jika user adalah admin maka tampilkan halaman admin
                return redirect('/admin/')
            else: #jika user bukan admin maka tampilkan halaman absen
                return redirect('absen:profile')
        else:# jika username dan password  tidak ada
            # return HttpResponse ("Mohon maaf🙏🏻..Username dan Password tidak Valid!!")
            return redirect('absen:login') #ke halaman login
    return render(request,'login.html')

def logoutAkun(request):
    logout(request) 
    return redirect('absen:login')


