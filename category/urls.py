from django.urls import path,include
from category import views
urlpatterns = [
    path('home/', views.home),

]
