# Generated by Django 2.1.2 on 2019-04-17 23:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('comity', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='comity',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comity_name', models.CharField(max_length=100)),
            ],
        ),
        migrations.DeleteModel(
            name='Topic',
        ),
    ]