import { values } from 'lodash';
import { range } from 'lodash';

export const allAlbums = ({albums}) => {
  return values(albums);
};
