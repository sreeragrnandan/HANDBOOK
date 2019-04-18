# Create your views here.
from django.shortcuts import render
from contacts.models import contact
def contacts(request):
    con = contact.objects.order_by('id')
    date_dict = {'contact': con}
    return render(request, 'contacts/contacts.html', context=date_dict)

def newTemp(request):
    con = contact.objects.order_by('id')
    date_dict = {'contact': con}
    return render(request, 'contacts/index.html', context=date_dict)