import Home from './views/Home'

/** routes names */
export const ROUTE_NAME_HOME = 'home'

const routes = [
    {
        path: '/home',
        name: ROUTE_NAME_HOME,
        component: Home
    },
];


export default routes