# Create your views here.
from django.shortcuts import render

from .models import EventInfo
def index(request):
    events = EventInfo.objects.order_by('-id')
    date_dict = {'event': events}
    return render(request, 'calender/index.html', context=date_dict)
def calender(request):
    return render(request, 'calender/abc.html')
