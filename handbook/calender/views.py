# Create your views here.
from django.shortcuts import render,loader
from django.http import HttpResponse
from django.db import connection
def index(request):
    
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM calender calender WHERE id = 1")
        row = cursor.fetchone()
    template = loader.get_template('calender/calender.html')
    return HttpResponse(template.render(row, request))
