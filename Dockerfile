FROM nginx:alpine

# Copy source files (fallback) then overwrite with built assets if present
COPY *.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# If Parcel has produced a `dist/` build, copy its contents to serve the optimized site
COPY dist/ /usr/share/nginx/html/

EXPOSE 80