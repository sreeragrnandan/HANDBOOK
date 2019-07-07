from __future__ import unicode_literals
from django.contrib import admin

# Register your models here.
from .models import EventInfo, Event
# admin.site.register(EventInfo)

class EventInfoAdmin(admin.ModelAdmin):
    def get_queryset(self,request):
        queryset = super(EventInfoAdmin ,self).get_queryset(request)
        queryset = queryset.order_by('-id')
        return queryset
    search_fields = ('title', 'Grand_Event', 'date','priority', )
admin.site.register(EventInfo , EventInfoAdmin)

class EventAdmin(admin.ModelAdmin):
    list_display = ['day', 'start_time', 'end_time', 'notes']
admin.site.register(Event , EventAdmin)