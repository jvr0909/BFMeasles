from flask import Flask, request, jsonify, render_template, redirect
from app import app
from app import database as db_helper

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/input', methods=['GET'])
def input():
    return render_template('form.html')