from django.contrib import admin
from . models import absenModel,profil


class absenAdmin(admin.ModelAdmin):
    readonly_fields = ['tgl','waktu'] #untuk menmpilkan kolom yang tersembunyi
    list_display = ('pegawai','status','ket','waktu','tgl') #untuk menu pencarian berdasarkan kategori
    list_filter = ['pegawai','status','tgl','waktu'] #untuk membuat tampilkan tabel pada admin

class profilAdmin(admin.ModelAdmin):
    list_display = ('nama','nip','jenisK','jabatan','alamat')
    list_filter = ['nama','nip','jenisK','jabatan','alamat']

#untuk mendaptarkan tabel ke admin
admin.site.register(absenModel,absenAdmin)
admin.site.register(profil,profilAdmin)

# untuk merubah/edit nama header/judul panel admin
admin.site.site_header= 'Absensi Online'

