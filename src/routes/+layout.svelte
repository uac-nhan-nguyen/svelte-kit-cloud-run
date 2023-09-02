<script>
  import Header from './Header.svelte';
  import './styles.css';
</script>

<div class="app">
  <Header/>

  <main>
    <slot/>
  </main>

  <footer>
    This is a footer
  </footer>
</div>

<style>
    .app {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    main {
        flex: 1;
        padding: 1rem;
    }

    footer {
        background: #eee;
        padding: 1rem;
    }

</style>
