from django.db import models

# Create your models here.
class contact(models.Model):
    Name = models.CharField(max_length=80)
    Designation = models.CharField(max_length=100)
    Qualification = models.CharField(max_length=80)
    Email = models.EmailField()
    Phone_Number = models.CharField(max_length=20,unique=True)
    Photos = models.CharField(max_length = 100, default='0000000')