from django import forms
from django.forms import ModelForm, Textarea, ChoiceField
from review.models import ShowReview


class ShowReviewForm(ModelForm):
    class Meta:
        model = ShowReview
        fields = ['rating', 'review']