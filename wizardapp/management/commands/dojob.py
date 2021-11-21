from django.core.management.base import BaseCommand, CommandError
import requests

class Command(BaseCommand):

    def handle(self, *args, **options):
        requests.get('https://happy-engelbart.35-83-202-179.plesk.page/kek12.web')
        print('command executed')
