from django.urls import path, include
from rest_framework import routers
from .api import GithubViewSet

router = routers.DefaultRouter()
router.register('api/v1',GithubViewSet, 'github')

urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]