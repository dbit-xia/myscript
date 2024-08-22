import http from 'k6/http';
import {check} from 'k6';

export const options = {
    vus: 50,
    duration: '5s',
};
export default function () {
    const res = http.get('http://127.0.0.1:8888/?q=test&format=json&engines=google');
    //console.log(result);
    const body = JSON.parse(res.body);
    check(res, {'ok?': (res) => (body.results.length > 0)})
    //http.setResponseCallback(http.expectedStatuses({ min: 200, max: 399 }));
}
