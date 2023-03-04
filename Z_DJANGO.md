# DJANGO QUICK ---------------------------------------------------------
# 01 MEMBUAT DAN MENJALANKAN  ENV
    python -m venv env
    env\Scripts\activate
# 02 INSTALL DJANGO
    pip install django
# 03 MEMBUAT PROJECT 
    django-admin startproject mysite
# STRUKTUR FOLDER
    Direktori mysite/ adalah root direktori yang berisi seluruh file dari project. Nama direktori ini bisa diganti dengan apa saja, karena tidak akan jadi masalah bagai Django.
    File manage.py adalah program untuk mengelola project Django. saat ingin melakukan sesuatu terhadap project, misalnya: menjalankan server, melakukan migrasi, menciptakan sesuatu, dll.
    File mysite/__init__.py adalah sebuah file kosong yang menyatakan direktori ini adalah sebuah paket (python package).
    File mysite/settings.py adalah tempat kita mengkonfigurasi project.
    File mysite/urls.py adalah tempat kita mendeklarasikan URL.
    File mysite/wsgi.py adalah entri point untuk WSGI-compatible
    -CARA KERJA DJANGO : HTTP REQUEST -> URL -> VIEWS -> (MODEL*jika butuh data) -> TEMPLATES -> HTTP RESPONSE
# 04 MENJALANKAN DAN MIGRASI SERVER 
    python manage.py runserver
    python manage.py migrate

    -melihat versi migrasi
    py mange.py showmigrations

    -unmigrations
    py manage.py migrate namaapp zero
    
# 05 MEMBUAT SUPER USER
    python manage.py createsuperuser
# 06 LOGIN ADMIN
    http://127.0.0.1:8000/admin
# 07 MEMBUAT APPS
    python manage.py startapp blog
# 08 MENAMBAH GAMBAR
    -buat folder static dan taruh gambah yang akan di tmpilkan.
    -panggil dengan alamat src="/static/app01/YTFLASK.png" atau bisa menggunakan 
    -{% load static %} taruh di atas tag html paling atas kemudian panggil src="{% static '/app01/YTFLASK.png ' %}"
# 09 MENGGUNAKAN INCLUDE HTML
    -buat folder snippets di templates
    -buat file html per bagian yang akan di includkan
    -kemudian panggil di file htmlnya dengan sesuai dengan posisi bagian tersebut.
    {%include "nama file.html"%}
# 10 QUERY SET 
    -menampilkan semua data 
    tb_blog.objects.all()

    -menampilkan satu jenis data tertentu
    tb_blog.objects.get(id=1)

    -menampilkan data tertentu yang sesuai dengan karakter
    tb_blog.objects.get(judul__iexact='DjaNgo')

    -menampilkan banyak jenis data tertentu
    tb_blog.objects.filter (kategori='django')

    -menampilkan data dengan urutan tertentu
    tb_blog.objects.oerder_by ('judul') #dari a-z
    tb_blog.objects.oerder_by ('-judul') #dari z-a

    -menampilkan data selain yang di kecualikan
    tb_blog.objects.exclude (kategori='gosip')

    menambah data
    -namaTabel.objects.create(namafield='isi1',namafield='isi2')
    tb_blog.objects.create(judul='flask',isi='belajar flask')

    merubah data 
    -jenis dictionary menjadi list
    semuaData = tb_blog.objects.all()
    semuaData.values_list('id') #konversi ke list
# 11 SLUG
# 12 NAMEING URL
    -cara membuat name, bertujuan agar url yang digunakan lebih flexsibel.
    name="index"
    -cara menggunakan nya
    {% url "index" %}
    path('',views.blog,name='blg'),

    -cara membuat namespace, digunakan ketika url memiliki sub. ditaruh di dalam kurung include pada url.
    namespace = "blog"
    path('blog/',include('blog.urls',  namespace='blog'))

    -cara menggunakanya
    {%url "blog:index"%}

    -jika menggunakan parameter maka seperti berikut :
    {%url 'blog:categori' categori_url=data.categori%}

    categori_url: dari nama parameternya
    data : dari varriabel loopingnya
    categor : dari field yang ditangkap

    -juga kita harus mendefinisikan nama app di url app dengan
    app_name = 'blog'

