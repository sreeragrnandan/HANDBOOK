# Generated by Django 2.1.2 on 2019-04-01 18:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0008_auto_20190402_0001'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contact',
            name='Department',
            field=models.CharField(choices=[('CSE', 'CSE'), ('ECE', 'ECE'), ('Administration', 'Administration'), ('CIVIL', 'CIVIL'), ('EEE', 'EEE'), ('ME', 'ME'), ('BSH', 'BSH')], default='Select department', max_length=80),
        ),
    ]
