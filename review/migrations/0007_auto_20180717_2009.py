# Generated by Django 2.0.6 on 2018-07-17 12:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('review', '0006_showreview_rating'),
    ]

    operations = [
        migrations.AlterField(
            model_name='showreview',
            name='rating',
            field=models.CharField(choices=[('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', '5')], default=None, max_length=1, null=True, verbose_name=''),
        ),
    ]
