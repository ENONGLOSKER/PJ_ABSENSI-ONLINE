# Generated by Django 4.1.7 on 2023-02-24 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('absenapp', '0003_alter_absenmodel_bidang_alter_absenmodel_jabatan_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='absenmodel',
            name='jabatan',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='absenmodel',
            name='tgl',
            field=models.DateField(auto_now_add=True),
        ),
    ]
