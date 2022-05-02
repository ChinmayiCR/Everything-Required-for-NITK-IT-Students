from django.urls import path
from calculator import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

app_name = 'calculator'

urlpatterns = [
    path('',views.indexView, name='index'),
    path('modelView',views.modelView, name='model')



]