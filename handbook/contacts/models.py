from django.db import models

# Create your models here.
class contact(models.Model):
    name = models.CharField(max_length=80)
    phone = models.CharField(max_length=20,unique=True)
    email = models.EmailField()