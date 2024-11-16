from django.db import models

# Create your models here.

MovieFormats = [
    ("VHS","VHS"),
    ("DVD","DVD"),
    ("BR","BluRay"),
    ("4K", "4K UHD"),
]
class Movie(models.Model) :
    name= models.CharField(max_length=100)
    year= models.IntegerField()
    director= models.CharField(max_length=100)
    mediaFormat = models.CharField(max_length=100,choices=MovieFormats)
    #owner = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    def __str__(self):
        return self.name


