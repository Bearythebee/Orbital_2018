from django.contrib import admin
from .models import Show, Cluster

# Register your models here.

# Define the admin class
class TvshowAdmin(admin.ModelAdmin):
    pass

class ClusterAdmin(admin.ModelAdmin):
    model = Cluster
    list_display = ['name', 'get_members']

# Register the admin class with the associated model
admin.site.register(Show, TvshowAdmin)
admin.site.register(Cluster, ClusterAdmin)