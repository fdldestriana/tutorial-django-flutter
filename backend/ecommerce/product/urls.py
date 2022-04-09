from django.urls import URLPattern, include, path
from product import views

urlpatterns = [
    path('latest-products/', views.LatestProductList.as_view())
]