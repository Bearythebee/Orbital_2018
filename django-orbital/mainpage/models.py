from django.db import models
from django.urls import reverse  # Used to generate URLs by reversing the URL patterns


class TVShow(models.Model):
    name = models.CharField(max_length=200)
    genre = models.CharField(max_length=100)
    date_released = models.CharField(max_length=100)
    actors = models.TextField()
    summary = models.TextField(max_length=1000)
    display = models.TextField(null=True, blank="{% static %}")
    rating = models.DecimalField(max_digits=11, decimal_places=1,null=True,blank=0.0)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('show-detail', args=[str(self.id)])