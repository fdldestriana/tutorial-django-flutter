from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('items/', views.get_items_list),
    path('item-get/<str:pk>/', views.item_detail, name='item-get'),
    path('item-update/<str:pk>/', views.item_detail, name='item-update'),
    path('item-delete/<str:pk>/', views.item_detail, name='item-delete'),
]

