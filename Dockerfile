 # build stage
#FROM node:18.9-alpine as build
FROM --platform=linux/amd64 node:18.9-alpine as build


WORKDIR /app
# copy everything
COPY . .
# install dependencies
RUN yarn install
# build the SvelteKit app
RUN yarn build

# run stage, to separate it from the build stage, to save disk storage
FROM --platform=linux/amd64 node:18.9-alpine

WORKDIR /app

# copy stuff from the build stage
COPY --from=build /app/package*.json ./
COPY --from=build /app/build ./

# expose the app's port
EXPOSE 8080
ENV PORT=8080
# run the server
CMD ["node", "./index.js"]