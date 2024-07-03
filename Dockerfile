FROM miguelaeh/pipeless:latest

USER 0

RUN pip install poetry --no-cache --break-system-packages

COPY poetry.lock pyproject.toml .
RUN poetry export -f requirements.txt --output requirements.txt && \
    pip install -r requirements.txt --no-cache --break-system-packages

COPY . .

CMD ["pipeless","start","--stages-dir","."]