# FORM -------------------------------------------------------------------
-forms.py
    from django import forms
    class namaform(forms.Form):
    field1 =forms.charField()
    field12 =forms.charField()
-views.py
    from . forms import namaForm #ambil data form.py
    varForm = namaForm() #instansiasi class form
    context = {'data':varForm} #lempar ke templates
-index.html
    <form method="POST" > 
            {%csrf_token%} <!-- validasi keamanan --> 
            <table>
                {{data.as_table}} <!-- ambil data dari context -->
            </table> 
            <br>
            <button type="submit">Simpan</button>
     </form>
-widget : memungkinkan kita dapat merubah komponen dari elemnt html
    -forms.py
    from django import forms
    class namaform(forms.Form):

    mulai = renge (2000,2026,1)
    field1 =forms.DateField(widget=forms.SelectDateWidget(year=mulai))

    field12 =forms.charField(
                    widget=forms.Textarea,
                    max_lenght =100
                )
-styling form : memungkinkan kita menstyking menggunakan boostrap, cara penggunaan :tambah attrs di dalam widget(attrs={'class':'form-control',})

     -forms.py
        from django import forms
        class namaform(forms.Form):

        field12 =forms.charField(
                        widget=forms.TextInput(
                            attrs={
                                'class':'form-control',
                            }
                        )
                        
                    )
    -index.html
        <form method="POST" >
            {%csrf_token%}
            <table>
                <div class="mb-3"> #nama calass pembungkus
                   {{dataForm.nama.label}}  #nama dari label
                   {{dataForm.nama}}        #nama inputan form
                </div>
                
            </table>
            <br>
            <button type="submit" class="btn btn-primary">SIMPAN</button>
        </form>

    # MODELS FORMS -----------------------------------------------------------
    
    -forms.py
    from django import forms
    from . models import tesModel

    class tesForm(forms.ModelForm):
        class Meta:
            model = tesModel
            fields = [
                'nama',
                'jk',
                'hp',
                'alamat',
            ]

            widgets={
                'nama':forms.TextInput(
                    attrs={
                        'class':'form-control',
                    }
                ),
                'jk':forms.TextInput(
                    attrs={
                        'class':'form-control',
                    }
                ),
            }

    -vies.py
    from . forms import namaForms

    <!-- simpan data/create -->
    datas = namaForms(request.POST or None)
    if request.method == 'POST':
        if datas.is_valid():
            datas.save()
        return redirect('sukses')
    
    context = {
        'datas':datas,
    }
    return render (request, 'index.html',context)

    -templates/index.html
         <form method="POST">
            {%csrf_token%}
            {%for form in datas%}
            <div class="form-group">
                {{form.label}}
                {{form}}
            </div>
            {%endfor%}
            <button class="btn btn-primary my-5 ">Simpan</button>
        </form>

