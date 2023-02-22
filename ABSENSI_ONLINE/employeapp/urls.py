from django.urls import path
from . import views

app_name='employeapp'

urlpatterns =[
    path('',views.absen, name='absen'),
    path('register/',views.register, name='register'),
    path('login/',views.login, name='login'),
]