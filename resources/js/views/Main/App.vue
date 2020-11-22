<template>
    <div>
        <h1>Vue Router Set UP </h1>
        <nav>
            <navigation/>
        </nav>
        <div class="container">
            <router-view></router-view>
        </div>
    </div>
</template>
<script>
    import Navigation from '../../components/Navigation'
    export default {
        components: { Navigation },
    }
</script>