from django.contrib import admin

# Register your models here.
from .models import contact
# admin.site.register(contact)
class contactAdmin(admin.ModelAdmin):
    def get_queryset(self,request):
        queryset = super(contactAdmin ,self).get_queryset(request)
        queryset = queryset.order_by('Department')
        return queryset
admin.site.register(contact, contactAdmin)