from unittest import TestCase
from rest_framework.test import APIClient


class TestSampleView(TestCase):
    def test_view(self):
        client = APIClient()
        response = client.get('/api/v1/test/')
        self.assertEquals(response.data, 'This is checking')
