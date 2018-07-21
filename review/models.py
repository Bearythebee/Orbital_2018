from django.db import models
from django.urls import reverse #Used to generate URLs by reversing the URL patterns

# Create your models here.

class ShowList(models.Model):
    name = models.CharField(max_length=200)
    rating = models.DecimalField(max_digits=11,decimal_places=1,null=True,blank=0.0)

    def __str__(self):
        return self.name


class ShowReview(models.Model):
    ONE = '1'
    TWO = '2'
    THREE = '3'
    FOUR = '4'
    FIVE = '5'

    RATING = (
        (ONE, '1'),
        (TWO, '2'),
        (THREE, '3'),
        (FOUR, '4'),
        (FIVE, '5'),
    )

    username = models.CharField(max_length=200)
    name = models.CharField(max_length=200)
    rating = models.CharField(null=True, max_length=1, default=None, choices=RATING, verbose_name="")
    review = models.TextField()

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        """
        Returns the url to access a detail record for this tvshow
        """
        return reverse('show-detail', args=[str(self.id)])

