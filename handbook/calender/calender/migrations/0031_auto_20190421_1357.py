# Generated by Django 2.1.2 on 2019-04-21 08:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('calender', '0030_auto_20190421_1357'),
    ]

    operations = [
        migrations.RenameField(
            model_name='eventinfo',
            old_name='photo',
            new_name='Photo',
        ),
    ]