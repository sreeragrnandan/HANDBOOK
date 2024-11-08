# Generated by Django 2.1.2 on 2019-04-18 01:29

from django.db import migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('comity', '0005_auto_20190418_0628'),
    ]

    operations = [
        migrations.AddField(
            model_name='members',
            name='department',
            field=multiselectfield.db.fields.MultiSelectField(choices=[('CSE', 'CSE'), ('ECE', 'ECE'), ('Administration', 'Administration'), ('CIVIL', 'CIVIL'), ('EEE', 'EEE'), ('ME', 'ME'), ('BSH', 'BSH'), ('Office', 'Office'), ('Library', 'Library'), ('COMPUTER CENTER', 'COMPUTER CENTER'), ('HOSTEL', 'HOSTEL')], default='CSE', max_length=77),
        ),
    ]
