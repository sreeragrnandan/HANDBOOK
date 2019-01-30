# Create your views here.
from django.shortcuts import render
def index(request):
    mydict  = {
        'insert_me':"contect should be display here!"
    }
    return render(request, 'contacts/contacts.html', context=mydict)