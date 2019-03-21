from django.db import models

# Create your models here.
class contact(models.Model):
    Department = models.CharField(max_length = 80,default='NULL')
    Name = models.CharField(max_length=80)
    Designation = models.CharField(max_length=100)
    Qualification = models.CharField(max_length=80)
    Email = models.EmailField()
    Phone_Number = models.CharField(max_length=20,unique=True)
    StaffID = models.CharField(max_length = 100, default='JEC')