from django.shortcuts import render,redirect
from absenapp . models import absenModel,profil
from django.contrib.auth import authenticate
from django.contrib import messages
from django.core.paginator import Paginator

def akun(request):
    if request.user.is_active:
        # ambil nama berdasarkan user yang aktif dari tabel profil -> (1 jenis data yaitu nama)
        profile=profil.objects.get(nama=request.user)

        # ambil data pegawai berdasarkan user yang aktif (profil) dari tabel absenmodel ->(semua data)
        datas= absenModel.objects.filter(pegawai=profile)

        # inisialiasi jumlah status: hadir,izin dan pulang
        jh=0
        ji=0
        jp=0
        # untuk mendaptkan jumlah sesuai status maka setiap kali melakukan absen akan di jumlahkan sesuai dengan statusnya
        for jlh in datas:
            if jlh.status == 'HADIR': #jika status absennya hadir maka variabel inisialisasi kita jumlahkan
                jh += 1
            elif jlh.status == 'IZIN':
                ji += 1
            elif jlh.status == 'PULANG':
                jp += 1
            else:
                pass
        #paginator
        data = datas.order_by('-tgl')
        hal = Paginator(data,5)
        hal_list = request.GET.get('page')
        datas = hal.get_page(hal_list)
    else:
        return redirect('absen:login')

    context = {
        'datas':datas,
        'jlh_hadir':jh,
        'jlh_izin':ji,
        'jlh_pulang':jp,
    }

    return render(request,'akun.html',context)

def index(request):

    return render(request, 'index.html')