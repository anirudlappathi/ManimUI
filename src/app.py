from flask import Flask, render_template, request, session, redirect, url_for, jsonify
from dotenv import load_dotenv, find_dotenv
import os

from flask_cors import CORS

app = Flask(__name__)

CORS(app)