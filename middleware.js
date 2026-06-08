export const config = {
  matcher: '/(.*)',
};

export default function middleware(request) {
  const authHeader = request.headers.get('authorization');

  if (authHeader && authHeader.startsWith('Basic ')) {
    const encoded = authHeader.slice(6);
    const decoded = atob(encoded);
    const colonIndex = decoded.indexOf(':');
    const user = decoded.slice(0, colonIndex);
    const pass = decoded.slice(colonIndex + 1);

    if (user === process.env.AUTH_USER && pass === process.env.AUTH_PASS) {
      return;
    }
  }

  return new Response('Acesso restrito.', {
    status: 401,
    headers: {
      'WWW-Authenticate': 'Basic realm="Dashboard CFO/PM"',
    },
  });
}
