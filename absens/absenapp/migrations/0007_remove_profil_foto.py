# Generated by Django 4.1.7 on 2023-03-01 08:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('absenapp', '0006_alter_profil_nama'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profil',
            name='foto',
        ),
    ]
