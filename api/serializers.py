from rest_framework import serializers
from api.api import Github

class GithubSerializer(serializers.ModelSerializer):
    class Meta:
        model = Github
        fields = "__all__"