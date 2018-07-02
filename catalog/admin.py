from django.contrib import admin
from .models import Show

# Register your models here.

# Define the admin class
class TvshowAdmin(admin.ModelAdmin):
    pass

# Register the admin class with the associated model
admin.site.register(Show, TvshowAdmin)