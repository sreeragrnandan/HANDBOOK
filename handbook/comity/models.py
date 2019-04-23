from django.db import models
from multiselectfield import MultiSelectField
import pymysql
# Create your models here.
class comity(models.Model):
    comity_name = models.CharField(max_length=200)
    def __str__(self):
        return self.comity_name
    def __str__(self):
        return '' + self.comity_name

class Member(models.Model):
    DEPARTMENT_CHOICES = (
        ('CSE','CSE'),('ECE','ECE'),('Administration','Administration'),('CIVIL','CIVIL')
        ,('EEE','EEE'),('ME','ME'),('BSH','BSH'),('Office','Office'),('Library','Library'),
        ('COMPUTER CENTER','COMPUTER CENTER'),('HOSTEL','HOSTEL'),
    )
    comity = models.ForeignKey(comity, on_delete=models.CASCADE)
    jecc_code = models.CharField(max_length=100,default='JEC')
    Member_name = models.CharField(max_length=200)
    designation = models.CharField(max_length=200)
    department = models.CharField(max_length = 80,choices = DEPARTMENT_CHOICES , default='Select department' )
    def __str__(self):
        #database connection
        connection = pymysql.connect(host="localhost", port=3306 ,user="root",passwd="",database="Handbook" )
        cursor = connection.cursor()
        cursor.execute("SELECT comity_name FROM comity_comity WHERE id = %d ;" %self.comity_id)
        Featched_comity_name = cursor.fetchall()
        connection.commit()
        connection.close()
        comity_name = ','.join(map(','.join,Featched_comity_name))
        return ''+comity_name+' '+self.designation +' '+self.Member_name+' '+self.department