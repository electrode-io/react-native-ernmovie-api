import { electrodeBridge } from '@walmart/react-native-electrode-bridge';
import MoviesRequests from './MoviesRequests';

const REQUESTS = new MoviesRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}

export default ({requests});
