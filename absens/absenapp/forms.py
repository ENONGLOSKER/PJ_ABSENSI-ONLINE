from django import forms
from . models import absenModel,profil

class profilForm(forms.ModelForm):
    class Meta():
        model=profil
        fields="__all__"
        
        labels= {
            'jenisK' : 'Jenis Kelamin',
        }

        widgets={
            'nama':forms.Select(
                attrs={
                    'class':'form-control',}
                ),
            'nip':forms.TextInput(
                attrs={
                    'class':'form-control',}
                ),
            'jenisK':forms.Select(
                attrs={
                    'class':'form-control',
                    'label':'Jenis Kelamin'}
                ),
            'jabatan':forms.TextInput(
                attrs={
                    'class':'form-control',}
                ),
            'alamat':forms.Textarea(
                attrs={
                    'class':'form-control',
                    'style':'height: 80px;',}
                ),
            }




class absenForm(forms.ModelForm):
    class Meta:
        model = absenModel
        fields = [
                'pegawai',
                'status',
                'ket',      
            ]
        widgets={
            'pegawai':forms.Select(
                attrs={
                    'class':'form-control',}
                ),
            'status':forms.Select(
                attrs={
                    'class':'form-control',}
                ),
            'ket':forms.Textarea(
                attrs={
                    'class':'form-control',
                    'style':'height: 80px;',}
                ),
            }
