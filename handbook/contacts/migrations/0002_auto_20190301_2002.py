# Generated by Django 2.1.2 on 2019-03-01 14:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='contact',
            old_name='email',
            new_name='Email',
        ),
        migrations.RenameField(
            model_name='contact',
            old_name='name',
            new_name='Name',
        ),
        migrations.RenameField(
            model_name='contact',
            old_name='phone',
            new_name='Phone_Number',
        ),
        migrations.AddField(
            model_name='contact',
            name='Designation',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='contact',
            name='Qualification',
            field=models.CharField(default=0, max_length=80),
            preserve_default=False,
        ),
    ]