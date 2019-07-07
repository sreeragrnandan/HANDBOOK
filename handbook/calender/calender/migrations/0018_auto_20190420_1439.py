# Generated by Django 2.1.2 on 2019-04-20 09:09

from django.db import migrations
import django_thumbs.fields


class Migration(migrations.Migration):

    dependencies = [
        ('calender', '0017_auto_20190420_1427'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='eventinfo',
            name='image',
        ),
        migrations.AddField(
            model_name='eventinfo',
            name='Photo',
            field=django_thumbs.fields.ImageThumbsField(blank=True, sizes=({'code': 'avatar', 'resize': 'crop', 'wxh': '125x125'}, {'code': 'm', 'resize': 'scale', 'wxh': '640x480'}, {'code': '150', 'wxh': '150x150'}), upload_to='images'),
        ),
    ]
