from django.shortcuts import render
from rest_framework import viewsets, permissions
from .models import Github
from .serializers import GithubSerializer
# from rest_framework.response import Response

# Viewset
class MovieViewSet(viewsets.ModelViewSet):
    queryset = Movie.objects.all()
    serializer_class = MovieSerializer