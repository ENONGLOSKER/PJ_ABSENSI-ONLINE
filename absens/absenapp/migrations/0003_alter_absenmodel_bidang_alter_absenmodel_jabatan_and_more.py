# Generated by Django 4.1.7 on 2023-02-24 10:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('absenapp', '0002_alter_absenmodel_bidang_alter_absenmodel_jabatan_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='absenmodel',
            name='bidang',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='absenmodel',
            name='jabatan',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='absenmodel',
            name='tgl',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
