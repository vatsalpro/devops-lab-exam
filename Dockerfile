# --- Stage 1: Build the Backend ---
FROM node:18-alpine AS backend-build
WORKDIR /app/backend
COPY backend/package*.json ./
RUN npm install
COPY backend/ .

# --- Stage 2: Build the Frontend ---
FROM node:18-alpine AS frontend-build
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ .
# If frontend needs a build step (like React/Vue), uncomment the next line:
# RUN npm run build 

# --- Stage 3: Final Production Image ---
FROM node:18-alpine
WORKDIR /app

# Copy built backend and node_modules
COPY --from=backend-build /app/backend ./backend

# Copy frontend (serving as static or via backend)
COPY --from=frontend-build /app/frontend ./frontend

# Expose backend port
EXPOSE 5000

# Set environment variables
ENV NODE_ENV=production

# Start the application (adjust based on your backend start script)
WORKDIR /app/backend
CMD ["npm", "start"]
