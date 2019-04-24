# Generated by Django 2.1.2 on 2019-04-17 23:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0011_auto_20190417_1510'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contact',
            name='Department',
            field=models.CharField(choices=[('CSE', 'CSE'), ('ECE', 'ECE'), ('Administration', 'Administration'), ('CIVIL', 'CIVIL'), ('EEE', 'EEE'), ('ME', 'ME'), ('BSH', 'BSH'), ('Office', 'Office'), ('Library', 'Library'), ('COMPUTER CENTER', 'COMPUTER CENTER'), ('HOSTEL', 'HOSTEL')], default='Select department', max_length=80),
        ),
    ]