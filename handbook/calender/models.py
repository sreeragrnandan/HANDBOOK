from django.db import models
# Create your models here.V
class Contacts(models.Model):
    index = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50 ,unique=False)
    url = models.URLField(unique=True)
    number = models.CharField(max_length=50 ,unique=True)
    department = models.CharField(max_length=50 ,unique=True)

    def __str__(self):
        return self.name


class Person(models.Model):
    name = models.CharField(max_length=100)