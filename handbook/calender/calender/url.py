from django.urls import path
from . import views
app_name = "calender"
urlpatterns = [
    path('', views.index, name = 'index'),
    path('event/', views.event, name = 'event')
]