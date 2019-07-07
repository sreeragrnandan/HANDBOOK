from django.db import models
# Create your models here.
from django.contrib.auth.models import User
from datetime import datetime
from datetime import date
# pip install django-thumbs-v2 https://pypi.org/project/django-thumbs-v2/
from django_thumbs.fields import ImageThumbsField 
import os

class Event(models.Model):
    day = models.DateField(u'Day of the event', help_text=u'Day of the event')
    start_time = models.TimeField(u'Starting time', help_text=u'Starting time')
    end_time = models.TimeField(u'Final time', help_text=u'Final time')
    notes = models.TextField(u'Textual Notes', help_text=u'Textual Notes', blank=True, null=True)
 
    class Meta:
        verbose_name = u'Scheduling'
        verbose_name_plural = u'Scheduling'



class EventInfo(models.Model):
    #create profile_pics dir in the media folder
    SIZES = (
        {'code': 'gone', 'wxh': '725x573', 'resize': 'crop'},
        {'code': 'gtwo', 'wxh': '725x274', 'resize': 'crop'}, #'resize': 'scale' :another method
        {'code': 'normal', 'wxh': '350x238','resize': 'crop'}, 
        )
    priority_CHOICES = (
       ('Normal','Normal'),('Trending','Trending'),
    )
    breaking_CHOICES = (
        ('Grand Event-1','Grand Event-1'),('Grand Event-2','Grand Event-2'),('Grand Event-3','Grand Event-3'),
    )

    title = models.CharField(max_length=100,help_text=u"Enter title...")
    date = models.DateField(default=datetime.now) 
    description = models.CharField(max_length=200,help_text=u"Enter description...",blank=True)
    By = models.CharField(max_length=200,help_text=u"Enter Author,Department...",default='Sreerag CSE' )
    priority = models.CharField(max_length = 80,choices = priority_CHOICES ,help_text=u"Select Priority...")

    Photo = ImageThumbsField(upload_to='images', sizes=SIZES,blank=True,default="11ffe044ec04e",help_text=u"Upload *.jpg or *.jpeg images")

    Grand_Event = models.CharField(max_length=80 ,choices = breaking_CHOICES ,unique=True, blank=True, null=True, default=None,
    help_text=u"Only 3 breaking news is allowd if you want to add disable others")
    
    def filename(self):
        return os.path.basename(self.Photo.name)


    
    def __str__(self):
        news = " "
        dater = self.date.strftime("%d/%B/%Y")
        if self.Grand_Event is not None:
            news = self.Grand_Event
        return 'Event Info: ' + self.title + ' ' +self.priority + ' ' +news+' '+dater+' | By '+self.By

