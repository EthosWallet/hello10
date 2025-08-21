FROM node:18-alpine

# Test COPY instructions with workspace paths
COPY ./frontend-workspace /app/frontend
COPY ../shared-libs /app/shared
ADD ./backend-workspace /app/backend

# Test regular commands (for comparison)
RUN npm install express
RUN pip install requests

WORKDIR /app
CMD ["npm", "start"]

---
