from django.db import models
from django.urls import reverse #Used to generate URLs by reversing the URL patterns

class Show(models.Model):
    name = models.CharField(max_length=200)
    genre = models.CharField(max_length=100)
    date_released = models.CharField(max_length=100)
    actors = models.TextField()
    summary = models.TextField(max_length=1000)
    fullcast = models.TextField()
    role = models.TextField()
    synopsis = models.TextField()
    video = models.TextField()
    site = models.CharField(max_length=200,null=True,blank="Sorry, no sites to watch from yet!")
    rating = models.DecimalField(max_digits=11,decimal_places=1,null=True,blank=0.0)
    display = models.TextField()

    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.name

    def get_absolute_url(self):
        """
        Returns the url to access a detail record for this tvshow
        """
        return reverse('show-detail', args=[str(self.id)])