# PAGINATIONS ------------------------------------------------------------
    # views.py
        -import database
        from . models import namadb

        -import paginator
        from django.core.paginator import Paginator

        -ambil semua data
        db = namadb.objects.all()

        -bagi halaman
        page = Paginator(db, 3) definisi namadb dan jumlah konten/halaman 

        -filter sesuai pembagian halaman
        page_list = request.GET.get('page') page berasal dari bawaan

        -tampilkan hasil filter
        page = page.get_page(page_list) ambil page dan page_list diatas

        lemapar page ke templates melalui context
        context = {
            'datas':page 
        }
    # index.html (templates)
        {%for data in datas.object_list%} ambil fungsi object_list
            panggil field
        {%endfor%}
    # nav
    -sebelumnya
        {%if data.has_previous%}  #ambil variabel dari views & ambil nilai sebelumnya
            <a class="page-link" href="{%url 'index'%}?page={{data.previous_page_number}}">Previous</a> #tampilkan data pada halaman index berdasarkan nilai yang di ambil
        {%endif%}

    -setelhnya
        {%if data.has_next%}  #sama dengan sebelumnya
            <a class="page-link" href="{%url 'index'%}?page={{data.next_page_number}}">Next</a>
            {%else%}
            <a class="page-link text-secondary">Next</a>
        {%endif%}

    -berdasarkan nomor
        {%for num_pages in data.paginator.page_range %}  #ambil berdasarkan rage
            <br>
            {%if data.number == num_pages %} #jika nilai rage sama dengan nilai 
            <li class="page-item active" aria-current="page">
            <a class="page-link " href="{%url 'index'%}?page={{num_pages}}">{{num_pages}}</a> #maka tampilkan berdasarkan nilai di halaman index
            </li>
            {%else%} #jika salah maka tampilkan rage berikutnya
            <li class="page-item">
            <a class="page-link" href="{%url 'index'%}?page={{num_pages}}">{{num_pages}}</a>
            </li>
            {%endif%}
            <br>
        {%endfor%}
            
# SEARCHING / PENCARIAN --------------------------------------------------
    # templates
        -buat form search
        -kasih name pada inputan
    # views
    - ambil isi form search : 
    cari = request.GET.get('cari')

    - cek dan cari sesuai ketentuan yg diinginkan :
    if cari: #jika benar/true maka
        post = cariModel.objects.filter(Q(nama__icontains=cari) | Q(alamat__icontains=cari)) #akan mencari berdasarkan nama atau alamat
            
    else: #jika salah/flase maka
        post = cariModel.objects.all()  #akan menampilkan semua data

    kemudian lempar variabel post ke kontext

# LOGIN -----------------------------------------------------
-import modul auth
from django.contrib.auth import authenticate,login,logout

-ambil data dari form
    -cek metod ambil
    if request.method == 'POST':
        user= request.POST['username']
        pass= request.POST['password']
        akun = authenticate(request, username=user,password=pass)

        -cek akun di database
        if akun is not None:
            login(request,user)
            return redirect('tes')
        else:
            return redirect('login')

# REGISTER --------------------------------------------------
-custom register : caranya kita gabungkan tabel user django dengan tabel register yang kita buat
    -import tebel user django
        from django.contrib.atuh.models import User
    
    -membuat tabel baru dan merelasi tabel user dengan tabel baru tersebut
    class register(models.Model):
        #field relasi
        user = models.OneToOneField(User,on_delete=models.CASCADE, related_name=register) 

        #field custom
        foto = models.ImageField(upload_to='img')



# LOGOUTH --------------------------------------------------
# STATIC --------------------------------------------------
-settings.py
import os

STATIC_URL = 'static/'
MEDIA_URL = '/img/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'static/img')

STATICFILES_DIRS = [
    # BASE_DIR / 'static',
    os.path.join(BASE_DIR, 'static')
]


-project/urls.py

from django.conf import settings 
from django.conf.urls.static import static 

urlpatterns=[

]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 









## --------------------------------------------------
GITHUB

-git init
-git remote
------------ (saat melkukan perubahan/ update mulai dari sini)
-git add
-git commit
-git puhs


- git remote
git remote add origin link repo
git remote add origin https://github.com/ENONGLOSKER/DJANGO.git

- ganti remote git
git remote set-url origin link repo
git remote set-url origin https://github.com/ENONGLOSKER/DJANGO.git
## --------------------------------------------------

# ABSTRACTUSER --------------------------------------------
-buat project
-buat models 
from dajngo.contrib.auth.models import AbstractUser
class User(AbstractUser):
    attributBaru= models.CharField(max_length=50)
-migrate
