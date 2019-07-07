# Generated by Django 2.1.2 on 2019-04-19 00:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('calender', '0006_auto_20190419_0608'),
    ]

    operations = [
        migrations.AddField(
            model_name='eventinfo',
            name='Make_breaking_news',
            field=models.CharField(blank=True, choices=[('Breaking news 1', 'Breaking news 1'), ('Breaking news 2', 'Breaking news 2'), ('Breaking news 3', 'Breaking news 3')], max_length=80, unique=True),
        ),
        migrations.AlterField(
            model_name='eventinfo',
            name='description',
            field=models.CharField(blank=True, help_text='Enter description...', max_length=200),
        ),
    ]
