# Generated by Django 4.1.7 on 2023-02-23 23:01

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='absenModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nip', models.CharField(blank=True, max_length=50, null=True)),
                ('nama', models.CharField(max_length=50)),
                ('foto', models.ImageField(upload_to='')),
                ('bidang', models.CharField(max_length=50)),
                ('jabatan', models.CharField(max_length=50)),
                ('keterangan', models.TextField(blank=True, null=True)),
                ('tgl', models.DateTimeField(auto_now_add=True)),
                ('waktu', models.TimeField(auto_now_add=True)),
                ('status', models.CharField(choices=[('HADIR', 'HADIR'), ('TIDAK HADIR', 'TIDAK HADIR'), ('IZIN', 'IZIN'), ('PULANG', 'PULANG')], default='TIDAK HADIR', max_length=50)),
            ],
        ),
    ]
