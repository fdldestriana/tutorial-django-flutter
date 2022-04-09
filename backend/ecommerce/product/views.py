from django.shortcuts import render

# Create your views here.
from . serializers import ProductSerializer
from rest_framework.views import APIView
from rest_framework.response import Response
from . models import Product


class LatestProductList(APIView):
    def get(self, request, format=None):
        products = Product.objects.all()
        serializer = ProductSerializer(products, many=True)
        return Response(serializer.data)

