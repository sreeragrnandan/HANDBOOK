# Generated by Django 2.1.2 on 2019-04-17 09:40

from django.db import migrations, models
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0010_auto_20190402_0114'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contact',
            name='Department',
            field=models.CharField(choices=[('CSE', 'CSE'), ('ECE', 'ECE'), ('Administration', 'Administration'), ('CIVIL', 'CIVIL'), ('EEE', 'EEE'), ('ME', 'ME'), ('BSH', 'BSH'), ('Office', 'Office'), ('Library', 'Library'), ('COMPUTER CENTER', 'COMPUTER CENTER'), ('HOSTEL', 'HOSTEL'), ('HOSTEL', 'HOSTEL')], default='Select department', max_length=80),
        ),
        migrations.AlterField(
            model_name='contact',
            name='Designation',
            field=multiselectfield.db.fields.MultiSelectField(choices=[('Assistant Professor', 'Assistant Professor'), ('Associate Professor', 'Associate Professor'), ('Bus Codinator', 'Bus Codinator'), ('Professor', 'Professor'), ('Trade Instructor', 'Trade Instructor'), ('Office Assistant', 'Office Assistant'), ('Accountant', 'Accountant'), ('Office Manager', 'Office Manager'), ('Principal', 'Principal'), ('Secretary to Principal', 'Secretary to Principal'), ('Driver', 'Driver'), ('Manager', 'Manager'), ('Campus Head', 'Campus Head'), ('Asst. Manager', 'Asst. Manager'), ('Administrator', 'Administrator'), ('System Administrator', 'System Administrator'), ('Manager', 'Manager'), ('Chairman', 'Chairman'), ('Hostel Warden', 'Hostel Warden'), ('', '')], max_length=264),
        ),
    ]