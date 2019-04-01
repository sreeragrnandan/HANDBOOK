from django.db import models
from multiselectfield import MultiSelectField

# Create your models here.
class contact(models.Model):
    DEPARTMENT_CHOICES = (
        ('CSE','CSE'),('ECE','ECE'),('Administration','Administration'),('CIVIL','CIVIL')
        ,('EEE','EEE'),('ME','ME'),('BSH','BSH'),('Office','Office'),('Library','Library'),
        ('COMPUTER CENTER','COMPUTER CENTER'),('HOSTEL','HOSTEL'),
    )
    Department = models.CharField(max_length = 80,choices = DEPARTMENT_CHOICES , default='Select department' )
    Name = models.CharField(max_length=80)
    Designation_CHOICES = (
        ('Assistant Professor','Assistant Professor'),('Associate Professor','Associate Professor'),('Bus Codinator','Bus Codinator')
        ,('Professor','Professor'),('Trade Instructor','Trade Instructor')
        ,('Office Assistant','Office Assistant'),('Accountant','Accountant'),('Office Manager','Office Manager'),('Principal','Principal')
        ,('Secretary to Principal','Secretary to Principal'),('Driver','Driver'),('Manager','Manager'),
        ('Campus Head','Campus Head'),('Asst. Manager','Asst. Manager'),('Administrator','Administrator'),
        ('System Administrator','System Administrator'),('Manager','Manager'),('Chairman','Chairman'),('Hostel Warden','Hostel Warden'),
        ('',''),
    )

    Designation = MultiSelectField(choices = Designation_CHOICES)
    Qualification = models.CharField(max_length=80)
    Email = models.EmailField()
    Phone_Number = models.CharField(max_length=20,unique=True)
    StaffID = models.CharField(max_length = 100, default='JEC')