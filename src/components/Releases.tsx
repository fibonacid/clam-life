import { releases } from "../data/releases";
import Release from "./Release";

export default function Releases() {
  return (
    <ul class="releases__list">
      {releases.map((release) => (
        <li class="releases__item">
          <Release {...release} />
        </li>
      ))}
    </ul>
  );
}
