<script>
  import {page} from '$app/stores';
  import logo from '$lib/images/logo.svg';
  import HeaderItem from "./HeaderItem.svelte";
</script>

<header>
  <img src={logo} alt="logo"/>
  <HeaderItem href="/">Home</HeaderItem>
  <HeaderItem href="/about">About</HeaderItem>
</header>

<style>
    header {
        background-color: var(--bg-1);
        padding: 1em;
        display: flex;
        gap: 8px;
        align-items: end;
    }
</style>
