from django.urls import path
from . import views

app_name='absenapp'

urlpatterns =[
    path('',views.absen, name='absen'),
    path('profile/',views.profile, name='profile'),
    path('register/',views.register, name='register'),
    path('login/',views.loginAkun, name='login'),
    path('logoutAkun/',views.logoutAkun, name='logout'),
]