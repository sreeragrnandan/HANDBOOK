# Generated by Django 2.1.2 on 2019-04-21 07:52

from django.db import migrations
import django_thumbs.fields


class Migration(migrations.Migration):

    dependencies = [
        ('calender', '0025_auto_20190421_1320'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='eventinfo',
            name='Photo',
        ),
        migrations.AddField(
            model_name='eventinfo',
            name='photo',
            field=django_thumbs.fields.ImageThumbsField(blank=True, default=None, null=True, sizes=({'code': 'gone', 'resize': 'crop', 'wxh': '725x573'}, {'code': 'gtwo', 'resize': 'crop', 'wxh': '725x274'}, {'code': 'normal', 'resize': 'crop', 'wxh': '350x238'}), upload_to='images'),
        ),
    ]
