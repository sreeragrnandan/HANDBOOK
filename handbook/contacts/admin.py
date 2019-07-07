from django.contrib import admin

# Register your models here.
from .models import contact
# admin.site.register(contact)
class contactAdmin(admin.ModelAdmin):
    list_display = ['Name', 'Department', 'jecc_code']
    def get_queryset(self,request):
        queryset = super(contactAdmin ,self).get_queryset(request)
        queryset = queryset.order_by('Department')
        return queryset
    search_fields = ('Department', 'Designation', 'Name','Qualification','jecc_code','Phone_Number' )
admin.site.register(contact, contactAdmin)

# class contactAdmin(admin.ModelAdmin):
#     def get_queryset(self,request):
#         queryset = super(contactAdmin ,self).get_queryset(request)
#         queryset = queryset.order_by('department_Name')
#         return queryset
#     search_fields = ('department_Name')
# admin.site.register(contact, contactAdmin)