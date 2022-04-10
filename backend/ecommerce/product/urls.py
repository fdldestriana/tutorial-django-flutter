from django.urls import URLPattern, path
from product import views

urlpatterns = [
    path('latest-products/', views.LatestProductList.as_view())
]