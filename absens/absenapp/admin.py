from django.contrib import admin
from . models import absenModel,profil

# Register your models here.
class absenAdmin(admin.ModelAdmin):
    readonly_fields = ['tgl','waktu']
    list_display = ('pegawai','status','ket','waktu','tgl')
    list_filter = ['pegawai','status','tgl','waktu'] 

class profilAdmin(admin.ModelAdmin):
    list_display = ('nama','nip','jenisK','jabatan','alamat')
    list_filter = ['nama','nip','jenisK','jabatan','alamat']
    # search_fields = ['nip','jenisK','jabatan','alamat']


admin.site.register(absenModel,absenAdmin)
admin.site.register(profil,profilAdmin)
admin.site.site_header= 'Absensi Online'

