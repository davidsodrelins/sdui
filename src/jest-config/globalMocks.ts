interface StorageMock {
    [key: string]: string;
  }
  
  const mock = () => {
    let storage: StorageMock = {};
  
    return {
      getItem: (key: string) => key in storage ? storage[key] : null,
      setItem: (key: string, value: string) => (storage[key] = value || ''),
      removeItem: (key: string) => delete storage[key],
      clear: () => (storage = {}),
    };
  };
  
  Object.defineProperty(window, 'localStorage', { value: mock() });
  Object.defineProperty(window, 'sessionStorage', { value: mock() });
  Object.defineProperty(window, 'getComputedStyle', {
    value: () => ['-webkit-appearance'],
  });
  