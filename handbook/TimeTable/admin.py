from django.contrib import admin
from .models import TimeTables
# Register your models here.
class TimeTableAdmin(admin.ModelAdmin):
    def get_queryset(self,request):
        queryset = super(TimeTableAdmin ,self).get_queryset(request)
        queryset = queryset.order_by('-id')
        return queryset
    list_display = ['Department_name', 'semester']
    search_fields = ('Department_name', 'semester' )
admin.site.register(TimeTables , TimeTableAdmin)