from django.contrib import admin
from .models import Movie
# Register your models here.


class MovieAdmin(admin.ModelAdmin):
    # Define the list of fields to display in the admin interface
    list_display = ('name', 'year', 'director', 'mediaFormat'
                    #owner
                    )
    
    # Add search functionality
    search_fields = ('name', 'year', 'director', 'mediaFormat','owner')
    # Add filters
    list_filter = ('year', 'director', 'mediaFormat')

    # Define which fields can be clicked to view the details page
    list_display_links = ('name',)

    # Define how fields are displayed when editing a Dog instance
    fields = ('name', 'year', 'director', 'mediaFormat','owner')

# Register the model and admin class
admin.site.register(Movie, MovieAdmin)