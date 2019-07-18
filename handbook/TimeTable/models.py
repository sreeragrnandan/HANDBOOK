from django.db import models
from contacts.models import department
from django.core.validators import FileExtensionValidator
# Create your models here.

class TimeTables(models.Model) :
    SEM_CHOICES = (
        ('S1','S1'),('S2','S2'),('S3','S3'),('S4','S4'),('S5','S5'),('S6','S6'),
    )
    Department_name = models.ForeignKey(department,on_delete=models.CASCADE)
    semester = models.CharField(max_length = 80,choices = SEM_CHOICES , default='Select semester' )    
    Time_Table_of_Division_A = models.FileField(upload_to='TimeTable/',validators=[FileExtensionValidator(allowed_extensions=['pdf'])],
    help_text=u"If there is only one division please upload to here")
    Time_Table_of_Division_B = models.FileField(upload_to='TimeTable/',validators=[FileExtensionValidator(allowed_extensions=['pdf'])], null=True, default="Null",
    blank=True, help_text=u"Don't uploade anything if there  is no Division B ")