<script lang="ts">

  import {page} from '$app/stores';

  export let label: string;
  export let href: string;

</script>

<a href={href} aria-current={$page.url.pathname === href ? 'page' : undefined}>
  <slot/>
</a>

<style>
    a {
        padding: 0.1rem 0.5rem;
        text-decoration: none;
        color: black;
    }

    a[aria-current="page"]{
        background: yellow;
    }

</style>