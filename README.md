# create-svelte

Everything you need to build a Svelte project, powered by [`create-svelte`](https://github.com/sveltejs/kit/tree/master/packages/create-svelte).

Demo firebase hosting: https://svelte-kit-cloud-run.web.app/
Demo cloudrun: https://svelte-kit-uow6gwzzrq-as.a.run.app/


## Creating a project

If you're seeing this, you've probably already done this step. Congrats!

```bash
# create a new project in the current directory
npm create svelte@latest

# create a new project in my-app
npm create svelte@latest my-app
```

## Developing

Once you've created a project and installed dependencies with `npm install` (or `pnpm install` or `yarn`), start a development server:

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Building

To create a production version of your app:

```bash
npm run build
```

You can preview the production build with `npm run preview`.

> To deploy your app, you may need to install an [adapter](https://kit.svelte.dev/docs/adapters) for your target environment.

## Deploy
https://www.mbaraa.com/blog/deploy-sveltekit-to-google-cloud-run-using-docker

when error on mac m1: https://stackoverflow.com/questions/73398714/docker-fails-when-building-on-m1-macs-exec-usr-local-bin-docker-entrypoint-sh
https://stackoverflow.com/questions/65612411/forcing-docker-to-use-linux-amd64-platform-by-default-on-macos/69636473#69636473

```shell
gcloud config set project tldr-blog
docker tag svelte-kit gcr.io/tldr-blog/svelte-kit
docker push gcr.io/tldr-blog/svelte-kit
docker image prune

gcloud run deploy --image gcr.io/tldr-blog/svelte-kit
```
