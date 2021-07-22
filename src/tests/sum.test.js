import sum from './sum';
import multiply from './multiply'

test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3);
});

test('multiplies 5 * 18 to equal 90', () => {
    expect(multiply(5, 18)).toBe(90);
});