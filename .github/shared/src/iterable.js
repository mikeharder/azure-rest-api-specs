// @ts-check

/**
 * @template T, U
 * @param {Iterable<T> | AsyncIterable<T>} source
 * @param {(item: T) => Iterable<U> | AsyncIterable<U> | Promise<Iterable<U> | AsyncIterable<U>>} mapper
 * @returns {AsyncIterable<U>}
 */
export async function* flatMapAsync(source, mapper) {
  for await (const item of source) {
    const inner = await mapper(item);
    for await (const sub of inner) {
      yield sub;
    }
  }
}

/**
 * @template T
 * @param {Iterable<T> | AsyncIterable<T>} source
 * @returns {Promise<T[]>}
 */
export async function toArray(source) {
  const result = [];
  for await (const v of source) {
    result.push(v);
  }
  return result;
}
