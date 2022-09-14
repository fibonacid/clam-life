const crawlableRobotsTxt = `User-agent: *
Allow: /
`;

const uncrawlableRobotsTxt = `User-agent: *
Disallow: /
`;

const headers = new Headers();
headers.append("Content-Type", "text");

const body =
  import.meta.env.ALLOW_CRAWLERS === "true"
    ? crawlableRobotsTxt
    : uncrawlableRobotsTxt;

export async function get() {
  return new Response(body, { headers });
}
