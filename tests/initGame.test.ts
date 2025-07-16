import { initGame } from '../src/index';

describe('initGame', () => {
  it('should return the initialization message', () => {
    const result = initGame();
    expect(result).toBe('Game of Life initialize');
  });
});
