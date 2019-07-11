from django.contrib import admin

# Register your models here.
from .models import EventInfo,Events
# admin.site.register(EventInfo)

class EventInfoAdmin(admin.ModelAdmin):
    def get_queryset(self,request):
        queryset = super(EventInfoAdmin ,self).get_queryset(request)
        queryset = queryset.order_by('-id')
        return queryset
admin.site.register(EventInfo , EventInfoAdmin)

admin.site.register(Events)